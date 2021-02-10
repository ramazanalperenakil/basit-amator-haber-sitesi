<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="yonetim_Default2" ValidateRequest="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    
     <title>Dashboard | Klorofil - Free Bootstrap Dashboard Template</title>
    <script src="ckeditor/ckeditor.js"></script>
    <script src="../ckeditor/ckeditor.js"></script>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <!-- VENDOR CSS -->
    <link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/vendor/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/vendor/linearicons/style.css">
    <link rel="stylesheet" href="assets/vendor/chartist/css/chartist-custom.css">
    <!-- MAIN CSS -->
    <link rel="stylesheet" href="assets/css/main.css">
    <!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
    <link rel="stylesheet" href="assets/css/demo.css">
    <!-- GOOGLE FONTS -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
    <!-- ICONS -->
    <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
    <link rel="icon" type="image/png" sizes="96x96" href="assets/img/favicon.png">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

    <script src="ckeditor/build-config.js"></script>
    <script src="ckeditor/ckeditor.js"></script>
    <script src="ckeditor/styles.js"></script>
    <script src="ckeditor/ckeditor.js"></script>

</head>
<body>
    <form id="form1" runat="server">
           <div class="card" >

        <div class="text-center"><h3>Yeni Haber Ekle</h3></div>
       
        <asp:Panel ID="PanelHata" runat="server" Visible="false">
            <div class="alert alert-danger alert-dismissible" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">× </span></button>
                <i class="fa fa-times-circle"></i>&nbsp; Bir Hata Oluştu
            </div>
        </asp:Panel>
        <asp:Panel ID="PanelBasarılı" runat="server" Visible="false">
            <div class="alert alert-success alert-dismissible" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
                <i class="fa fa-check-circle"></i>&nbsp; Kayıt Başarılı
            </div>
        </asp:Panel>
        <div class="card-body">
            <div class="row">
                <div class="col-sm-12">
                    <div class="form-group">
                        <label for="name">Haber Başlık</label>
                        <asp:TextBox ID="txtHaberBaslik" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="form-group">
                        <label for="name">Haber Özet</label>
                        <asp:TextBox ID="txtHaberOzet" CssClass="form-control" runat="server" TextMode="MultiLine" Height="75" onkeypress="return this.value.length<=300" ></asp:TextBox>
                        <script>
                            CKEDITOR.replace("txtHaberOzet");

                        </script>

                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="form-group">
                        <label for="name">Haber İçeriği</label>
                        <asp:TextBox ID="txtHaberİcerik" CssClass="form-control" runat="server" TextMode="MultiLine" Height="175"></asp:TextBox>
                         <script>
                            CKEDITOR.replace("txtHaberİcerik");

                        </script>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-4">
                    <div class="form-group">
                        <label for="name">Menü / Kategorisi</label>
                        <asp:DropDownList ID="DropDownListMenu" runat="server" CssClass="form-control">
                        </asp:DropDownList>

                    </div>
                </div>

                <div class="col-sm-4">
                    <div class="form-group">
                        <label for="name">Manşet Resmi</label>

                        <asp:FileUpload ID="fuDosya" ClientIDMode="Static" onchange="$('#resim')[0].src = window.URL.createObjectURL(this.files[0])" CssClass="form-control" runat="server" Width="100%" Height="35px" />

                    </div>
                </div>

                    <div class="col-sm-4">
                    <div class="form-group">
                        <label for="name">Habeer Durumu</label>
                        <asp:DropDownList ID="ddlDurum" CssClass="form-control" runat="server">
                            <asp:ListItem Value="1">Aktif</asp:ListItem>
                            <asp:ListItem Value="0">Pasif</asp:ListItem>
                        </asp:DropDownList>

                    </div>
                </div>


            </div>

            <div class="row">
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="form-group">
                        <label for="name">Seçilen Resim</label><br />

                        <img id="resim" alt="Seçtiğiniz resim burada görünecek " style="max-height: 200px;" />



                    </div>
                </div>
            </div>

            <div class="row">
            
            </div>








            <div class="row">
                <div class="col-sm-12">
                    <div class="form-group">
                        <asp:Button ID="btnHaberEkle" runat="server" CssClass="btn btn-success container-fluid " Text=" Haber Ekle" Width="175" OnClick="btnHaberEkle_Click" />
                    </div>
                </div>
            </div>






        </div>
    </div>

    </form>
</body>
</html>
