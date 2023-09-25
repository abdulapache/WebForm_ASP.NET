// JScript File

function fncInputNumericValuesOnly() { if (!(event.keyCode == 45 || event.keyCode == 46 || event.keyCode == 48 || event.keyCode == 49 || event.keyCode == 50 || event.keyCode == 51 || event.keyCode == 52 || event.keyCode == 53 || event.keyCode == 54 || event.keyCode == 55 || event.keyCode == 56 || event.keyCode == 57)) { event.returnValue = false; } }


function fncDisableInput() {
    if (event.keyCode != 9) {
        event.returnValue = false;
    }
}

function roundNumber(num, dec) {
    var result = Math.round(num * Math.pow(10, dec)) / Math.pow(10, dec);
    return result;
}

function Set_UpperCase(txtID) {
    if (String(document.getElementById(txtID).value).toString().trim() != "") {
        document.getElementById(txtID).value = String(document.getElementById(txtID).value).toUpperCase();
    }
}        


var delay = 2000;
var active;
var activefr;

function getObj(_e1) {
    if (document.getElementById) {
        var _e2 = document.getElementById(_e1);
    }
    else {
        if (document.all) {
            var _e2 = document.all[_e1];
        }
    }
    return _e2;
}
function ShowMessageDiv(divID, iframeID, msg, obj) {
    active = divID;
    activefr = iframeID;
    var _div = getObj(divID);
    var _obj = getObj(obj);
    //_div.innerHTML = msg;
    //_div.style.left = findPosX(_obj) + _obj.offsetWidth + 15 + "px";
    //_div.style.top = findPosY(_obj) + "px";

    //_div.style.height=_obj.offsetHeight;
    //_div.style.visibility = "visible";
    //var iframe = getObj(iframeID);
    //iframe.style.display = 'block';
    //iframe.style.width = _div.offsetWidth;
    //iframe.style.height = _div.offsetHeight;
    //iframe.style.left = _div.offsetLeft;
    //iframe.style.top = _div.offsetTop;
    //window.setTimeout("HideMessageDiv()", delay);
}
function HideMessageDiv() {
    getObj(active).style.visibility = "hidden";
    getObj(activefr).style.display = "none";
}

function findPosX(obj) {
    var _e4 = 0;
    if (obj.offsetParent) {
        while (obj.offsetParent) {
            _e4 += obj.offsetLeft;
            obj = obj.offsetParent;
        }
    } else {
        if (obj.x) {
            _e4 += obj.x;
        }
    }
    return _e4;
}
function findPosY(obj) {
    var _e6 = 0;
    if (obj.offsetParent) {
        while (obj.offsetParent) {
            _e6 += obj.offsetTop;
            obj = obj.offsetParent;
        }
    } else {
        if (obj.y) {
            _e6 += obj.y;
        }
    }
    return _e6;
}
function validTextBox(id) {
    if (String(document.getElementById(id).value).trim().length == 0) {
        document.getElementById(id).className = "textBoxerror";
        return false;
    }
    else {
        document.getElementById(id).className = "textBox";
        return true;
    }
}

function validTextBoxForMaxLength(id, maxLength) {
    if (document.getElementById(id).value.length > maxLength) {
        document.getElementById(id).className = "textBoxerror";
        return false;
    }
    else {
        document.getElementById(id).className = "textBox";
        return true;
    }

}

function validTextBoxForNumericValue(id) {
    if (!IsNumeric(document.getElementById(id).value)) {
        document.getElementById(id).className = "textBoxerror";
        return false;
    }
    else {
        document.getElementById(id).className = "textBox";
        return true;
    }

}

function IsFirstTextBoxMinimum(id1, id2) {
    var num1 = parseFloat(document.getElementById(id1).value);
    var num2 = parseFloat(document.getElementById(id2).value);
    if (num1 <= num2) {
        document.getElementById(id1).className = "textBox";
        return true;
    }
    else {
        document.getElementById(id1).className = "textBoxerror";
        return false;
    }
}

