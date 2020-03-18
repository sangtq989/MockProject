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


    <div class="table-responsive">
        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
            <thead>
                <tr>
                 	<th>ID</th>
                    <th>Booking office</th>
                    <th>Trip</th> 
                    <th>Action</th>             
                </tr>
            </thead>
            <tfoot>
                <tr>
                   	<th>ID</th>
                    <th>Booking office</th>
                    <th>Trip</th> 
                    <th>Action</th>    
                </tr>
            </tfoot>
            <tbody>
             <c:forEach var="office" items="${LIST_BOOKINGOFFICE}">
             <!-- set up a link to delete a emp -->
				<c:url var="deleteLink" value="BookingOfficeServlet">
					<c:param name="command" value="DELETE" />
					<c:param name="officeId" value="${office.officeId}" />
				</c:url>
                <tr>
                    <td>${office.officeId}</td>
                    <td>${office.officeName}</td>
                    <td>${office.trip.destination}</td>                    
                    <td><a href="${deleteLink}">Delete</a></td>                           
                </tr>  
               </c:forEach>             
            </tbody>
        </table>
    </div>

    <%@ include file="include/footer.jsp" %>

</body>
</html>