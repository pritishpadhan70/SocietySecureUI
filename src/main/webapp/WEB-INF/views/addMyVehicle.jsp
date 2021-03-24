<!DOCTYPE html>
<html>

    <head>
           <title>Vehicle</title>
		   <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>
		   		   <link rel="stylesheet" type="text/css" href="../../assets/css/main.css">

    <style>
    @import url('httpss://fonts.googleapis.com/css?family=Roboto');
	
    </style>
        </head>
    <body>

        <form class="signup-form" action="/register" method="post">

    <!-- form header -->
    <div class="form-header">
            <h1>Add My Vehicle</h1>    </div>

    <!-- form body -->
	  <div class="form-body">
	 	  <div class="horizontal-group">	 
	
	 <label class="label-title">Vehicle Type:</label>
	 
<input type="radio" name="portion_selection" value="button_one"/>2 Wheeler 
<input type="radio" name="portion_selection" value="button_two"/>4 Wneeler

    </div>
	
    <br>
	 <div id="portion_one" style="display:none">
	 
	 <div class="horizontal-group"> 
	<div class="form-group left">   	
          <label class="label-title">Fuel Type:</label><br>
          <label for="petrol">
            <input type="radio" name="fuel" value="petrol" id="fuel"> Petrol</label>
          <label for="diesel">
            <input type="radio" name="fuel" value="diesel" id="fuel"> Diesel</label>
          </div>
       
	   <div class="form-group right">
					<label for="brand" class="label-title">Brand</label>
					<select class="form-input" id="frequency">
						<option value="i10">Grand i10</option>
						<option value="bmw"> BMW</option>
						<option value="audi"> Audi</option>
						<option value="others">Others</option>
					</select>
			</div>
		</div>
		
			
		
           
			
        <div class="horizontal-group">
                <div class="form-group left">
                        <label for="fullname" class="label-title">Vehicle registered on Name *</label>
                        <input type="text" id="name" name="name" class="form-input" placeholder="enter your name" required="required" />
                </div>
                <div class="form-group right">
                        <label for="vehicleno" class="label-title">Vehicle No *</label>
                        <input type="text" id="vno" name="vno" class="form-input" placeholder="enter your Vehilce No" />
                </div>
        </div>
		
		 <div class="horizontal-group">
                <div class="form-group left">
                        <label for="licence" class="label-title">Driving Licence No </label>
                        <input type="text" id="licenceno" name="licenceno" class="form-input" placeholder="enter Licence No"  />
                </div>
                <div class="form-group right">
                        <label for="choose-file" class="label-title">Upload Driving Licence</label>
					<input type="file" id="choose-file" size="80"> 
					</div>
        </div>
       
		
		<div class="horizontal-group">
                <div class="form-group left">
                        <label for="licence" class="label-title">RC No </label>
                        <input type="text" id="licenceno" name="licenceno" class="form-input" placeholder="enter Licence No"  />
                </div>
                <div class="form-group right">
                       <label for="choose-file" class="label-title">Upload RC Book</label>
					<input type="file" id="choose-file" size="80"> 
					</div>
        </div>
		
  

	 
	 
<br>
<div class="form-footer">
     <button type="cancel" class="btn">Cancel</button>
	 <button type="save" class="btn">Save</button>
	 <button type="submit" class="btn">Submit</button>
       </div>
  
	   </div>
		

<div id="portion_two" style="display:none">
 
<div class="horizontal-group"> 
 <div class="form-group left">   	
          <label class="label-title">Fuel Type:</label><br>
          <label for="petrol">
            <input type="radio" name="fuel" value="petrol" id="fuel"> Petrol</label>
          <label for="diesel">
            <input type="radio" name="fuel" value="diesel" id="fuel"> Diesel</label>
          </div>
       
	   <div class="form-group right">
					<label for="brand" class="label-title">Brand</label>
					<select class="form-input" id="frequency">
						<option value="tvs">TVS</option>
						<option value="jupiter"> Jupiter</option>
						<option value="scooty"> Scooty</option>
						<option value="others">Others</option>
					</select>
			</div>
		</div>
		
			<br>
		
            <!-- Firstname and Lastname -->
        <div class="horizontal-group">
                <div class="form-group left">
                        <label for="fullname" class="label-title">Vehicle registered on Name *</label>
                        <input type="text" id="name" name="name" class="form-input" placeholder="enter your name" required="required" />
                </div>
                <div class="form-group right">
                        <label for="vehicleno" class="label-title">Vehicle No *</label>
                        <input type="text" id="vno" name="vno" class="form-input" placeholder="enter your Vehilce No" />
                </div>
        </div>
		
		 <div class="horizontal-group">
                <div class="form-group left">
                        <label for="licence" class="label-title">Driving Licence No </label>
                        <input type="text" id="licenceno" name="licenceno" class="form-input" placeholder="enter Licence No"  />
                </div>
                <div class="form-group right">
                        <label for="choose-file" class="label-title">Upload Driving Licence</label>
					<input type="file" id="choose-file" size="80"> 
					</div>
                </div>
       
		
		<div class="horizontal-group">
                <div class="form-group left">
                        <label for="licence" class="label-title">RC No </label>
                        <input type="text" id="licenceno" name="licenceno" class="form-input" placeholder="enter Licence No"  />
                </div>
                <div class="form-group right">
                       <label for="choose-file" class="label-title">Upload RC Book</label>
					<input type="file" id="choose-file" size="80"> 
					</div>
        </div>
		
  
    <!-- form footer -->
    <div class="form-footer">
     <button type="cancel" class="btn">Cancel</button>
	 <button type="save" class="btn">Save</button>
	 <button type="submit" class="btn">Submit</button>
       </div>
        </form>
<script type="text/javascript">
  $("input[name='portion_selection']:radio")
    .change(function() {
      $("#portion_one").toggle($(this).val() == "button_one");
      $("#portion_two").toggle($(this).val() == "button_two"); });  

   </script>
    </body>
	

</html>