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
                    <th>No</th>
                    <th>Trip</th>
                    <th>Car type</th>
                    <th>Departure date</th>
                    <th>Departure time</th>
                    <th>Destination</th>
                    <th>Driver</th>  
                    <th colspan="2">Action</th>             
                </tr>
            </thead>
            <tfoot>
                <tr>
                    <th>No</th>
                    <th>Trip</th>
                    <th>Car type</th>
                    <th>Departure date</th>
                    <th>Departure time</th>
                    <th>Maximum ticket</th>
                    <th>Driver</th>                    
                    <th colspan="2">Action</th>
                </tr>
            </tfoot>
            <tbody>
             <c:forEach var="trip" items="${LIST_TRIP}">
             <c:url var="deleteLink" value="TripServlet">
					<c:param name="command" value="DELETE" />
					<c:param name="tripID" value="${trip.tripId}" />
				</c:url>
                <tr>
                    <td>${trip.tripId}</td>
                    <td>${trip.destination}</td>
                    <td>${trip.carType}</td>
                    <td>${trip.departureDate}</td>
                    <td>${trip.departureTime}</td>
                    <td>${trip.maximumOnlineTicketNumber}</td>
                    <td>${trip.driver}</td>
                    <td><a href="${deleteLink}">Delete</a></td>                      
                </tr>  
               </c:forEach>             
            </tbody>
        </table>
    </div>

    <%@ include file="include/footer.jsp" %>

</body>
</html>