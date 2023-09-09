<!DOCTYPE html>
<html>
<head>
	<script
			src="https://code.jquery.com/jquery-3.6.0.min.js"
			integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
			crossorigin="anonymous">
	</script>
	<style>
		#bg {
			background-color:maroon;
			border:2px solid whitesmoke;

			padding: 40px;
			position: absolute;
			margin-left: 200px;
			margin-top: 10px;
			height: 1200px;
			width: 780px;
			line-height:0px;
		}

		h1 {
			color: lightsalmon;
			text-align: center;
			padding: 0px;
			font-size: 30px;
		}
		#form {
			background-color:lightsalmon;
			border: 2px solid black;

			padding: 40px;
			position: absolute;
			margin-left: auto;
			margin-right: auto;
			margin-top: 20px;
			height: 950px;
			width: 700px;
			line-height:0px;
		}
		#table{

			height: 950px;
			width: 700px;
			text-align: justify;
			color: white;
			font-weight: bold;
			font-style: normal;
			font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
		}
		th{
			text-align: center;
		}
		td{
			padding: 2px;
			justify-content: left;
		}

		tr{
			padding: 30px;
			width: 200px;
			border-collapse: separate;
			text-align: left;
		}
		a{
			text-align: center;
			font-size: xx-large;
			font-weight: bold;
			color: slateblue;
		}
		input,select {
			color: #5a5854;
			background-color: #f2f2f2;
			padding: 4px 4px 4px 2px;
			border-radius: 10px;
			margin-bottom: 1px;
		}
		input:focus {
			background-color: #ffffff;
			border: 2px solid #b1e1e4;
			border-spacing: 2px 2px;
		}
		input#email {

			background-repeat: no-repeat;
			background-position: 1px;
			background-size: 35px 35px;
			padding: 4px;

			margin-bottom: 10px;
		}
	</style>
</head>
<body>
<div id="bg">
	<br>
	<b><u> <h1 >STUDENT REGISTRATION FORM</h1></u> </b>
	<div id="form">
		<form method="get" action="submit.html">
			<table id="table">
				<tr>
					<td>FIRST NAME:</td>
					<td>
						<input type="text" id="signup-first-name" name="username"
							   placeholder="Enter first name" required=""/>
						(max 30 characters A-Z and a-z)
					</td>
				</tr>
				<tr>
					<td>LAST NAME:
					</td>
					<td><input type="text" id="signup-last-name" name="username"
							   placeholder="Enter last name" required=""/>
						(max 30 characters A-Z and a-z)
					</td>
				</tr>
				<tr><td>
					DATE OF BIRTH:
				</td>
					<td>
						<input id ="DOB" type="date" placeholder="date-of-birth" name="DOB" required=""/>
					</td>
				</tr>
				<tr>
					<td>EMAIL ID:
					</td>
					<td><input id="signup-email" type="email" name="email" required=""/>
					</td>
				</tr>
				<tr>
					<td>
						MOBILE NO:
					</td>
					<td><input id="Mob-NUMBER" type="tel" name="number" maxlength="12"
							   placeholder="Enter Mobile no" required=""/>
						(10 digits number)
					</td>
				</tr>
				<tr>
					<td>GENDER:</td>
					<td><input id="female" type="radio" name="gender"
							   value="f" >
						<label for="female">Female</label>
						<input id="male" type="radio" name="gender"
							   value="m">
						<label for="male">Male</label>
						<input id="none" type="radio" name="gender"
							   value="n">
						<label for="none">Don't Want to disclose</label>
					</td>
				</tr>
				<tr>
					<td>HOBBIES: </td>
					<td>
						<input type="checkbox" name="Singing" value="Singing"  /> Singing
						<input type="checkbox" name="HOBBIES"
							   value="dancing" /> Dancing
						<input type="checkbox" name="HOBBIES"
							   value="Drawing" /> Drawing
						<input type="checkbox" name="HOBBIES"
							   value="Sketching" /> Sketching
						<br/>
						<input type="checkbox" name="HOBBIES"
							   value="Others" /> Others <br><input type="text" name="HOBBIES" size="30"
																   maxlength="30" placeholder="Enter any other hobby" />
					</td>
				</tr>
				<tr>
					<td >BRANCH:</td>
					<td><input id="Branch" type="text" name="BRANCH" size="30"
							   maxlength="30" placeholder="Enter your branch name" />
					</td>
				</tr>
				<tr>
					<td>PASSWORD: </td>
					<td><input id="signup-password" type="password" id="signup-password" name="PASSWORD"
							   minlength="8" placeholder="Give your pssword" required=""/>
						(min 8 length A-Z, a-z, 0-9)
					</td>
				</tr>
				<tr>
					<td>
						<button type="button" id="submit-button">Submit</button>
						<button id="reset-button" type="reset">Reset</button>
						<p style="color:red; display:none" id="signup-error"></p>
					</td>
				</tr>
			</table>

		</form>

	</div>

</div>
<script>
	function validateSignUpForm(){
		var firstname = $("#signup-first-name").val();
		var lastname = $("#signup-last-name").val();
		var email = $("#signup-email").val();
		var password = $("#signup-password").val();

		var error = "";

		if(!firstname){
			error += "First Name is Empty";
		}
		if(!lastname){
			error += "Last Name is Empty";
		}
		if(!email){
			error += "Email is Empty";
		}
		if(!password){
			error += "Password is empty";
		}
		if(password.length <= 3){
			error +="Password Length Must Be Greater Than 3 Characters";
		}
		debugger;

		$("#signup-error").html(error);

		if(error.length > 0){
			return false;
		}
		return true;
	}
	$("#submit-button").click(function(){
		var isFormValid = validateSignUpForm();
		if(isFormValid){
			alert(isFormValid);
			$("#signup-error").hide();
		}else{
			alert(isFormValid);
			$("#signup-error").show();
		}

	});
</script>

</body>


</html>