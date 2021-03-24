<!DOCTYPE html>
<html>

    <head>
           <title>Guest Details at Security</title>
		   		       <!--Jquery Link-->
        <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
	
	<!-- Bootstrap Styling-->
        <link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
	
	
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<link rel="stylesheet" type="text/css" href="../../../assets/css/main.css">

<script type="text/javascript">
	
	$(document).ready(function()

    {
	var x = 0; //Initial field counter
	var list_maxField = 10; //Input fields increment limitation
	
        //Once add button is clicked
	$('.list_add_button').click(function()
	    {
	    //Check maximum number of input fields
	    if(x < list_maxField){ 
	        x++; //Increment field counter
	        //var list_fieldHTML = '<div class="row"><div class="col-xs-4 col-sm-4 col-md-4"><div class="form-group"><input name="list['+x+'][]" type="text" placeholder="Type Item Name" class="form-control"/></div></div><div class="col-xs-7 col-sm-7 col-md-7"><div class="form-group"><input name="list['+x+'][]" type="text" placeholder="Type Item Quantity" class="form-control"/></div></div><div class="col-xs-1 col-sm-7 col-md-1"><a href="javascript:void(0);" class="list_remove_button btn btn-danger">-</a></div></div>'; //New input field html 
			
			var list_fieldHTML = '<div class="row"><div class="col-xs-7 col-sm-7 col-md-7"><div class="form-group"><input name="list['+x+'][]" type="text" placeholder="Name" class="form-control"/></div></div><div class="col-xs-1 col-sm-1 col-md-1"><a href="javascript:void(0);" class="list_remove_button btn btn-danger">-</a></div></div>'; //New input field html 
	        	       
		   $('.list_wrapper').append(list_fieldHTML); //Add field html
	    }
        });
    
        //Once remove button is clicked
        $('.list_wrapper').on('click', '.list_remove_button', function()
        {
           $(this).closest('div.row').remove(); //Remove field html
           x--; //Decrement field counter
        });
});</script>

    <style>
    @import url('httpss://fonts.googleapis.com/css?family=Roboto');

/*body {
    background:linear-gradient(to right, #78a7ba 0%, #385D6C 50%, #78a7ba 99%);
}

.signup-form {
    font-family: "Roboto", sans-serif;
    width:650px;
    margin:30px auto;
    background:linear-gradient(to right, #ffffff 0%, #fafafa 50%, #ffffff 99%);
    border-radius: 10px;
}

.form-header  {
    background-color: #EFF0F1;
    border-top-left-radius: 10px;
    border-top-right-radius: 10px;
}

.form-header h1 {
    font-size: 30px;
    text-align:center;
    color:#666;
    padding:20px 0;
    border-bottom:1px solid #cccccc;
}*/

/*---------------------------------------*/
/* Form Body */
/*---------------------------------------*/
/*.form-body {
    padding:10px 40px;
    color:#666;
}

.form-group{
    margin-bottom:20px;
}

.form-body .label-title {
    color:#1BBA93;
    font-size: 17px;
    font-weight: bold;
}

.form-body .form-input {
        font-size: 17px;
        box-sizing: border-box;
        width: 100%;
        height: 34px;
        padding-left: 10px;
        padding-right: 10px;
        color: #333333;
        text-align: left;
        border: 1px solid #d6d6d6;
        border-radius: 4px;
        background: white;
        outline: none;
}



.horizontal-group .left{
    float:left;
    width:49%;
}

.horizontal-group .right{
    float:right;
    width:49%;
}

input[type="file"] {
 outline: none;
 cursor:pointer;
 font-size: 17px;
}

#range-label {
 width:15%;
 padding:5px;
 background-color: #1BBA93;
 color:white;
 border-radius: 5px;
 font-size: 17px;
 position: relative;
 top:-8px;
}


::-webkit-input-placeholder {
 color:#d9d9d9;
}*/

/*---------------------------------------*/
/* Form Footer */
/*---------------------------------------*/
/*.form-footer {
 clear:both;
}*/

