<%@ Page Title="" Language="C#" MasterPageFile="~/yonetim/yonetim.master" AutoEventWireup="true" CodeFile="TumSayfalar.aspx.cs" Inherits="yonetim_TumSayfalar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="margin-top: 90px">
             <div class="panel">
            <div class="panel-heading">
                <h3 class="panel-title">Tüm Sayfalar</h3>
            </div>
            <div class="panel-body">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>id</th>
                            <th>Sayfa Başlık</th>
                            
                            <th class="text-center">Düzenle</th>
                            <th>Sil</th>
                            
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="RepeaterTumSayfalarListele" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%#Eval("sayfa_id")%></td>
                                    <td><b><%#Eval("SayfaAdi")%></b></td>
                                    
                                    <td class="text-center"><a class='btn btn-info btn-xs' href="SayfaDuzenle.aspx?id=<%#Eval("sayfa_id")%>"><span class="glyphicon glyphicon-edit"></span> Düzenle</a></td>
                                    <td><a href="TumSayfalar.aspx?id=<%#Eval("sayfa_id")%>&islem=sil" onclick="return confirm('Kayıt Silmek İstediğinizden Emin Misiniz ? ' )" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span> Sil</a></td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>



                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>

