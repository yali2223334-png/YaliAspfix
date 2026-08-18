<%@ Page Title="מדריך מנועי רכב" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container my-5">
        <h1 class="mb-4">מנוע המכונית</h1>
        
        <div class="row g-4 align-items-center">
            <div class="col-md-4 text-center">
                <img src="/Images/engine.jpg" alt="מנוע מכונית מודרני" class="img-fluid rounded bigPicImg" style="width: 100%; height: auto;">
            </div>
            
            <div class="col-md-8">
                <div class="engine-info-box mb-4">
                    <h3>🚗 רכיבים מרכזיים</h3>
                    <ul style="list-style-type: disc; padding-right: 20px; color: #f1f1f1; line-height: 1.8;">
                        <li style="margin-bottom: 10px;"><strong>בוכנות (צילינדרים):</strong> הלב של המערכת, זזות למעלה ולמטה ומניעות את הרכב.</li>
                        <li style="margin-bottom: 10px;"><strong>מערכת פליטה (אגזוז):</strong> צינורות הפולטים את גזי השריפה והחום החוצה.</li>
                        <li style="margin-bottom: 10px;"><strong>מערכת קירור (רדיאטור):</strong> החלק שסופג את החום השומר על טמפרטורת עבודה תקינה של המנוע.</li>
                    </ul>
                </div>
                
                <div class="engine-info-box">
                    <h4>עיקרון הפעולה</h4>
                    <p>מנוע הבעירה הפנימית הופך אנרגיה כימית לאנרגיה מכנית. באמצעות הזרקת דלק וניצוץ, נוצר פיצוץ מבוקר שמניע את הבוכנות, מסובב את גל הארכובה ומעביר את הכוח אל הגלגלים.</p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>