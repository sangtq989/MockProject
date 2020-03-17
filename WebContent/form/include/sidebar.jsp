<div id="layoutSidenav">
    <div id="layoutSidenav_nav">
        <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
            <div class="sb-sidenav-menu">
                <div class="nav">
                    <!-- drop down 1 -->
                    <div class="sb-sidenav-menu-heading">Employee managerment</div>
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#menu1">
                        <div class="sb-nav-link-icon"></div>
                        Employee manager
                        <div class="sb-sidenav-collapse-arrow"><i class="fa fa-angle-down"></i></div>
                    </a>
                    <div class="collapse" id="menu1" data-parent="#sidenavAccordion">
                        <nav class="sb-sidenav-menu-nested nav">
                            <a class="nav-link" href="${pageContext.request.contextPath}/EmployeeServlet?command=LOAD_ADD">
                                <i class="fa fa-plus" aria-hidden="true"></i>
                                <span class="pl-1"></span>
                                <span class="pl-1">Add employee</span>
                            </a>
                            <a class="nav-link" href="${pageContext.request.contextPath}/EmployeeServlet">
                                <i class="fa fa-list" aria-hidden="true"></i>
                                <span class="pl-1">List employee</span>
                            </a>
                        </nav>
                    </div>
                    <!-- drop down 1 -->
                    <div class="sb-sidenav-menu-heading">Car park managerment</div>
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#menu1">
                        <div class="sb-nav-link-icon"></div>
                        Car manager
                        <div class="sb-sidenav-collapse-arrow"><i class="fa fa-angle-down"></i></div>
                    </a>
                    <div class="collapse" id="menu1" data-parent="#sidenavAccordion">
                        <nav class="sb-sidenav-menu-nested nav">
                            <a class="nav-link" href="${pageContext.request.contextPath}/EmployeeServlet?command=LOAD_ADD">
                                <i class="fa fa-plus" aria-hidden="true"></i>
                                <span class="pl-1"></span>
                                <span class="pl-1">Add Car</span>
                            </a>
                            <a class="nav-link" href="${pageContext.request.contextPath}/EmployeeServlet">
                                <i class="fa fa-list" aria-hidden="true"></i>
                                <span class="pl-1">List Car</span>
                            </a>
                        </nav>
                    </div>
                    <!-- drop down 2 -->
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#menu2">
                        <div class="sb-nav-link-icon"></div>
                        Booking office manager
                        <div class="sb-sidenav-collapse-arrow"><i class="fa fa-angle-down"></i></div>
                    </a>
                    <div class="collapse" id="menu2" data-parent="#sidenavAccordion">
                        <nav class="sb-sidenav-menu-nested nav">
                            <a class="nav-link" href="layout-static.html">
                                <i class="fa fa-plus" aria-hidden="true"></i>
                                <span class="pl-1"> Add booking office</span>
                               
                            </a>
                            <a class="nav-link" href="layout-sidenav-light.html">
                                <i class="fa fa-list" aria-hidden="true"></i>
                                <span class="pl-1">List booking office </span>
                            </a>
                        </nav>
                    </div>
                    <!-- drop down 3-->
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#menu3">
                        <div class="sb-nav-link-icon"></div>
                        Parking lot manager
                        <div class="sb-sidenav-collapse-arrow"><i class="fa fa-angle-down"></i></div>
                    </a>
                    <div class="collapse" id="menu3" data-parent="#sidenavAccordion">
                        <nav class="sb-sidenav-menu-nested nav">
                            <a class="nav-link" href="layout-static.html">
                                <i class="fa fa-plus" aria-hidden="true"></i>
                                <span class="pl-1"> Add parking lot</span>
                               
                            </a>
                            <a class="nav-link" href="layout-sidenav-light.html">
                                <i class="fa fa-list" aria-hidden="true"></i>
                                <span class="pl-1">List parking lot</span>                                
                            </a>
                        </nav>
                    </div>
                    <!-- drop down 4 -->
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#menu4">
                        <div class="sb-nav-link-icon"></div>
                        Trip manager
                        <div class="sb-sidenav-collapse-arrow"><i class="fa fa-angle-down"></i></div>
                    </a>
                    <div class="collapse" id="menu4" data-parent="#sidenavAccordion">
                        <nav class="sb-sidenav-menu-nested nav">
                            <a class="nav-link" href="layout-static.html">
                                <i class="fa fa-plus" aria-hidden="true"></i>
                                <span class="pl-1"> Add trip</span>
                               
                            </a>
                            <a class="nav-link" href="layout-sidenav-light.html">
                                <i class="fa fa-list" aria-hidden="true"></i>
                                <span class="pl-1">List trip</span>
                               
                            </a>
                        </nav>
                    </div>
                    <!-- drop down 5 -->
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#menu5">
                        <div class="sb-nav-link-icon"></div>
                        Ticket manager
                        <div class="sb-sidenav-collapse-arrow"><i class="fa fa-angle-down"></i></div>
                    </a>
                    <div class="collapse" id="menu5" data-parent="#sidenavAccordion">
                        <nav class="sb-sidenav-menu-nested nav">
                            <a class="nav-link" href="layout-static.html">
                                <i class="fa fa-list" aria-hidden="true"></i>
                                <span class="pl-1"> List ticket</span>
                               
                            </a>
                            
                        </nav>
                    </div>
                </div>
            </div>
            <div class="sb-sidenav-footer">
                <div class="small">Logged in as:</div>
                Start Bootstrap
            </div>
        </nav>
    </div>
    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid">
                <h1 class="mt-4">Dashboard</h1>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item active">Dashboard</li>
                </ol>
                <div class="card mb-4">
                    <div class="card-header"><i class="fas fa-table mr-1"></i>Title Example</div>
                    <div class="card-body">
