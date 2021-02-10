<%@ Page Title="" Language="C#" MasterPageFile="~/yonetim/yonetim.master" AutoEventWireup="true" CodeFile="TumHaberler.aspx.cs" Inherits="yonetim_TumHaberler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="margin-top: 90px">
        <div class="panel">
            <div class="panel-heading">
                <h3 class="panel-title">Tüm Haberler</h3>
            </div>
            <div class="panel-body">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>id</th>
                            <th>Haber Başlık</th>
                            <th>Haber Kategori</th>
                            <th class="text-center">Düzenle</th>
                            <th>Sil</th>
                            
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="RepeaterTumHaberlerListele" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%#Eval("Haberİd")%></td>
                                    <td><b><%#Eval("HaberBaslik")%></b></td>
                                    <td><%#Eval("Kategori")%></td>
                                    <td class="text-center"><a class='btn btn-info btn-xs' href="HaberDuzenle.aspx?id=<%#Eval("Haberİd")%>"><span class="glyphicon glyphicon-edit"></span> Düzenle</a></td>
                                    <td><a href="TumHaberler.aspx?id=<%#Eval("Haberİd")%>&islem=sil" onclick="return confirm('Kayıt Silmek İstediğinizden Emin Misiniz ? ' )" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span> Sil</a></td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>



                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>

