<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="portal_asp.Login" %>

<html class="light-style layout-wide customizer-hide" data-assets-path="../../assets/" data-template="horizontal-menu-template" data-theme="theme-default" dir="rtl" lang="fa">

<head>
    <meta charset="UTF-8"/>
    <meta content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" name="viewport"/>
    <title>ورود به نرم افزار</title>
    <meta content="" name="description"/>
    <!-- Favicon -->
    <link href="../../assets/img/favicon/favicon.ico" rel="icon" type="image/x-icon"/>
    <!-- Fonts -->
    <link href="https://fonts.googleapis.com" rel="preconnect"/>
    <link crossorigin href="https://fonts.gstatic.com" rel="preconnect"/>
    <link href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&ampdisplay=swap" rel="stylesheet"/>
    <!-- Icons -->
    <link href="../../assets/vendor/fonts/fontawesome.css" rel="stylesheet"/>
    <link href="../../assets/vendor/fonts/tabler-icons.css" rel="stylesheet"/>
    <link href="../../assets/vendor/fonts/flag-icons.css" rel="stylesheet"/>
    <!-- Core CSS -->
    <link class="template-customizer-core-css" href="../../assets/vendor/css/rtl/core.css" rel="stylesheet"/>
    <link class="template-customizer-theme-css" href="../../assets/vendor/css/rtl/theme-default.css" rel="stylesheet"/>
    <link href="../../assets/css/demo.css" rel="stylesheet"/>
    <!-- Vendors CSS -->
    <link href="../../assets/vendor/libs/node-waves/node-waves.css" rel="stylesheet"/>
    <link href="../../assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet"/>
    <link href="../../assets/vendor/libs/typeahead-js/typeahead.css" rel="stylesheet"/>
    <!-- Vendor -->
    <link href="../../assets/vendor/libs/@form-validation/form-validation.css" rel="stylesheet"/>
    <!-- Page CSS -->
    <!-- Page -->
    <link href="../../assets/vendor/css/pages/page-auth.css" rel="stylesheet"/>
    <!-- Helpers -->
    <script src="../../assets/vendor/js/helpers.js"></script>
    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Template customizer: To hide customizer set displayCustomizer value false in config.js.  -->
    <script src="../../assets/vendor/js/template-customizer.js"></script>
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="../../assets/js/config.js"></script>
    <!-- Better experience of RTL -->
    <link href="../../assets/vendor/css/rtl/rtl.css" rel="stylesheet"/>
</head>

<body>
    <form id="form1" runat="server">
