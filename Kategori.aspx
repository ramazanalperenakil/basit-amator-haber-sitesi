<%@ Page Title="" Language="C#" MasterPageFile="~/ana.master" AutoEventWireup="true" CodeFile="Kategori.aspx.cs" Inherits="Kategori" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="container">
         
        <div  class="row">
           

              
            <div class="col-8 ">
                <h3 class="text-center" id="baslik" runat="server">Tüm Haberler</h3>
                <asp:Repeater ID="RepeaterKategorisel" runat="server">
                    <ItemTemplate>
                         <div class='blog-posts '>
                                <div class='post featured'>
                                    <%--<a href='<%#Eval("url")%>'>--%>
                                      
                                            <img class="image" src="<%#Eval("HaberGorselUrl")%>" alt="Card image cap">
                                            
                                     
                                        <div class='content'>
                                            <h5><%#Eval("HaberBaslik")%></h5>
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

        <div class="col-4 ">
            <div class="row">
                    <h3 class=" ml-0 mt-3 pb-3 mb-4 font-italic border-bottom">Yazılar </h3>
                   
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
                
                </div>
              

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
                                    <h6 class="ml-0"><i class="fas fa-arrow-right mt-2 "></i> &nbsp; <%#Eval("HaberBaslik")%></h6>
                                </a>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>



                </div>

             <h3 class="mt-3 mb-2 font-italic border-bottom"> Puan Tablosu  </h3>
                <iframe id="Puantablosu" src="https://www.ücretsiz.com/puantablosu.html" style="width:350px; height:450px;background:white;*border:1px solid red;" frameborder="0"></iframe>
                  <h3 class="mt-3 mb-2  font-italic border-bottom"> Namaz Vakitleri </h3>
                <iframe class="" name="vakit" src="https://www.vakitci.com/vakit2.php?id=3493&tema=bk" height="405" width="350" scrolling="no" border="0" frameborder="0"></iframe>
        </div>
        </div>
        
    </section>
   
</asp:Content>

