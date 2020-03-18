<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form add employee</title>
   	<%@ include file="include/header.jsp" %>
    <%@ include file="include/sidebar.jsp" %>

	<c:if test="${not empty param.message}">
	   	<span class="row alert alert-danger">
			${param.message}
        </span>
	</c:if>
	<c:if test="${not empty param.success}">
	   	<span class="row alert alert-success">
			${param.success}
        </span>
	</c:if>
    <div class="table-responsive">
        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
            <thead>
                <tr>
                    <th>Lisence Plate</th>
                    <th>Color</th>
                    <th>Car type</th>
                    <th>Car company</th>
                    <th>Car parking lot</th>                       
                    <th colspan="2">Action</th>             
                </tr>
            </thead>
            <tfoot>
                <tr>
                    <th>License Plate</th>
                    <th>Color</th>
                    <th>Car type</th>
                    <th>Car company</th>
                    <th>Car parking lot</th>                       
                    <th colspan="2">Action</th>     
                </tr>
            </tfoot>
            <tbody>
             <c:forEach var="car" items="${LIST_CAR}">
             <c:url var="deleteLink" value="CarServlet">
					<c:param name="command" value="DELETE" />
					<c:param name="licensePlate" value="${car.licensePlate}" />
			</c:url>
			<c:url var="updateLink" value="CarServlet">
					<c:param name="command" value="LOAD_UPDATE" />
					<c:param name="licensePlate" value="${car.licensePlate}" />
			</c:url>
                <tr>
                    <td>${car.licensePlate}</td>
                    <td>${car.carColor}</td>
                    <td>${car.carType}</td>
                    <td>${car.company}</td>                    
                    <td>${car.parkId.parkName}</td> 
                    <td><a href="${deleteLink}">Delete</a></td>
                    <td><a href="${updateLink}">Update</a></td>                               
                </tr>  
               </c:forEach>             
            </tbody>
        </table>
    </div>

    <%@ include file="include/footer.jsp" %>

</body>
</html>