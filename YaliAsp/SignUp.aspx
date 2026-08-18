<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="YaliAsp.SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--<script src="Scripts/CheckMyForm.js"></script>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <table>
        <tr>
            <td colspan="3">טופס רישום</td>
        </tr>
        <tr>
            <td>שם משתמש</td>
            <td>
                <input type="text" id="uName" name="uName"/></td>
            <td>
                <input type="text" id="muName" size="50"
                    style="display: none; background-color: silver; font-weight: bold;"
                    disabled="disabled" />
            </td>
        </tr>
        <tr>
            <td>שם פרטי</td>
            <td>
                <input type="text" id="fName" name="fName"/></td>
            <td>
                <input type="text" id="mfName" size="50"
                    style="display: none; background-color: silver; font-weight: bold;"
                    disabled="disabled" />
            </td>
        </tr>
        <tr>
            <td>שם משפחה</td>
            <td>
                <input type="text" id="lName" name="lName"/></td>
            <td>
                <input type="text" id="mlName" size="50"
                    style="display: none; background-color: silver; font-weight: bold;"
                    disabled="disabled" />
            </td>
        </tr>
        <tr>
            <td>דוא"ל</td>
            <td>
                <input type="email" id="email" name="email"/></td>
            <td>
                <input type="text" id="mEmail" size="50"
                    style="display: none; background-color: silver; font-weight: bold;"
                    disabled="disabled" />
            </td>
        </tr>
        <tr>
            <td>מין</td>
            <td>
                <input type="radio" name="gender" value="male" />
                <input type="radio" name="gender" value="female" checked />
            </td>
            <td></td>
        </tr>
        <tr>
            <td>שנת לידה</td>
            <td>
                <input type="text" id="yearBorn" name="yearBorn"/>
            </td>
            <td>
                <input type="text" id="mYearBorn" size="40"
                    style="display: none; background-color: silver; font-weight: bold;"
                    disabled="disabled" />
            </td>
        </tr>
        <tr>
            <td>ישוב מגורים</td>
            <td>
                <select name ="city" id ="city">
                    <option value ="other">בחר יישוב מגורים</option>
                    <option value="haifa">חיפה</option>
                    <option value="telAviv">תל אביב</option>  
                    <option value="jerusalem">ירושלים</option>
                    <option value="modiin" selected>מודיעין</option>
                    <option value="beersheba">באר שבע</option>
                    <option value="metula">מטולה</option>
                    <option value="north">צפון</option>
                    <option value="south">דרום</option>
                    <option value="center">מרכז</option>
                </select>
            </td>
            <td><input type="text" id ="mCity" size="50" style="display: none; backround-color: silver; color: white; font-weight:bold;" disabled="disabled" </td>
        </tr>
            <tr>
            <td>טלפון</td>
            <td style="direction: ltr; text-align: right;"><span style="color: red;">שבע ספרות *</span><select name="prefix" id="prefix"><%=prfx %></select><input type="text" name="phneNum" id="phneNum" /></td>
            <td>
                <input type="text" id="mPhone" size="30"
                    style="display: none; background-color: silver; font-weight: bold;"
                    disabled="disabled" />
            </td>
        </tr>
        <tr>
            <td>תחביבים</td>
            <td> 
                <input type="checkbox" name="hobies" value="1" /> כדורגל&nbsp;&nbsp;&nbsp;
                <input type="checkbox" name="hobies" value="2" /> טניס&nbsp;&nbsp;&nbsp;
                <input type="checkbox" name="hobies" value="3" /> משחקי מחשב&nbsp;&nbsp;&nbsp;
                <input type="checkbox" name="hobies" value="4" /> ריקוד&nbsp;&nbsp;&nbsp;
                <input type="checkbox" name="hobies" value="5" /> אחר&nbsp;&nbsp;&nbsp;
            </td>
            <td>
                <input type="text" id="mHobies" size="30"
                    style="display: none; background-color: silver; font-weight: bold;"
                    disabled="disabled" />
            </td>
        </tr>
            <tr>
                <td>סיסמא: </td>
                <td>
                    <input type="password" name="pw" id="pw" size="10"
                        maxlength="8" />
                </td>
                <td>
                    <input type="text" id="mPw" size="30"
                        style="display: none; background-color: silver; color: red; font-weight: bold;"
                        disabled="disabled" />
                </td>
            </tr>

            <tr>
                <td>בדיקת סיסמא: </td>
                <td>
                    <input type="password" name="pw1" id="pw1" size="10"
                        maxlength="8" />
                </td>
                <td>
                    <input type="text" id="mPw1" size="30"
                        style="display: none; background-color: silver; color: red; font-weight: bold;"
                        disabled="disabled" />
                </td>
            </tr>
        <tr>
            <td><br /><td>
            <td colspan="2" style="text-align: center;">
                <input type="submit" name="submit" value="שלח">
                <input type="reset" name="reset" value="אתחל">
            </td>
        </tr>
    </table>
    <br/>
    <%= st %>
</asp:Content>
