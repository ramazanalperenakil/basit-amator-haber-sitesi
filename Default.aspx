<%@ Page Title="" Language="C#" MasterPageFile="~/ana.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
   
    <section class="container ">



        <!-- Manşet Slider Başla -->

        <div class="contentContainerManset pt-1">
            <div class="solSutunManset " style="width: 100px;">



                <div id="mansetSlider">

                    <div style="width: 670px; height: 330px;">
                        <a href="haber1.asp" target="_blank" id="mansetLink">
                            <img class="mansetResim" alt="" src="mansetresim/1.jpg" />
                            <div class="mansetSolFlash"></div>
                            <div class="mansetResimYaziZemin">
                                <div class="innerTube"></div>
                            </div>
                        </a>
                    </div>





                    <div class="navigasyon  mt-3">

                        <ul id="ctl00_ortayer_mansetNavigasyon" class="left">
                            <div id="sa" runat="server">
                            </div>

                        </ul>

                        <ul class="right">
                            <li><a href="Kategori.aspx" target="_blank" title="Tüm manşetleri görmek için tıklayınız">Tümü</a></li>
                        </ul>
                    </div>


                </div>



                <div id="ctl00_ortayer_mansetData" class="sakliDiv">



                    <asp:Repeater ID="RepeaterLink" runat="server">
                        <ItemTemplate>
                            <div class="mansPict"><%#Eval("HaberGorselUrl")%></div>
                            <div class="mansLink">Haber.aspx?=<%#Eval("url")%></div>
                            <div class="mansBaslik"><%# (Eval("HaberBaslik").ToString().Length>40)?Eval("HaberBaslik").ToString().Substring(0,40)+"...":Eval("HaberBaslik").ToString() %></div>
                            <div class="mansTur">2</div>
                            <div class="mansPat">1</div>
                        </ItemTemplate>
                    </asp:Repeater>





                    <img class="sakliDiv" id="future1" />
                    <img class="sakliDiv" id="future2" />
                </div>
            </div>
        </div>
        <script type="text/javascript">AnaMansetStart();</script>

        <div class="col-3 row " id="ustsag">
            <asp:Repeater ID="RepeaterSliderYanReklam" runat="server">
                <ItemTemplate>

                    <%-- <img src="<%#Eval("Reklam_Resim_Url")%>" class="img-fluid" />--%>
                    <img src="<%#Eval("Reklam_Resim_Url")%>" />


                </ItemTemplate>
            </asp:Repeater>


        </div>

        <!-- Manşet Slider Bitir -->
    </section>


    <br />
    <section class="container ">



        <div class=" col-12 pl-0 pb-2 pt-2 ">
            <asp:Repeater ID="RepeaterSliderAltReklam" runat="server">
                <ItemTemplate>
                    <img src="<%#Eval("Reklam_Resim_Url")%>" />
                </ItemTemplate>
            </asp:Repeater>

        </div>



    </section>

    <section class="container ">
        <div class="row">
            <div class="col-8 row container ">
                <div class="col-md-3">
				<br>
				<iframe id="Piyasalar" src="https://www.ücretsiz.com/piyasalar.html" style="width:700px; height:100px;" frameborder="0"></iframe>
                    </div>
            </div>
            <div class="col-4 ml-4 ">




                <!-- hava.one Weather Widget -->
                <iframe src="//www.hava.one
