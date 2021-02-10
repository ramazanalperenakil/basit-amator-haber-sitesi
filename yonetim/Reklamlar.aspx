<%@ Page Title="" Language="C#" MasterPageFile="~/yonetim/yonetim.master" AutoEventWireup="true" CodeFile="Reklamlar.aspx.cs" Inherits="yonetim_Reklamlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="card" style="margin-top: 90px">
        <asp:Panel ID="PanelReklamListele" runat="server">
            <div class="panel">
                <div class="panel-heading">
                    <h3 class="panel-title">Tüm Reklamlar</h3>
                </div>

                <div class="panel-body">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>id</th>
                                <th>Reklam Resmi</th>
                                <th>Reklam URL</th>
                                <th>Yayın Durumu</th>
                                <th>Alan Kodu</th>
                                <th class="text-center">Düzenle</th>
                                

                            </tr>
                        </thead>
                        <tbody>
                            <asp:Repeater ID="RepeaterReklamlar" runat="server">
                                <ItemTemplate>
                                    <tr>
                                        <td><%#Eval("reklam_id")%></td>
                                        <td>

                                            <img src="<%#Eval("Reklam_Resim_Url")%>" style="max-height: 200px; max-width: 200px;" />


                                        </td>
                                        <td><%#Eval("Reklam_Hedef_Url")%></td>
                                        <td><%#Eval("Yayin_Durumu")%></td>
                                        <td><b><%#Eval("Alan_Kodu")%></b></td>
                                        <td class="text-center"><a class='btn btn-info btn-xs' href="Reklamlar.aspx?id=<%#Eval("reklam_id")%>&islem=duzenle"><span class="glyphicon glyphicon-edit"></span>&nbsp;Düzenle</a></td>
                                       
                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>



                        </tbody>
                    </table>
                </div>
            </div>
        </asp:Panel>
        <asp:Panel ID="PanelReklamDuzenle" Visible="false" runat="server">
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
                        <label for="name">Hedef URL</label>
                        <asp:TextBox ID="txtReklamUrl" CssClass="form-control" runat="server"></asp:TextBox>


                    </div>
                </div>

                <div class="col-sm-6">
                    <div class="form-group">
                        <label for="name">Yayın Durumu</label>
                        <asp:DropDownList ID="ddlDurum" CssClass="form-control" runat="server">
                            <asp:ListItem Value="1">Aktif</asp:ListItem>
                            <asp:ListItem Value="0">Pasif</asp:ListItem>
                        </asp:DropDownList>

                    </div>
                </div>


            </div>
            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label for="name">Reklam Resmi</label>
                        <br />
                        <asp:FileUpload ID="fuDosya" ClientIDMode="Static" onchange="$('#resim')[0].src = window.URL.createObjectURL(this.files[0])" CssClass="form-control" runat="server" Width="100%" Height="35px" />
                        <br />
                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-success container-fluid " Text=" Reklam Güncelle" Width="480" OnClick="Button1_Click" />


                    </div>
                </div>

                <div class="col-sm-6">
                    <div class="form-group">
                        <label for="name">Yüklenecek Resim</label><br />
                        <img id="resim" alt="Seçtiğiniz resim burada görünecek " style="max-height: 200px;" />


                    </div>
                </div>

                <div class="form-group">
                    <asp:Repeater ID="RepeaterMevcutReklam" runat="server">
                        <ItemTemplate>
                            <label for="name">Mevcut Resim</label><br />
                            <img src="<%#Eval("Reklam_Resim_Url")%>" />
                        </ItemTemplate>
                    </asp:Repeater>



                </div>



            </div>





        </asp:Panel>
    </div>
</asp:Content>

