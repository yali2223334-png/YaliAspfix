<%@ Page Title="מדריך תיבת הילוכים ותמסורת" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container my-5">
        <h1 class="mb-4">תיבת הילוכים (גיר)</h1>
        
        <div class="row g-4 align-items-center">
            <div class="col-md-7">
                <div class="engine-info-box mb-3">
                    <h3>🔄 איך היא עובדת?</h3>
                    <p>תיבת ההילוכים משלבת פעולה מכנית (גלגלי שיניים בגדלים שונים), יחסי העברה ומומנט סיבוב. היא מאפשרת להתאים את מהירות המנוע למהירות הנסיעה בפועל, ומנצלת את כוח המנוע ביעילות מרבית בהתאם לתנאי הדרך.</p>
                </div>
                
                <div class="engine-info-box">
                    <h3>רכיבים חיוניים</h3>
                    <ul style="list-style-type: disc; padding-right: 20px; color: #f1f1f1; line-height: 1.8;">
                        <li style="margin-bottom: 10px;">גלגלי שיניים וצירי הינע</li>
                        <li style="margin-bottom: 10px;">מצמד (קלאץ') או ממיר מומנט</li>
                        <li style="margin-bottom: 10px;">נוזל ממסרת (שמן גיר) למניעת חיכוך</li>
                    </ul>
                </div>
            </div>
            
            <div class="col-md-5 text-center">
                <img src="/Images/gearbox.jpg" alt="תיבת הילוכים של רכב" class="img-fluid rounded bigPicImg" style="width: 100%; height: auto;">
            </div>
        </div>
    </div>
</asp:Content>