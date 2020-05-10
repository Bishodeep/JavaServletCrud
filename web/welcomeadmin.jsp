<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Accommodation Portal</title>

</head>
<body>
	<%@include file='navbaradmin.jsp'%>
	<div class="col-md-12 container " style="height: 700px">
		<div class="card">
			<div class="card-body">
				<div class="list-part">
					<h4 class="card-title">Accommodation Type</h4>

					<div class="inner-list-part d-flex" style="float: right;">
						<form class="form-inline my-2 my-lg-0"
							action="addaccommodationtype" method="get">
							<button class="btn btn-success my-2 my-sm-0" type="submit">Add</button>
						</form>
					</div>
				</div>
				<table class="table table-bordered table-striped table-hover">
					<thead>
						<tr>
							<th>Type</th>
							<th>Available</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="room" items="${listRoomType}">
							<tr>
								<td><c:out value="${room.getType()}" /></td>
								<td><c:out value="${room.getAvailable()}" /></td>
								<td><a
									href="editroomtype?id=<c:out value='${room.getId()}' />">Edit</a>
									&nbsp;&nbsp;&nbsp;&nbsp; <a
									href="deleteroomtype?id=<c:out value='${room.getId()}' />">Delete</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>


		<div class="card">
			<div class="card-body">
				<div class="list-part">
					<h4 class="card-title">Available Rooms</h4>
					<div class="inner-list-part d-flex" style="float: right;">
						<form class="form-inline my-2 my-lg-0" action="addaccommodation"
							method="get">
							<button class="btn btn-success my-2 my-sm-0" type="submit">Add</button>
						</form>
					</div>
				</div>
				<table class="table table-bordered table-striped table-hover">
					<thead>
						<tr>
							<th>Type</th>
							<th>Location</th>
							<th>Monthly Charge</th>
							<th>Room available</th>
							<th>Room description</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="room" items="${listRoom}">
							<tr>
								<td><c:out value="${room.getTypeName()}" /></td>
								<td><c:out value="${room.getLocation()}" /></td>
								<td><c:out value="${room.getMonthlyCharge()}" /></td>
								<td><c:out value="${room.getAvailable()}" /></td>
								<td><c:out value="${room.getDescription()}" /></td>
								<td><a
									href="editroom?id=<c:out value='${room.getId()}' />">Edit</a>
									&nbsp;&nbsp;&nbsp;&nbsp; <a
									href="deleteroom?id=<c:out value='${room.getId()}' />">Delete</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
            <div class="card">
			<div class="card-body">
				<div class="list-part">
					<h4 class="card-title">Assigned Room to Students</h4>
				</div>
				<table class="table table-bordered table-striped table-hover">
					<thead>
						<tr>
							<th>Student Name</th>
							<th>Room Type</th>
                                                        <th>Room Description</th>
							<th>Payment Status</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="studentroom" items="${listStudentRoom}">
							<tr>
								<td><c:out value="${studentroom.getName()}" /></td>
								<td><c:out value="${studentroom.getRoomType()}" /></td>
								<td><c:out value="${studentroom.getDescription()}" /></td>
                                                                <td><c:out value="${studentroom.getPayment()}" /></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>