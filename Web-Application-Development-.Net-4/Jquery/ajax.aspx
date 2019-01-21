<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ajax.aspx.cs" Inherits="Jquery.ajax" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous" />

    <title></title>
</head>
<body>



    <div class="container">
        <div class="row">
            <div class="col-2 border text-right ">
                <button type="button" id="btnGetFile" class="btn btn-primary"> get a file</button>
            </div>
            <div id="content" class="col-9 border ml-2 ">

            </div>
        </div>
       <div class="row">
            <div class="col-2 border text-right ">
                <button type="button" id="btnGetJson" class="btn btn-primary"> get a Json</button>
            </div>
            <div id="contentJson" class="col-9 border ml-2 ">

            </div>
        </div>
        <div class="row">
            <div class="col-2 border text-right ">
                <button type="button" id="btnGetJsonArray" class="btn btn-primary"> get a Json</button>
            </div>
            <div id="contentJsonArray" class="col-9 border ml-2 "></div>
        </div>
         <div class="row">
            <div class="col-2 border text-right ">
                <button type="button" id="btnGetComplexJson" class="btn btn-primary"> get a Json</button>
            </div>
            <div id="contentComplexJson" class="col-9 border ml-2 "><ul></ul></div>
        </div>
         <div class="row">
            <div class="col-2 border text-right ">
                <button type="button" id="btnGetlessAge" class="btn btn-primary"> get less Age</button>
            </div>
            <div id="contentGetLessAge" class="col-9 border ml-2 "></div>
        </div>
         <div class="row">
            <div class="col-2 border text-right ">
                <button type="button" id="btnGetDataWithAjax" class="btn btn-primary"> get Data With Ajax</button>
            </div>
            <div id="contentGetDataWithAjax" class="col-9 border ml-2 "></div>
        </div>
    </div>


     <script
        src="https://code.jquery.com/jquery-3.3.1.min.js"
        integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
        crossorigin="anonymous">

    </script>
    <script src="ajax.js"></script>
</body>
</html>