function IsFirstTextBoxMaximum(id1, id2) {
    var num1 = parseFloat(document.getElementById(id1).value);
    var num2 = parseFloat(document.getElementById(id2).value);
    if (num1 > num2) {
        document.getElementById(id1).className = "textBox";
        return true;
    }
    else {
        document.getElementById(id1).className = "textBoxerror";
        return false;
    }
}

function validateEmail(id) {
    var elementValue = id;
    var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
    var value;
    value = String(elementValue.value).trim();
    if (value != '') {
        if (!emailPattern.test(value)) {
            elementValue.className = "ValidateStyle";
            return false;
        }
        else {
            elementValue.className = "";
            return true;
        }
    } else {
        elementValue.className = "";
        return true;
    }
    
}

function validateURL(id) {
    var elementValue = document.getElementById(id).value;
    var urlregex = new RegExp("^[A-Za-z]+://[A-Za-z0-9-_]+\\.[A-Za-z0-9-_%&\?\/.=]+$");
    //("^(http:\/\/.|https:\/\/.|ftp:\/\/www.|www.){1}([0-9A-Za-z]+\.)");
    //"^(http:\/\/www.|https:\/\/www.|ftp:\/\/www.|www.){1}([0-9A-Za-z]+\.)"
    if (!urlregex.test(elementValue)) {
        document.getElementById(id).className = "textBoxerror";
        return false;
    }
    else {
        document.getElementById(id).className = "textBox";
        return true;
    }
}


function CampareText(txt1, txt2) {
    if (document.getElementById(txt1).value != document.getElementById(txt2).value) {
        document.getElementById(txt1).className = "textBoxerror";
        document.getElementById(txt2).className = "textBoxerror";
        return false;
    }
    document.getElementById(txt1).className = "textBox";
    document.getElementById(txt2).className = "textBox";
    return true;
}
function validDropDown(id, divid) {
    if (document.getElementById(id).selectedIndex == 0) {
        document.getElementById(divid).className = "dderror";
        return false;
    }
    document.getElementById(divid).className = "";
    return true;
}

function validDropDown(id) {
    if (document.getElementById(id).selectedIndex == 0) {
        return false;
    }
    return true;
}


function CheckAllDataGridCheckBoxes(aspCheckBoxID, checkVal, crtl) {
    re = new RegExp(crtl)  //generated control name starts with a colon
    for (i = 0; i < document.forms[0].elements.length; i++) {
        elm = document.forms[0].elements[i]
        if (elm.type == 'checkbox') {
            if (re.test(elm.id)) {
                elm.checked = checkVal
            }
        }
    }
}
function SelectAll(checkVal, chkAllItems, crtl) {
    if (checkVal == false) {
        document.getElementById(chkAllItems).checked = false;
        return false;
    }
    re = new RegExp(crtl)  //generated control name starts with a colon
    for (i = 0; i < document.forms[0].elements.length; i++) {
        elm = document.forms[0].elements[i]
        if (elm.type == 'checkbox') {
            if (re.test(elm.id)) {
                if (elm.checked == false) {
                    document.getElementById(chkAllItems).checked = false;
                    return false;
                }
            }
        }
    }
    document.getElementById(chkAllItems).checked = true;
}

