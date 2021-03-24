<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<!DOCTYPE html>
<HTML>
 <HEAD>
  <TITLE> Neighbourhood Details </TITLE>
  <link rel="stylesheet" type="text/css" href="css/main.css">
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css">
   <script src="https://code.jquery.com/jquery-3.5.1.js"
          integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
          crossorigin="anonymous"></script>

  <script type="text/javascript" src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
  <script type="text/javascript" src="js/neighbourhoodDetails.js"></script>

 </HEAD>

 <BODY>

  <form name="enrollmentDetails" id="enrollmentDetails" class="formView">
  <div class="form-header">
        <h1> Neighbourhood Approval</h1>
   </div>
 
   <div class="horizontal-group">
	 <table id="enrollmentTable" class="display compact stripe">
		<thead>
		<tr>
			<th> Name </th>
			<th> Address </th>
			<th> Type </th>
			<th> Contact Number </th>
			<th> Action </th>
		</tr>
		</thead>
	 </table>
  </div>
  
  <form>
 </BODY>
</HTML>
