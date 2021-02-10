<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mobil.aspx.cs" Inherits="mobil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Mobil Site</title>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body style="background-color: #E8E8E8; ">
    <form id="form1" runat="server">
        <div class="col-md-4 ">
            <h1 class="text-center">Mobil</h1>
            <asp:Repeater ID="RepeaterMobil" runat="server">
                <ItemTemplate>
                    <img src="<%#Eval("HaberGorselUrl")%>" class="container-fluid" alt="Alternate Text" />
                    <br />
                    
                    <h3 class="text-center"><a  href="Haber.aspx?=<%#Eval("url")%>" target="_blank"><%#Eval("HaberBaslik")%></h3> </a>
                    <br />
                 
                        <br />
                   
                </ItemTemplate>

            </asp:Repeater>

        </div>
    </form>
</body>
</html>
