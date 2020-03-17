<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form add employee</title>

	<%@ include file="include/header.jsp" %>
    <%@ include file="include/sidebar.jsp" %>
    <form action="${pageContext.request.contextPath}/EmployeeServlet?command=ADD" method="post" id="employeeForm">
        <div class="form-group row">
            <label for="" class="col-md-3 col-form-label">Full name</label>
            <div class="col-md-9">
                <input type="text" placeholder="Enter your full name" class="form-control" name="employeeName">
            </div>
        </div>
        <div class="form-group row">
            <label for="" class="col-md-3 col-form-label">Phone number</label>
            <div class="col-md-9">
                <input type="text" placeholder="Enter full number" class="form-control" name="employeePhone">
            </div>
        </div>
        <div class="form-group row">
            <label for="" class="col-md-3 col-form-label">Date of birth</label>
            <div class="col-md-9">
                <input type="date" class="form-control" name="employeeBirthdate">
            </div>
        </div>
        <div class="form-group row">
            <label for="" class="col-md-3 col-form-label">Sex</label>
            <div class="col-md-9">
                <div class="form-check form-check-inline">
                    <input type="radio" name="gender" value="1" class="form-check-input">
                    <label for="" class="form-check-label">Male</label>
                </div>
                <div class="form-check form-check-inline">
                    <input type="radio" name="gender" value="2" class="form-check-input">
                    <label for="" class="form-check-label">Female</label>
                </div>
                <div class="form-check form-check-inline">
                    <input type="radio" name="gender" value="3" class="form-check-input">
                    <label for="" class="form-check-label">Other</label>
                </div>
            </div>
        </div>
        <div class="form-group row">
            <label for="" class="col-md-3 col-form-label">Address</label>
            <div class="col-md-9">
                <input type="text" placeholder="Enter your email" class="form-control" name="employeeAddress">
            </div>
        </div>
        <div class="form-group row">
            <label for="" class="col-md-3 col-form-label">Email address</label>
            <div class="col-md-9">
                <input type="email" placeholder="Enter your email" class="form-control" name="employeeEmail">
            </div>
        </div>
        <div class="form-group row">
            <label for="" class="col-md-3 col-form-label">Account</label>
            <div class="col-md-9">
                <input type="text" placeholder="Enter your account" class="form-control" name="employeeAccount">
            </div>
        </div>
        <div class="form-group row">
            <label for="" class="col-md-3 col-form-label">Password</label>
            <div class="col-md-9">
                <input type="password" placeholder="Enter your password" class="form-control" name="employeePassword">
            </div>
        </div>
        <div class="form-group row">
            <label for="" class="col-md-3 col-form-label">Department</label>
            <div class="col-md-9">
                <select id="" class="form-control" name="">
                    <option selected>Choose...</option>
                    <option>...</option>
                </select>
            </div>
        </div>
           <div class="form-group row">
            <label for="" class="col-md-3 col-form-label"></label>
            <div class="col-md-9">
                <button class="btn btn-primary" type="submit">Submit</button>
            </div>
        </div>  
    </form>
 <%@ include file="include/footer.jsp" %>
    <script src="${pageContext.request.contextPath}/public/js/validate/EmployeeValidate.js"></script>

</body>
</html>