/widget2/widget_frame?id=309527&days=1&color=68a7d4&pos=h&w=250&header=true"
                    scrolling="no" frameborder="0" style="border: none; overflow: hidden; height: 110px; width: 360px;" allowtransparency="true"></iframe>



            </div>
        </div>

    </section>
    <section class="container">
        <div class="row">


            <div class="col-8 mt-0 pb-1">
                <div class="row">
                    <h3 class=" ml-5 mt-3 pb-3  font-italic border-bottom">Yerel Haberler</h3>
                    <div style="width: 300px;"></div>
                    <a href="Kategori.aspx?tur=yerel">
                        <h5 class="ml-5 mt-3 pb-3 mb-4 font-italic border-bottom">Tümü</h5>
                    </a>
                </div>

                <section class="details-card h-100 ">
                    <div class="container">
                        <div class="row">
                            <asp:Repeater ID="RepeaterYerel" runat="server">
                                <ItemTemplate>


                                    <div class=" col-xl-6 col-lg-4 col-md-6 h-100 mt-2 " id="firstname ">

                                        <div class="card-content  ">
                                            <div class="card-img ">
                                                <img src="<%#Eval("HaberGorselUrl")%>" alt="">
                                                <span>
                                                    <h4><%#Eval("Menu")%></h4>
                                                </span>
                                            </div>
                                            <div class="card-desc">
                                                <h3><%# (Eval("HaberBaslik").ToString().Length>40)?Eval("HaberBaslik").ToString().Substring(0,40)+"...":Eval("HaberBaslik").ToString() %></h3>
                                                <p>
                                                    <%#Eval("HaberOnu")%>
                                                </p>


                                                <a href="Haber.aspx?=<%#Eval("url")%>" class="btn btn-info">Devamını Oku...</a>




                                            </div>
                                        </div>

                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>




                        </div>
                    </div>
                </section>

            </div>
            <div class="col-4">           
                <div class="row">
                    <h3 class=" ml-0 mt-3 pb-3 mb-4 font-italic border-bottom">Yazılar </h3>
                    <div style="width: 180px;"></div>
                    <a href="Kategori.aspx?tur=yazi">
                        <h5 class="ml-5 mt-3 pb-3 mb-4 font-italic border-bottom">Tümü</h5>
                    </a>
                </div>

                <asp:Repeater ID="RepeaterYazilar" runat="server">
                    <ItemTemplate>
                        <div class="card mt-2">
                            <img class="card-img-top" src="<%#Eval("HaberGorselUrl")%>" alt="Card image cap">
                            <div class="card-body">
                                <h5 class="card-title"><%# (Eval("HaberBaslik").ToString().Length>40)?Eval("HaberBaslik").ToString().Substring(0,40)+"...":Eval("HaberBaslik").ToString() %></h5>
                                <p class="card-text"><%#Eval("HaberOnu")%></p>
                                <a href="Haber.aspx?=<%#Eval("url")%>" class="btn btn-info">Devamını Oku...</a>
                            </div>
                        </div>


                    </ItemTemplate>
                </asp:Repeater>




            </div>

        </div>
    </section>
    <section class="container mb-2">
        <div class="row">

            <div class="col-8 ">
                <div class="row">
                    <h3 class=" ml-5 mt-3 pb-3 mb-4 font-italic border-bottom">Asayiş </h3>
                    <div style="width: 400px;"></div>
                    <a href="Kategori.aspx?tur=asayis">
                        <h5 class="ml-5 mt-3 pb-3 mb-4 font-italic border-bottom">Tümü</h5>
                    </a>
                </div>
                <div class='container'>
                    <asp:Repeater ID="RepeaterAsayis" runat="server">
                        <ItemTemplate>
                            <div class='blog-posts '>
                                <div class='post featured'>
                                    <%--<a href='<%#Eval("url")%>'>--%>

                                    <img class="image" src="<%#Eval("HaberGorselUrl")%>" alt="Card image cap">


                                    <div class='content'>
                                        <h5><%# (Eval("HaberBaslik").ToString().Length>40)?Eval("HaberBaslik").ToString().Substring(0,40)+"...":Eval("HaberBaslik").ToString() %></h5>
                                        <h6>
                                            <%#Eval("HaberOnu")%>
                                        </h6>
                                        <div class='meta'>
                                            <a href="Haber.aspx?=<%#Eval("url")%>" class="btn btn-info">Devamını Oku...</a>
                                            <li></li>
                                            <li></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <%-- </a>--%>
                                </div>



                            </div>
                        </ItemTemplate>
                    </asp:Repeater>





                </div>

            </div>





            <div class="col-4 ">
                <h3 class="mt-3 pb-3 mb-4 font-italic border-bottom">Sosyal Medya
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

              <%--  <div class="container border">
                    <h3 class="mt-2 pb-2 font-italic border-bottom">En Çok Okunanlar
   </h3>
                    <asp:Repeater ID="RepeaterEnCokOkunanlar" runat="server">
                        <ItemTemplate>
                            <div class="container row pt-1">

                                <a href=" Haber.aspx?=<%#Eval("url")%>">
                                    <h6 class="ml-0"><i class="fas fa-arrow-right mt-2 "></i>&nbsp; <%# (Eval("HaberBaslik").ToString().Length>40)?Eval("HaberBaslik").ToString().Substring(0,40)+"...":Eval("HaberBaslik").ToString() %></h6>
                                </a>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>



                </div>--%>

                <div>
                    <asp:Repeater ID="RepeaterReklamEnCokOkunanALt" runat="server">
                        <ItemTemplate>

                            <img src="<%#Eval("Reklam_Resim_Url")%>" />

                        </ItemTemplate>

                    </asp:Repeater>
                </div>
            </div>
        </div>

    </section>


    <section class="container mb-2">
        <div class="row">

            <div class="col-8 ">
                <div class="row">
                    <h3 class=" ml-5 mt-3 pb-3 mb-4 font-italic border-bottom">Siyaset </h3>
                    <div style="width: 400px;"></div>
                    <a href="Kategori.aspx?tur=siyaset">
                        <h5 class="ml-5 mt-3 pb-3 mb-4 font-italic border-bottom">Tümü</h5>
                    </a>
                </div>

                <div class="container">




                    <div class="row">
                        <asp:Panel ID="Panel1" runat="server" CssClass="row h-100">
                            <asp:Repeater ID="RepeaterSiyaset" runat="server">
                                <ItemTemplate>
                                    <div class="col-xl-4 col-lg-4 col-md-6 h-100 ">
                                        <div class="card mb-4  h-100">
                                            <img class="card-img-top" src="<%#Eval("HaberGorselUrl")%>" alt="Card image cap">
                                            <div class="card-body">
                                                <h5 class="card-title"><%# (Eval("HaberBaslik").ToString().Length>40)?Eval("HaberBaslik").ToString().Substring(0,40)+"...":Eval("HaberBaslik").ToString() %></h5>
                                                <p class="card-text"><%#Eval("HaberOnu")%></p>
                                                <a href="Haber.aspx?=<%#Eval("url")%>" class="btn btn-info">Devamını Oku...</a>
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </asp:Panel>





                    </div>



                    <div class="row">
                        <h3 class=" ml-5 mt-3 pb-3 mb-4 font-italic border-bottom">Ekonomi </h3>
                        <div style="width: 400px;"></div>
                        <a href="Kategori.aspx?tur=ekenomi">
                            <h5 class="ml-5 mt-3 pb-3 mb-4 font-italic border-bottom">Tümü</h5>
                        </a>
                    </div>
                    <div class="row">
                        <asp:Panel ID="Panel2" runat="server" CssClass="row h-100">
                            <asp:Repeater ID="RepeaterEkenomi" runat="server">
                                <ItemTemplate>
                                    <div class="col-md-4 h-100 card-img-top">
                                        <div class="card">
                                            <img class="card-img-top" src="<%#Eval("HaberGorselUrl")%>" alt="Card image cap">
                                            <div class="card-body">
                                                <h5 class="card-title border-bottom pb-3"><%# (Eval("HaberBaslik").ToString().Length>40)?Eval("HaberBaslik").ToString().Substring(0,40)+"...":Eval("HaberBaslik").ToString() %><a href="#" class="float-right d-inline-flex share"></a></h5>
                                                <p class="card-text"><%#Eval("HaberOnu")%></p>
                                                <a href="Haber.aspx?=<%#Eval("url")%>" class="btn btn-info">Devamını Oku...</a>
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </asp:Panel>



                    </div>

                </div>
            </div>


            <div class="col-4 ">

                <h3 class="mt-3 mb-2 font-italic border-bottom">Puan Tablosu  </h3>
                <iframe id="Puantablosu" src="https://www.ücretsiz.com/puantablosu.html" style="width: 350px; height: 450px; background: white; *border: 1px solid red;" frameborder="0"></iframe>
                <h3 class="mt-3 mb-2  font-italic border-bottom">Namaz Vakitleri </h3>
                <iframe class="" name="vakit" src="https://www.vakitci.com/vakit2.php?id=3493&tema=bk" height="405" width="350" scrolling="no" border="0" frameborder="0"></iframe>
                <div>
                    <asp:Repeater ID="RepeaterNamzaAlt" runat="server">
                        <ItemTemplate>

                            <img src="<%#Eval("Reklam_Resim_Url")%>" />

                        </ItemTemplate>

                    </asp:Repeater>
                </div>
            </div>
        </div>

    </section>

</asp:Content>

