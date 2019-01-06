<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WorkingWithImages.aspx.cs" Inherits="Bootstrap.WorkingWithImages" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link rel="stylesheet" href="Content/bootstrap.min.css" />
        <title></title>
</head>
<body>
    
    <div class="container">
        <div class="row">
            <div class="col bg-primary" style="height:100px"></div>

        </div>
        <div class="row">
            <div class="col-4 bg-light h-100 border">
                <a href="www.google.com">Go to Google</a> <br />
                <a href="www.hotmail.com">Go to Hotmail</a>
            </div>
            <div class="col-8 h-100 border">

                <div class="row" >
                    <div class="col px-0 pl-2 pr-2 border text-center "> 
                        <p class="small ">Changing size to 75%</p>
                      
                        <img class="img-fluid w-75 " src="https://billmuehlenberg.com/wp-content/uploads/2018/06/beauty-4.jpg" alt="Alternate Text" />
                      
                    </div>
                    <div class="col px-0 pl-2 pr-2 border text-center">
                        <p class="small">Rounded-pill image</p>
                        <img class="img-fluid rounded-pill" src="https://billmuehlenberg.com/wp-content/uploads/2018/06/beauty-4.jpg" alt="Alternate Text" />
                    </div>
                    <div class="col px-0 pl-2 pr-2 border text-center">
                        <p class="small">img-thumbnail</p>
                        <img class="img-fluid img-thumbnail" src="https://billmuehlenberg.com/wp-content/uploads/2018/06/beauty-4.jpg" alt="Alternate Text" />
                    </div>
                </div>
             

            </div>
        </div>
        <div class="row">
            <div class="col bg-primary " style="height:100px" >

            </div>
        </div>
    </div>

<div class="container">
    <div class="row">
        <div class="col">
            <p>   Lorem Ipsum is simply dummy text of the printing and typesetting industry. </p>
                <p class="jumbotron"> Example with jumbotron <br />Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
            <p class="alert alert-secondary text-justify"> Example with alert <br /> It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. <a href="#" >Normal Link</a> -----  <a href="#" class="alert-link">alert link</a></p>
            <p class="jumbotron jumbotron-fluid text-justify"> Example with Jumbotron-fluid <br /> when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
        </div>
        <div class="col">
            <h1 class="text-center">align to right</h1>
                        <img class="w-25 float-right " src="https://billmuehlenberg.com/wp-content/uploads/2018/06/beauty-4.jpg" alt="Alternate Text" />
            <br />
            <p class="alert alert-success alert-dismissible">
                <button type="button" class="close" data-dismiss="alert">&times</button>
                <strong>Congratulations</strong> the operation was successful.
            </p>

        </div>
        
    </div>
</div>




    <script src="Scripts/jquery-3.3.1.slim.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>

</body>
</html>
