﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Transaction.aspx.cs" Inherits="confinity.Transaction" %>

<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="author" content="templatemo">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">

    <title>SnapX Photographer Page</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-snapx-photography.css">
    <link rel="stylesheet" href="assets/css/owl.css">
    <link rel="stylesheet" href="assets/css/animate.css">
    <link rel="stylesheet"href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
<!--

TemplateMo 576 SnapX Photography

https://templatemo.com/tm-576-snapx-photography

-->
  </head>

<body>



  <!-- ***** Header Area Start ***** -->
  <header class="header-area header-sticky">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <nav class="main-nav">
                    <!-- ***** Logo Start ***** -->
                    <a href="indexi.html" class="logo">
                        <img src="assets/images/logo.png" alt="logo">
                    </a>
                    <!-- ***** Logo End ***** -->

                    <!-- ***** Menu Start ***** -->
                    <ul class="nav">
                        <li><a href="indexi.html" class="active">Home</a></li>
                        <li class="has-sub">
                            <a href="javascript:void(0)">other &amp; services</a>
                            <ul class="sub-menu">
                              <li><a href="feedback.html">Feedback</a></li> <!--Request loan-->
                              <li><a href="ServiceApproval.aspx">ServiceApproval</a></li> <!--transaction history-->
                              <li><a href="payBills.html">Bills</a></li> <!--pay bills-->
                              <li><a href="book appoitnment.aspx">Admin</a></li> <!--pay bills-->
                                <li><a href="view_income_statement.aspx">Statement</a></li>
                            </ul>
                        </li>
                        <li><a href="requestServices.html">Request services</a></li> <!-- request services-->
                        <li><a href="Transaction.aspx">Transaction</a></li> <!-- make Transactions-->
                    </ul>   
                    <div class="border-button">
                      <a  href="LoginUser.aspx" class="sign-in-up"><i class="fa fa-user"></i> Sign out</a>
                    </div>
                    <a class='menu-trigger'>
                        <span>Menu</span>
                    </a>
                    <!-- ***** Menu End ***** -->
                </nav>
            </div>
        </div>
    </div>
  </header>

  <div id="modal" class="popupContainer" style="display:none;">
    <div class="popupHeader">
        <span class="header_title">Login</span>
        <span class="modal_close"><i class="fa fa-times"></i></span>
    </div>

    <section class="popupBody">
        <!-- Social Login -->
        <div class="social_login">
            <div class="">
                <a href="#" class="social_box fb">
                    <span class="icon"><i class="fab fa-facebook"></i></span>
                    <span class="icon_title">Connect with Facebook</span>

                </a>

                <a href="#" class="social_box google">
                    <span class="icon"><i class="fab fa-google-plus"></i></span>
                    <span class="icon_title">Connect with Google</span>
                </a>
            </div>

            <div class="centeredText">
                <span>Or use your Email address</span>
            </div>

            <div class="action_btns">
                <div class="one_half"><a href="#" id="login_form" class="btn">Login</a></div>
                <div class="one_half last"><a href="#" id="register_form" class="btn">Sign up</a></div>
            </div>
        </div>

        <!-- Username & Password Login form -->
        <div class="user_login">
            <form action="" method="post">
                <label>Email / Username</label>
                <input name="username" type="text" id="username" />
              <br />

                <label>Password</label>
                <input name="password" type="password" id="password" />
              <br />

                <div class="checkbox">
                    <input id="remember" type="checkbox" />
                    <label for="remember">Remember me on this computer</label>
                </div>

                <div class="action_btns">
                    <div class="one_half"><a href="#" class="btn back_btn"><i class="fa fa-angle-double-left"></i> Back</a></div>
                    <div class="one_half last"><button type="submit" class="btn btn_red">Login</button></div>
                </div>
            </form>

            <a href="#" class="forgot_password">Forgot password?</a>
        </div>

        <!-- Register Form -->
        <div class="user_register">
            <form action="" method="post">
                <label>Username</label>
                <input name="username" type="text" id="username" />
                <br />

                <label>Email Address</label>
                <input name="email" type="email" id="email" />
                <br />

                <label>Password</label>
                <input name="password" type="password" id="password" />
                <br />

                <div class="checkbox">
                    <input id="send_updates" type="checkbox" />
                    <label for="send_updates">Send me occasional email updates</label>
                </div>

                <div class="action_btns">
                    <div class="one_half"><a href="#" class="btn back_btn"><i class="fa fa-angle-double-left"></i> Back</a></div>
                    <div class="one_half last"><button type="submit" class="btn btn_red">Register</button></div>
                </div>
            </form>
        </div>
        
    </section>
  </div>

  <div class="page-heading">
    <div class="container">
      <div class="row">
        <div class="col-lg-8 offset-lg-2 header-text">
          <h2>NOW MAKING</br> <em> TRANSACTIONS</br></em> FAST AND EASY !</h2>
          <p> Your most trusted bank brings you easy and fast transactions. To see terms and conditions<a rel="nofollow" href="https://templatemo.com/contact" target="_blank">  click here</a> </br> For information or help <a rel="nofollow" href="https://templatemo.com/contact" target="_blank">  click here</a> </p>
        </div>
      </div>
    </div>
  </div>


  <section class="contact-us">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="section-heading text-center">
            <h6>Making</h6>
            <h4>Transactions<em> Easier </em> Faster  <em>Reliable</em></h4>
          </div>
        </div>
        
        <div class="col-lg-12">
          <form id="contact" action="" method="post" runat="server">
            <div class="row">
              <div class="col-lg-6">
                <fieldset>
                   <asp:TextBox ID="senderaccnumber" runat="server"  placeholder="SenderAccount number"  ></asp:TextBox>
          
                </fieldset>
              </div>
              <div class="col-lg-6">
                <fieldset>
                    <asp:TextBox ID="receiverammount" runat="server"  placeholder="Receiver Account Number"  ></asp:TextBox>
          
                </fieldset>
              </div>
                <div class="col-lg-6">
                <fieldset>
                    <asp:TextBox ID="amount" runat="server"  placeholder="Amount"  ></asp:TextBox>
          
                </fieldset>
              </div>
                <div class="col-lg-6">
                <fieldset>
                    <asp:TextBox ID="balance" runat="server"  placeholder="Balance"  ></asp:TextBox>
          
                </fieldset>
              </div>
              <div class="col-lg-6">
                <fieldset>
                    <asp:TextBox ID="date" runat="server"  placeholder="Date" ></asp:TextBox>
         
                </fieldset>
              </div>
              
             
              <div class="col-lg-12">
                <fieldset>
                    <asp:Button ID="submitbutton" runat="server" Text="SUBMIT" BorderColor="#00ccff" BackColor="#00ccff" class="orange-button"  OnClick="submitbutton_Click"/>
                  <center>  <asp:Label ID="Label1" runat="server" ></asp:Label></center>
                </fieldset>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </section>

  <footer>
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          
          
         
        </div>
      </div>
    </div>
  </footer>

  <!-- Scripts -->
  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

  <script src="assets/js/isotope.min.js"></script>
  <script src="assets/js/owl-carousel.js"></script>
  <script src="assets/js/tabs.js"></script>
  <script src="assets/js/popup.js"></script>
  <script src="assets/js/custom.js"></script>


  </body>
</html>
