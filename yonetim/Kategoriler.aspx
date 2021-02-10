<%@ Page Title="" Language="C#" MasterPageFile="~/yonetim/yonetim.master" AutoEventWireup="true" CodeFile="Kategoriler.aspx.cs" Inherits="yonetim_KategoriEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="margin-top: 90px">
        <div class="panel">
            <div class="panel-heading">
                <h3 class="panel-title">Kategori İşlemleri</h3>
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
            <asp:Panel ID="PanelDuzenle" runat="server" Visible="false">
                <table class="table table-striped">
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Style="margin-left: 90px" Text="Kategori Adı" Font-Bold="True"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="txtGuncelle" Style="margin-right: 90px;" runat="server"></asp:TextBox></td>
                        <td>
                            <asp:Button ID="ButtonGuncelle" runat="server" CssClass="btn btn-info container-fluid " OnClick="ButtonGuncelle_Click"   Style="margin-right: 190px" Text=" Kategori Güncelle" />
                        </td>
                           <td>
                            <asp:Button ID="Buttonİptal" runat="server" CssClass="btn btn-danger container-fluid "  OnClick="Buttonİptal_Click"  Style="margin-left: -200px" Text=" Güncelleme İptal" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
            <asp:Panel ID="PanelEkle" runat="server">
                <table class="table table-striped">
                    <tr>
                        <td>
                            <asp:Label ID="Label3" Style="margin-left: 90px" runat="server" Text="Kategori Adı" Font-Bold="True"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="txtKategoriAdi" Style="margin-right: 90px; margin-left: 90px" runat="server"></asp:TextBox></td>
                        <td>
                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-success container-fluid " Style="margin-right: 190px" Text=" Kategori Ekle" OnClick="btnHaberEkle_Click" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
          <%--  <table class="table table-striped">
                <tr>
                    <td>
                        <asp:Label ID="Label1" Style="margin-left: 90px" runat="server" Text="Kategori Adı" Font-Bold="True"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtKategoriAdi" Style="margin-right: 90px; margin-left: 90px" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:Button ID="btnKategoriEkle" runat="server" CssClass="btn btn-success container-fluid " Style="margin-right: 190px" Text=" Kategori Ekle" OnClick="btnHaberEkle_Click" />
                    </td>
                </tr>
            </table>--%>
           
                <div class="panel-body">

                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>id</th>
                            <th>Kategori Adı</th>
                            <th>Kategori Url</th>
                            <th class="text-center">Düzenle</th>
                            <th>Sil</th>

                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="RepeaterKategorilerListele" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%#Eval("menuİd")%></td>
                                    <td><b><%#Eval("MenuAdi")%></b></td>
                                    <td><%#Eval("MenuUrl")%></td>


                                    <td class="text-center"><a class='btn btn-info btn-xs' href="Kategoriler.aspx?id=<%#Eval("menuİd")%>&islem=duzenle"><span class="glyphicon glyphicon-edit"></span>Düzenle</a></td>
                                    <td><a href="Kategoriler.aspx?id=<%#Eval("menuİd")%>&islem=sil" onclick="return confirm('Kayıt Silmek İstediğinizden Emin Misiniz ? ' )" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span>Sil</a></td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>




                    </tbody>
                </table>
            </div>
            
            
        </div>
    </div>
</asp:Content>