/*---------------------------------------*/
/* Form Footer */
/*---------------------------------------*/
/*.signup-form .form-footer  {
  background-color: #EFF0F1;
  border-bottom-left-radius: 10px;
  border-bottom-right-radius: 10px;
  padding:10px 40px;
  text-align: center;
  border-top: 1px solid #cccccc;
}

.form-footer span {
  float:left;
  margin-top: 10px;
  color:#999;
  font-style: italic;
  font-weight: thin;
}

.btn {
   display:inline-block;
   padding:10px 20px;
   background-color: #1BBA93;
   font-size:17px;
   border:none;
   border-radius:5px;
   color:#bcf5e7;
   cursor:pointer;
}

.btn:hover {
  background-color: #169c7b;
  color:white;
}*/
    </style>
        </head>
    <body>

        <form class="signup-form" action="/register" method="post">

    <!-- form header -->
    <div class="form-header">
            <h1>Add Guest details at Security</h1>    </div>

    <!-- form body -->
	  <div class="form-body">
	 	  <div class="horizontal-group">	 
	
	 <label class="label-title">Are you already registered in app:</label>
	 
<input type="radio" name="portion_selection" value="button_one"/>Yes 
<input type="radio" name="portion_selection" value="button_two"/>No

    </div>
	
    <br>
	 <div id="portion_one" style="display:none">
	 
	  <div class="horizontal-group">
     <label class="label-title">Enter your Registered Mobile No:</label>
        <div>
              <input type="text" id="mobileno" name="mobileno" class="form-input" placeholder="1234567890" />
        </div>
 <br>
  <label class="label-title">Name:</label>
<label for="name" id ="name">Samita Shetty</label>
<br>
<label class="label-title">Society registartion No:</label>
<label for="regno" id ="regno">123456</label>
<br>
	<label class="label-title">Sex:</label>
<label for="sex" id ="sex">Female</label>
  <br>
 	<label class="label-title">Alternate Conact No</label>
<label for="contactno" id ="contactno">0987654321</label>
<br>
<label class="label-title">Temperature:</label>
<label for="temp" id ="temp">94.8F</label>
<br>
<label for="photo" class="label-title">Capture Photo: Click</label>

	
			<div class="form-group">
				<label for="choose-file" class="label-title">Coming From (Address)</label>
				<textarea class="form-input" rows="4" cols="50" style="height:auto"></textarea>
				
      </div>
	  
				<div class="form-group left">
					<label for="name" class="label-title">Meet To</label>
					<input type="text" id="name" class="form-input" required="required" /> </div>

				<div class="form-group right">
					<label for="noperson" class="label-title">No of Persons</label>
					<input type="text" id="noperson" class="form-input" placeholder="enter no of person" /> </div>
      
	  
		
<div class="form-group left">
              <label for="block" class ="label-title"> Select Block</label>
                  <select name="block" id="block" >
                  <option value="B">B1</option>
                  <option value="I">B2</option>
                  <option value="A">B3</option>
                  </select>
</div>
<div class="form-group right">
             <label for="flat" class ="label-title">Select Flat</label>
                  <select name="flat" id="flat" >
                  <option value="B">201</option>
                  <option value="I">202</option>
                  <option value="A">203</option>
                  </select>
					</div>
					


                       <!-- <form role="form" method="post" action="">-->
                            
                            <div class="list_wrapper">  
                                <div class="row">

                                    <div class="col-xs-7 col-sm-7 col-md-7">

                                        <div class="form-group">
                                            <label for="name" class="label-title">Additional Member Name</label>
                                            <input name="list[0][]" type="text" placeholder="Name" class="form-control"/>
                                            
                                        </div>
                                    </div>
									
									
									
                                    <div class="col-xs-1 col-sm-1 col-md-1">
                                        <br>
                                       <button class="btn btn-primary list_add_button" type="button">+</button>
                                    </div>
                                </div>
                            </div>
                            
                            <!--<input type="submit" value="Submit" class="btn btn-info btn-block"> -->
                    <!--    </form>-->
                    
                
 </div>
