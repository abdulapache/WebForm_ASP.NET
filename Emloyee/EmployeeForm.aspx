<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeForm.aspx.cs" Inherits="Emloyee.EmployeeForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <link href="CSS/jquery-ui.css" rel="stylesheet" />
    <link href="CSS/bootstrap/bootstrap-datetimepicker-standalone.css" rel="stylesheet" />
    <link href="CSS/bootstrap/bootstrap-datetimepicker-standalone.min.css" rel="stylesheet" />
    <link href="CSS/bootstrap/bootstrap-datetimepicker.css" rel="stylesheet" type="text/css" />
    <script src="JS/bootstrap/moment-with-locales.js" type="text/javascript"></script>
    <script src="JS/jquery-1.10.2.js" type="text/javascript"></script>

     <style type="text/css">
        #date1 {
            position: relative;
        }
        #date2 {
            position: relative;
        }
         #date3 {
            position: relative;
        }
        #date4 {
            position: relative;
        }
    </style>
    
    <script type="text/javascript">
        function setDatePickerMaster() {
            debugger;
            $('#dtpEmpDOB').datetimepicker({
                showClear: true,
                format: 'DD/MM/YYYY',
                minDate: 0,
                defaultDate: new Date(),
            });

            $('#dtpEmpDOE').datetimepicker({
                showClear: true,
                format: 'DD/MM/YYYY',
                minDate: 0,
                defaultDate: new Date(),
            });
            $('#dtpEmpDOJ').datetimepicker({
                showClear: true,
                format: 'DD/MM/YYYY',
                minDate: 0,
                defaultDate: new Date(),
            });
            $('#dtpEmpDOL').datetimepicker({
                showClear: true,
                format: 'DD/MM/YYYY',
                minDate: 0,
                defaultDate: new Date(),
            });
            $('#dtpEmpDOC').datetimepicker({
                showClear: true,
                format: 'DD/MM/YYYY',
                minDate: 0,
                defaultDate: new Date(),
            });
        }

    </script>
    
