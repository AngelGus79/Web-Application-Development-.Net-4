$(document).ready(function () {

    $('#btnEmployees').click(function (e) {
        e.preventDefault();
        var salaryEmployee = $('#inpEmployeeId').val();

        $.ajax({
            type: "POST",
            url: "myWebServiceasmx.asmx/GetEmployeeById",
            data: { EmployeeId: salaryEmployee },
            dataType: "xml",
            success: function (data) {
                var xmlDoc = $(data);
                $('#EmployeeId').html(xmlDoc.find("EmployeeId").text());
                $('#EmployeeName').html(xmlDoc.find("EmployeeName").text());
                $('#EmployeeSalary').html(xmlDoc.find("EmployeeSalary").text());
                $('#EmployeeAge').html(xmlDoc.find("EmployeeAge").text());
            },
            error: function (err) {
                alert(err);
            }
        });
    });

    /*$('#btnEmployeesJson').click(function (e) {
        e.preventDefault();
        var EmployeeId = $('#inpEmployeeId').val();
        $.ajax({
            url: "index.aspx/GetEmployeeById",
            contentType: "application/json",
            method: "post",
            data: "{EmployeeId:" + EmployeeId + "}",
            dataType: "json",
            success: function (data) {
                $('#EmployeeId').html(data.d.EmployeeId);
                $('#EmployeeName').html(data.d.EmployeeName);
                $('#EmployeeSalary').html(data.d.EmployeeSalary);
                $('#EmployeeAge').html(data.d.EmployeeAge);
            },
            error: function (error) {
                alert(error);
            }

        })

    });
    */

    $('#btnEmployeesJson').click(function (e) {
        e.preventDefault();
        var EmployeeId = $('#inpEmployeeId').val();
        $.ajax({
            url: "/WCFAjax.svc/GetEmployees",
            contentType: "application/json",
            method: "post",
            data: "{}",
            dataType: "json",
            success: function (data) {
                var Employees = data.d;
                console.log(Employees);
                for (var i = 0; i < Employees.length; i++)
                {
                    $('.collapse').append('Id: ' + Employees[i].EmployeeId + ' Name: ' + Employees[i].EmployeeName + ' BirthDay: ' + Employees[i].EmployeeAge + ' Salary: ' + Employees[i].EmployeeSalary + '<br/>');
                }
            },
            error: function (error) {
                alert(error);
            }

        })

    });

    $('#btnTable').click(function (e) {
        e.preventDefault();
        var table = $('#tblEmployees').DataTable({
            destroy: true,
            responsive: true,
            ajax: {
                method: "POST",
                url: "index.aspx/GetEmployees",
                dataType: "json",
                contentType: "application/json",
                data: function (d) {
                    console.log(d);
                    return JSON.stringify(d);
                },
                dataSrc: "d.ListEmployees"
            },
            columns:
                [
                    { "data": "EmployeeId" },
                    { "data": "EmployeeName" },
                    { "data": "EmployeeAge" },
                    { "data": "EmployeeSalary" }

                ]
        });

    });


});