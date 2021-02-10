<%@ Page Title="" Language="C#" MasterPageFile="~/ana.master" AutoEventWireup="true" CodeFile="Haber.aspx.cs" Inherits="Haber" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="container">

        <div class="row">
            <div class="col-8 ">
                <asp:Repeater ID="RepeaterHaber" runat="server">
                    <ItemTemplate>


                        <div class="card mt-3">
                            <div style="font-size: 25px;" class="card-header font-weight-bold ">
                                <%#Eval("HaberBaslik")%>
                            </div>
                            <div class="row pl-4 pt-1">
                                <img src="img/iconfinder_ic_history_48px_352426.png" class="pl-1" height="25" />
                                <h6 class="pl-2">Yayınlanma Tarihi : </h6>
                                <h6 class=" ml-2"><%#Eval("YayinlanmaTarihi")%></h6>
                                <img src="img/iconfinder_ic_history_48px_352426.png" class="pl-5" height="25" />
                                <h6 class="pl-2">Kategori  : </h6>
                                <h6 class=" ml-2"><%#Eval("Kategori")%></h6>

                                <img src="img/iconfinder_User_43350.png" class="pl-5" height="25" />
                                <h6 class="pl-2">Yazar  : </h6>
                                <h6 class=" ml-2"><%#Eval("Yazar")%></h6>
                            </div>

                            <hr />
                            <div class="card-body">
                                <h5 class="card-title"><%#Eval("HaberOnu")%></h5>

                                <img class="container-fluid img-fluid" src="<%#Eval("HaberGorselUrl")%>" />

                                <p class="card-text mt-3"><%#Eval("Haberİcerik")%></p>

                            </div>
                            <hr />
                            <h6 class="ml-3">Sosyal Medyada Paylaş</h6>
                            <div class="row container">



                                <asp:ImageButton ID="ImageButton1" CssClass="p-2" runat="server" ImageUrl="~/img/facebook_share.png" Height="60px" OnClick="ImageButton1_Click" />

                                 <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/img/twitter_share.png" Height="60px"  OnClick="ImageButton2_Click" />
                               

                               

                              

                            </div>


                        </div>
                    </ItemTemplate>
                </asp:Repeater>

            </div>
            <div class="col-4 ">
                <div class="row">
                    <h3 class=" ml-0 mt-3 pb-3 mb-4 font-italic border-bottom">Yazılar </h3>
                    <div style="width: 180px;"></div>
                    <a href="#">
                        <h5 class="ml-5 mt-3 pb-3 mb-4 font-italic border-bottom">Tümü</h5>
                    </a>
                </div>

                <asp:Repeater ID="RepeaterYazilar" runat="server">
                    <ItemTemplate>
                        <div class="card mt-2">
                            <img class="card-img-top" src="<%#Eval("HaberGorselUrl")%>" alt="Card image cap">
                            <div class="card-body">
                                <h5 class="card-title"><%#Eval("HaberBaslik")%></h5>
                                <p class="card-text"><%#Eval("HaberOnu")%></p>
                                <a href="Haber.aspx?=<%#Eval("url")%>" class="btn btn-info">Devamını Oku...</a>
                            </div>
                        </div>


                    </ItemTemplate>
                </asp:Repeater>

                <h3 class="mt-3 pb-3 mb-4 font-italic border-bottom">Social Cards
   </h3>
               <div class="row">
                    <div class="col-md-6">
                        <div class="card mb-3">
                            <div class="social-card-header align-middle text-center bg-facebook">
                                <i class="fab fa-facebook-square"></i>
                            </div>
                            <div class="card-body text-center">
                                <div class="row">
                                    <asp:Repeater ID="RepeaterFacebook" runat="server">
                                        <ItemTemplate>
                                            <a class="container" href='https://www.facebook.com/<%#Eval("facebook")%>'>
                                                <div class="container" style="font-size: x-large"><%#Eval("facebook")%></div>
                                            </a>
                                        </ItemTemplate>

                                    </asp:Repeater>


                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="card mb-3">
                            <div class="social-card-header align-middle text-center bg-twitter">
                                <i class="fab fa-twitter-square"></i>
                            </div>
                            <div class="card-body text-center">
                                <div class="row">
                                    <asp:Repeater ID="RepeaterTwitter" runat="server">
                                        <ItemTemplate>
                                            <a class="container" href='https://www.twitter.com/<%#Eval("twitter")%>'>
                                                <div class="container" style="font-size: x-large"><%#Eval("twitter")%></div>
                                            </a>
                                        </ItemTemplate>

                                    </asp:Repeater>


                                </div>
                            </div>
                        </div>
                    </div>

                </div>

                <div class="container border">
                    <h3 class="mt-2 pb-2 font-italic border-bottom">En Çok Okunanlar
   </h3>

                    <asp:Repeater ID="RepeaterEnCokOkunanlar" runat="server">
                        <ItemTemplate>
                            <div class="container row pt-1">

                                <a href=" Haber.aspx?=<%#Eval("url")%>">
                                    <h6 class="ml-0"><i class="fas fa-arrow-right mt-2 "></i>&nbsp; <%#Eval("HaberBaslik")%></h6>
                                </a>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>


                </div>

                <h3 class="mt-3 mb-2 font-italic border-bottom">Puan Tablosu  </h3>
                <iframe id="Puantablosu" src="https://www.ücretsiz.com/puantablosu.html" style="width: 350px; height: 450px; background: white; *border: 1px solid red;" frameborder="0"></iframe>
                <h3 class="mt-3 mb-2  font-italic border-bottom">Namaz Vakitleri </h3>
                <iframe class="" name="vakit" src="https://www.vakitci.com/vakit2.php?id=3493&tema=bk" height="405" width="350" scrolling="no" border="0" frameborder="0"></iframe>
            </div>
        </div>

    </section>
</asp:Content>

