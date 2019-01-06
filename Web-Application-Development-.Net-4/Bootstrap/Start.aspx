<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Start.aspx.cs" Inherits="Bootstrap.Start" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
<link rel="stylesheet" href="Content/bootstrap.min.css" />
    <title></title>
    <style type="text/css"> 
        .borde{
            background-color:gray;
            text-align: center;
            height:500px;
        }
        .border1 {
            background-color: yellow;
            text-align: center;
            height: 40px;
        }
        .border2 {
            background-color: red;
            text-align : center;
            height: 40px;
        }
        .border3 {
            background-color: green;
            text-align:center;
            height: 40px;
        }
    </style>
</head>
<body>

<%-- With this code you create 3 columns with the same width --%>
  <%--  <div class="container">

        <div class="row">
            <div class="col border1" ></div>
            <div class="col border2" ></div>
            <div class="col border3" ></div>

        </div>
    </div>

    <%-- Creation of 3 columns with 3 distinct width --%>
    <%--<div class="container">
        <div class="row">
            <div class="col-3 border1">   </div>
            <div class="col-8 border2">   </div>
            <div class="col-1 border3">   </div>

        </div>

    </div>--%>
    <%-- Creation of 3 columns with 3 distinct width adaptable to different resolutions --%>


    <%--<div class="container borde ">
        <div class="row">
            <div class="col-12 col-sm-12 col-md-6 col-lg-5 col-xl-4 border1">Column 1</div>
            <div class="col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4 border2">Column 2</div>
            <div class="col-12 col-sm-12 col-md-12 col-lg-3 col-xl-4 border3">Column 3</div>
        </div>
    </div>
    --%>
    <%-- you can use the entire screen by using container-fluid class --%>

    <div class="container-fluid borde ">
        <div class="row">
            <div class="col" style="text-align: justify">
                <div  class="h1">Encabezado</div>
              Lorem ipsum dolor sit amet, consectetur adipiscing elit. Urgent tamen et nihil remittunt. Suam denique cuique naturam esse ad vivendum ducem. Tu vero, inquam, ducas licet, si sequetur; Ita ne hoc quidem modo paria peccata sunt. Sed in rebus apertissimis nimium longi sumus. Duo Reges: constructio interrete. Tollitur beneficium, tollitur gratia, quae sunt vincla concordiae. <a href="http://loripsum.net/" target="_blank">Suam denique cuique naturam esse ad vivendum ducem.</a> Bonum incolumis acies: misera caecitas.
Deinde prima illa, quae in congressu solemus: Quid tu, inquit, huc? Mihi enim erit isdem istis fortasse iam utendum. Hoc est vim afferre, Torquate, sensibus, extorquere ex animis cognitiones verborum, quibus inbuti sumus. Quis non odit sordidos, vanos, leves, futtiles? Cur tantas regiones barbarorum pedibus obiit, tot maria transmisit? Maximas vero virtutes iacere omnis necesse est voluptate dominante. Nam, ut sint illa vendibiliora, haec uberiora certe sunt. Haec bene dicuntur, nec ego repugno, sed inter sese ipsa pugnant. <mark>Comprehensum, quod cognitum non habet?</mark>
Quoniam, si dis placet, ab Epicuro loqui discimus. Num igitur eum postea censes anxio animo aut sollicito fuisse? Mihi, inquam, qui te id ipsum rogavi? Te ipsum, dignissimum maioribus tuis, voluptasne induxit, ut adolescentulus eriperes P. <i>Ne amores quidem sanctos a sapiente alienos esse arbitrantur.</i> Quae in controversiam veniunt, de iis, si placet, disseramus. Quid ergo aliud intellegetur nisi uti ne quae pars naturae neglegatur? Scientiam pollicentur, quam non erat mirum sapientiae cupido patria esse cariorem. 
            </div>
        </div>
        <div class="row">
            <div class="col-12 col-sm-12 col-md-6 col-lg-5 col-xl-4 border1">Column 1</div>
            <div class="col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4 border2">Column 2</div>
            <div class="col-12 col-sm-12 col-md-12 col-lg-3 col-xl-4 border3">Column 3</div>
        </div>
        <div class="row">
            <div class="col" style="text-align:justify">   
                <div class="h1"> Pie de página</div>
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Urgent tamen et nihil remittunt. Suam denique cuique naturam esse ad vivendum ducem. Tu vero, inquam, ducas licet, si sequetur; Ita ne hoc quidem modo paria peccata sunt. Sed in rebus apertissimis nimium longi sumus. Duo Reges: constructio interrete. Tollitur beneficium, tollitur gratia, quae sunt vincla concordiae. <a href="http://loripsum.net/" target="_blank">Suam denique cuique naturam esse ad vivendum ducem.</a> Bonum incolumis acies: misera caecitas.
Deinde prima illa, quae in congressu solemus: Quid tu, inquit, huc? Mihi enim erit isdem istis fortasse iam utendum. Hoc est vim afferre, Torquate, sensibus, extorquere ex animis cognitiones verborum, quibus inbuti sumus. Quis non odit sordidos, vanos, leves, futtiles? Cur tantas regiones barbarorum pedibus obiit, tot maria transmisit? Maximas vero virtutes iacere omnis necesse est voluptate dominante. Nam, ut sint illa vendibiliora, haec uberiora certe sunt. Haec bene dicuntur, nec ego repugno, sed inter sese ipsa pugnant. <mark>Comprehensum, quod cognitum non habet?</mark>
Quoniam, si dis placet, ab Epicuro loqui discimus. Num igitur eum postea censes anxio animo aut sollicito fuisse? Mihi, inquam, qui te id ipsum rogavi? Te ipsum, dignissimum maioribus tuis, voluptasne induxit, ut adolescentulus eriperes P. <i>Ne amores quidem sanctos a sapiente alienos esse arbitrantur.</i> Quae in controversiam veniunt, de iis, si placet, disseramus. Quid ergo aliud intellegetur nisi uti ne quae pars naturae neglegatur? Scientiam pollicentur, quam non erat mirum sapientiae cupido patria esse cariorem. 

            </div>
        </div>
    </div>
    








<script src="Scripts/jquery-3.3.1.slim.min.js" ></script>
<script src="Scripts/popper.min.js" ></script>
<script src="Scripts/bootstrap.min.js" ></script>

</body>

</html>
