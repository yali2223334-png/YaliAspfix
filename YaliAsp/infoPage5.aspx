<%@ Page Title="מדריך מערכות בטיחות מתקדמות ברכב" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="InfoPage5.aspx.cs" Inherits="YaliAsp.InfoPage5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container my-5" style="direction:rtl; text-align:right;">
        <h1 class="mb-4">מערכות בטיחות אקטיביות וטכנולוגיית רדאר</h1>
        
        <div class="row g-4 align-items-center">
            <div class="col-md-7">
                <div class="engine-info-box mb-4">
                    <h3>💡 כיצד עובד הרדאר בחזית הרכב?</h3>
                    <p class="mt-3">
                        הלב של מערכת הבטיחות האקטיבית הוא רכיב ה<strong>רדאר (Radar)</strong> הממוקם בחזית הרכב. 
                        הוא מייצר קרינה אלקטרומגנטית בתדר גבוה השולח גלים קצרים קדימה. הגלים פוגעים בעצמים בכביש (כמו רכבים אחרים או הולכי רגל), חוזרים לחיישן ומאפשרים למחשב הרכב לחשב את המרחק המדויק ואת מהירות ההתקרבות במילוניות השניה.
                    </p>
                </div>
                
                <div class="engine-info-box mb-4">
                    <h3>🛑 בלימת חירום אוטונומית (AEB)</h3>
                    <p class="mt-2">
                        אם המערכת מזהה סכנת התנגשות והנהג אינו מגיב לצפצופי האזהרה, <strong>המחשב מפעיל את הבלמים בעוצמה מקסימלית באופן עצמאי</strong> כדי למנוע את התאונה או להפחית משמעותית את עוצמת הפגיעה.
                    </p>
                </div>

                <div class="engine-info-box">
                    <h5>⚠️ כלל בטיחות חשוב לתחזוקה</h5>
                    <p class="mb-0">אין לחסום או לכסות את אזור החיישנים והרדאר! בוץ, מדבקות, או שלג על פגוש הרכב עלולים לשבש את קליטת הגלים ולנטרל את מערכת הבלימה האוטונומית בשעת חירום.</p>
                </div>
            </div>

            <div class="col-md-5 text-center">
                <img src="/images/safety_sensors.jpg" alt="חיישני רדאר ובטיחות בחזית הרכב" class="img-fluid rounded bigPicImg" style="width: 100%; height: auto;" />
            </div>
        </div>
    </div>
</asp:Content>