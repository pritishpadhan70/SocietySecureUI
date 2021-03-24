<!DOCTYPE html>
<html>

    <head>
           <title>Minor Exit Permission</title>
		   <link rel="stylesheet" type="text/css" href="../../assets/css/main.css">

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
  text-align: right;
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
            <h1>Permission for Exit of Minor from Society</h1>
    </div>

    <!-- form body -->
    <div class="form-body">

<div class="horizontal-group">

    <div class="form-group">

               <label for="first">
                <input type="radio" id="one" name="one" value="first" >Notify me if not returned in 1 hour to Society</label>    <br>
              <label for="second">
                <input type="radio" id="one" name="one" value="second">Notify me if not returned in 4 hour to Society</label>   <br>
              <label for="third">
                <input type="radio" id="one" name="one" value="third">Notify me if not returned in 8 hour to Society</label>  <br>
              <label for="fourth">
                <input type="radio" id="one" name="one" value="fourth">Notify me if not returned by evening (9 PM) to Society</label>         <br>


    </div>

</div>



</div>
    <!-- form footer -->
    <div class="form-footer">
     <button type="allow" class="btn">Allow</button>
         <button type="deny" class="btn">Deny</button>
    </div>


        </form>

    </body>
</html>