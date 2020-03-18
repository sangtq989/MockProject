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
				<th>Name</th>
				<th>Account</th>
				<th>Department</th>
				<th>Address</th>
				<th>Birth date</th>
				<th>Email</th>
				<th>Phone</th>
				<th>Gender</th>
				<th>Action</th>
			</tr>
		</thead>
		<tfoot>
			<tr>
				<th>Name</th>
				<th>Account</th>
				<th>Department</th>
				<th>Address</th>
				<th>Birth date</th>
				<th>Email</th>
				<th>Phone</th>
				<th>Gender</th>
				<th>Action</th>
			</tr>
		</tfoot>
		<tbody>
			<c:forEach var="emp" items="${LIST_EMP}">				
				<!-- set up a link to delete a emp -->
				<c:url var="deleteLink" value="EmployeeServlet">
					<c:param name="command" value="DELETE" />
					<c:param name="empID" value="${emp.employeeId}" />
				</c:url>
				<tr>
					<td>${emp.employeeName}</td>
					<td>${emp.account}</td>
					<td>${emp.department}</td>
					<td>${emp.employeeAddress}</td>
					<td>${emp.employeeBirthDate}</td>
					<td>${emp.employeeEmail}</td>
					<td>${emp.employeePhone}</td>
					<c:if test="${emp.sex == 1}">
						<td>Male</td>
					</c:if>
					<c:if test="${emp.sex == 0}">
						<td>Female</td>
					</c:if>
					<c:if test="${emp.sex == 2}">
						<td>Other</td>
					</c:if>						
					<td><a href="${deleteLink}">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>

<%@ include file="include/footer.jsp"%>
</body>
</html>