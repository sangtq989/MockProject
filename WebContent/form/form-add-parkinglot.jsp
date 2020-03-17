<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form add employee</title>
    <%@ include file="include/header.jsp" %>
    <%@ include file="include/sidebar.jsp" %>
    <form action="#" method="post" id="parkingLotForm">
        <div class="form-group row">
            <label for="" class="col-md-3 col-form-label">Parking name</label>
            <div class="col-md-9">
                <input type="text" placeholder="Enter your Parking name" class="form-control" name="parkingName">
            </div>
        </div>
        <div class="form-group row">
            <label for="" class="col-md-3 col-form-label">Place</label>
            <div class="col-md-9">
                <select id="" class="form-control" name="place">
                    <option selected>Choose...</option>
                    <option>...</option>
                </select>
            </div>
        </div>
        <div class="form-group row">
            <label for="" class="col-md-3 col-form-label">Area(m²)</label>
            <div class="col-md-9">
                <input type="number" class="form-control" name="area">
            </div>
        </div>
        <div class="form-group row">
            <label for="" class="col-md-3 col-form-label">Price</label>
            <div class="col-md-9">
                <input type="text" placeholder="Enter price (VND)" class="form-control" name="price">
            </div>
        </div>    
        <div class="form-row">
            <label for="" class="col-md-3 col-form-label"></label>
            <div class="col-md-9">
                <button class="btn btn-primary" type="submit">OK</button>
            </div>
        </div>         
    </form>
 <%@ include file="include/footer.jsp" %>
    <script src="../public\js\jquery-3.4.1.js"></script>
	<script src="../public\js\bootstrap.js"></script>
    <script src="../public\js\scripts.js"></script>
    <script src="../public\js/validate/jquery.validate.min.js"></script>
 	<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
	<script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
 
    <script src="../public/js/validate/ParkinglotValidate.js"></script>

</body>
</html>