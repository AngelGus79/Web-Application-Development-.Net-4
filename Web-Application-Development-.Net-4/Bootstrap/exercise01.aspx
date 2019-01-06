<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="exercise01.aspx.cs" Inherits="Bootstrap.exercise01" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link rel="stylesheet" href="Content/bootstrap.min.css" />

    <style type="text/css">
        .borde1 {
            background-color: aqua;
            height: 50px;
            text-align: center;
        }

        .borde2 {
            background-color: green;
            height: 50px;
            text-align: center;
        }

        .borde3 {
            background-color: yellow;
            height: 50px;
            text-align: center;
        }
        .back{
            background-color: gray;
            height: 100px;
        }

    </style>
    <title></title>
</head>
<body>


    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-4 col-lg-4 d-none d-md-block borde1 ">
                one
            </div>
            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-4 col-lg-4 borde2 ">
                two
            </div>
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-4 col-lg-4 borde3 ">
                three
            </div>
        </div>
    </div>



    <div class="container">
        <div class="row">
            <div class="col-6 border">
                <span class="float-left ">izquierda</span>
                <span class="float-right ">derecha</span>
            </div>
            <div class="col-6 border">
                <span class="float-left ">izquierda</span>
                <span class="float-right ">derecha</span>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row d-block">
            <div class="float-sm-right">Extra Small</div>
            <br />
            <div class="float-sm-right">Small</div>
            <br />
            <div class="float-md-right">Medium</div>
            <br />
            <div class="float-lg-right">Large</div>
            <br />
            <div class="float-xl-right">ExtraLarge</div>
            <br />
        </div>
    </div>

    <%-- Use mx-auto  to center a div--%>
    <div class="container">
        <div class="row d-block">
            <div class="mx-auto border" style="width: 200px; text-align: center;">
                this div is centered
            </div>
        </div>
    </div>

    <%-- Using justify-content-<position> to align columns when the 12 espaces are not compleated  --%>
    <div class="container" style="height: 100px; background-color: cadetblue">
        <div class="row justify-content-center " style="background-color: gray;">
            <div class="col-4 borde1 ">
            </div>
            <div class="col-4 borde2">
            </div>
        </div>
    </div>

    <div class="container" style="height: 100px; background-color: cadetblue">
        <div class="row justify-content-around " style="background-color: gray;">
            <div class="col-4 borde1 ">
            </div>
            <div class="col-4 borde2">
            </div>
        </div>
    </div>

<%-- Alingning items inside a div vertically  --%>
    <br />
    <div class="container">
        <div class="row align-items-center" style="height:100px; background-color:gray">
            <div class="col borde1">

            </div>
            <div class="col borde2">

            </div>
            <div class="col borde3">

            </div>
        </div>
    </div>

    <%-- Aligning individual divs vertically --%>

    <br />

    <div class="container">
        <div class="row" style="height:100px; background-color: gray;" >
            <div class="col-3 align-self-center borde1">         </div>
            <div class="col-3 borde2">         </div>
            <div class="col-3 align-self-end borde3">         </div>

        </div>
    </div>


    <%-- keep fixed content --%>

    <div class="container">
        <div class="row back">
            <div class="col borde1 fixed-top">
                This is a text that is going to keep fixed
            </div>
            <div class="col border2">

            </div>
        </div>
    </div>


    <%-- Using width and heigh with bootstrap classes --%>
    <%-- Using padding and margin --%>
    <%-- margin top = mt --%>
    <div class="container border mt-2" style="background-color:gray">
        <div class="row w-50 " style="background-color: lightgray" >
            <div >
                <p class="p-2 m-2" style="text-align:justify">
                    Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissan
                </p>
            </div>
             
        </div>
    </div>

    <br />  
    <div class="h1">Using Display</div>
    <div class="container border m-1">
        <div class="row ">
            <div class="col ">
                <p class="display-1"> class="display-1"</p>
            </div>
            <div class="col ">
                <p class="display-2"> class="display-2"</p>
            </div>
            <div class="col ">
                <p class="display-3"> class="display-3"</p>
            </div>
        </div>
    </div>
    <br />
    <div class="display-3">Using small fonts and highlighting</div>
    <div class="container">
        <div class="row">
            <div class="col small">
                <p> for small fonts set class="small" </p>  
            </div>
            <div class="col">
                <p class="mark"> for marked fonts set class="mark"</p>
            </div>
            
        </div>
        <div class="row">
            <div class="col"> <p> This is abbr tag <abbr title="This is the title of abbr tag"> abbr tag</abbr>
            </p> </div>
            <div class="col">
                <p>code tag sample</p>
                <code>
                    .myClass{
                    background-color: red;
                    height: 100px;
                    }
                </code>
            </div>
        </div>
                <div class="row mt-3">
            <div class="col"> 
                <p class="displa-4 mark">pre tag example</p>
                <pre>
                    .myClass{
                    background-color: red;
                    height: 100px;
                    }
                </pre>
            </div>
            <div class="col">
                <p class="displa-4 mark">kbd tag example</p>
                <p>press <kbd>Ctrl+c</kbd> to copy</p>
            </div>
        </div>

    </div>

    <br />  
    <h1>Using fonts</h1>
<div class="container">
    <div class="row">
        <div class="col">
            <p class="h3 font-weight-light">
                this font is ligth font-weight-light
            </p>
            <p class="h3 font-weight-bold">
                this font is bold font-weight-bold
            </p>
            <p class="h3 font-weight-normal">
                this font is normal font-weight-normal
            </p>
        </div>
        <div class="col">
            <p class="h3 text-right">
                this text is at the right text-right
            </p>
            <p class="h3 text-center">
                this text is at the center text-center
            </p>
        </div>
        <div class="col">
            <p class="text-nowrap"> the text-nowrap class is used to set banners 12333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333</p>
        </div>
    </div>
</div>
    <br />  
    <h1>    Colors provided by bootstrap</h1>
    <div class="container">
        <div class="row">
            <div class="col">
                1<p class="text-primary"> primary class color</p>
                2<p class="text-secondary"> secondary class color</p>
                3<p class="text-dark"> dark class color</p>
                4<p class="text-light"> light class color</p>
                5<p class="text-danger"> danger class color</p>
                6<p class="text-warning"> warning class color</p>
                7<p class="text-success"> success class color</p>
                8<p class="text-info"> info class color</p>
                9<p class="text-white"> white class color</p>
            </div>
        </div>
        <div class="row bg-danger">
            <div>Background color bootstrap   bg-danger</div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col">
                <p>This is a message of  <span class="badge badge-primary">insignia</span></p>
                <p>This is a message of  <span class="badge badge-pill badge-primary">insignia</span></p>
            </div>
        </div>
    </div>

    <script src="Scripts/jquery-3.3.1.slim.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>

</body>
</html>
