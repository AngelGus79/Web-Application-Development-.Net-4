<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebServicesAndWCF.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="https://bootswatch.com/4/lux/bootstrap.min.css" rel="stylesheet" />
    <link href="//cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" rel="stylesheet" />
    <link href ="Styles.css" rel="stylesheet" />
</head>
<body>

    <header >
        <nav class="navbar navbar-expand-sm navbar-light fixed-top">
            <a href="#" class="navbar-brand"> Employees  </a>
            <div class="collapse navbar-collapse justify-content-end">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a href="#" class="nav-link">Customers</a>
                       
                    </li>
                    <li class="nav-item">
                       
                        <a href="#" class="nav-link">Sales</a>
                      
                    </li>
                    <li class="nav-item">
                      
                        <a href="#" class="nav-link">Products</a>
                    </li>
                </ul>

            </div>
        </nav>


    </header>

    <section>
        <div class="card text-center">
            <div class="card-header">
                <div class="card-title"> Employees</div>
            </div>
            <div class="card-body">
                <div class="form-group">
                    <input id="inpEmployeeId" class="form-control" type="number" placeholder="Enter ID" />
                </div>
                <div class="form-group">
                    <button id="btnEmployees" type="button" class="btn btn-primary btn-block">Submit</button>
                    <button id="btnEmployeesJson" type="button" class="btn btn-primary btn-block">Submit Json</button>
                    <button id="btnTable" type="button" class="btn btn-primary btn-block">Submit Table</button>
                </div>
                <div class="form-group">
                    <table class="table">
                        <tr>
                            <td>ID</td>
                            <td id="EmployeeId"> </td>
                        </tr>
                        <tr>
                            <td>Name</td>
                            <td id="EmployeeName"> </td>
                        </tr>
                        <tr>
                            <td>Salary</td>
                            <td id="EmployeeSalary"> </td>
                        </tr>
                        <tr>
                            <td>BirthDay</td>
                            <td id="EmployeeAge"> </td>
                        </tr>
                    </table>

                    <table id="tblEmployees">
                        <thead>
                            <th>EmployeeId</th>
                            <th>EmployeeName</th>
                            <th>EmployeeAge</th>
                            <th>EmployeeSalary</th>

                        </thead>
                        
                    </table>
                </div>
            </div>
            <div class="card-footer">
                List of employees
            </div>
        </div>
    </section>



<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
    <script src="//cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <script src="Scripts.js"></script>
</body>
</html>
