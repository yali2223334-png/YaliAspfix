<%@ Page Title="כניסת משתמש" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="YaliAsp.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<h1>כניסת משתמש</h1>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <th></th>
            <th>טופס רישום</th>
            <th></th>
        </tr>
        <tr>
            <td>שם משתמש</td>
            <td>
                <input type="text" id="uName" name="uName"/</td>
            </td>
            <td>
                <input type="text" id="uName" size="50"
                    style="display: none; backround-color: silver; font-weight: bold;"
                    disabled="disabled" />
            </td>
        </tr>
        <tr>
            <td>שם פרטי</td>
            <td>    
                <input type="text" id="fName" name="fName"/</td>
            </td>
            <td>
                <input type="text" id="mfName" size="50"
                 style="display: none; backround-color: silver; font-weight: bold;"
                 disabled="disabled" />
            </td>
        </tr>
        <tr>
            <td>שם משפחה</td>
            <td>
            <input type="text" id="lName" name="lName"/</td>
            </td>
             <input type="text" id="mlName" size="50"
             style="display: none; backround-color: silver; font-weight: bold;"
             disabled="disabled" />
            <td>

            </td>
        </tr>
        <tr>
            <td>מייל</td>
            <td>
            <input type="email" id="email" name="email"/</td>
            </td>
            <input type="text" id="mEmail" size="50"
             style="display: none; backround-color: silver; font-weight: bold;"
             disabled="disabled" />
            <td>

            </td>
        </tr>
        <tr>
            <td>שנת לידה</td>
            <td></td>
            <td></td>
        </tr>
        <tr>
    <td>סיסמה</td>
    <td>input + RedLabel</td>
    <td>ouput</td>
</tr>
<tr>
    <td>אימות סיסמה</td>
    <td>input</td>
    <td></td>
</tr>
<tr>
    <td></td>
</tr>
<tr>
    <td><br /></td>
    <td colspan="2" style="text-align: center;">
        <input type="submit" value=" התחבר " />
        <input type="reset" />
    </td>
</tr>
    </table>
    <br />
    <%=st %>
</asp:Content>
