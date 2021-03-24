<!DOCTYPE HTML>

<html>

<head>
<title>Society Admin Access</title>
<script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/style.scss">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<link rel="stylesheet" type="text/css" href="css/main.css">

<style>
body {
	background: white
}
</style>
</head>

<body>
	<header class="cd-main-header js-cd-main-header">
		<div class="cd-logo-wrapper">
			<a href="#0" class="cd-logo"> <img
				src="../assets/img/cd-logo.svg" alt="Logo"></a>
		</div>

		<button class="reset cd-nav-trigger js-cd-nav-trigger"
			aria-label="Toggle menu">
			<span></span>
		</button>
		<ul class="cd-nav__list js-cd-nav__list">
			<li class="cd-nav__item"><a href="#0">My App Details</a></li>
			<li class="cd-nav__item"><a href="#0">Refer & Earn</a></li>
			<li class="cd-nav__item"><a href="#0">Support</a></li>
			<li class="cd-nav__item"><a href="#0">About</a></li>
			<li class="cd-nav__item"><a href="#0">Feedback</li>
			<li class="cd-nav__item"><a href="#0">FAQ</a></li>

			<li
				class="cd-nav__item cd-nav__item--has-children cd-nav__item--account js-cd-item--has-children">
				<a href="#0"> <!-- <img src="../../assets/img/cd-avatar.svg" alt="avatar" >-->
					<span>Account</span>
			</a>

				<ul class="cd-nav__sub-list">
					<li class="cd-nav__sub-item"><a href="#0">My Account</a></li>
					<li class="cd-nav__sub-item"><a href="#0">Edit Account</a></li>
					<li class="cd-nav__sub-item"><a href="#0">Logout</a></li>
				</ul>
			</li>
		</ul>
	</header>
	<!-- .cd-main-header -->

	<nav class="sidebar">
		<br> <br> <br>
		<ul>
			<li class="active"><a href="#" id="#home">Home</a></li>
			<li><a href="#">Panic</a></li>
			<li><a href="#" class="feat-btn">Activity <span
					class="fas fa-caret-down first"></span></a>
				<ul class="feat-show">
					<li><a href="#"></i>Notice</a></li>
					<li><a href="#" id="activityNotifications">Notification</a></li>
					<!--  <span class="fas fa-caret-down third" id="activityNotifications"></span></a>
                                                    <ul class="feat-show1">
                                                        <li><a href="#"></i>Society Activation</a></li>
                                                         <li><a href="#"></i>Appointment </a></li>
                                                          <li><a href="#"></i>Request Guest Code</a></li>
                                                    </ul>    </li>
                                            <li><a href="#" class="feat-btn2">Community
                                                <span class="fas fa-caret-down forth"></span></a>
                                                    <ul class="feat-show2">
                                                        <li><a href="#"></i>Local Services</a></li>
                                                        <li><a href="#"></i>Emergency Numbers</a></li>
                                                        <li><a href="#"></i>Forum</a></li>
                                                        <li><a href="#"></i>Documents</a></li>
                                                    </ul>
                                            </li>-->
				</ul></li>
			<li><a href="#" class="serv-btn">Visitor Access <span
					class="fas fa-caret-down second"></span>
			</a>
				<ul class="serv-show">
					<li><a href="#" class="serv-btn31">Delivery <span
							class="fas fa-caret-down fifth31"></span>
					</a>
						<ul class="serv-show31">
							<li><a href="#" id="vaDeliveryEntry"></i>Visitor Entry</a></li>
							<li><a href="#"></i>Advance Request </a></li>

						</ul></li>
					<li><a href="#" class="serv-btn32">Guest <span
							class="fas fa-caret-down fifth32"></span>
					</a>
						<ul class="serv-show32">
							<li><a href="#" id="vaGuestEntry"></i>Visitor Entry</a></li>
							<li><a href="#"></i>Advance Request </a></li>

						</ul></li>
					<li><a href="#" class="serv-btn3">Helper <span
							class="fas fa-caret-down fifth"></span>
					</a>
						<ul class="serv-show3">
							<li><a href="#" id="vaHelperEntry"></i>Visitor Entry</a></li>
							<li><a href="#"></i>Advance Request </a></li>

						</ul></li>
					<li><a href="#" class="serv-btn33">Taxi <span
							class="fas fa-caret-down fifth33"></span>
					</a>
						<ul class="serv-show33">
							<li><a href="#" id="vaTaxiEntry"></i>Visitor Entry</a></li>
							<li><a href="#"></i>Advance Request </a></li>

						</ul></li>
					<li><a href="#" class="serv-btn4">Neighbourhood Shop <span
							class="fas fa-caret-down sixth"></span>
					</a>
						<ul class="serv-show4">
							<li><a href="#"></i>Visitor Entry</a></li>
							<li><a href="#"></i>Advance Request </a></li>

						</ul></li>

				</ul></li>
			<li><a href="#" class="sa-btn">House Holds <span
					class="fas fa-caret-down seventh"></span>
			</a>
				<ul class="sa-show">

					<li><a href="#" class="sa-btn1">Daily <span
							class="fas fa-caret-down eightth"></span>
					</a>
						<ul class="sa-show1">
							<li><a href="#" id="houseHoldsDailyGuest"></i>Guest</a></li>
							<li><a href="#" id="houseHoldsDailyDelivery"></i>Delivery</a></li>
							<li><a href="#" id="houseHoldsDailyHelper"></i>Helper</a></li>

						</ul></li>

					<li><a href="#" id="houseHoldsFamilyMember"></i>Family Member</a></li>
					<li><a href="#" id="houseHoldsVehicle"></i>Vehicles</a></li>
					<li><a href="#" id="tenats"></i>Tenats</a></li>
					<li><a href="#" id="houseHoldsMyNeighbour"></i>My Neighbour</a></li>
				</ul></li>
			<li><a href="#" class="serv-btn1">Community <span
					class="fas fa-caret-down second1"></span>
			</a>
				<ul class="serv-show1">
					<li><a href="#">Local Service</a></li>
					<li><a href="#">Emergency Numbers</a></li>
					<li><a href="#"></i>Emergency Numbers</a></li>
					<li><a href="#"></i>Forum</a></li>
					<li><a href="#"></i>Documents</a></li>
					<li><a href="#"></i>Society Help</a></li>
					<li><a href="#"></i>Notice Board</a></li>
					<li><a href="#"></i>Residents</a></li>
					<li><a href="#"></i>Communication</a></li>
					<li><a href="#"></i>Integrate Neighbourhood</a></li>
					<!-- <li><a href="#" class="serv-btn31">Instant Action
                                            <span class="fas fa-caret-down fifth1"></span> </a>
                                              <ul class="serv-show31">
                                                    <li><a href="#"></i>Society Activation</a></li>
                                                         <li><a href="#"></i>Appointment </a></li>
                                                          <li><a href="#"></i>Request Guest Code</a></li>
                                                          <li><a href="#"></i>Kid Exit</a></li>
                                                         <li><a href="#"></i>Emergency </a></li>
                                                          <li><a href="#"></i>Message to Security</a></li>
                                                    </ul>    </li>
                                              <li><a href="#">HouseHolds</a></li>
                                            <li><a href="#" class="serv-btn41">Community
                                            <span class="fas fa-caret-down sixth1"></span> </a>
                                              <ul class="serv-show41">
                                                    <li><a href="#"></i>Local Services</a></li>
                                                         <li><a href="#"></i>Emergency Numbers </a></li>
                                                          <li><a href="#"></i>Forum</a></li>
                                                          <li><a href="#"></i>Documents</a></li>
                                                         <li><a href="#"></i>Society Help Desk </a></li>
                                                          <li><a href="#"></i>Notice Board</a></li>
                                                          <li><a href="#"></i>Residents</a></li>
                                                          <li><a href="#"></i>Communications</a></li>
                                                    </ul>    </li>-->


				</ul></li>
			<li><a href="#"></i>Instant Notice</a></li>


			<li><a href="#" class="serv-btn31">Instant Action <span
					class="fas fa-caret-down fifth1"></span>
			</a>
				<ul class="serv-show31">
					<li><a href="#" id="instantActionSocietyActivation"></i>Society
							Activation</a></li>
					<li><a href="#"></i>Appointment</a></li>
					<li><a href="#"></i>Request Guest Code</a></li>
					<li><a href="#"></i>Kid exit</a></li>
					<li><a href="#"></i>Emergency</a></li>
					<li><a href="#"></i>Message to Security</a></li>

				</ul></li>

			<li><a href="#" class="serv-btn41">Approval <span
					class="fas fa-caret-down sixth1"></span>
			</a>
				<ul class="serv-show41">
					<li><a href="#" id="approvalFlat"></i>Flat</a></li>
					<li><a href="#"></i>Security</a></li>
					<li><a href="#" id="approvalNeighbourhood"></i>Neighbourhood</a></li>
				</ul></li>


			<li><a href="#" class="serv-btn411">Neighbourhood <span
					class="fas fa-caret-down sixth11"></span>
			</a>
				<ul class="serv-show411">
					<li><a href="#">Employee</a></li>
					<li><a href="#"></i>Vehicle</a></li>

				</ul></li>


			<li><a href="#">Security</a></li>
			<li><a href="#">Management</a></li>
			<li><a href="#">Amenity</a></li>



			<li><a href="#" class="serv-btn4111">Flats <span
					class="fas fa-caret-down sixth111"></span>
			</a>
				<ul class="serv-show4111">
					<li><a href="#" id="approvalFlat"></i>List</a></li>
					<li><a href="#">Owner</a></li>
					<li><a href="#">Resident</a></li>

				</ul></li>



			<li><a href="#"></i>Finance</a></li>
			<li><a href="#"></i>Repository</a></li>
			<li><a href="#"></i>Emails</a></li>
			<li><a href="#"></i>Reports</a></li>
			<li><a href="#"></i>Switch</a></li>
			<li><a href="#"></i>Neighbourhood Enrolment</a></li>
			<li><a id="enrollmentDetails"></i>Society Enrollment</a></li>
			<li><a href="#"></i>User Registration</a></li>
			<li><a href="#"></i>Licensing</a></li>




			<li><a href="#" class="serv-btn41111">Society <span
					class="fas fa-caret-down sixth1111"></span>
			</a>
				<ul class="serv-show41111">
					<li><a href="#"></i>List</a></li>
					<li><a href="#">Registered Society</a></li>
					<li><a href="#">Society Pass</a></li>

				</ul></li>



			<li><a href="#"></i>Staff</a></li>
			<li><a href="#"></i>Communty Registration</a></li>
		</ul>
	</nav>
	<script>
              $('.feat-btn').click(function(){
                $('nav ul .feat-show').toggleClass("show");
                 $('nav ul .first').toggleClass("rotate");
            });
             $('.feat-btn1').click(function(){
                $('nav ul ul .feat-show1').toggleClass("show2");
                 $('nav ul ul .third').toggleClass("rotate");
            });
            $('.feat-btn2').click(function(){
                $('nav ul ul .feat-show2').toggleClass("show3");
                 $('nav ul ul .third').toggleClass("rotate");
            });

             $('.serv-btn').click(function(){
                $('nav ul .serv-show').toggleClass("show1");
                 $('nav ul .second').toggleClass("rotate");
            });

             $('.serv-btn3').click(function(){
                $('nav ul .serv-show3').toggleClass("show4");
                 $('nav ul .fifth').toggleClass("rotate");
            });
			
			 $('.serv-btn32').click(function(){
                $('nav ul .serv-show32').toggleClass("show42");
                 $('nav ul .fifth32').toggleClass("rotate");
            });
			 $('.serv-btn33').click(function(){
                $('nav ul .serv-show33').toggleClass("show43");
                 $('nav ul .fifth33').toggleClass("rotate");
            });
             $('.serv-btn4').click(function(){
                $('nav ul .serv-show4').toggleClass("show5");
                 $('nav ul .sixth').toggleClass("rotate");
            });
             $('.sa-btn').click(function(){
                $('nav ul .sa-show').toggleClass("show6");
                 $('nav ul .seventh').toggleClass("rotate");
            });
            $('.sa-btn1').click(function(){
                $('nav ul ul .sa-show1').toggleClass("show7");
                 $('nav ul .eightth').toggleClass("rotate");
            });
			$('.serv-btn1').click(function(){
                $('nav ul .serv-show1').toggleClass("show11");
                 $('nav ul .second1').toggleClass("rotate");
            });
             $('.serv-btn31').click(function(){
                $('nav ul .serv-show31').toggleClass("show41");
                 $('nav ul .fifth1').toggleClass("rotate");
            });
             $('.serv-btn41').click(function(){
                $('nav ul .serv-show41').toggleClass("show51");
                 $('nav ul .sixth1').toggleClass("rotate");
            });
			$('.serv-btn411').click(function(){
                $('nav ul .serv-show411').toggleClass("show511");
                 $('nav ul .sixth11').toggleClass("rotate");
            });
			$('.serv-btn4111').click(function(){
                $('nav ul .serv-show4111').toggleClass("show5111");
                 $('nav ul .sixth111').toggleClass("rotate");
            });
			$('.serv-btn41111').click(function(){
                $('nav ul .serv-show41111').toggleClass("show51111");
                 $('nav ul .sixth1111').toggleClass("rotate");
            });
             $('nav ul li').click(function(){
                $(this).addClass("active").siblings().removeClass("active");
            });
        </script>


	<center>
		<div id="initialContent" class="cd-content-wrapper">
			<br>

			<div class="color-box">
				<label for="lname"><center>
						<h3>Security Notification</h3>
					</center></label> <br> Security asking for approval
			</div>
			<br> <br>



			<div class="color-box">
				<label for="lname"><center>
						<h3>Society Access Approval Request</h3>
					</center></label> <br> Society access approval
			</div>
			<br> <br>


			<div class="color-box">
				<label for="lname"><center>
						<h3>General Notice</h3>
					</center></label> <br> Management approval for event
			</div>
			<br>


		</div>

		<div id="content"></div>

	</center>
