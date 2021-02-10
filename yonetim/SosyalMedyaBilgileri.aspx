<%@ Page Title="" Language="C#" MasterPageFile="~/yonetim/yonetim.master" AutoEventWireup="true" CodeFile="SosyalMedyaBilgileri.aspx.cs" Inherits="yonetim_SosyalMedyaBilgileri" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="card" style="margin-top: 90px">
         <div class="panel-heading">
                <h3 class="panel-title">Sosyal Medya Bilgileri</h3>
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
          
                <table class="table table-striped">
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Style="margin-left: 90px" Text="Facebook Kullanıcı Adı" Font-Bold="True"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="txtfacebook" Style="margin-right: 100px;" runat="server"></asp:TextBox></td>
                       
                      
                    </tr>
                       <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Style="margin-left: 90px" Text="Twitter Kullanıcı Adı" Font-Bold="True"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="txttwitter" Style="margin-right: 100px;" runat="server"></asp:TextBox></td>
                      
                      
                    </tr>
                    <tr>
                          <td colspan="4">
                            <asp:Button ID="ButtonSosyalMedya" runat="server" CssClass="btn btn-success   " Width="300"      Text=" Kategori Güncelle" OnClick="ButtonSosyalMedya_Click" />
                        </td>
                        
                    </tr>
                </table>
            

    </div>
</asp:Content>

