using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Web;
using System.Web.UI;
using SC.BLL;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Globalization;

namespace Emloyee
{
    public partial class EmployeeList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Fill_Comb();
                EmpEmployeeList();
            }
            
        }

        private void Fill_Comb()
        {
            EmpEmployee clsEmpEmployee = new EmpEmployee();
            DataSet ds_1 = new DataSet();
            ds_1 = clsEmpEmployee.Fill_Combo();


            EmpSection.DataSource = ds_1.Tables[1];
            EmpSection.DataBind();
            EmpSection.DataTextField = "EmpSection_D";
            EmpSection.DataValueField = "EmpSection_ID";
            EmpSection.DataBind();

            EmpDepartmentLevel.DataSource = ds_1.Tables[2];
            EmpDepartmentLevel.DataBind();
            EmpDepartmentLevel.DataTextField = "EmpDepartmentLevel_D";
            EmpDepartmentLevel.DataValueField = "EmpDepartmentLevel_ID";
            EmpDepartmentLevel.DataBind();

            EmpReligion.DataSource = ds_1.Tables[5];
            EmpReligion.DataBind();
            EmpReligion.DataTextField = "EmpReligion_D";
            EmpReligion.DataValueField = "EmpReligion_ID";
            EmpReligion.DataBind();

            EmpJobStatus.DataSource = ds_1.Tables[10];
            EmpJobStatus.DataBind();
            EmpJobStatus.DataTextField = "EmpJobStatus_D";
            EmpJobStatus.DataValueField = "EmpJobStatus_ID";
            EmpJobStatus.DataBind();

            EmpGender.DataSource = ds_1.Tables[7];
            EmpGender.DataBind();
            EmpGender.DataTextField = "Gender_D";
            EmpGender.DataValueField = "Gender_ID";
            EmpGender.DataBind();

            EmpLocation.DataSource = ds_1.Tables[12];
            EmpLocation.DataBind();
            EmpLocation.DataTextField = "EmpLocation_D";
            EmpLocation.DataValueField = "EmpLocation_ID";
            EmpLocation.DataBind();

            EmpDepartment.DataSource = ds_1.Tables[13];
            EmpDepartment.DataBind();
            EmpDepartment.DataTextField = "EmpDepartment_D";
            EmpDepartment.DataValueField = "EmpDepartment_ID";
            EmpDepartment.DataBind();
        }

        private void EmpEmployeeList()
        {
            int cmbEmpLocation = -1;
            if (EmpLocation.SelectedValue != null)
            {
                cmbEmpLocation = Convert.ToInt32(EmpLocation.SelectedValue);
            }

            int cmbEmpDepartment = -1;
            if (EmpDepartment.SelectedValue != null)
            {
                cmbEmpDepartment = Convert.ToInt32(EmpLocation.SelectedValue);
            }
            int cmbEmpDepartmentLevel = -1;
            if (EmpDepartmentLevel.SelectedValue != null)
            {
                cmbEmpDepartmentLevel = Convert.ToInt32(EmpDepartmentLevel.SelectedValue);
            }
            int cmbEmpSection = -1;
            if (EmpSection.SelectedValue != null)
            {
                cmbEmpSection = Convert.ToInt32(EmpSection.SelectedValue);
            }
            int cmbEmpReligion = -1;
            if (EmpReligion.SelectedValue != null)
            {
                cmbEmpReligion = Convert.ToInt32(EmpReligion.SelectedValue);
            }
            int cmbEmpJobStatus = -1;
            if (EmpJobStatus.SelectedValue != null)
            {
                cmbEmpJobStatus = Convert.ToInt32(EmpJobStatus.SelectedValue);
            }
            int cmbEmpGender = -1;
            if (EmpGender.SelectedValue != null)
            {
                cmbEmpGender = Convert.ToInt32(EmpGender.SelectedValue);
            }
            EmpEmployee clsEmpEmployee = new EmpEmployee();
            DataSet ds_1 = new DataSet();
            ds_1 = clsEmpEmployee.EmpList(cmbEmpLocation, cmbEmpDepartment, cmbEmpDepartmentLevel, cmbEmpSection, cmbEmpReligion, cmbEmpJobStatus, cmbEmpGender, txtSearch.Text);
            EmpList.DataSource = ds_1;
            EmpList.DataBind();


        }

        public string Get_EditLink(string EmpID)
        {
            return "EmployeeForm.aspx?Filter=" + EmpID + "";
        }

        protected void Search()
        {
        }

        protected void search_Click(object sender, EventArgs e)
        {
            EmpEmployeeList();
        }

        //public string Delete(string EmpID)
        //{
        //    EmpEmployee clsEmpEmployee = new EmpEmployee();
        //    DataSet ds_1 = new DataSet();
        //    ds_1 = clsEmpEmployee.Delete(EmpID);
        //}  
    }
}