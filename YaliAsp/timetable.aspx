<%@ Page Title="מערכת שעות" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="timetable.aspx.cs" Inherits="YaliAsp.timetable" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container my-5" style="direction:rtl; text-align:center;">
        
        <h1 class="mb-5">מערכת שעות י2</h1>

        <div class="engine-info-box" style="padding: 15px; overflow-x: auto;">
            <table style="min-width: 800px; text-align: right;">
                <tr>
                    <th>מספר שיעור</th>
                    <th>ראשון</th>
                    <th>שני</th>
                    <th>שלישי</th>
                    <th>רביעי</th>
                    <th>חמישי</th>
                </tr>
                <tr>
                    <td>0-7:30-8:15</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td class="comp">פ.מדמח</td>
                    <td class="math" rowspan="2">מתמטיקה</td>
                </tr>
                <tr>
                    <td>1-8:15-9:00</td>
                    <td></td>
                    <td class="comp" rowspan="3">מדעי המחשב</td>
                    <td class="english">אנגלית</td>
                    <td class="comp" rowspan="2">מדמח</td>
                </tr>

                <tr>
                    <td>2-9:00-9:45</td>
                    <td class="chemistrey" rowspan="2">כימיה</td>
                    <td class="his" rowspan="2">הסטוריה</td>
                    <td class="his">הסטוריה</td>
                </tr>
                <tr>
                    <td>3-9:55-10:35</td>
                    <td class="hebrew" rowspan="2">לשון והבעה</td>
                    <td class="tora">תנ"ך</td>
                </tr>
                <tr>
                    <td>4-10:40-11:20</td>
                    <td class="math" rowspan="2">מתמטיקה</td>
                    <td class="chemistrey">כימיה</td>
                    <td class="comp" rowspan="2">מדמח</td>
                    <td></td>
                </tr>
                <tr>
                    <td>5-11:20-12:10</td>
                    <td class="english" rowspan="2">אנגלית</td>
                    <td class="math">מתמטיקה</td>
                    <td class="sport">חינוך גופני</td>
                </tr>
                <tr>
                    <td>6-12:15-13:00</td>
                    <td class="hinuch">חינוך</td>
                    <td class="math">מתמטיקה</td>
                    <td class="comp" rowspan="2">מדמח</td>
                    <td class="tora">תנ"ך</td>
                </tr>

                <tr>
                    <td>7-13:40-14:20</td>
                    <td class="english" rowspan="2">אנגלית</td>
                    <td class="hebrew">לשון והבעה</td>
                    <td class="his">פ.הסטוריה</td>
                    <td></td>
                </tr>
                <tr>
                    <td>8-14:25-15:10</td>
                    <td></td>
                    <td class="tora">תנ"ך</td>
                    <td></td>
                    <td></td>
                </tr>

                <tr>
                    <td>9-15:10-15:50</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td class="sport">חינוך גופני</td>
                    <td></td>
                </tr>
            </table>
        </div>

    </div>
</asp:Content>