<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WorkingWithControls.aspx.cs" Inherits="Bootstrap.WorkingWithControls" %>

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
    <form action="/" runat="server" method="post">
        <div class="container">
            <div class="row">
                <div class="col">

                    <div class="row m-3">
                        <div class="col">
                            <p class="alert alert-success alert-dismissible">
                                <button type="button" class="close" data-dismiss="alert">&times</button>
                                <strong>Congratulations</strong> the operation was successful.
                            </p>
                        </div>
                    </div>

                    <div class="row m-3">

                        <div class="col">
                            <p class="h1 text-center">btn btn-primary class</p>
                            <asp:Button Text="Accept" CssClass="btn btn-primary" runat="server" />
                        </div>
                    </div>

                    <div class="row m-3">
                        <div class="col">
                            <p class="h1 text-center">btn btn-link class</p>
                            <asp:Button Text="Accept" CssClass="btn btn-link " runat="server" />
                        </div>
                    </div>
                    <div class="row m-3">
                        <div class="col">
                            <p class="h1 text-center">btn btn-outline class</p>
                            <asp:Button Text="Accept" CssClass="btn btn-outline-primary" runat="server" /><br />
                        </div>
                    </div>
                    <div class="row m-3">
                        <div class="col">
                            <p class="h1 text-center">btn btn-primary btn-lg class</p>
                            <asp:Button Text="Accept" CssClass="btn btn-primary btn-lg" runat="server" /><br />
                        </div>
                    </div>
                    <div class="row m-3">
                        <div class="col">
                            <p class="h1 text-center">btn btn-primary btn-block class</p>
                            <asp:Button Text="Accept" CssClass="btn btn-primary btn-block" runat="server" /><br />
                        </div>
                    </div>
                    <div class="row m-3">
                        <div class="col">
                            <p class="h1 text-center">btn btn-primary disabled class</p>
                            <asp:Button Text="Accept" CssClass="btn btn-primary disabled" runat="server" /><br />
                        </div>
                    </div>
                    <div class="row m-3">
                        <div class="col">
                            <p class="h1 text-center">btn btn-primary active class</p>
                            <asp:Button Text="Accept" CssClass="btn btn-primary active" runat="server" /><br />
                        </div>
                    </div>

                    <div class="row m-3">
                        <div class="col">
                            <p class="h1 text-center">btn-group btn-group-lg class</p>

                            <div class="btn-group btn-group-lg">
                                <asp:Button Text="One" CssClass="btn btn-primary" runat="server" />
                                <asp:Button Text="Two" CssClass="btn btn-primary" runat="server" />
                                <asp:Button Text="Three" CssClass="btn btn-primary" runat="server" />
                            </div>
                        </div>
                    </div>
                    <div class="row m-3">
                        <div class="col">
                            <p class="h1 text-center">btn-group btn-group-vertical class</p>

                            <div class="btn-group btn-group-vertical">
                                <asp:Button Text="One" CssClass="btn btn-secondary" runat="server" />
                                <asp:Button Text="Two" CssClass="btn btn-secondary" runat="server" />
                                <asp:Button Text="Three" CssClass="btn btn-secondary" runat="server" />
                            </div>
                        </div>
                    </div>
                    <div class="row m-3">
                        <div class="col">
                            <p class="h1 text-center">btn-group btn-group-vertical class</p>
                            <div class="btn-group btn-group-vertical ">
                                <button class="btn btn-success" type="button">One</button>
                                <button class="btn btn-success" type="button">Two</button>
                                <button class="btn btn-success" type="button">Three</button>
                            </div>
                        </div>
                    </div>
                    <div class="row m-3">
                        <div class="col">
                            <button type="button" class="btn btn-primary">Messages <span class="badge badge-light">4</span></button>
                        </div>
                    </div>

                    <div class="row m-3">
                        <div class="col">
                            <div class="btn-group" role="group" aria-label="Button group with nested dropdown">
                                <button type="button" class="btn btn-secondary">1</button>
                                <button type="button" class="btn btn-secondary">2</button>

                                <div class="btn-group" role="group">
                                    <button id="btnGroupDrop1" type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Dropdown
                                    </button>
                                    <div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
                                        <a class="dropdown-item" href="#">Dropdown link</a>
                                        <a class="dropdown-item" href="#">Dropdown link</a>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>

                    <div class="row m-3">
                        <div class="col-12 ">
                            <div class="progress " style="height: 50px">
                                <div class="progress-bar w-25">25%</div>
                            </div>
                        </div>
                        <div class="col-12 mt-3">
                            <div class="progress">
                                <div class="progress-bar bg-success progress-bar-striped w-75">
                                    75%
                                </div>
                            </div>
                        </div>
                        <div class="col-12 mt-3">
                            <div class="progress">
                                <div class="progress-bar bg-danger progress-bar-animated progress-bar-striped w-75">
                                    75%
                                </div>
                            </div>
                        </div>
                        <div class="col-12 mt-3">
                            <div class="progress" style="height: 50px">
                                <div class="progress-bar w-50 bg-danger progress-bar-animated progress-bar-striped ">
                                    50%
                                </div>
                                <div class="progress-bar w-50 bg-success progress-bar-animated progress-bar-striped">
                                    30%
                                </div>
                                <div class="progress-bar w-25 bg-dark progress-bar-animated progress-bar-striped">
                                    20%
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="row m-3">
                        <div class="col">
                            <ul class="pagination">
                                <li class="page-item"><a href="#" class="page-link">previous</a></li>
                                <li class="page-item active"><a href="#" class="page-link">1</a></li>
                                <li class="page-item disabled"><a href="#" class="page-link">2</a></li>
                                <li class="page-item"><a href="#" class="page-link">3</a></li>
                                <li class="page-item"><a href="#" class="page-link">next</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="row m-3">
                        <div class="col">
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#">Vacations</a></li>
                                <li class="breadcrumb-item"><a href="#">Photos</a></li>
                                <li class="breadcrumb-item"><a href="#">Brazil</a></li>
                                <li class="breadcrumb-item"><a href="#">Sao Paolo</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="row m-3">
                        <div class="col">
                            <ul class="list-group">
                                <li class="list-group-item active">Monday</li>
                                <li class="list-group-item list-group-item-success">Tuesday</li>
                                <li class="list-group-item">Wednesday</li>
                                <li class="list-group-item">Thursday</li>
                                <li class="list-group-item ">Friday</li>
                                <li class="list-group-item disabled">Saturday</li>
                            </ul>
                        </div>
                    </div>
                    <div class="row m-3">
                        <div class="col">
                            <div class="list-group">
                                <a class="list-group-item active" href="#">First</a>
                                <a class="list-group-item disabled" href="#">Second</a>
                                <a class="list-group-item" href="#">Third</a>
                            </div>
                        </div>
                    </div>
                    <div class="row m-3">
                        <div class="col">
                            <div class="card">
                                <div class="card-header">
                                    <p>manager</p>
                                </div>
                                <div style="text-align: center">
                                    <img src="data:image/png;base64,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" class="img-fluid rounded-circle w-50" />
                                </div>
                                <div class="card-body bg-warning">
                                    <h3 class="card-title">Jhon Stravis</h3>
                                    <p class="card-text">Personal description</p>
                                    <a class="btn btn-success" href="#">see profile</a>
                                </div>
                                <div class="card-footer">
                                    <p>This is the foot of the card</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>



            </div>
        </div>

    </form>
      <div class="row m-3">
                        <div class="col">
                            <button data-toggle="collapse" data-target="#one">One</button>
                            <div id="one" class="collapse">
                                This is a text that will be collapsed by button One
                            </div>
                            <button data-toggle="collapse" data-target="#two">Two</button>
                            <div id="two" class="collapse">
                                This is a text that will be collapsed by button Two
                            </div>
                            <button data-toggle="collapse" data-target="#three">three</button>
                            <div id="three" class="collapse">
                                This is a text that will be collapsed by button three
                            </div>
                        </div>
                    </div>
                      <div class="row">
                      <div class="col">
                         <div id="accordion">
  <div class="card">
    <div class="card-header" id="headingOne">
      <h5 class="mb-0">
        <button class="btn btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
          Collapsible Group Item #1
        </button>
      </h5>
    </div>

    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
      <div class="card-body">
        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
      </div>
    </div>
  </div>
  <div class="card">
    <div class="card-header" id="headingTwo">
      <h5 class="mb-0">
        <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
          Collapsible Group Item #2
        </button>
      </h5>
    </div>
    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
      <div class="card-body">
        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
      </div>
    </div>
  </div>
  <div class="card">
    <div class="card-header" id="headingThree">
      <h5 class="mb-0">
        <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
          Collapsible Group Item #3
        </button>
      </h5>
    </div>
    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
      <div class="card-body">
        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
      </div>
    </div>
  </div>
</div>
                      </div>
                  </div>


    <script src="Scripts/jquery-3.3.1.slim.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>

</body>
</html>
