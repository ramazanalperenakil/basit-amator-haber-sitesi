<%@ Page Title="" Language="C#" MasterPageFile="~/yonetim/yonetim.master" AutoEventWireup="true" CodeFile="HaberDuzenle.aspx.cs" Inherits="yonetim_HaberDuzenle" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="card" style="margin-top: 90px">

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
                        <asp:TextBox ID="txtHaberOzet" CssClass="form-control" runat="server" TextMode="MultiLine" shortcutsenabled=false onkeypress="return this.value.length<=300"  Height="75" ></asp:TextBox>

                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="form-group">
                        <label for="name">Haber İçeriği</label>
                        <asp:TextBox ID="txtHaberİcerik" CssClass="form-control" runat="server" TextMode="MultiLine" Height="175"></asp:TextBox>

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
                <div class="col-sm-6">
                    <div class="form-group">
                        <label for="name">Yüklü Resim</label><br />
                       
                       <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                    <img id="resim" src='<%#Eval("HaberGorselUrl")%>' runat="server" alt="Seçtiğiniz resim burada görünecek " style="max-height: 200px;" />
                            </ItemTemplate>
                        </asp:Repeater>
                        
               



                    </div>
                </div>
            
                <div class="col-sm-6">
                    <div class="form-group">
                          <label for="name">Seçilen Resim</label><br />

                        <img id="resim" alt="Seçtiğiniz resim burada görünecek " style="max-height: 200px;" />
                        
               



                    </div>
                </div>
            </div>








            <div class="row">
                <div class="col-sm-12">
                    <div class="form-group">
                        <asp:Button ID="btnHaberEkle" runat="server" CssClass="btn btn-success container-fluid " Text=" Haber Ekle" Width="175" OnClick="btnHaberEkle_Click"  />
                    </div>
                </div>
            </div>






        </div>
    </div>
</asp:Content>

