<%@ Page Title="מדריך מערכת הבלמים ברכב" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container my-5" style="direction:rtl; text-align:right;">
        <h1 class="mb-4">מערכת הבלמים (דיסק ורפידות)</h1>
        
        <div class="row g-4 mb-4">
            <div class="col-12 text-center">
                <img src="/Images/car_brakes.jpg" alt="מערכת בלמי דיסק ברכב" class="img-fluid rounded bigPicImg mx-auto d-block" style="width: 100%; max-width: 600px; height: auto;">
            </div>
        </div>
        
        <div class="row g-4">
            <div class="col-md-6">
                <div class="engine-info-box h-100">
                    <h3 class="mb-3">רכיבים</h3>
                    <p>קליפר (קליבר) הידראולי, רפידות בלם (לרוב מחומר קרמי או חצי-מתכתי), דיסק בלימה מפלדה, נוזל בלמים, ודוושת בלימה קפיצית.</p>
                </div>
            </div>
            
            <div class="col-md-6">
                <div class="engine-info-box h-100">
                    <h3 class="mb-3">איך היא פועלת?</h3>
                    <p>לחיצה על הדוושה 🡨 לחץ הידראולי מועבר בנוזל הבלמים 🡨 הקליפר דוחס את רפידות הבלם ישירות אל הדיסק המסתובב 🡨 נוצר חיכוך עוצמתי המאט ועוצר את הרכב.</p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>