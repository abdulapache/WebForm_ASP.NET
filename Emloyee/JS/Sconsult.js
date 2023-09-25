/**
 * Created by SalmanAzhar on 4/9/2014.
 */

/**
 * <script type="text/javascript" src="<%= ResolveUrl ("~/JS/Sconsult.js") %>"></script>
 */


function CompareDates(smallDate, largeDate, separator, comp_dateformat) {
    var smallDateArr = Array();
    var largeDateArr = Array();
    smallDateArr = smallDate.split(separator);
    largeDateArr = largeDate.split(separator);

    if (comp_dateformat == "dd/MM/yyyy") {
        var smallDt = smallDateArr[0];
        var smallMt = smallDateArr[1];
        var smallYr = smallDateArr[2];
        var largeDt = largeDateArr[0];
        var largeMt = largeDateArr[1];
        var largeYr = largeDateArr[2];
    }
    else if (comp_dateformat == "MM/dd/yyyy") {
        var smallDt = smallDateArr[1];
        var smallMt = smallDateArr[0];
        var smallYr = smallDateArr[2];
        var largeDt = largeDateArr[1];
        var largeMt = largeDateArr[0];
        var largeYr = largeDateArr[2];

    }

    if (smallYr > largeYr)
        return 0;
    else if (smallYr < largeYr)
        return 1;
    else if (smallYr == largeYr && smallMt > largeMt)
        return 0;
    else if (smallYr == largeYr && smallMt < largeMt)
        return 1;
    else if (smallYr == largeYr && smallMt == largeMt && smallDt > largeDt)
        return 0;
    else
        return 1;
}

/**
 * Set The Text To Capital Letters
 */

function Set_Capital(obj){
    document.getElementById(obj).value = document.getElementById(obj).value.toUpperCase();

}


/**
 * Get The Parameter of the page
 * Usage ::: var prodId = getParameterByName('prodId');
 */
function getParameterByName(name) {
    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
        results = regex.exec(location.search);
    return results == null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}


/**
 * Clear All the Text Boxes
 *
 */
function ClearAll() {

    var objInput = document.getElementsByTagName("INPUT");

    for (var iCount = 0; iCount < objInput.length; i++) {

        if (objInput[iCount].type == "text")

            objInput[iCount].value = "";

    }

}

/**
 * Format Number
 *
 */
function FormatNumber(nStr) {
    nStr += '';
    x = nStr.split('.');
    x1 = x[0];
    x2 = x.length > 1 ? '.' + x[1] : '';
    var rgx = /(\d+)(\d{3})/;
    while (rgx.test(x1)) {
        x1 = x1.replace(rgx, '$1' + ',' + '$2');
    }
    return x1 + x2;
}

/**
 * Remove The Comma from Currency Field
 *
 */
function GetNumeric(nStr) {
    return String(nStr).replace(/,/gi, '');
}

/**
 * Set The Numeric Decimal Points
 *
 */
function Set_Numeric(txtControlID, DecimalPoints) {
    var strAmount;
    DecimalPoints = 2;
    strAmount = document.getElementById(txtControlID).value;
    strAmount = String(strAmount).replace(/,/gi, '');
    if (strAmount == "") {
        strAmount = "0";
    }
    document.getElementById(txtControlID).value = FormatNumber(Number(strAmount).toFixed(Number(DecimalPoints)));
}

function Set_Grid_values(Item_D,SetItem_D){

document.getElementById(Item_D).value=SetItem_D;

}

/**
 * convert string to boolean
 *  var ss = RetBoolean(vISAR_Type2);
 */
function RetBoolean(string) {
    switch (string.toLowerCase()) {
        case "true": case "yes": case "1": return true;
        case "false": case "no": case "0": case null: return false;
        default: return Boolean(string);

    }

}




/**
 *
 */
function OpenPOPUP(vWidth,vHeight,vUrl) {
    var width = Number(vWidth);
    var height = Number(vHeight);
    var left = (screen.width / 2) - (width / 2);
    var top = (screen.height / 2) - (height / 2);
    popupWindow = window.open(vUrl, 'name', 'width=' + width + ',Height=' + height + ',top=' + top + ', left=' + left+'');
    popupWindow.focus();
}


/**
 * onblur="Setfocus('ctl00_Body_ImageButton1');"
 * Set Focus
 */
function Setfocus(ctrl) {

    document.getElementById(ctrl).focus();
}


/**
 *
 */
function setDropDownList(elementRef, valueToSetTo) {
    var isFound = false;

    var _Val;
    for (var i = 0; i < elementRef.options.length; i++) {
        var s = elementRef.options[i].text;
        var fields = s.split(" | ");
        _Val = fields[0];
        if (_Val == valueToSetTo) {

            elementRef.options[i].selected = true;
            isFound = true;


        }
    }
}

/**
 *onkeydown="SingleSpaceOnly(this);"
 */
function SingleSpaceOnly(txtControlID) {
    if (String(txtControlID.value).indexOf(" ", 1) > 0 && event.keyCode == 32) {
        event.returnValue = false;
    }
    else {
        event.returnValue = true;
    }
}

/**
 *
 */
