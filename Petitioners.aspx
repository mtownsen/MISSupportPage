<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Petitioners.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>MIS Petition List</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/StyleSheet.css" rel="stylesheet" />
    <script src="scripts/jquery.js"></script>
    <script src="scripts/bootstrap.min.js"></script>
</head>
<body>
    <div id="wrap">
        <div class="container">
            <div class="header" style="border-bottom: none;">
            <ul class="nav nav-pills pull-right">
              <li><a href="Default.aspx">Home</a></li>
              <li class="active"><a href="Petitioners.aspx">Petitioners</a></li>
            </ul>
            <h3 class="text-muted">Save OU MIS</h3>
          </div>
          <div id="moments" class="row" style="margin-top:0px">
    <%--          <table id="PetitionList" class="table table-condensed" runat="server">
                <thead>
                  <tr>
                    <th>Name</th>
                    <th>Graduation Year</th>
                    <th>Industry</th>
                    <th>Title</th>
                    <th>Note</th>
                  </tr>
                </thead>
              </table>--%>
            <%--<div class="panel panel-default">
                <div class="panel-body">
                    Some super awesome story about how Mano taught me all this cool shit and then I went and did it and it turned out awesome as shit.  Some super awesome story about how Mano taught me all this cool shit and then I went and did it and it turned out awesome as shit.  Some super awesome story about how Mano taught me all this cool shit and then I went and did it and it turned out awesome as shit.  Some super awesome story about how Mano taught me all this cool shit and then I went and did it and it turned out awesome as shit.
                </div>
                <div class="panel-footer"><h4>Matthew Townsen</br><small>Software Engineer - Information Technology</small></h4></div>
            </div>--%>
        

            </div>
        </div>
    </div>
    <div id="footer">
        <div class="container">
            <p class="muted credit">Contact us at: <a href="mailto:saveoumis@gmail.com?" target="_top">saveoumis@gmail.com</a>.</p>
        </div>
    </div>
</body>
</html>
<script>
    $(document).ready(function () {
        
        $.ajax({
            url: "Petitioners.aspx/GetMoments",
            traditional: true,
            contentType: 'application/json',
            data:"",
            type: 'POST',
            success: function (moments) {
                debugger
                for (var i = 0; i < moments.d.length; i++) {
                    $("#moments").append("<div class='panel panel-default'><div class='panel-body'>" + moments.d[i].text + "</div><div class='panel-footer'><h4>" + moments.d[i].footerName + "<small>"+moments.d[i].footerJobInfo+"</small></h4></div></div>");
                }
            }

        });
    });


</script>