<br>

   <!-- form footer -->
    <div class="form-footer">
     <button type="cancel" class="btn">Cancel</button>
	 <button type="save" class="btn">Save</button>
	 <button type="submit" class="btn">Submit</button>
       </div>
	    </div> 

<div id="portion_two" style="display:none">
 
<div class="horizontal-group">
 
 <div class="form-group left">
   <label class="label-title"> Mobile No*</label>
        
              <input type="text" id="mobileno" name="mobileno" class="form-input" placeholder="Enter mobile no" />
       
		</div>
		<div class="form-group right">
   <label class="label-title"> Alternate Contact No</label>
        
              <input type="text" id="contactno" name="contactno" class="form-input" placeholder="Enter contact no" />
       
		</div>
		<br>
		
            <!-- Firstname and Lastname -->
        <div class="horizontal-group">
                <div class="form-group left">
                        <label for="firstname" class="label-title">First name *</label>
                        <input type="text" id="firstname" name="firstname" class="form-input" placeholder="enter your first name" required="required" />
                </div>
                <div class="form-group right">
                        <label for="lastname" class="label-title">Last name</label>
                        <input type="text" id="lastname" name="lastname" class="form-input" placeholder="enter your last name" />
                </div>
        </div>
		
		<div class="horizontal-group">
			<div class="form-group left ">
				<label for="dob" class="label-title">Date of Birth: </label>
				<input type="text" id="dob" class="form-input" placeholder="enter your User Name" required="required"> </div>
			<div class="form-group right">
				<label for="age" class="label-title">Age</label>
        <input type="text" id="age" class="form-input" placeholder="enter your User Name" required="required"> </div>
        

		</div>
		
		<div class="horizontal-group">
				<div class="form-group left">
          <label class="label-title">Gender:</label><br>
          <label for="male">
            <input type="radio" name="gender" value="male" id="gender"> Male</label>
          <label for="female">
            <input type="radio" name="gender" value="female" id="gender"> Female</label>
          </div>
		  <div class="form-group right">
          <label class="label-title">Type:</label><br>
          <label for="minor">
            <input type="radio" name="type" value="minor" id="type"> Minor</label>
          <label for="adult">
            <input type="radio" name="type" value="adult" id="type"> Adult</label>
          </div>
		</div>
		
		<div class="horizontal-group">
				<div class="form-group left">
					<label for="helper" class="label-title">Relation</label>
					<select class="form-input" id="helpertype">
						<option value="bluedart">Friend</option>
						<option value="amazon"> In-Laws</option>
						<option value="flipkart"> Aunty</option>
						<option value="others">Others</option>
					</select>
				</div>
				<div class="form-group right">
					<label for="email" class="label-title">Email*</label>
				<input type="email" id="email" class="form-input" placeholder="enter your email" required="required"> </div>
			</div>
			<div class="horizontal-group">
				<div class="form-group left">
					<label for="identity" class="label-title">Identity Type 1</label>
					<select class="form-input" id="idType1">
						<option value="panNumber">Pan Card</option>
						<option value="aadharNumber"> Aadhaar Card</option>
						<option value="dlNumber"> Driving Licence</option>
						<option value="voterNumber"> Voter Card</option>
						<option value="otNumber">Others</option>
					</select>
				</div>
				<div class="form-group right">
					<label for="id_no" class="label-title">ID No </label>
					<input type="id" class="form-input" id="id_no1" placeholder="enter your ID No" required="required"> </div>
			</div>
			
			<div class="horizontal-group">
			<div class="form-group">
				<label for="choose-file" class="label-title">Permanent Address</label>
				<textarea class="form-input" rows="4" cols="50" style="height:auto"></textarea>
				<label for="choose-file" class="label-title">Corresponding Address</label>
				<textarea class="form-input" rows="4" cols="50" style="height:auto"></textarea>
      </div>
	  <div>
  
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