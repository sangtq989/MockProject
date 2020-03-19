<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Form add employee</title>
<%@ include file="include/header.jsp"%>
<%@ include file="include/sidebar.jsp"%>


<div class="table-responsive">
	<table class="table table-bordered" id="dataTable" width="100%"
		cellspacing="0">
		<thead>
			<tr>
				<th>ID</th>
				<th>Trip</th>
				<th>License Plate</th>
				<th>Customer</th>
				<th>Booking time</th>
				<th>Departure time</th>
				<th>Action</th>
			</tr>
		</thead>
		<tfoot>
			<tr>
				<th>ID</th>
				<th>Trip</th>
				<th>License Plate</th>
				<th>Customer</th>
				<th>Booking time</th>
				<th>Departure time</th>
				<th>Action</th>
			</tr>
		</tfoot>
		<tbody>
			<c:forEach var="ticket" items="${LIST_TICKET}">
				<tr>
					<td>${ticket.employeeName}</td>
					<td>${ticket.account}</td>
					<td>${ticket.department}</td>
					<td>${ticket.employeeAddress}</td>
					<td>${ticket.employeeBirthDate}</td>
					<td>${ticket.employeeEmail}</td>					
					<td>Update</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>

<%@ include file="include/footer.jsp"%>
</body>
</html>