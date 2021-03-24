package com.team.idea.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.team.idea.constant.PageFactory;
import com.team.idea.constant.SocietySecureConstant;
import com.team.idea.entity.Response;
import com.team.idea.service.ApprovalService;

@Controller
@RequestMapping(value="/approval")
public class ApprovalController {
	
	@Autowired
	ApprovalService approvalService;
	
	@GetMapping("flat")
	public String flat() {
		return approvalService.flat();
	}

	@GetMapping("neighbourhoodDtails")
	public  String neighbourhoodDtails() {
		return approvalService.neighbourhoodDetails();
	}
	
	@GetMapping("neighbourhoodRecords")
	public  @ResponseBody String neighbourhoodRecords() {
		
		String outPut = approvalService.neighbourhoodRecords(SocietySecureConstant.NEIGHBOURHOOD_URI);
		System.out.println("data output:"+outPut.toString());
		return outPut;
	}
	
	@GetMapping("neighbourhoodRecord/{id}")
	public ModelAndView neighbourhoodRecords(@PathVariable String id) {
		
		String outPut = approvalService.neighbourhoodRecords(SocietySecureConstant.NEIGHBOURHOOD_URI+"/"+id);
		System.out.println("data output:"+outPut.toString());
		
		Response  response = null;
		ObjectMapper mapper = new ObjectMapper();
		ModelAndView modelAndView = new ModelAndView();
		try {
			response = mapper.readValue(outPut, Response.class);
			if(null != response && response.getCode() == 200) {
				modelAndView.addObject("neighbourhoodData", response.getData());
				modelAndView.setViewName(PageFactory.APPROVAL_NEIGHBOURHOOD_APPROVE_PAGE);
			}else {
				modelAndView.addObject("errorMessage",response.getMessage());
				modelAndView.setViewName(PageFactory.ERROR_PAGE);
			}
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			modelAndView.addObject("errorMessage",SocietySecureConstant.ERROR_MESSAGE);
			modelAndView.setViewName(PageFactory.ERROR_PAGE);
		}
		//return outPut;
		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			modelAndView.addObject("errorMessage",SocietySecureConstant.ERROR_MESSAGE);
			modelAndView.setViewName(PageFactory.ERROR_PAGE);
		}
		
		return modelAndView;
	}
	
	@PostMapping("update/{id}/{btnClick}/{txtMessage}")
	public @ResponseBody String updateStatus(@PathVariable String id ,@PathVariable String btnClick,@PathVariable String txtMessage) {
		
		System.out.println("updating the status:"+id);
		System.out.println("Btn click:"+btnClick);
		System.out.println("Text Message:"+txtMessage);
		
		   // create `ObjectMapper` instance
	    ObjectMapper mapper = new ObjectMapper();

	    // create a JSON object
	    ObjectNode enrollStatusData = mapper.createObjectNode();
	    enrollStatusData.put("id", id);
	    enrollStatusData.put("status", btnClick);
	    enrollStatusData.put("message", txtMessage);
	    enrollStatusData.put("comments", txtMessage);
		
		
		return approvalService.updateStatus(id,btnClick,txtMessage);
	}
}

