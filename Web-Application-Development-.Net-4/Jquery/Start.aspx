<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Start.aspx.cs" Inherits="Jquery.Start" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>This is the jquery project</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous" />
</head>
<body>

    <div class="container">
        <div class="row">

            <div class="col-4 " style="height: 150px; background-color: azure;">
                <div class="row align-items-center h-100">
                    <div class="col-12">
                        <button type="button" id="btnAccept" class="btn btn-primary btn-block ">Add </button>
                    </div>
                    <div class="col-12">
                        <button type="button" id="btnCancel" class="btn btn-danger btn-block ">Remove</button>

                    </div>
                    <div class="col-12">
                        <button type="button" id="btnClose" class="btn btn-secondary btn-block ">Toggle

                        </button>

                    </div>
                </div>
            </div>
            <div class="col-8" style="height: 150px; background-color: aqua;">
                <div class="row h-100">
                    <div class="col-12 align-self-center">
                        <h1 id="myId" style="color:black;font-size:12px">this is an h1</h1>
                        <h1 id="otherId" class="myClass text-right">this is another h1</h1>
                        <p style=" font-size:larger; color: white">this is a paragraph</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row mt-3" style="height: 500px; background-color: aliceblue">
            <div class="col h-100">
                <button type="button" class="btn btn-primary" id="btnAdd">Add</button>
                <button type="button" class="btn btn-secondary" id="btnRemove">Remove</button>
                <button type="button" class="btn btn-danger" id="btnToggle">Toggle</button>
                <br />
                <img />

                <br />
                <form action="/"  method="post">
<input type="text" name="input" id="idInput" class="form-control mt-3" placeholder="enter your name"/>
                    <button type="submit" class="btn btn-danger mt-2" id="btnName">
                        Add a Name
                    </button>
                </form>
                
                
            </div>
        </div>
        <div class="row mt-2">
            <div class="col-2">
                <button type="button"  id="btnShow" class="btn btn-primary btn-block">Show</button>
                <button type="button" id="btnHide" class="btn btn-secondary btn-block">Hide</button>
                <button type="button" id="btnToggle1" class="btn btn-danger btn-block">Toggle</button>
                <button type="button"  id="btnFadeIn" class="btn btn-primary btn-block">FadeIn</button>
                <button type="button" id="btnFadeOut" class="btn btn-secondary btn-block">FadeOut</button>
                <button type="button" id="btnFadeToogle" class="btn btn-danger btn-block">FadeToggle</button>
            </div>
            <div class="col-10">
                <img id="img" />
            </div>
        </div>

        <div class="row">
            <div class="col">
                <button type="button" id="btnAnimation" class="btn btn-primary">Animate</button>
                <div id="square" style=" position:absolute;  height:100px; width:100px; background-color:blueviolet;">

                </div>

            </div>
        </div>
        <div class="row">

            <div class="col-2">
                <button type="button" class="btn btn-primary"></button>
            </div>
            <div class="col-10">

            </div>
        </div>
    </div>

    <script
        src="https://code.jquery.com/jquery-3.3.1.min.js"
        integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
        crossorigin="anonymous">

    </script>
    <script src="app.js"></script>
</body>
</html>
