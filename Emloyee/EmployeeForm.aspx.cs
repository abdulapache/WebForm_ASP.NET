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
    public partial class EmployeeForm : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Fill_Combo();
                if (Request.QueryString["Filter"] != null)
                {
                    hdfid.Value = Request.QueryString["Filter"];
                    findrecord(Convert.ToInt32(hdfid.Value));
                }
            }
            ScriptManager.RegisterStartupScript(this, this.GetType(), "setDatePickerMaster", "setDatePickerMaster();", true);
        }


        private void findrecord(int EmpID)
        {
            EmpEmployee clsEmpEmployee = new EmpEmployee();
            DataSet ds_1 = new DataSet();
            ds_1 = clsEmpEmployee.Find_Record(EmpID);
            txtEmpFatherName.Text = ds_1.Tables[0].Rows[0]["EmpFatherName"].ToString();
            cmbEmpLocation.SelectedValue = ds_1.Tables[0].Rows[0]["EmpLocation_ID"].ToString();
            txtEmpCode.Text = ds_1.Tables[0].Rows[0]["EmpCode"].ToString();
            txtEmpFullName.Text = ds_1.Tables[0].Rows[0]["EmpFullName"].ToString();
            cmbEmpSurName.Text = ds_1.Tables[0].Rows[0]["EmpSurName"].ToString();
            cmbEmpNationality.SelectedValue = ds_1.Tables[0].Rows[0]["EmpNationality_ID"].ToString();
            txtEmpIDNo.Text = ds_1.Tables[0].Rows[0]["EmpIDNo"].ToString();

           
            
            dtpEmpDOB.Text =Convert.ToDateTime(ds_1.Tables[0].Rows[0]["EmpDOB"]).ToString();
            dtpEmpDOE.Text = ds_1.Tables[0].Rows[0]["EmpDOE"].ToString();
            cmbEmpSection.SelectedValue = ds_1.Tables[0].Rows[0]["EmpSection_ID"].ToString();
            cmbEmpDepartment.SelectedValue = ds_1.Tables[0].Rows[0]["EmpDepartment_ID"].ToString();
            cmbEmpDepartmentLevel.SelectedValue = ds_1.Tables[0].Rows[0]["EmpDepartmentLevel_ID"].ToString();
            cmbEmpMarital.SelectedValue = ds_1.Tables[0].Rows[0]["EmpMarital_D"].ToString();
            cmbEmpDesignation.SelectedValue = ds_1.Tables[0].Rows[0]["EmpDesignation_ID"].ToString();
            cmbEmpLeavePolicy.SelectedValue = ds_1.Tables[0].Rows[0]["EmpLeavePolicy_ID"].ToString();
            cmbEmpReligion.SelectedValue = ds_1.Tables[0].Rows[0]["EmpReligion_ID"].ToString();
            cmbEmpBlood.SelectedValue = ds_1.Tables[0].Rows[0]["EmpBlood_ID"].ToString();
            cmbEmpGender.SelectedValue = ds_1.Tables[0].Rows[0]["Gender_ID"].ToString();

            chkEmpHOD.Checked = Convert.ToBoolean(ds_1.Tables[0].Rows[0]["EmpHOD"].ToString());
            chkEmpAsstHOD.Checked = Convert.ToBoolean(ds_1.Tables[0].Rows[0]["EmpAsstHOD"].ToString());

            dtpEmpDOJ.Text = ds_1.Tables[0].Rows[0]["Emp_DOJ"].ToString();
            cmbEmpStatus.SelectedValue = ds_1.Tables[0].Rows[0]["EmpStatus_ID"].ToString();
            cmbEmpJobStatus.SelectedValue = ds_1.Tables[0].Rows[0]["EmpJobStatus_ID"].ToString();
            dtpEmpDOL.Text = ds_1.Tables[0].Rows[0]["EmpDOL"].ToString();
            txtEmpReson.Text = ds_1.Tables[0].Rows[0]["EmpReson"].ToString();
            cmbEmpGrade.SelectedValue = ds_1.Tables[0].Rows[0]["EmpGrade_ID"].ToString();
            dtpEmpDOC.Text = ds_1.Tables[0].Rows[0]["EmpDOC"].ToString();


        }


        private void refresh()
        {
            hdfid.Value = "";
            txtEmpCode.Text = "";
            txtEmpFatherName.Text = "";
            txtEmpFullName.Text = "";
            txtEmpIDNo.Text = "";
            dtpEmpDOB.Text = "";
            dtpEmpDOE.Text = "";
            chkEmpHOD.Text = "";
            chkEmpAsstHOD.Text = "";
            dtpEmpDOJ.Text = "";
            dtpEmpDOL.Text = "";
            txtEmpReson.Text = "";
        }

        private void Fill_Combo()
        {
            EmpEmployee clsEmpEmployee = new EmpEmployee();
            DataSet ds_1 = new DataSet();
            ds_1 = clsEmpEmployee.Fill_Combo();

            cmbEmpSurName.Items.Insert(0,"Mr");
            cmbEmpSurName.Items.Insert(1,"Mrs");

            cmbEmpLocation.DataSource = ds_1.Tables[12];
            cmbEmpLocation.DataBind();
            cmbEmpLocation.DataTextField = "EmpLocation_D";
            cmbEmpLocation.DataValueField = "EmpLocation_ID";
            cmbEmpLocation.DataBind();

            cmbEmpDepartment.DataSource = ds_1.Tables[13];
            cmbEmpDepartment.DataBind();
            cmbEmpDepartment.DataTextField = "EmpDepartment_D";
            cmbEmpDepartment.DataValueField = "EmpDepartment_ID";
            cmbEmpDepartment.DataBind();

            cmbEmpNationality.DataSource = ds_1.Tables[0];
            cmbEmpNationality.DataBind();
            cmbEmpNationality.DataTextField = "EmpNationality_D";
            cmbEmpNationality.DataValueField = "EmpNationality_ID";
            cmbEmpNationality.DataBind();

            cmbEmpSection.DataSource = ds_1.Tables[1];
            cmbEmpSection.DataBind();
            cmbEmpSection.DataTextField = "EmpSection_D";
            cmbEmpSection.DataValueField = "EmpSection_ID";
            cmbEmpSection.DataBind();

            cmbEmpDepartmentLevel.DataSource = ds_1.Tables[2];
            cmbEmpDepartmentLevel.DataBind();
            cmbEmpDepartmentLevel.DataTextField = "EmpDepartmentLevel_D";
            cmbEmpDepartmentLevel.DataValueField = "EmpDepartmentLevel_ID";
            cmbEmpDepartmentLevel.DataBind();

            cmbEmpDesignation.DataSource = ds_1.Tables[3];
            cmbEmpDesignation.DataBind();
            cmbEmpDesignation.DataTextField = "EmpDesignation_D";
            cmbEmpDesignation.DataValueField = "EmpDesignation_ID";
            cmbEmpDesignation.DataBind();

            cmbEmpMarital.DataSource = ds_1.Tables[4];
            cmbEmpMarital.DataBind();
            cmbEmpMarital.DataTextField = "EmpMarital_D";
            cmbEmpMarital.DataValueField = "EmpMarital_ID";
            cmbEmpMarital.DataBind();

            cmbEmpReligion.DataSource = ds_1.Tables[5];
            cmbEmpReligion.DataBind();
            cmbEmpReligion.DataTextField = "EmpReligion_D";
            cmbEmpReligion.DataValueField = "EmpReligion_ID";
            cmbEmpReligion.DataBind();

            cmbEmpLeavePolicy.DataSource = ds_1.Tables[6];
            cmbEmpLeavePolicy.DataBind();
            cmbEmpLeavePolicy.DataTextField = "EmpLeavePolicy_D";
            cmbEmpLeavePolicy.DataValueField = "EmpLeavePolicy_ID";
            cmbEmpLeavePolicy.DataBind();

            cmbEmpGender.DataSource = ds_1.Tables[7];
            cmbEmpGender.DataBind();
            cmbEmpGender.DataTextField = "Gender_D";
            cmbEmpGender.DataValueField = "Gender_ID";
            cmbEmpGender.DataBind();

            cmbEmpBlood.DataSource = ds_1.Tables[8];
            cmbEmpBlood.DataBind();
            cmbEmpBlood.DataTextField = "EmpBlood_D";
            cmbEmpBlood.DataValueField = "EmpBlood_ID";
            cmbEmpBlood.DataBind();

            cmbEmpStatus.DataSource = ds_1.Tables[9];
            cmbEmpStatus.DataBind();
            cmbEmpStatus.DataTextField = "EmpStatus_D";
            cmbEmpStatus.DataValueField = "EmpStatus_ID";
            cmbEmpStatus.DataBind();

            cmbEmpJobStatus.DataSource = ds_1.Tables[10];
            cmbEmpJobStatus.DataBind();
            cmbEmpJobStatus.DataTextField = "EmpJobStatus_D";
            cmbEmpJobStatus.DataValueField = "EmpJobStatus_ID";
            cmbEmpJobStatus.DataBind();

            cmbEmpGrade.DataSource = ds_1.Tables[11];
            cmbEmpGrade.DataBind();
            cmbEmpGrade.DataTextField = "EmpGrade_D";
            cmbEmpGrade.DataValueField = "EmpGrade_ID";
            cmbEmpGrade.DataBind();


        }


        protected void RefreshBtn(object sender, EventArgs e)
        {
            refresh();
        }

        protected void Save(object sender, EventArgs e)
        {
            DateTime vEmpDOB = Convert.ToDateTime(dtpEmpDOB.Text);
            DateTime vEmpDOE = Convert.ToDateTime(dtpEmpDOE.Text);
            DateTime vEmpDOJ = Convert.ToDateTime(dtpEmpDOJ.Text);
            DateTime vEmpDOL = Convert.ToDateTime(dtpEmpDOL.Text);
            DateTime vEmpDOC = Convert.ToDateTime(dtpEmpDOC.Text);
            int EmpLocation = -1;
            if (cmbEmpLocation.SelectedValue != null)
            {
                EmpLocation = Convert.ToInt32(cmbEmpLocation.SelectedValue);
            }

            int EmpDepartment = -1;
            if (cmbEmpDepartment.SelectedValue != null)
            {
                EmpDepartment = Convert.ToInt32(cmbEmpDepartment.SelectedValue);
            }

               int EmpNationality = -1;
               if (cmbEmpNationality.SelectedValue != null)
               {
                   EmpNationality=Convert.ToInt32(cmbEmpNationality.SelectedValue);
               }
               int EmpSection = -1;
               if (cmbEmpSection.SelectedValue != null)
               {
                   EmpSection=Convert.ToInt32(cmbEmpSection.SelectedValue);
               }
               int EmpDepartmentLevel = -1;
               if (cmbEmpDepartmentLevel.SelectedValue != null)
               {
                   EmpDepartmentLevel=Convert.ToInt32(cmbEmpDepartmentLevel.SelectedValue);
               }
               int EmpDesignation = -1;
               if (cmbEmpDesignation.SelectedValue != null)
               {
                   EmpDesignation=Convert.ToInt32(cmbEmpDesignation.SelectedValue);
               }
               int EmpMarital = -1;
               if (cmbEmpMarital.SelectedValue != null)
               {
                   EmpMarital=Convert.ToInt32(cmbEmpMarital.SelectedValue);
               }
               int EmpReligion = -1;
               if (cmbEmpReligion.SelectedValue != null)
               {
                   EmpReligion=Convert.ToInt32(cmbEmpReligion.SelectedValue);
               }
               int EmpLeavePolicy = -1;
               if (cmbEmpLeavePolicy.SelectedValue != null)
               {
                   EmpLeavePolicy=Convert.ToInt32(cmbEmpLeavePolicy.SelectedValue);
               }
               int EmpGender = -1;
               if (cmbEmpGender.SelectedValue != null)
               {
                   EmpGender=Convert.ToInt32(cmbEmpGender.SelectedValue);
               }
               int EmpBlood = -1;
               if (cmbEmpBlood.SelectedValue != null)
               {
                   EmpBlood=Convert.ToInt32(cmbEmpBlood.SelectedValue);
               }
               int EmpStatus = -1;
               if (cmbEmpStatus.SelectedValue != null)
               {
                   EmpStatus=Convert.ToInt32(cmbEmpStatus.SelectedValue);
               }

               int EmpJobStatus = -1;
               if (cmbEmpJobStatus.SelectedValue != null)
               {
                   EmpJobStatus=Convert.ToInt32(cmbEmpJobStatus.SelectedValue);
               }
               int EmpGrade = -1;
               if (cmbEmpGrade.SelectedValue != null)
               {
                   EmpGrade=Convert.ToInt32(cmbEmpGrade.SelectedValue);
               }

               if (Validation())
               {
                   if (Request.QueryString["Filter"] != null)
                   {
                       //Validation();
                       EmpEmployee clsEmpEmploye = new EmpEmployee();
                       DataSet ds_1 = new DataSet();
                       ds_1 = clsEmpEmploye.EmpUpdate(hdfid.Value, EmpLocation, txtEmpCode.Text, txtEmpFatherName.Text, txtEmpFullName.Text, cmbEmpSurName.Text, EmpNationality,
                           txtEmpIDNo.Text, vEmpDOB, vEmpDOE, EmpSection, EmpDepartment, EmpDepartmentLevel, EmpDesignation, EmpMarital,
                           EmpReligion, EmpLeavePolicy, EmpGender, EmpBlood, chkEmpHOD.Checked, chkEmpAsstHOD.Checked, vEmpDOJ, EmpStatus, EmpJobStatus,
                          vEmpDOL, txtEmpReson.Text, EmpGrade, vEmpDOC);
                       ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Successfully Employee Update')", true);


                   }

                   else
                   {
                       //Validation();
                       EmpEmployee clsEmpEmploye = new EmpEmployee();
                       DataSet ds_1 = new DataSet();
                       ds_1 = clsEmpEmploye.SaveUpdate(EmpLocation, txtEmpCode.Text, txtEmpFatherName.Text, txtEmpFullName.Text, cmbEmpSurName.Text, EmpNationality,
                           txtEmpIDNo.Text, vEmpDOB, vEmpDOE, EmpSection, EmpDepartment, EmpDepartmentLevel, EmpDesignation, EmpMarital,
                           EmpReligion, EmpLeavePolicy, EmpGender, EmpBlood, chkEmpHOD.Checked, chkEmpAsstHOD.Checked, vEmpDOJ, EmpStatus, EmpJobStatus,
                          vEmpDOL, txtEmpReson.Text, EmpGrade, vEmpDOC);
                       ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Successfully Employee Saved')", true);
                       refresh();
                   }
               
               }
               
        }

        private bool Validation()
        {
            if (txtEmpCode.Text == "")
            {

                ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "Please Enter The Employee Code", true);
            }
            if (txtEmpFatherName.Text == "")
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "Please Enter The Father Name", true);
            }
            if (txtEmpFullName.Text == "")
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "Please Enter The Full Name", true);
            }
            return true;
        }

    }
}