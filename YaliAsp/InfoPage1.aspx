<%@ Page Title="עולם הרכבים והמכוניות" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>body { direction: rtl; text-align: right; }</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container my-5">
        <div class="engine-info-box p-5 mb-4">
            <div class="row align-items-center">
                <div class="col-lg-7 text-center text-lg-right order-lg-1">
                    <h1 class="display-5 fw-bold" style="margin-bottom: 20px;">עולם הרכבים והמכוניות</h1>
                    <p class="fs-4 mt-3" style="color: #e0e0e0;">כיצד הטכנולוגיה והקידמה משנות את חוויית הנהיגה שלנו, ואיך לבחור נכון את הרכב המושלם עבורכם ועבור משפחתכם.</p>
                </div>
                <div class="col-lg-5 order-lg-2 mt-4 mt-lg-0">
                    <img src="/Images/main_cars.jpg" alt="מגוון מכוניות ורכבים חדישים" class="img-fluid rounded bigPicImg" style="width: 100%; height: auto;">
                </div>
            </div>
        </div>
    </div>
</asp:Content>