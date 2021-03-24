package com.team.idea.rest;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Arrays;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.web.client.RestTemplateBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import com.team.idea.entity.IdStringRequest;
import com.team.idea.entity.VisitorDTO;

@Component
public class CallRestService {

	@Value("${REST_URL}")
	private String serviceURL;

	@Autowired
	RestTemplate restTemplate;

	public String callService(String uriPath) {
		System.out.println("3. calling service");
		String output = null;
		URL url = null;
		HttpURLConnection conn = null;
		StringBuilder sbOutput = null;
		;

		try {
			sbOutput = new StringBuilder("");
			String pathURL = serviceURL + uriPath;
			System.out.println("pathURL:" + pathURL);
			url = new URL(pathURL);
			conn = (HttpURLConnection) url.openConnection();
			conn.setDoOutput(true);
			conn.setRequestMethod("POST");
			conn.setRequestProperty("Content-Type", "application/json");

			// String input = "{\"qty\":100,\"name\":\"iPad 4\"}";

			/*
			 * OutputStream os = conn.getOutputStream(); os.write(input.getBytes());
			 * os.flush();
			 */
			System.out.println("3. calling service responseCode:" + conn.getResponseCode());

			if (conn.getResponseCode() != 200) {
				throw new RuntimeException("Failed : HTTP error code : " + conn.getResponseCode());
			}

			BufferedReader br = new BufferedReader(new InputStreamReader((conn.getInputStream())));

			System.out.println("Output from Server .... \n");
			while ((output = br.readLine()) != null) {
				sbOutput.append(output);
			}

			return sbOutput.toString();

		} catch (MalformedURLException e) {

			e.printStackTrace();
			return null;

		} catch (IOException e) {

			e.printStackTrace();
			return null;

		} finally {

			if (conn != null) {
				conn.disconnect();
			}

			if (url != null) {
				url = null;
			}

			if (sbOutput != null) {
				sbOutput = null;
			}
		}

	}

	public String updateService(String uriPath, Object object) {
		System.out.println("calling update service:" + uriPath);
		HttpHeaders headers = new HttpHeaders();
		headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
		HttpEntity entity = new HttpEntity(object, headers);
		String restUrl = serviceURL + uriPath;
		System.out.println("rest url:" + restUrl);
		String outPut = restTemplate.exchange(restUrl, HttpMethod.POST, entity, String.class).getBody();
		System.out.println("update service output:" + outPut);
		return outPut;
	}

	
	/*Instead of passing as hardcode entity VisitorDTO we should pass as Object
	 * so that it will use for all service , here we should have method for create,update and get 
	 * no hard code for each service
	 * 
	 * */
	
	public String createVisitor(String uriPath, VisitorDTO object) {  
		System.out.println("calling update service:" + uriPath);

		HttpHeaders headers = new HttpHeaders();
		headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
		HttpEntity<VisitorDTO> entity = new HttpEntity<VisitorDTO>(object, headers);

		String restUrl = serviceURL + uriPath;
		System.out.println("rest url:" + restUrl);
		String outPut = restTemplate.exchange(restUrl, HttpMethod.POST, entity, String.class).getBody();
		System.out.println("update service output:" + outPut);

		return outPut;
	}

	@Bean
	public RestTemplate restTemplate(RestTemplateBuilder builder) {
		return builder.build();
	}

	public String fetchDailyVisitor(String uriPath, IdStringRequest phone) {

		System.out.println("calling update service:" + uriPath);

		HttpHeaders headers = new HttpHeaders();
		headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
		HttpEntity<IdStringRequest> entity = new HttpEntity<IdStringRequest>(phone, headers);

		String restUrl = serviceURL + uriPath;
		System.out.println("rest url:" + restUrl);
		String outPut = restTemplate.exchange(restUrl, HttpMethod.POST, entity, String.class).getBody();
		VisitorDTO result = restTemplate.postForObject( restUrl, entity, VisitorDTO.class);

	    
		System.out.println("update service output:" + outPut);

		return outPut;
	}

}
