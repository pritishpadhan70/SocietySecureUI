<!DOCTYPE html>
<html>

    <head>
           <title>Admin Approval</title>
		   <link rel="stylesheet" type="text/css" href="css/main.css">
    <style>
    @import url('httpss://fonts.googleapis.com/css?family=Roboto');

    </style>
        </head>
    <body>

        <form class="signup-form" action="/register" method="post">

    <!-- form header -->
    <div class="form-header">
            <h1>Admin Access Approval - Approve</h1>
    </div>

    <!-- form body -->
    <div class="form-body">

<div class="horizontal-group">

    <div class="form-group">
                  <label for="first">
            <input type="radio" name="one" value="first" id="one"> Approved as an Owner</label><br>
          <label for="second">
            <input type="radio" name="one" value="second" id="one"> Approved as a Tenant</label><br>
			 <label for="third">
            <input type="radio" name="one" value="third" id="one"> Approved as a Flat member</label><br>
          <label for="fourth">
            <input type="radio" name="one" value="fourth" id="one"> Approved as a Staff</label><br>
			<label for="fifth">
            <input type="radio" name="one" value="fifth" id="one"> Approved as a Servant</label><br>
			<label for="sixth">
            <input type="radio" name="one" value="sixth" id="one"> Approved as a Care Taker</label><br>
          </div>


</div>
    <!-- form footer -->
    <div class="form-footer">
     <button type="ok" class="btn">Ok</button>
         <button type="cancel" class="btn">Cancel</button>
		 </div>


        </form>

    </body>
</html>