</head>
<body>
    <form id="form1" runat="server">
        <table width="100%">
            <tr>
                <td colspan="12" style="background-color: blue; color: white;">Employee Profile</td>
            </tr>
            <tr>
                <td colspan="11" >
                    <table>
                        <tr>
                            <td width="109px" align="right">Office/Location:
                            </td>
                            <td width="109px">
                                <asp:DropDownList runat="server" ID="cmbEmpLocation"></asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td width="109px" align="right">Employee ID*:
                            </td>

                            <td width="109px">
                                <asp:TextBox ID="txtEmpCode" runat="server"></asp:TextBox>
                            </td>
                            <td width="109px" align="right">SurName:
                            </td>
                            <td>
                                <asp:DropDownList ID="cmbEmpSurName" runat="server"></asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td width="109px" align="right">Father/Hus.Name

                            </td>
                            <td width="109px">
                                <asp:TextBox ID="txtEmpFatherName" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td width="109px" align="right">Full Name:
                            </td>
                            <td width="109px">
                                <asp:TextBox ID="txtEmpFullName" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
                <td valign="top">
                    <table>
                        <tr>
                            <td>
                                <asp:Button Text="Refresh" runat="server" OnClick="RefreshBtn" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button Text="Save" runat="server" OnClick="Save" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button Text="List" runat="server" PostBackUrl="~/EmployeeList.aspx" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="12" style="background-color: blue; color: white;">Nationality & IDS
                </td>
            </tr>
            <tr>
                <td width="109px" align="right">Nationality:
                </td>

                <td width="109px">
                    <asp:DropDownList ID="cmbEmpNationality" runat="server"></asp:DropDownList>
                </td>
                <td width="109px" align="right">Date Of Birth
                </td>
               <%-- <td>
                    <asp:TextBox ID="dtpEmpDOB" textmode="Date" runat="server"></asp:TextBox>
                </td>--%>
                <td style="width: 100px" id="date1">
                            <asp:TextBox ID="dtpEmpDOB" runat="server" MaxLength="10" TabIndex="4" ClientIDMode="Static"
                                                            Width="100px"></asp:TextBox>
                        
			</td>
            </tr>
            <tr>
                <td width="109px" align="right">ID No:
                </td>
                <td width="109px">
                    <asp:TextBox runat="server" ID="txtEmpIDNo"></asp:TextBox>
                </td>
                <td width="109px" align="right">ID Expiry Date:
                </td>
               <%-- <td>
                    <asp:TextBox runat="server" textmode="Date" ID="dtpEmpDOE"></asp:TextBox>
                </td>--%>
                <td style="width: 100px" id="date2">
                            <asp:TextBox ID="dtpEmpDOE" runat="server" MaxLength="10" TabIndex="4" ClientIDMode="Static"
                                                            Width="100px"></asp:TextBox>
                        
			</td>
            </tr>
            <tr>
                <td colspan="12" style="background-color: blue; color: white;">BASIC INFORMATION
                </td>
            </tr>
            <tr>
                <td width="109px" align="right">Section:
                </td>
                <td width="109px">
                    <asp:DropDownList ID="cmbEmpSection" runat="server"></asp:DropDownList>
                </td>
                <td width="109px" align="right">Designation:
                </td>
                <td>
                    <asp:DropDownList ID="cmbEmpDesignation" runat="server"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td width="109px" align="right">Department:
                </td>

                <td width="109px">
                    <asp:DropDownList runat="server" ID="cmbEmpDepartment"></asp:DropDownList>
                </td>
                <td width="109px" align="right">Leave Policy:
                </td>
                <td>
                    <asp:DropDownList ID="cmbEmpLeavePolicy" runat="server"></asp:DropDownList>
                </td>

            </tr>
            <tr>
                <td width="109px" align="right">Department Level:
                </td>

                <td>
                    <asp:DropDownList runat="server" ID="cmbEmpDepartmentLevel"></asp:DropDownList>
                </td>
                <td width="109px" align="right">Religion:
                </td>
                <td>
                    <asp:DropDownList ID="cmbEmpReligion" runat="server"></asp:DropDownList>
                </td>
                <td width="109px" align="right">Gender:
                </td>
                <td>
                    <asp:DropDownList ID="cmbEmpGender" runat="server"></asp:DropDownList>
                </td>

            </tr>
            <tr>
                <td width="109px" align="right">Marital Status:
                </td>

                <td>
                    <asp:DropDownList runat="server" ID="cmbEmpMarital"></asp:DropDownList>
                </td>
                <td width="109px" align="right">Blood Group:
                </td>
                <td>
                    <asp:DropDownList ID="cmbEmpBlood" runat="server"></asp:DropDownList>
                </td>
                <td width="109px" align="right">HOD:
                </td>
                <td>
                    <asp:CheckBox runat="server" ID="chkEmpHOD" />
                </td>
                <td width="109px" align="right">Asst.HOD
                </td>
                <td>
                    <asp:CheckBox runat="server" ID="chkEmpAsstHOD" />
                </td>

            </tr>
            <tr>
                <td colspan="12" style="background-color: blue; color: white;">Employee Status
                </td>
            </tr>
            <tr>
                <td width="109px" align="right">Joining Date:
                </td>

                <td style="width: 100px" id="date3">
                            <asp:TextBox ID="dtpEmpDOJ" runat="server" MaxLength="10" TabIndex="4" ClientIDMode="Static"
                                                            Width="100px"></asp:TextBox>
                        
			</td>
                <td width="109px" align="right">Grade:
                </td>
                <td>
                    <asp:DropDownList runat="server" ID="cmbEmpGrade"></asp:DropDownList>
                </td>

            </tr>
            <tr>
                <td width="109px" align="right">Employment Status:
                </td>

                <td>
                    <asp:DropDownList ID="cmbEmpStatus" runat="server"></asp:DropDownList>
                </td>
                <td width="109px" align="right">Confirmation Date
                </td>
               <td style="width: 100px" id="date4">
                            <asp:TextBox ID="dtpEmpDOC" runat="server" MaxLength="10" TabIndex="4" ClientIDMode="Static"
                                                            Width="100px"></asp:TextBox>
                        
			</td>

            </tr>
            <tr>
                <td width="109px" align="right">Job Status
                </td>
                <td>
                    <asp:DropDownList runat="server" ID="cmbEmpJobStatus"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td width="109px" align="right">Date Of Leaving
                </td>
               <td style="width: 100px" id="date5">
                            <asp:TextBox ID="dtpEmpDOL" runat="server" MaxLength="10" TabIndex="4" ClientIDMode="Static"
                                                            Width="100px"></asp:TextBox>
                        
			</td>
            </tr>
            <tr>
                <td width="109px" align="right">Reason:
                </td>
                <td>
                    
                    <asp:TextBox TextMode="MultiLine" id="txtEmpReson" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table>
            <asp:HiddenField ID="hdfid" runat="server" />
        </table>
    <script src="JS/bootstrap/bootstrap-datetimepicker.js" type="text/javascript"></script>
    </form>
</body>
</html>