</body>
<script type="text/javascript">
 /* function divload(article)
  {
	alert("onload call:"+article);
	document.getElementById("content").innerHTML = "../test/SocietyEnrolment/SocietyEnrolmentDetails.htm";
  }*/

  $(document).ready( function() {
	
    $("#enrollmentDetails").click( function(event) {
		$("#initialContent").hide();
		event.preventDefault();
        $("#content").load("/societySecure/enrollment");

	});


	 $("#vaDeliveryEntry").click( function(event) {
			$("#initialContent").hide();
			event.preventDefault();
	        $("#content").load("/societySecure/visitoraccess/delivery/entry");

	});



    $("#vaGuestEntry").click( function(event) {
		$("#initialContent").hide();
		event.preventDefault();
        $("#content").load("/societySecure/visitoraccess/guest/entry");

	});

    $("#vaHelperEntry").click( function(event) {
		$("#initialContent").hide();
		event.preventDefault();
        $("#content").load("/societySecure/visitoraccess/helper/entry");

	});
    $("#vaTaxiEntry").click( function(event) {
		$("#initialContent").hide();
		event.preventDefault();
        $("#content").load("/societySecure/visitoraccess/taxi/entry");

	});

	$("#home").click( function(event){
		$("#initialContent").hide();
		event.preventDefault();
        $("#content").load("/societySecure/homeInitial");
	});

	$("#activityNotifications").click( function(event){
		$("#initialContent").hide();
		event.preventDefault();
        $("#content").load("/societySecure/activity/notofications");
	});

	//Households 
	//DailyGuest
	$("#houseHoldsDailyGuest").click( function(event){
		$("#initialContent").hide();
		event.preventDefault();
        $("#content").load("/societySecure/houseHolds/dailyGuest");
	});

	// DailyDelivery
	$("#houseHoldsDailyDelivery").click( function(event){
		$("#initialContent").hide();
		event.preventDefault();
        $("#content").load("/societySecure/houseHolds/daliyDelivery");
	});

	//DailyHelper
	$("#houseHoldsDailyHelper").click( function(event){
		$("#initialContent").hide();
		event.preventDefault();
        $("#content").load("/societySecure/houseHolds/dailyHelper");
	});

	//Family Member
	$("#houseHoldsFamilyMember").click( function(event){
		$("#initialContent").hide();
		event.preventDefault();
        $("#content").load("/societySecure/houseHolds/familyMember");
	});
	

	//Vehicles
	$("#houseHoldsVehicle").click( function(event){
		$("#initialContent").hide();
		event.preventDefault();
        $("#content").load("/societySecure/houseHolds/vehicles");
	});

	//Tenats
	$("#tenats").click(function(event){
		$("#initialContent").hide();
		event.preventDefault();
		$("#content").load("/societySecure/houseHolds/tenant");

	});

	//My Neighbour
	$("#houseHoldsMyNeighbour").click( function(event){
		$("#initialContent").hide();
		event.preventDefault();
        $("#content").load("/societySecure/houseHolds/myNeighbour");
	});

	//Instant Action
	
	//Society Activation
	$("#instantActionSocietyActivation").click( function(event){
		$("#initialContent").hide();
		event.preventDefault();
        $("#content").load("/societySecure/instantAction/societyActivation");
	});

	//Approval
	
	//Flat
	
	$("#approvalFlat").click( function(event){
		$("#initialContent").hide();
		event.preventDefault();
        $("#content").load("/societySecure/approval/flat");
	});

	$("#approvalNeighbourhood").click(function(event){
		$("#initialContent").hide();
		event.preventDefault();
		$("#content").load("/societySecure/approval/neighbourhoodDtails");
	});

	
  });
		/*	var xhr = new XMLHttpRequest();
		xhr.open("GET", "../SocietyEnrolment/SocietyEnrollmentDetails.htm", true);
		xhr.onreadystatechange = function() {
		 if (xhr.readyState == 4) {
		// WARNING! Might be injecting a malicious script!
		document.getElementById("content").innerHTML = xhr.responseText;
		
	  }
	}
	xhr.send();
		});*/
	
  </script>
</html>