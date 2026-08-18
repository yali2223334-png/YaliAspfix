function chkForm() {
    //--- בדיקת שם משתמש ---
    var uName = document.getElementById("uName").value;
    //alert("uName = " + uName);
    if (!userNameOK(uName))
        return false;
    return true;

    var hobies = document.getElementsByName("hobies");
    var hobChecked = false;
    for (var i = 0; i < hobies.length; i++)
        if (hobies[i].checked)
            hobChecked = true;

    if (hobChecked = false) {
        document.getElementById("mHobies").value = "תחביב לא נבחר";
        document.getElementById("mHobies").style.display = "inline";
        return false;
    }
    else
        document.getElementById("mHobies").style.display = "none";

    //יישוב מגורים
    var city = document.getElementById("city").value;
    if (city == "other") {
        msg = "  יש לבחור יישוב מגורים או איזור מגורים";
        document.getElementById("mCity").style.display = "inline";
        msg = "";
        return false;
    }
    else
        document.getElementById("mCity").style.display = "none";


    //שנת לידה
    //isNaN = is not a number
    var yearBorn = document.getElementById("yearBorn").value;
    var msg = "";
    if (isNaN(yearBorn)) {
        msg = "שנת לידה חייבת להכיל ספרות בלבד";
    }
    else
        if (yearBorn < 1900)
            msg = " שנת לידה חייבת להיות מספר 4 ספרתי גדול מ- 1900";


    if (msg != "") {
        document.getElementById("mYearBorn").value = msg;
        document.getElementById("mYearBorn").style.display = "inline";
        msg = "";
        return false;
    }
    else
        document.getElementById("mYearBorn").style.display = "none";



    var YearBorn = document.getElementById("yearBorn").value;
    var d = new Date();
    var year = d.getFullYear();
    var msg = "";
    if (isNaN(YearBorn))
        msg = "שנת לידה חייבת להכיל ספרות בלבד";

    else
        if (YearBorn < 1900)
            msg = " שנת לידה חייבת להיות מספר 4 ספרתי גדול מ- 1900";
        else
            if (yearBorn > year - 5)
                msg = "צעיר מדי מכדי להירשם לאתר";

            else if (isQuot(email)) {
                msg = "כתובת דואל לא יכולה להכיל גרש או גרשיים";
            }
            else if (isHebrew(email)) {
                msg = "כתובת דואל לא יכולה להכיל עברית";
            }
            else if (isValidString(email)) {
                msg = "כתובת דואל לא יכולה להכיל תווים אסורים";
            }

    if (msg != "") 
    {
        document.getElementById("mEmail").value = msg;
        document.getElementById("mEmail").style.display = "inline";
        return false;
    }
    else
        document.getElementById("mEmail").style.display = "none";


    function userNameOK(name) {
        var msg = "";

        if (name.length < 6)
            msg = "שם משתמש קצר מדי או לא קיים ";
        else if (name.length > 30)
            msg = "שם משתמש יהיה בין 6-30 תווים";
        else if (isHebrew(name))
            msg = "שם משתמש אינו יכול להכיל תווים בעברית";

        else if (isBadChar(name))
            msg = "שם משתמש יכול להכיל אותיות באנגלית ו/או ספרות בלבד";
        if (msg != "")
        {
            document.getElementById("mUName").innerHTML = msg;
            document.getElementById("mUName").style.display = "inline";
            return false;
        }
        else
            document.getElementById("mUName").style.display = "none";
        return true;

    }



    //--- מכיל תווים בעברית ---
    function isHebrew(str)
    {
        for (var i = 0; i < str.length; i++)
        {
            if (str.charAt(i) >= 'א' && str.charAt(i) <= 'ת')
                return true;
        }
        return false;
    }
    function chkRadioButton() 
    {
        var answer = document.getElementsByName("gender");
        if (!answer[0].checked && !answer[1].checked)
        {
            document.getElementById("mGender").value = "חובה לסמן מגדר";
            document.getElementById("mGender").style.display = "inline";
            return false;
        }
        else
            document.getElementById("mGender").style.display = "none";
    }
    function isBadChar(str)
    {
        var badChr = "!#$%^&*)(-=+][}{|;~ ";
        var len = badChr.length;
        var i = 0, pos, ch;
        while (i < len)
        {
            ch = badChr.charAt(i);
            pos = str.indexOf(ch);
            if (pos != -1)
                return true;
            i++;
        }
        return false;
    }
    function isQuot(mail)
    {
        var quot = "\"", quot1 = "\'";
        if (mail.indexOf(quot) != -1 || mail.indexOf(quot1) != -1)
            return true;
        return false;
    }
    function isHebrew(mail)
    {
        var len = mail.length;
        var i = 0, ch;
        while (i < len) {
            ch = mail.charAt(i);
            if (ch >= 'א' && ch <= 'ת')
            {
                return true;
            }
            i++;
        }
        return false;
    }
    function isValidString(main)
    {
        var badChr = "$%^&*()-! []{}<>?"; //רווח בכוונה
        var len = mail.length;
        var i = 0, pos, ch;
        while (i < len)
        {
            ch = mail.charAt(i);
            pos = badChr.indexOf(ch);
            if (pos != -1)
                return true;
            i++;
        }
        return false;
    }
    function chkRadioButton()
    {
        var answer = document.getElementsByName("gender");
        if (!answer[0].checked && !answer[1].checked)
        {
            document.getElementById("mGender").value = "חובה לסמן מגדר";
            document.getElementById("mGender").style.display = "inline";
            return false;
        }
        else
        {
            document.getElementById("mGender").style.display = "none";
        }
    }
