<%@ Page Title="" Language="C#" MasterPageFile="~/yonetim/yonetim.master" AutoEventWireup="true" CodeFile="Footer.aspx.cs" Inherits="yonetim_Footer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="card" style="margin-top: 90px">
        <div class="text-center">
            <h3>Footer Düzenle</h3>
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
        <div class="card-body">
            <div class="row">
                <div class="col-sm-12">
                    <div class="form-group">
                        <label for="name">Kısaca Hakkımızda</label>
                        <asp:TextBox ID="txtHakkimizdaKisa" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>

                    </div>
                </div>
            </div>
             <div class="row">
                <div class="col-sm-3">
                    <div class="form-group">
                        <label for="name">Adres</label>
                        <asp:TextBox ID="txtAdres" CssClass="form-control" runat="server" ></asp:TextBox>

                    </div>
                </div>
                   <div class="col-sm-3">
                    <div class="form-group">
                        <label for="name">E-Posta</label>
                        <asp:TextBox ID="txtEposta" CssClass="form-control" runat="server" ></asp:TextBox>

                    </div>
                </div>
                   <div class="col-sm-3">
                    <div class="form-group">
                        <label for="name">Telefon</label>
                        <asp:TextBox ID="txtTel" CssClass="form-control" runat="server" ></asp:TextBox>

                    </div>
                </div>
                   <div class="col-sm-3">
                    <div class="form-group">
                        <label for="name">Fax</label>
                        <asp:TextBox ID="txtFax" CssClass="form-control" runat="server" ></asp:TextBox>

                    </div>
                </div>
            </div>
             <div class="row">
                  <div class="col-sm-6">
                     <div class="form-group">
                        <label for="name">Vizyon</label>
                        <asp:TextBox ID="txtVizyon"  TextMode="MultiLine" CssClass="form-control" runat="server" ></asp:TextBox>

                    </div>
                  </div>
                 <div class="col-sm-6">
                     <div class="form-group">
                        <label for="name">Misyon</label>
                        <asp:TextBox ID="txtMisyon" TextMode="MultiLine" CssClass="form-control" runat="server" ></asp:TextBox>

                    </div>
                  </div>
             </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="form-group">
                        <asp:Button ID="btnHaberEkle" runat="server" CssClass="btn btn-success container-fluid " Text=" Güncelle" Width="175" OnClick="btnHaberEkle_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

