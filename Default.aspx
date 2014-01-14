<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Support MIS</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/StyleSheet.css" rel="stylesheet" />
    <script src="scripts/jquery.js"></script>
    <script src="scripts/bootstrap.min.js"></script>

</head>
<body>
<div id="wrap">
    <div class="container">
        <div class="header">
        <ul class="nav nav-pills pull-right">
          <li class="active"><a href="Default.aspx">Home</a></li>
          <li><a href="Petitioners.aspx">Petitioners</a></li>
        </ul>
        <h3 class="text-muted">Save OU MIS</h3>
    </div>
    <div class="row">
        <div class="col-sm-6 col-md-4">
        <div class="thumbnail">
            <img src="Content/mano.jpg" class="img-rounded" />
            <div class="caption">
            <h3>Mano Ratwatte</h3>
            <p>A bunch of awesome words about Mano</p>
            </div>
        </div>
        </div>
        <div class="col-sm-6 col-md-4">
        <div class="thumbnail">
            <img src="Content/traci.png" class="img-rounded"/>
            <div class="caption">
            <h3>Traci Carte</h3>
            <p>A bunch of awesome words about Traci</p>
            </div>
        </div>
        </div>
        <div class="col-sm-6 col-md-4">
        <div class="thumbnail">
            <img src="Content/nate.png" class="img-rounded"/>
            <div class="caption">
            <h3>Nate Stout</h3>
            <p>A bunch of awesome words about Nate</p>
            </div>
        </div>
        </div>
    </div>
    <div class="well well-lg">
        This May Mano Ratwatte will step down from his position as the lone development instructor for the University of Oklahoma MIS department. Nate Stout has already been let go from his position teaching the MIS 2113 course. We believe, from an alumni perspective, that questionable things are happening at the school we all love dearly. We need to understand why these important teachers, mentors, colleagues, and friends are disappearing from OU at the current pace. Please show your support for these instructors below, and to the administrators we hope you understand that Alumni are the future donors and hiring authorities for future students.
        <p style="margin-top:10px">
            <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
                Click Here to Sign Petition
            </button>
        </p>
    </div>
    <div class="modal fade" id="myModal" tabindex="100" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel">Petition</h4>
                </div>
                <div class="modal-body">
                    <form role="form" runat="server">
                      <div class="form-group">
                        <label class="sr-only" for="name">Name</label>
                        <input type="text" class="form-control" id="name" placeholder="Enter name" runat="server">
                      </div>
                      <div class="form-group">
                        <label class="sr-only" for="year">Graduation Year</label>
                        <input type="number" class="form-control" id="year" placeholder="Enter Graduation Year" runat="server">
                      </div>
                      <div class="form-group">
                        <label class="sr-only" for="industry">Industry</label>
                        <input type="text" class="form-control" id="industry" placeholder="Enter your Industry" runat="server">
                      </div>
                      <div class="form-group">
                        <label class="sr-only" for="title">Title</label>
                        <input type="text" class="form-control" id="title" placeholder="Enter your title" runat="server">
                      </div>
                      <div class="form-group">
                        <label class="sr-only" for="note">Note</label>
                        <%--<input type="text" class="form-control" id="note" placeholder="Enter your note" runat="server">--%>
                        <textarea class="form-control" id="note" placeholder="Enter a moment you remember" runat="server" rows="5"></textarea>
                      </div>
                      <div class="modal-footer">
                        <button id="SubmitForm1" runat="server" type="submit" class="btn btn-primary">Save</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal" >Close</button>
                      </div>
                    </form>
                </div>
                <%--<div class="modal-footer">
                    <p class="muted credit">Contact us at: <a href="mailto:saveoumis@gmail.com?" target="_top">saveoumis@gmail.com</a>.</p>
                </div>--%>
            </div>
        </div>
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