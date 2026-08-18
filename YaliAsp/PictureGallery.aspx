<%@ Page Title="גלריית רכבים ומכוניות" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="PictureGallery.aspx.cs" Inherits="YaliAsp.PictureGallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Gallery.js"></script>
    
    <style>
        .gallery-container {
            text-align: center;
            direction: ltr; /* משאיר את הטבלה משמאל לימין כדי שהסדר יתאים לקוד ה-JS שלך */
            background: rgba(10, 10, 10, 0.7); /* רקע כהה שקוף כמו שאר התיבות באתר */
            padding: 40px;
            border-radius: 15px;
            border: 1px solid #333;
            border-top: 4px solid #e60000; /* פס אדום ספורטיבי למעלה */
            box-shadow: 0 10px 30px rgba(0,0,0,0.5);
            backdrop-filter: blur(5px);
        }
        
        .gallery-table {
            margin: 0 auto;
            border-spacing: 15px;
            border-collapse: separate;
            background: transparent !important;
            border: none !important;
        }

        /* ביטול העיצוב הכללי של תאי טבלה ספציפית בגלריה */
        .gallery-table td {
            border: none !important;
            padding: 0 !important;
            background: transparent !important;
        }

        /* עיצוב לתמונות הקטנות (מסגרות שוות) */
        .gallery-table .imgCell {
            width: 130px;
            height: 130px;
            object-fit: cover;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.5);
            cursor: pointer;
            border: 2px solid #333;
            transition: transform 0.3s cubic-bezier(0.25, 0.8, 0.25, 1), box-shadow 0.3s ease, border-color 0.3s ease, filter 0.3s ease;
        }

        /* אפקט זינוק ספורטיבי כשעוברים עם העכבר על תמונה קטנה */
        .gallery-table .imgCell:hover {
            transform: scale(1.1); /* הגדלה קלה */
            box-shadow: 0 8px 20px rgba(230, 0, 0, 0.4); /* הילה אדומה */
            border-color: #e60000; /* מסגרת אדומה בהתאם לעיצוב הרכבים */
            filter: brightness(1.2); /* "הדלקת אורות" */
        }

        /* עיצוב לתמונה הגדולה באמצע */
        .gallery-table .bigPicImg {
            width: 275px;
            height: 275px;
            object-fit: cover;
            border-radius: 12px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.8);
            border: 3px solid #e60000; /* מסגרת אדומה עבה */
            transition: opacity 0.3s ease;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container my-5" style="direction:rtl;">
        <h1 class="text-center mb-4">גלריית רכבים אינטראקטיבית</h1>
        <p class="text-center mb-5" style="color: #e0e0e0; font-size: 1.2rem;">העבירו את העכבר על התמונות הקטנות כדי לראות אותן בהגדלה במרכז הגלריה.</p>

        <div class="gallery-container">
            <table class="gallery-table">
                <tr>
                    <td><img class="imgCell" src="/Images/main_cars.jpg" onmouseover="picShow(11)" /></td>
                    <td><img class="imgCell" src="/Images/engine.jpg" onmouseover="picShow(12)" /></td>
                    <td><img class="imgCell" src="/Images/gearbox.jpg" onmouseover="picShow(13)" /></td>
                    <td><img class="imgCell" src="/Images/climate_control.jpg" onmouseover="picShow(14)" /></td>
                </tr>
                
                <tr>
                    <td><img class="imgCell" src="/Images/safety_sensors.jpg" onmouseover="picShow(21)" /></td>
                    <td rowspan="2" colspan="2" style="vertical-align: middle;">
                        <img class="bigPicImg" id="bigPic" src="/Images/main_cars.jpg" />
                    </td>
                    <td><img class="imgCell" src="/Images/car_thermostat.jpg" onmouseover="picShow(24)" /></td>
                </tr>
                
                <tr>
                    <td><img class="imgCell" src="/Images/engine_lubrication.jpg" onmouseover="picShow(31)" /></td>
                    <td><img class="imgCell" src="/Images/car_brakes.jpg" onmouseover="picShow(34)" /></td>
                </tr>
                
                <tr>
                    <td><img class="imgCell" src="/Images/main_cars.jpg" onmouseover="picShow(41)" /></td>
                    <td><img class="imgCell" src="/Images/car_engine.jpg" onmouseover="picShow(42)" /></td>
                    <td><img class="imgCell" src="/Images/gearbox.jpg" onmouseover="picShow(43)" /></td>
                    <td><img class="imgCell" src="/Images/car_brakes.jpg" onmouseover="picShow(44)" /></td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>