function ValidDate(id) {
    var RegExPatterndd = /^((((0?[1-9]|[12]\d|3[01])[\.\-\/](0?[13578]|1[02])[\.\-\/]((1[6-9]|[2-9]\d)?\d{2}))|((0?[1-9]|[12]\d|30)[\.\-\/](0?[13456789]|1[012])[\.\-\/]((1[6-9]|[2-9]\d)?\d{2}))|((0?[1-9]|1\d|2[0-8])[\.\-\/]0?2[\.\-\/]((1[6-9]|[2-9]\d)?\d{2}))|(29[\.\-\/]0?2[\.\-\/]((1[6-9]|[2-9]\d)?(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00)|00)))|(((0[1-9]|[12]\d|3[01])(0[13578]|1[02])((1[6-9]|[2-9]\d)?\d{2}))|((0[1-9]|[12]\d|30)(0[13456789]|1[012])((1[6-9]|[2-9]\d)?\d{2}))|((0[1-9]|1\d|2[0-8])02((1[6-9]|[2-9]\d)?\d{2}))|(2902((1[6-9]|[2-9]\d)?(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00)|00))))$/;
    var val = document.getElementById(id).value;
    return val.match(RegExPatterndd);
}

function IsNumeric(strString)
//  check for valid numeric strings	
{
    var strValidChars = "0123456789.";
    var strChar;
    var blnResult = true;

    if (strString.length == 0) return false;

    //  test strString consists of valid characters listed above
    for (i = 0; i < strString.length && blnResult == true; i++) {
        strChar = strString.charAt(i);
        if (strValidChars.indexOf(strChar) == -1) {
            blnResult = false;
        }
    }
    return blnResult;
}


////////////////////
function ShowLayer() {
    //        // show layer
    //        var layer = document.getElementById('layer');
    //        layer.style.display = 'block';
    //        // show IFRAME
    var iframe = getObj('iframe');
    iframe.style.display = 'block';
    iframe.style.width = layer.offsetWidth;
    iframe.style.height = layer.offsetHeight;
    iframe.style.left = layer.offsetLeft;
    iframe.style.top = layer.offsetTop;
}
function HideLayer() {
    // hide IFRAME
    var iframe = getObj('iframe');
    iframe.style.display = 'none';
    // hide layer
    var layer = document.getElementById('layer');
    layer.style.display = 'none';
}

function IsDropDownValueSelected(strName, crtl) {
    re = new RegExp(strName)  //generated control name starts with a colon
    for (i = 0; i < document.forms[0].elements.length; i++) {
        elm = document.forms[0].elements[i]
        if (elm.type == 'select-one') {
            if (re.test(elm.id)) {
                if ((elm.value == crtl.value) && (crtl.id != elm.id)) {
                    crtl.value = '0';
                    return false;
                }

            }
        }
    }
    return true;
}



/////////////////////////////////////////

var Msg;
var IsInWiz;
//    if(document.all){
//        //document.onkeydown = showDown;
//        document.attachEvent("onkeydown", showDown); 

//                    }
//    else if (document.layers || document.getElementById){
//            //document.onkeypress = showDown;
//              document.attachEvent("onkeypress", showDown,true);
//            }

//   
//      
//     function showDown(evt) 
//            { 
//                evt = (evt)? evt : ((event)? event : null); 
//                if (evt) 
//                { 
//                    if (event.keyCode == 116)
//                    { // When F5 is pressed 
//                    cancelKey(evt); 
//                     } 
//                    else if (event.ctrlKey && (event.keyCode == 78 || event.keyCode == 82))
//                    { // When ctrl is pressed with R or N 
//                        cancelKey(evt); 
//                     } 
//                        else if (event.altKey && event.keyCode==37 ) 
//                    { // stop Alt left cursor
//                         return false; 
//                     } 
//                     else if (event.keyCode == 8 && (event.srcElement.type!= "text" && event.srcElement.type!= "textarea" && event.srcElement.type!= "password")) { 
//                        cancelKey(evt); 
//                     } 


//               } 
//            } 
//            
//            
//   function cancelKey(evt) 
//   { 
//   if(IsInWiz=="1" ||IsInWiz=="-1")
//        {   
//        var BlnCon=confirm (Msg);
//            if(!BlnCon)
//               {
//                if (evt.preventDefault) { 
//                    evt.preventDefault(); 
//                    return false; 
//                                        } 
//                else { 
//                    evt.keyCode = 0; 
//                    evt.returnValue = false; 
//                     } 

