<%@ Page Title="" Language="C#" MasterPageFile="~/yonetim/yonetim.master" AutoEventWireup="true" CodeFile="UyeDuzenle.aspx.cs" Inherits="yonetim_UyeDuzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="card" style="margin-top: 90px">
        <div class="container">
    <h1>Profili Düzenle</h1>
  	<hr>
	<div class="row">
      <!-- left column -->
      <div class="col-md-3">
        <div class="text-center">
             <img id="resim" alt="Seçtiğiniz resim burada görünecek " class="avatar img-circle" style="max-height: 130px;" />
          <br />
           <asp:FileUpload ID="fuDosya" ClientIDMode="Static" onchange="$('#resim')[0].src = window.URL.createObjectURL(this.files[0])" CssClass="form-control" runat="server" Width="100%" Height="35px" />
        </div>
      </div>
      
      <!-- edit form column -->
      <div class="col-md-8 personal-info">
       
        <h3>Kişisel Bilgilerim</h3>
        
        <form class="form-horizontal" role="form">
             <div class="form-group">
            <label class="col-md-3 control-label">Kullanıcı Adınız</label>
            <div class="col-md-8">
               <asp:TextBox ID="txtKullanici" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Adınız</label>
            <div class="col-lg-8">
              <asp:TextBox ID="txtad" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Soyadınız</label>
            <div class="col-lg-8">
             <asp:TextBox ID="txtsoyad" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">E-Posta Adreiniz</label>
            <div class="col-lg-8">
              <asp:TextBox ID="txteposta" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
          </div>
       
          <div class="form-group">
            <label class="col-md-3 control-label">Şifreniz</label>
            <div class="col-md-8">
              <asp:TextBox ID="txtsifre" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
          </div>
       
          <div class="form-group">
            <label class="col-md-3 control-label"></label>
            <div class="col-md-8"><br />
            <asp:Button ID="ButtonKaydet" CssClass="btn btn-primary" runat="server" Text="Güncelle" />
              
            </div>
          </div>
        </form>
      </div>
  </div>
</div>
<hr>

    </div>
</asp:Content>

