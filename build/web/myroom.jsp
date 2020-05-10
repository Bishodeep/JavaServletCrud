<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Accommodation Portal</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body>
	<%@include file='navbaruser.jsp'%>
	<div class="col-md-12 container " style="height: 700px">
		<div class="card">
			<div class="card-body">
				<div class="list-part">
					<h4 class="card-title">Your Room</h4>
				</div>
				<div class="col-sm-12">
						<div class="card">
							<div class="card-body">
								<h5 class="card-title">${room.getTypeName()}</h5>
								<ul>
									<li>Location: ${room.getLocation()}</li>
									<li>Monthly Charge: ${room.getMonthlyCharge()}</li>
									<li>Available: ${room.getAvailable()}</li>
								</ul>
								<p>Description:</p>
								<p>${room.getDescription()}</p>
                                                                <a class="btn btn-primary"
										href="payment" />Pay Rent
										now</a>
							</div>
						</div>
					</div>
			</div>
		</div>
	</div>
</body>
</html>