//               
//               
//               }
//      }
//  } 
//  
// if (window.Event) 
//	document.captureEvents(Event.MOUSEUP); 
//	function nocontextmenu()
//	{ 
//	event.cancelBubble = true 
//	event.returnValue = false; 
//	return false;
//	} 


//	  function cancelKey() 
//         { 
//         if(IsInWiz=="1" ||IsInWiz=="-1")
//     {   
//        return confirm (Msg);
//       }
//     }   

var needToConfirm;
function confirmExit() {
    if (needToConfirm) {
        return "Are you sure want to cancel changes? If you leave this page " +
                     "now, your work will NOT be saved!";
    }

}

function Back() { needToConfirm = false; return true; }
function Cancel() {
    var BlnCon = popup(Msg);
    if (BlnCon == true) { needToConfirm = false; return true; } else { return false; }
}

function cancelEventIE() {
    e.cancelBubble = true;
    e.returnValue = false;
    return false;
}

function cancelEventFF(e) {
    e.cancelBubble = true;
    e.returnValue = false;
    return false;
}


//---GMDatePicker custom validation functions

var pFY_SDate = "01/05/2009";
var pFY_EDate = "30/04/2010";
        
function CheckDate(vDate1, vDate2) {
    if (String(vDate1.value).toString() == "" || String(vDate2.value).toString() == "") {
        return -1; //---please enter date message
    }
    else {
        var RegExPatterndd = /^((((0?[1-9]|[12]\d|3[01])[\.\-\/](0?[13578]|1[02])[\.\-\/]((1[6-9]|[2-9]\d)?\d{2}))|((0?[1-9]|[12]\d|30)[\.\-\/](0?[13456789]|1[012])[\.\-\/]((1[6-9]|[2-9]\d)?\d{2}))|((0?[1-9]|1\d|2[0-8])[\.\-\/]0?2[\.\-\/]((1[6-9]|[2-9]\d)?\d{2}))|(29[\.\-\/]0?2[\.\-\/]((1[6-9]|[2-9]\d)?(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00)|00)))|(((0[1-9]|[12]\d|3[01])(0[13578]|1[02])((1[6-9]|[2-9]\d)?\d{2}))|((0[1-9]|[12]\d|30)(0[13456789]|1[012])((1[6-9]|[2-9]\d)?\d{2}))|((0[1-9]|1\d|2[0-8])02((1[6-9]|[2-9]\d)?\d{2}))|(2902((1[6-9]|[2-9]\d)?(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00)|00))))$/;
        var Date1 = vDate1;
        var Date2 = vDate2;
        if ((Date1.value.match(RegExPatterndd)) && (Date2.value.match(RegExPatterndd))) {
            var MaxDate = new Date();
            var dtEDate = pFY_EDate.split('/');
            MaxDate.setFullYear(dtEDate[2], dtEDate[1], dtEDate[0]);

            var MinDate = new Date();
            var dtSDate = pFY_SDate.split('/');
            MinDate.setFullYear(dtSDate[2], dtSDate[1], dtSDate[0]);

            var dDate1 = new Date();
            var dDate2 = new Date();
            var arrdate1 = Date1.value.split('/');
            var arrdate2 = Date2.value.split('/');
            dDate1.setFullYear(arrdate1[2], arrdate1[1], arrdate1[0]);
            dDate2.setFullYear(arrdate2[2], arrdate2[1], arrdate2[0]);

            if ((dDate1 > dDate2) || (dDate2 < dDate1)) {
                return -3; //---Please enter valid date range
            }
        }
        else {
            return -2; //---please enter date in correct format
        }
    }
    return 1;    
}


