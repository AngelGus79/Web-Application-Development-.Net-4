<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WorkingWithMenus.aspx.cs" Inherits="Bootstrap.WorkingWithMenus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous" />

    <title></title>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col">

                  <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">

                    <a href="#" class="navbar-brand"><img src="data:image/png;base64,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" style="width:30px" /></a>
                     <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#tone">
<span class="navbar-toggler-icon"></span>
                     </button>
                      <div class="navbar navbar-collapse" id="tone">
                          <ul class="navbar-nav">
                              <li class="nav-item"><a href="#" class="nav-link">Option 1</a></li>
                              <li class="nav-item"><a href="#" class="nav-link">Option 2</a></li>
                              <li class="nav-item"><a href="#" class="nav-link">Option 3</a></li>
                              <li class="nav-item dropdown">
                                  <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" id="navbardrop">Option 4</a>
                                  <div class="dropdown-menu">
                                      <a href="#" class="dropdown-item">Sub option 1</a>
                                      <a href="#" class="dropdown-item">Sub option 2</a>
                                      <a href="#" class="dropdown-item">Sub option 3</a>
                                  </div>
                                 
                          
                              </li>
                              <li ><form action="myform" method="post" class="form-inline">
                                  <input type="text" placeholder="find"  class="form-control mr-sm-2"/>
                                  <button class="btn btn-success" type="submit">find</button>
                              </form> </li>  
                                 
                              </ul>
                            
                      </div>
                  </nav>

            </div>
        </div>


        <div class="row mt-5">
            <div class="col-12">
                <ul class="nav">
                    <li class="nav-item"><a href="#" class="nav-link">One</a></li>
                    <li class="nav-item"><a href="#" class="nav-link">Two</a></li>
                    <li class="nav-item"><a href="#" class="nav-link">Three</a></li>
                    <li class="nav-item"><a href="#" class="nav-link">Four</a></li>
                    <li class="nav-item dropdown"><a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Five</a>
                        <div class="dropdown-menu">
                            <a href="#" class="dropdown-item">Item one</a>
                            <a href="#" class="dropdown-item">Item two</a>
                            <a href="#" class="dropdown-item">Item three</a>
                        </div>
                    </li>
                </ul>

            </div>
            <div class="col-12">
                <div class="navbar">
                    <ul class="navbar-nav">
                        <li class="nav-item"><a href="#" class="nav-link">One</a></li>
                        <li class="nav-item"><a href="#" class="nav-link">Two</a></li>
                        <li class="nav-item"><a href="#" class="nav-link">Three</a></li>
                        <li class="nav-item"><a href="#" class="nav-link">Four</a></li>
                        <li class="nav-item dropdown"><a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Five</a>
                            <div class="dropdown-menu">
                                <a href="#" class="dropdown-item">Item one</a>
                                <a href="#" class="dropdown-item">Item two</a>
                                <a href="#" class="dropdown-item">Item three</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-12">
                <div class="navbar  navbar-expand-md bg-warning">
                    <ul class="navbar-nav">
                        <a href="#" class="navbar-brand">
                            <img src="data:image/png;base64,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" style="width: 30px" /></a>
                        <li class="nav-item"><a href="#" class="nav-link">One</a></li>
                        <li class="nav-item"><a href="#" class="nav-link">Two</a></li>
                        <li class="nav-item"><a href="#" class="nav-link">Three</a></li>
                        <li class="nav-item"><a href="#" class="nav-link">Four</a></li>
                        <li class="nav-item dropdown"><a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Five</a>
                            <div class="dropdown-menu">
                                <a href="#" class="dropdown-item">Item one</a>
                                <a href="#" class="dropdown-item">Item two</a>
                                <a href="#" class="dropdown-item">Item three</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-12">
                <nav class="navbar  navbar-expand-sm bg-dark navbar-dark">
                    <a href="#" class="navbar-brand">
                        <img src="data:image/png;base64,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" style="width: 30px;" /></a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#one">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="one"></div>
                    <ul class="navbar-nav">
                        <li class="nav-item"><a href="#" class="nav-link">One</a></li>
                        <li class="nav-item"><a href="#" class="nav-link">Two</a></li>
                        <li class="nav-item"><a href="#" class="nav-link">Three</a></li>
                        <li class="nav-item"><a href="#" class="nav-link">Four</a></li>
                        
                    </ul>
                </nav>
            </div>

        </div>
        

    </div>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>

</body>
</html>