<!-- Content -->
<div class="container-xxl">
    <div class="authentication-wrapper authentication-basic container-p-y">
        <div class="authentication-inner py-4">
            <!-- Login -->
            <div class="card">
                <div class="card-body">
                    <!-- Logo -->
                    <div class="app-brand justify-content-center mb-4 mt-2">
                        <a class="app-brand-link gap-2" href="/">
                            <span class="app-brand-logo demo">
                                <svg fill="none" height="22" viewBox="0 0 32 22" width="32" xmlns="http://www.w3.org/2000/svg">
                                    <path clip-rule="evenodd" d="M0.00172773 0V6.85398C0.00172773 6.85398 -0.133178 9.01207 1.98092 10.8388L13.6912 21.9964L19.7809 21.9181L18.8042 9.88248L16.4951 7.17289L9.23799 0H0.00172773Z" fill="#7367F0" fill-rule="evenodd"/>
                                    <path clip-rule="evenodd" d="M7.69824 16.4364L12.5199 3.23696L16.5541 7.25596L7.69824 16.4364Z" fill="#161616" fill-rule="evenodd" opacity="0.06"/>
                                    <path clip-rule="evenodd" d="M8.07751 15.9175L13.9419 4.63989L16.5849 7.28475L8.07751 15.9175Z" fill="#161616" fill-rule="evenodd" opacity="0.06"/>
                                    <path clip-rule="evenodd" d="M7.77295 16.3566L23.6563 0H32V6.88383C32 6.88383 31.8262 9.17836 30.6591 10.4057L19.7824 22H13.6938L7.77295 16.3566Z" fill="#7367F0" fill-rule="evenodd"/>
                                </svg>
                            </span>
                            <span class="app-brand-text demo text-body fw-bolder">یدکی</span>
                        </a>
                    </div>
                    <!-- /Logo -->
                    <h4 class="mb-1 pt-2">به یدکی خوش آمدید! 👋</h4>
                    <p class="mb-4">لطفا به حساب کاربری خود وارد شوید تا از امکانات سامانه استفاده کنید.</p>
                        <div class="mb-3">
                            <label class="form-label" for="email"> نام کاربری</label>
                            <asp:TextBox ID="usernametxt" runat="server" placeholder=" نام کاربری خود را وارد کنید" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="نام کاربری خود را وارد کنید" ControlToValidate="usernametxt" CssClass="alert-danger" ></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3 form-password-toggle">
                            <div class="d-flex justify-content-between">
                                <label class="form-label" for="password">رمز عبور</label>
                                <a href="auth-forgot-password-basic.html">
                                    <small>فراموش کرده‌اید؟</small>
                                </a>
                            </div>
                            <div class="input-group input-group-merge">
                            <asp:TextBox ID="passwordTxt" runat="server" placeholder=" کلمه عبور را وارد کنید" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                   <span class="input-group-text cursor-pointer">
                                    <i class="ti ti-eye-off"></i>
                                </span>
                

                            </div>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage=" کلمه عبور را وارد کنید" CssClass="alert-danger" ControlToValidate="passwordTxt"></asp:RequiredFieldValidator>

                        </div>
                        <div class="mb-3">
                            <div class="form-check">
                                <input class="form-check-input" id="remember-me" type="checkbox"/>
                                <label class="form-check-label" for="remember-me"> مرا به خاطر بسپار</label>
                            </div>
                        </div>
                        <div class="mb-3">
                            <asp:Button ID="loginBtn" runat="server" Text="ورود" CssClass="btn btn-primary d-grid w-100 waves-effect waves-light" OnClick="loginBtn_Click"  />
                        </div>
                    <p class="text-center">
                        <span>حساب کاربری ندارید؟</span>
                        <a href="auth-register-basic.html">
                            <span>ثبت نام</span>
                        </a>
                    </p>
            
                </div>
                                    <asp:Label ID="Label1" runat="server" Text="Label" CssClass="badge bg-primary" Visible="False"></asp:Label>

            </div>
            <!-- /Register -->
        </div>
    </div>
</div>
<!-- / Content -->
<!-- Core JS -->
<!-- build:js assets/vendor/js/core.js -->
<script src="../../assets/vendor/libs/jquery/jquery.js"></script>
<script src="../../assets/vendor/libs/popper/popper.js"></script>
<script src="../../assets/vendor/js/bootstrap.js"></script>
<script src="../../assets/vendor/libs/node-waves/node-waves.js"></script>
<script src="../../assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
<script src="../../assets/vendor/libs/hammer/hammer.js"></script>
<script src="../../assets/vendor/libs/i18n/i18n.js"></script>
<script src="../../assets/vendor/libs/typeahead-js/typeahead.js"></script>
<script src="../../assets/vendor/js/menu.js"></script>
<!-- endbuild -->
<!-- Vendors JS -->
<script src="../../assets/vendor/libs/@form-validation/popular.js"></script>
<script src="../../assets/vendor/libs/@form-validation/bootstrap5.js"></script>
<script src="../../assets/vendor/libs/@form-validation/auto-focus.js"></script>
<!-- Main JS -->
<script src="../../assets/js/main.js"></script>
<!-- Page JS -->
<script src="../../assets/js/pages-auth.js"></script>
    </form>
</body>

</html>
