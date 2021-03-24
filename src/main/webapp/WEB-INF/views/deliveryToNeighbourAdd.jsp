<!DOCTYPE html>
<html>

    <head>
           <title>Delivery to Neighbour</title>
		   		       <!--Jquery Link-->
        <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
	
	<!-- Bootstrap Styling-->
        <link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <style>
            @import url('httpss://fonts.googleapis.com/css?family=Roboto');
        </style>

	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
	
	
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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
			
			var list_fieldHTML = '<div class="row"><div class="col-xs-3 col-sm-3 col-md-3"><div class="form-group"><input name="list['+x+'][]" type="text" placeholder="Name" class="form-control"/></div></div><div class="col-xs-2 col-sm-2 col-md-2"><div class="form-group"><select name="list[0][]" id="block" class="form-control"><option value="B">B1</option></select></div></div><div class="col-xs-2 col-sm-2 col-md-2"><div class="form-group"><select name="list[0][]" id="flat" class="form-control"><option value="flat">B-101</option></select></div></div><div class="col-xs-3 col-sm-3 col-md-3"><div class="form-group"><input name="list['+x+'][]" type="text" placeholder="Mobile No" class="form-control"/></div></div><div class="col-xs-1 col-sm-1 col-md-1"><div class="form-group"><input name="list['+x+'][]" type="checkbox" class="form-control"/></div></div><div class="col-xs-1 col-sm-1 col-md-1"><a href="javascript:void(0);" class="list_remove_button btn btn-danger">-</a></div></div>'; //New input field html 
	        	       
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

        </head>
    <body>

        <form class="signup-form" action="/register" method="post">

    <!-- form header -->
    <div class="form-header">
            <h1>Delivery to Neighbour Flat - ADD</h1>    </div>

    <!-- form body -->
	  	 	 <div class="horizontal-group">
	<div class="form-group">

<div class="panel panel-info">

                    <div class="panel-heading text-center">
                   
                        <h1 class="panel-title">Add Neighbour Details</h1>
                    </div>

                    <div class="panel-body">
                        <form role="form" method="post" action="">
                            
                            <div class="list_wrapper">  
                                <div class="row">

                                    <div class="col-xs-3 col-sm-3 col-md-3">

                                        <div class="form-group">
                                            <label for="name" class="label-title">Name</label>
                                            <input name="list[0][]" type="text" placeholder="Name" class="form-control"/>
                                            
                                        </div>
                                    </div>
									
									<div class="col-xs-2 col-sm-2 col-md-2">

                                        <div class="form-group">
										<label for="block" class="label-title">Block</label>
                                                                                                                               
											<select name="list[0][]" id="block" class="form-control" >
											  <option value="B">B1</option>
											 
											  </select></div>
                                    </div>
									

                                    <div class="col-xs-2 col-sm-2 col-md-2">
                                        <div class="form-group">
									<label for="flat" class="label-title">Flat</label>
											<select name="list[0][]" id="flat" class="form-control" >
											  <option value="flat">B-101</option>
											 
											  </select></div>
                                    </div> 

									<div class="col-xs-3 col-sm-3 col-md-3">
                                        <div class="form-group">
                                            <label for="mobileno" class="label-title">Mobile No</label>
                                            <input autocomplete="off" name="list[0][]" type="text" placeholder="Mobile No" class="form-control"/>
                                        </div>
                                    </div> 
									<div class="col-xs-1 col-sm-1 col-md-1">
                                        <br>
                                       <input type="checkbox" id="one" name="list[0][]" value="test" class="form-control">
                                    </div>
									
                                    <div class="col-xs-1 col-sm-1 col-md-1">
                                        <br>
                                       <button class="btn btn-primary list_add_button" type="button">+</button>
                                    </div>
                                </div>
                            </div>
                            
                            <!--<input type="submit" value="Submit" class="btn btn-info btn-block"> -->
                        </form>
                    </div>
                </div>
 </div>
<br>

   <!-- form footer -->
    <div class="form-footer">	 
	 <button type="submit" class="btn">Submit</button>
	 <button type="save" class="btn">Save</button>
	 <button type="reset" class="btn">Reset</button>
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