function  getCheckedRadio(RadioButtonList1) {
    var list = document.getElementById(RadioButtonList1); //Client ID of the radiolist
    var inputs = list.getElementsByTagName("input");
    var selected;
    for (var i = 0; i < inputs.length; i++) {
        if (inputs[i].checked) {
            selected = inputs[i];
            break;
        }
    }
    return selected.value;

}


/**
 *onKeyPress="return onlyAlphabetSpecialChar(event)"
 */
function onlyAlphabetSpecialChar(evt) {
    var e = window.event || evt;
    var charCode = e.which || e.keyCode;
    if ((charCode >= 97 && charCode <= 122) || (charCode >= 65 && charCode <= 90) || charCode == 32 || charCode == 45  || charCode == 9 || charCode == 8 || (charCode >= 35 && charCode <= 40)) {
        return true;
    } else {
        if (window.event) //IE
            window.event.returnValue = false;
        else //Firefox
            e.preventDefault();
    }


}
/**
 *onKeyPress="return onlyNumbersandSpecialChar(event)"
 */
function onlyNumbersandSpecialChar(evt) {
    var e = window.event || evt;
    var charCode = e.which || e.keyCode;

    if (charCode > 41 && (charCode < 48 || charCode > 57 || charCode > 107 || charCode > 219 || charCode > 221) && charCode != 40 && charCode != 32 && charCode != 41  && (charCode < 43 || charCode >= 46)) {
        if (window.event) //IE
            window.event.returnValue = false;
        else //Firefox
            e.preventDefault();
    }
    return true;

}



/**
 * Disabled the input
 */
//txtRate_1.Attributes.Add("onkeyDown", "return DisableInput(event)");

function DisableInput(e) {
    var evt = (e) ? e : window.event;
    var key = (evt.keyCode) ? evt.keyCode : evt.which;
    var ctrlDown = evt.ctrlKey||evt.metaKey // Mac support

    if (key != null)
    {
        key = parseInt(key, 10);

            if (!jsIsUserFriendlyChar(key, "",ctrlDown))
            {
                return false;
            }
    }

    return true;
}

/**
 *  txtPayIn_Amt_2.Attributes.Add("onkeydown", "return AlphabetOnly(event,'" + txtPayIn_Amt_2.ClientID + "');");
 * @param e
 * @param ctrl
 * @returns {boolean}
 * @constructor
 */
function AlphabetOnly(e, ctrl) {

    var HDPayIn_AmtFlag = document.getElementById('<%=HDPayIn_AmtFlag.ClientID %>');

    var evt = (e) ? e : window.event;
    var key = (evt.keyCode) ? evt.keyCode : evt.which;
    var ctrlDown = evt.ctrlKey || evt.metaKey // Mac support

    if (key != null) {
        key = parseInt(key, 10);

        if ((key >= 48 && key <= 57) || (key >= 96 && key <= 105)) {

            return false;

        } else {
            return true;
        }
    }


    return true;

}

/**Alphanumeric
 *  <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender_gpf_no" runat="server" Enabled="True"
         TargetControlID="txtReference" FilterType="UppercaseLetters,LowercaseLetters,Custom" ValidChars="1234567890 ">
 </cc1:FilteredTextBoxExtender>
  */


/**
 * Input Numeric Values Only With one decimal point
 *  txtPayIn_Amt_2.Attributes.Add("onkeydown", "return NumericValuesOnly(event,'" + txtPayIn_Amt_2.ClientID + "');");
 */
function NumericValuesOnly(e,txtControlID) {

    var evt = (e) ? e : window.event;
    var key = (evt.keyCode) ? evt.keyCode : evt.which;
    var ctrlDown = evt.ctrlKey||evt.metaKey // Mac support

    if (key != null) {
        key = parseInt(key, 10);

        if ((key < 48 || key > 57) && (key < 96 || key > 105 ||  (key == 190 || key == 110))) {
            if (!jsIsUserFriendlyChar(key, "Decimals",ctrlDown)) {
                return false;
            }

        }
        else {
            if (evt.shiftKey) {

                return false;
            }
        }
    }
    if (String(document.getElementById(txtControlID).value).indexOf(".", 1) > 0 &&  (key == 190 || key == 110))
        {
            return false;
        }

        return true;

}


// Function to check for user friendly keys
//------------------------------------------
function jsIsUserFriendlyChar(val, step,ctrl) {

    if (ctrl && val==67) return true // copy
  //  else if (ctrlDown && c==86) return false // Paste
   // else if (ctrlDown && c==88) return false // Cut


    // Backspace, Tab, Enter, Insert, and Delete
    if (val == 8 || val == 9 || val == 13 || val == 45 || val == 46) {
        return true;
    }
    // Ctrl, Alt, CapsLock, Home, End, and Arrows
    if ((val > 16 && val < 21) || (val > 34 && val < 41)) {
        return true;
    }
    if (step == "Decimals") {
        if (val == 190 || val == 110) {  //Check dot key code should be allowed
            return true;
        }
    }
    // The rest
    return false;
}


/**
 *
 * @param str
 * @param replace
 * @param with_this
 * @returns {string}
 */
function replaceall(str, replace, with_this) {
    var str_hasil = "";
    var temp;

    for (var i = 0; i < str.length; i++) // not need to be equal. it causes the last change: undefined..
    {
        if (str[i] == replace) {
            temp = with_this;
        }
        else {
            temp = str[i];
        }

        str_hasil += temp;
    }

    return str_hasil;
}

