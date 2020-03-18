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
                    <th>ID</th>
                    <th>Parking lot</th>
                    <th>Place</th>
                    <th>Area</th>
                    <th>Price</th>
                    <th>Status</th>                                       
                   <th colspan="2">Action</th>           
                </tr>
            </thead>
            <tfoot>
                <tr>
                    <th>ID</th>
                    <th>Parking lot</th>
                    <th>Place</th>
                    <th>Area</th>
                    <th>Price</th>
                    <th>Status</th>                                       
                   <th colspan="2">Action</th>
                </tr>
            </tfoot>
            <tbody>
             <c:forEach var="parkingLot" items="${LIST_PARKING_LOT}">
             
	            <c:url var="deleteLink" value="ParkingLotServlet">
						<c:param name="command" value="DELETE" />
						<c:param name="parkingLotID" value="${parkingLot.parkId}" />
				</c:url>
				<c:url var="updateLink" value="ParkingLotServlet">
						<c:param name="command" value="LOAD_UPDATE" />
						<c:param name="parkingLotID" value="${parkingLot.parkId}" />
				</c:url>
                <tr>
                    <td>${parkingLot.parkId}</td>
                    <td>${parkingLot.parkName}</td>
                    <td>${parkingLot.parkArea}</td>
                    <td>${parkingLot.parkPlace}</td>
                    <td>${parkingLot.parkPrice}</td>
                    <td>${parkingLot.parkStatus}</td>                
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