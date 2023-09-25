<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeList.aspx.cs" Inherits="Emloyee.EmployeeList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table width="100%">
            <tr>
                <td colspan="12" style="background-color: blue; color: white;">EMPLOYEES</td>
            </tr>
        </table>

        <table>
            <tr>
                <td width="109px" align="right">Office/Location</td>
                <td>
                    <asp:DropDownList ID="EmpLocation" runat="server" width="109px"></asp:DropDownList>
                </td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button runat="server" Text="Employee Profile" PostBackUrl="~/EmployeeForm.aspx" />
                </td>
            </tr>
        </table>

        <table>
            <tr>
                <td width="109px" align="right">Department</td>
                <td>
                    <asp:DropDownList ID="EmpDepartment" runat="server" width="109px"></asp:DropDownList>
                </td>
                <td width="109px" align="right">Religion:</td>
                <td>
                    <asp:DropDownList ID="EmpReligion" runat="server" width="109px"></asp:DropDownList>
                </td>
            </tr>
        </table>

        <table>
            <tr>
                <td width="109px" align="right">Level</td>
                <td>
                    <asp:DropDownList ID="EmpDepartmentLevel" runat="server" width="109px"></asp:DropDownList>
                </td>
                <td width="109px" align="right">Job Status</td>
                <td>
                    <asp:DropDownList ID="EmpJobStatus" runat="server" width="109px"></asp:DropDownList>
                </td>
            </tr>
        </table>

        <table>
            <tr>
                <td width="109px" align="right">Section</td>
                <td>
                    <asp:DropDownList runat="server" ID="EmpSection" width="109px"></asp:DropDownList>
                </td>
                <td  width="109px" align="right">Gender</td>
                <td>
                    <asp:DropDownList runat="server" ID="EmpGender" width="109px"></asp:DropDownList>
                </td>
            </tr>
        </table>
        <table>
            <tr>
                <td width="109px" align="right">
                    Search
                </td>
                <td>
                    <asp:TextBox ID="txtSearch" width="109px" runat="server"></asp:TextBox>
                </td>
               <td>
                        <asp:Button ID="search" Text="search" runat="server" OnClick="search_Click" />
                </td>
            </tr>
        </table>
        
<table style="margin-top:20px;">
            <asp:DataGrid ID="EmpList" runat="server" Width="100%" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" top="5px">
                <AlternatingItemStyle BackColor="White" />
                <Columns>
                    <asp:TemplateColumn>
                        <ItemTemplate>
                            <a href='<%#Get_EditLink(Eval("EmpID").ToString()) %>'>Edit</a>
                        </ItemTemplate>
                    </asp:TemplateColumn>

                    <asp:TemplateColumn HeaderText="Emp ID">
                        <ItemTemplate><%#Eval("EmpCode").ToString() %></ItemTemplate>
                    </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="Employee Name"><ItemTemplate>
                                                    <%#Eval("EmpFullname").ToString() %>
                        
                    </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="Father/Hus.Name"><ItemTemplate>
                    <%#Eval("EmpFatherName").ToString() %>
                    </ItemTemplate>
                    </asp:TemplateColumn>
                   <%-- <asp:TemplateColumn HeaderText="Classification"><ItemTemplate>
                    <%#Eval("").ToString() %>
                    </ItemTemplate>
                    </asp:TemplateColumn>--%>
                    <asp:TemplateColumn HeaderText="Job Status"><ItemTemplate>
                            <%#Eval("EmpJobStatus_D").ToString() %>

                        
        </ItemTemplate>
        </asp:TemplateColumn>
        <asp:TemplateColumn HeaderText="Others"><ItemTemplate>
                            <%#Eval("EmpJobStatus_D").ToString() %>,
                            <%#Eval("Gender_D").ToString() %>,
                            <%#Eval("EmpGrade_D").ToString() %>
                        
        </ItemTemplate>
        </asp:TemplateColumn>

                     <%--<asp:TemplateColumn>
                        <ItemTemplate>
                            <a href='<%#Delete(Eval("EmpID").ToString()) %>'>Delete</a>
                        </ItemTemplate>
                    </asp:TemplateColumn>--%>
                        </Columns>
                
                
                
                
                <EditItemStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#EFF3FB" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            </asp:DataGrid>
       </table>
    </form>
</body>
</html>
