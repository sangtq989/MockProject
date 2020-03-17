<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form add employee</title>
    <link href="public\css\styles.css" rel="stylesheet" />
</head>

<body class="sb-nav-fixed">
    <%@ include file="include/header.jsp" %>
    <%@ include file="include/sidebar.jsp" %>

    <!-- form content -->
    <form action="#" method="post" id="carForm">
        <div class="form-group row">
            <label for="" class="col-md-3 col-form-label">Car license plate</label>
            <div class="col-md-9">
                <input type="text" placeholder="Enter Car license plate" class="form-control" name="licensePlate">
            </div>
        </div>
        <div class="form-group row">
            <label for="" class="col-md-3 col-form-label">Car type</label>
            <div class="col-md-9">
                <input type="text" placeholder="Enter Car type" class="form-control" name="carType">
            </div>
        </div>
        <div class="form-group row">
            <label for="" class="col-md-3 col-form-label">Car color</label>
            <div class="col-md-9">
                <input type="text" class="form-control" placeholder="Enter car color" name="carColor">
            </div>
        </div>
        <div class="form-group row">
            <label for="" class="col-md-3 col-form-label">Company</label>
            <div class="col-md-9">
                <select id="" class="form-control" name="company">
                    <option value="" selected>Choose...</option>
                    <option value="1">...</option>
                </select>
            </div>
        </div>
        <div class="form-group row">
            <label for="" class="col-md-3 col-form-label">Company</label>
            <div class="col-md-9">
                <select id="" class="form-control" name="parkingLot">
                    <option value="" selected>Choose...</option>
                    <option value="1">...</option>
                </select>
            </div>
        </div>
        <div class="form-row">
            <label for="" class="col-md-3 col-form-label"></label>
            <div class="col-md-9">
                <button class="btn btn-primary" type="submit">OK</button>
            </div>
        </div>
    </form>
    <!-- end form content -->

    <%@ include file="include/footer.jsp" %>



    <script src="public\js\jquery-3.4.1.js"></script>
    <script src="public\js\bootstrap.js"></script>
    <script src="public\js\scripts.js"></script>
    <script src="public\js/validate/jquery.validate.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>

    <script src="public/js/validate/CarValidate.js"></script>

</body>

</html>