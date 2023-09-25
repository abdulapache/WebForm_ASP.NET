function getPrint(strid) {
    ////    var headstr = "<html> <head> <title>Payment Print Page</title> " +
    ////                  "<style>" +
    ////                  "body { font-size:10px; font-family:Tahoma; margin:0px; padding:0px; }" +
    ////                  "Table { border-collapse: collapse; border-spacing: 0px; }" +
    ////                  ".ReportHeader{background-color:#EFF3FF; color:#48618C; height:18px; border: solid 2px #EFF3FF; font-weight: bold; }" +
    ////                  ".tableborder {border: solid 1px #EFF3FF;}" +
    ////                  ".AmountText{ text-align:right;}" +
    ////                  ".ReportContent{color:Black; font-family:Tahoma Arial; font-size:9px;}" +
    ////                  ".ReportSummary{color:Black;font-family:Tahoma Arial;font-size:9px;font-style:italic;font-weight:bold;padding-top:4px;padding-bottom:4px;}" +
    ////                  ".ReportSection1{ font-family: Tahoma; font-size: 9px;  font-weight: normal; background-color:Transparent; padding-top:4px; padding-bottom:4px;}" +
    ////                  ".ReportSection2{font-family: Tahoma; font-size: 9px; font-weight: normal; font-style:italic; background-color:LightGrey; padding-top:4px; padding-bottom:4px;}" +
    ////                  "</style>" +
    ////                  "<script language=\"javascript\" type=\"text/javascript\">" +
    ////                  "function HighlighOnMouseOver(obj) {} \n\r function HighlighOnMouseClick(obj) {}" +
    ////                  "</script>" +
    ////                  "</head>" +
    ////                  "<body>";

    var headstr = "<html><head><title>Print Page</title><style> body {font-size:10px; font-family:Arial; margin:2px; padding:2px;}.ReportHeader{background-color:#EFF3FF; color:#5E7FB8; height:18px; font-weight:bold; font-size:13px;}.ReportContent{color:Black; font-family:Tahoma Arial; font-size:9px;}.HidePrintValues{display:inline;font-size:14px; font-weight:bold;font-style:italic;}.AntiHidePrintValues{display:none;} td{font-size:9px;border-bottom:1px solid Gray;}.AlternateColor1{background-color:#FFFFFF;}</style>" +
    "<script language=\"javascript\" type=\"text/javascript\">" +
    "function HighlighOnMouseOver(obj) {} \n\r function HighlighOnMouseClick(obj) {}" +
    "</script>" +
    "</head><body>";



    var footstr = "</body></html>";
    var WinPrint = window.open('', '', 'left=150,top=150,width=830,height=600,menubar=1,toolbar=1,scrollbars=1,status=0');
    WinPrint.document.write(headstr);
    var browsehtml = "";
    browsehtml = strid;
    //browsehtml = document.getElementById(strid).innerHTML;
    var objBody = document.createElement('BODY');
    objBody.innerHTML = browsehtml;

    var coll = objBody.getElementsByTagName("A");
    if (coll != null) {
        x = coll.length;
        i = x;
        if (x > 0) {
            do {
                coll[i - x].removeNode;
            } while (--x);
        }
    }
    var coll = objBody.getElementsByTagName("IMG");
    if (coll != null) {
        x = coll.length;
        if (x > 0) {
            do {
                coll[0].removeNode();
            } while (--x);
        }
    }
    WinPrint.document.write(objBody.innerHTML);
    WinPrint.document.write(footstr);
    WinPrint.document.close();
    WinPrint.focus();
    //WinPrint.print();
    //WinPrint.close();

}


var PrevRow, PrevColor, PrevRowclick, PrevColorclick;

function HighlighOnMouseOver(obj) {
    //            var Currrowcolor = obj.style.backgroundColor;
    //            if(PrevRowclick != obj)
    //            obj.style.backgroundColor = '#E8B756';
    //            if (PrevRow != null && PrevRowclick != PrevRow) {
    //                PrevRow.style.backgroundColor = PrevColor;
    //            }
    //            PrevRow = obj;
    //            PrevColor = Currrowcolor;
}
function HighlighOnMouseClick(obj) {
    var Currclickrowcolor = obj.style.backgroundColor;
    obj.style.backgroundColor = '#8689E2';
    if (PrevRowclick != null) {
        PrevRowclick.style.backgroundColor = PrevColorclick;
    }
    PrevRowclick = obj;
    PrevColorclick = Currclickrowcolor;
}



