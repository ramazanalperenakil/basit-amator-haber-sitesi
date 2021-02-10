<%@ Page Title="" Language="C#" MasterPageFile="~/yonetim/yonetim.master" AutoEventWireup="true" CodeFile="SayfaEkle.aspx.cs" Inherits="yonetim_SayfaEkle" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="card" style="margin-top: 90px">
        <div class="text-center">
            <h3>Yeni Sayfa Ekle</h3>
        </div>

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
            <div class="col-sm-4">
                <div class="form-group">
                    <label for="name">Sayfa Adı</label>
                    <asp:TextBox ID="txtSayfaAdi" CssClass="form-control" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <label for="name">Manşet Resmi</label>

                    <asp:FileUpload ID="fuDosya" ClientIDMode="Static" onchange="$('#resim')[0].src = window.URL.createObjectURL(this.files[0])" CssClass="form-control" runat="server" Width="100%" Height="35px" />
                </div>
            </div>
            <div class="col-sm-8">
                <div class="form-group">
                    <label for="name">Sayfa İçerik</label>
                    <asp:TextBox ID="txtSayfaİcerik" CssClass="form-control" runat="server" TextMode="MultiLine" Height="140"></asp:TextBox>

                </div>
            </div>

        </div>
        <label for="name">Seçilen Resim</label><br />

        <img id="resim" alt="Seçtiğiniz resim burada görünecek " style="max-height: 200px;" /><br /><br />
         <div class="row">
                <div class="col-sm-12">
                    <div class="form-group">
                        <asp:Button ID="btnHaberEkle" runat="server" CssClass="btn btn-success container-fluid " Text=" Sayfa Ekle" Width="175" OnClick="btnHaberEkle_Click"/>
                    </div>
                </div>
            </div>


        
    </div>
</asp:Content>

