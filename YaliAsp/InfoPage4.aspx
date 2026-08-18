<%@ Page Title="מדריך מערכת בקרת אקלים ברכב" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="InfoPage4.aspx.cs" Inherits="YaliAsp.InfoPage4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container my-5" style="direction:rtl; text-align:right;">
        <h1 class="mb-4">מערכת בקרת אקלים ומזגן הרכב</h1>
        
        <div class="row g-4 align-items-center">
            <div class="col-md-7">
                <div class="engine-info-box mb-4">
                    <h3>🌡️ מה ההבדל בין מזגן רגיל לבקרת אקלים?</h3>
                    <p class="mt-3">
                        בעוד שמזגן רגיל ברכב פשוט מזרים אוויר קר או חם לפי העוצמה שבחרתם, <strong>מערכת בקרת אקלים (Climate Control)</strong> היא מערכת חכמה המבוססת על חיישני טמפרטורה פנימיים וחיצוניים. 
                        אתם קובעים את המעלות המדויקות שאתם רוצים (למשל 22°C), והמחשב משנה אוטומטית את עוצמת האוורור, שילוב המדחס ופתחי יציאת האוויר כדי לשמור על הטמפרטורה הזו יציבה לאורך כל הנסיעה.
                    </p>
                </div>
                
                <div class="engine-info-box">
                    <h3>❄️ רכיבים מרכזיים במערכת הקירור:</h3>
                    <ul style="list-style-type: disc; padding-right: 20px; color: #f1f1f1; line-height: 1.8;">
                        <li style="margin-bottom: 10px;"><strong>מדחס (Compressor):</strong> ה"לב" של המזגן, הדוחס את גז הקירור ומניע אותו במערכת.</li>
                        <li style="margin-bottom: 10px;"><strong>מעבה (Condenser):</strong> רדיאטור קדמי שהופך את הגז החם לנוזל באמצעות אוויר מבחוץ.</li>
                        <li style="margin-bottom: 10px;"><strong>מאייר (Evaporator):</strong> החלק שנמצא בתוך דשבורד הרכב, דרכו עובר האוויר והופך לקר ויבש.</li>
                        <li style="margin-bottom: 10px;"><strong>מסנן קבינה (Filter):</strong> פילטר המזגן שמסנן אבק, פיח וריחות רעים לפני שהם נכנסים אליכם לרכב.</li>
                    </ul>
                </div>
            </div>

            <div class="col-md-5 text-center">
                <img src="/Images/climate_control.jpg" alt="מערכת בקרת אקלים ומזגן ברכב" class="img-fluid rounded bigPicImg" style="width: 100%; height: auto;" />
            </div>
        </div>
    </div>
</asp:Content>