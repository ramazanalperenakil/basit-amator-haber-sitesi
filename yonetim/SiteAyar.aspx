<%@ Page Title="" Language="C#" MasterPageFile="~/yonetim/yonetim.master" AutoEventWireup="true" CodeFile="SiteAyar.aspx.cs" Inherits="yonetim_SiteAyar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="card" style="margin-top: 90px">

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
        <div class="row">
            <div class="col-sm-6">
                <div class="form-group">
                    <label for="name">Site Başlık</label>
                    <asp:TextBox ID="txtBAslik" CssClass="form-control" runat="server"></asp:TextBox>

                </div>
            </div>



            <div class="col-sm-6">
                <div class="form-group">
                    <label for="name">Site URL</label>
                    <asp:TextBox ID="txtURL" CssClass="form-control" runat="server"></asp:TextBox>

                </div>
            </div>


        </div>
        <asp:Panel ID="PanelLogoAlan" runat="server">
            <div class="row">
                <div class="col-sm-4">
                    <div class="form-group">
                        <label for="name">Logo</label>
                        <asp:Repeater ID="RepeaterLogo" runat="server">
                            <ItemTemplate>
                                <img src='<%#Eval("LogoUrl")%>' style="max-width: 320px; max-height: 320px;" />

                            </ItemTemplate>
                        </asp:Repeater>
                       
                        <asp:Button ID="ButtonLogoGuncelle" CssClass="btn btn-primary " Width="320" runat="server" Text="Logo Güncelle" OnClick="ButtonLogoGuncelle_Click" />



                    </div>
                </div>


            </div>

        </asp:Panel>

        <asp:Panel ID="PanelLogoGuncelle" runat="server" Visible="false">
            <div class="row">
                <div class="col-sm-4">
                    <div class="form-group">
                        <label for="name">Logo Seçin</label>

                        <asp:FileUpload ID="fuDosya" ClientIDMode="Static" onchange="$('#resim')[0].src = window.URL.createObjectURL(this.files[0])" CssClass="form-control" runat="server" Width="100%" Height="35px" />

                    </div>
                </div>

                   
                <div class="col-sm-8">
                    <div class="form-group">
                        <label for="name">Seçilen Resim</label><br />

                        <img id="resim" alt="Seçtiğiniz resim burada görünecek " style="max-height: 200px;" />



                    </div>
                </div>
            </div>
             <asp:Button ID="Button1" CssClass="btn btn-danger " Width="1000" runat="server" Text="Güncellemekten Vazgeç" OnClick="Button1_Click"  />
        </asp:Panel>
        <br />
         <asp:Button ID="ButtonGuncelle" CssClass="btn btn-success " Width="1000" runat="server" Text="Ayarları Güncelle" OnClick="ButtonGuncelle_Click"  />
    </div>
</asp:Content>