function CheckDate_Single(vDate1) {
    if (String(vDate1.value).toString() == "") {
        return -1; //---please enter date message
    }
    else {
        var RegExPatterndd = /^((((0?[1-9]|[12]\d|3[01])[\.\-\/](0?[13578]|1[02])[\.\-\/]((1[6-9]|[2-9]\d)?\d{2}))|((0?[1-9]|[12]\d|30)[\.\-\/](0?[13456789]|1[012])[\.\-\/]((1[6-9]|[2-9]\d)?\d{2}))|((0?[1-9]|1\d|2[0-8])[\.\-\/]0?2[\.\-\/]((1[6-9]|[2-9]\d)?\d{2}))|(29[\.\-\/]0?2[\.\-\/]((1[6-9]|[2-9]\d)?(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00)|00)))|(((0[1-9]|[12]\d|3[01])(0[13578]|1[02])((1[6-9]|[2-9]\d)?\d{2}))|((0[1-9]|[12]\d|30)(0[13456789]|1[012])((1[6-9]|[2-9]\d)?\d{2}))|((0[1-9]|1\d|2[0-8])02((1[6-9]|[2-9]\d)?\d{2}))|(2902((1[6-9]|[2-9]\d)?(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00)|00))))$/;
        var Date1 = vDate1;
        if ((Date1.value.match(RegExPatterndd))) {
        }
        else {
            return -2; //---please enter date in correct format
        }
    }
    return 1;
}


function CheckDate_FY(vDate1, vDate2) {
    if (String(vDate1.value).toString() == "" || String(vDate2.value).toString() == "") {
        return -1; //---please enter date message
    }
    else {
        var RegExPatterndd = /^((((0?[1-9]|[12]\d|3[01])[\.\-\/](0?[13578]|1[02])[\.\-\/]((1[6-9]|[2-9]\d)?\d{2}))|((0?[1-9]|[12]\d|30)[\.\-\/](0?[13456789]|1[012])[\.\-\/]((1[6-9]|[2-9]\d)?\d{2}))|((0?[1-9]|1\d|2[0-8])[\.\-\/]0?2[\.\-\/]((1[6-9]|[2-9]\d)?\d{2}))|(29[\.\-\/]0?2[\.\-\/]((1[6-9]|[2-9]\d)?(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00)|00)))|(((0[1-9]|[12]\d|3[01])(0[13578]|1[02])((1[6-9]|[2-9]\d)?\d{2}))|((0[1-9]|[12]\d|30)(0[13456789]|1[012])((1[6-9]|[2-9]\d)?\d{2}))|((0[1-9]|1\d|2[0-8])02((1[6-9]|[2-9]\d)?\d{2}))|(2902((1[6-9]|[2-9]\d)?(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00)|00))))$/;
        var Date1 = vDate1;
        var Date2 = vDate2;
        if ((Date1.value.match(RegExPatterndd)) && (Date2.value.match(RegExPatterndd))) {
            var MaxDate = new Date();
            var dtEDate = pFY_EDate.split('/');
            MaxDate.setFullYear(dtEDate[2], dtEDate[1], dtEDate[0]);

            var MinDate = new Date();
            var dtSDate = pFY_SDate.split('/');
            MinDate.setFullYear(dtSDate[2], dtSDate[1], dtSDate[0]);

            var dDate1 = new Date();
            var dDate2 = new Date();
            var arrdate1 = Date1.value.split('/');
            var arrdate2 = Date2.value.split('/');
            dDate1.setFullYear(arrdate1[2], arrdate1[1], arrdate1[0]);
            dDate2.setFullYear(arrdate2[2], arrdate2[1], arrdate2[0]);

            if ((dDate1 > dDate2) || (dDate2 < dDate1)) {
                return -3; //---Please enter valid date range
            }
            else if ((dDate1 < MinDate) || (dDate2 > MaxDate)) {
                return -4; //---Please enter valid date range in current financial year
            }
        }
        else {
            return -2; //---please enter date in correct format
        }
    }

    return 1;
}

function formatNumber(nStr) {
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

