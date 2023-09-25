using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using SC.DAL;

 namespace SC.BLL
{
    public class EmpEmployee
    {
        public DataSet Fill_Combo()
        {
            database1 clsdatabase1 = new database1();
            DataSet ds_1;
            SqlCommand SCmd = new SqlCommand();
            SCmd.Parameters.Add(new SqlParameter("@nIsUpdate", SqlDbType.Int, 4, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Proposed, 4));
            ds_1 = clsdatabase1.Get_DS_SP("stp_EmpEmployee", SCmd);
            return ds_1;
        }
        public EmpEmployee()
        {
        }
        public DataSet SaveUpdate(int vEmpLocation, string vEmpCode, string vEmpFatherName, string vEmpFullName, string EmpSurName, int EmpNationality,
                string vEmpIDNo, DateTime EmpDob, DateTime EmpDoe, int EmpSection, int EmpDepartment, int EmpDepartmentLevel, int EmpDesignation, int EmpMarital,
                int EmpReligion, int EmpLeavePolicy, int EmpGender, int EmpBlood, bool EmpHOD, bool chkEmpAsstHOD, DateTime EmpDoj, int EmpStatus, int EmpJobStatus, DateTime EmpDOL,
                string vEmpReson, int EmpGrade, DateTime EmpDoc)
        {
            database1 clsdatabase1 = new database1();
            DataSet ds_1;
            SqlCommand SCmd = new SqlCommand();
            SCmd.Parameters.Add(new SqlParameter("@nEmpLocation_ID", SqlDbType.Int, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, vEmpLocation));
            SCmd.Parameters.Add(new SqlParameter("@sEmpCode", SqlDbType.VarChar, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, vEmpCode));
            SCmd.Parameters.Add(new SqlParameter("@sEmpFatherName ", SqlDbType.VarChar, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, vEmpFatherName));
            SCmd.Parameters.Add(new SqlParameter("@sEmpFullName", SqlDbType.VarChar, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, vEmpFullName));
            SCmd.Parameters.Add(new SqlParameter("@sEmpSurName", SqlDbType.VarChar, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, EmpSurName));
            SCmd.Parameters.Add(new SqlParameter("@nEmpNationality_ID", SqlDbType.Int, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, EmpNationality));
            SCmd.Parameters.Add(new SqlParameter("@sEmpIDNo", SqlDbType.VarChar, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, vEmpIDNo));
            SCmd.Parameters.Add(new SqlParameter("@dEmpDOB", SqlDbType.DateTime, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, EmpDob));
            SCmd.Parameters.Add(new SqlParameter("@dEmpDOE ", SqlDbType.DateTime, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, EmpDoe));
            SCmd.Parameters.Add(new SqlParameter("@nEmpSection_ID", SqlDbType.Int, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, EmpSection));
            SCmd.Parameters.Add(new SqlParameter("@nEmpDepartment_ID", SqlDbType.Int, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, EmpDepartment));
            SCmd.Parameters.Add(new SqlParameter("@nEmpDepartmentLevel_ID", SqlDbType.Int, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, EmpDepartmentLevel));
            SCmd.Parameters.Add(new SqlParameter("@nEmpDesignation_ID", SqlDbType.Int, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, EmpDesignation));
            SCmd.Parameters.Add(new SqlParameter("@nEmpMarital_ID", SqlDbType.Int, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, EmpMarital));
            SCmd.Parameters.Add(new SqlParameter("@nEmpReligion_ID ", SqlDbType.Int, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, EmpReligion));
            SCmd.Parameters.Add(new SqlParameter("@nEmpLeavePolicy_ID", SqlDbType.Int, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, EmpLeavePolicy));
            SCmd.Parameters.Add(new SqlParameter("@nGender_ID", SqlDbType.Int, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, EmpGender));
            SCmd.Parameters.Add(new SqlParameter("@nEmpBlood_ID", SqlDbType.Int, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, EmpBlood));
            SCmd.Parameters.Add(new SqlParameter("@bEmpHOD", SqlDbType.Bit, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, EmpHOD));
            SCmd.Parameters.Add(new SqlParameter("@bEmpAsstHOD", SqlDbType.Bit, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, chkEmpAsstHOD));
            SCmd.Parameters.Add(new SqlParameter("@dEmp_DOJ ", SqlDbType.DateTime, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, EmpDoj));
            SCmd.Parameters.Add(new SqlParameter("@nEmpStatus_ID", SqlDbType.Int, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, EmpStatus));
            SCmd.Parameters.Add(new SqlParameter("@nEmpJobStatus_ID", SqlDbType.Int, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, EmpJobStatus));
            SCmd.Parameters.Add(new SqlParameter("@dEmpDOL", SqlDbType.DateTime, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, EmpDOL));

            SCmd.Parameters.Add(new SqlParameter("@sEmpReson", SqlDbType.VarChar, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, vEmpReson));
            SCmd.Parameters.Add(new SqlParameter("@nEmpGrade_ID", SqlDbType.Int, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, EmpGrade));
            SCmd.Parameters.Add(new SqlParameter("@dEmpDOC", SqlDbType.DateTime, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, EmpDoc));


            SCmd.Parameters.Add(new SqlParameter("@nIsUpdate", SqlDbType.Int, 0, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Proposed, 0));
            ds_1 = clsdatabase1.Get_DS_SP("stp_EmpEmployee", SCmd);
            return ds_1;
        }

        public DataSet EmpList(int vEmpLocation, int vEmpDepartment, int vEmpDepartmentLevel, int vEmpSection, int vEmpReligion, int vEmpJobStatus, int vEmpGender, string vSearch)
        {
            database1 clsdatabase1 = new database1();
            DataSet ds_1;
            SqlCommand SCmd = new SqlCommand();

            SCmd.Parameters.Add(new SqlParameter("@nEmpLocation_ID", SqlDbType.Int, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, vEmpLocation));
            SCmd.Parameters.Add(new SqlParameter("@nEmpDepartment_ID", SqlDbType.Int, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, vEmpDepartment));
            SCmd.Parameters.Add(new SqlParameter("@nEmpDepartmentLevel_ID", SqlDbType.Int, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, vEmpDepartmentLevel));
            SCmd.Parameters.Add(new SqlParameter("@nEmpSection_ID", SqlDbType.Int, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, vEmpSection));
            SCmd.Parameters.Add(new SqlParameter("@nEmpReligion_ID ", SqlDbType.Int, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, vEmpReligion));
            SCmd.Parameters.Add(new SqlParameter("@nEmpJobStatus_ID", SqlDbType.Int, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, vEmpJobStatus));
            SCmd.Parameters.Add(new SqlParameter("@nGender_ID", SqlDbType.Int, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, vEmpGender));
            SCmd.Parameters.Add(new SqlParameter("@Search", SqlDbType.VarChar, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, vSearch));


            SCmd.Parameters.Add(new SqlParameter("@nIsUpdate", SqlDbType.Int, 4, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Proposed, 2));
            ds_1 = clsdatabase1.Get_DS_SP("stp_EmpEmployee", SCmd);
            return ds_1;
        }

        public DataSet Find_Record(int vEmpID)
        {
            database1 clsdatabase1 = new database1();
            DataSet ds_1;
            SqlCommand SCmd = new SqlCommand();
            SCmd.Parameters.Add(new SqlParameter("@nEmpID", SqlDbType.Int, 4, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Proposed, vEmpID));
            SCmd.Parameters.Add(new SqlParameter("@nIsUpdate", SqlDbType.Int, 4, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Proposed, 5));
            ds_1 = clsdatabase1.Get_DS_SP("stp_EmpEmployee", SCmd);
            return ds_1;
        }


        public DataSet EmpUpdate(string vEmpID, int vEmpLocation, string vEmpCode, string vEmpFatherName, string vEmpFullName, string EmpSurName, int EmpNationality,
                string vEmpIDNo, DateTime EmpDob, DateTime EmpDoe, int EmpSection, int EmpDepartment, int EmpDepartmentLevel, int EmpDesignation, int EmpMarital,
                int EmpReligion, int EmpLeavePolicy, int EmpGender, int EmpBlood, bool EmpHOD, bool chkEmpAsstHOD, DateTime EmpDoj, int EmpStatus, int EmpJobStatus, DateTime EmpDOL,
                string vEmpReson, int EmpGrade, DateTime EmpDoc)
        {
            database1 clsdatabase1 = new database1();
            DataSet ds_1;
            SqlCommand SCmd = new SqlCommand();
            SCmd.Parameters.Add(new SqlParameter("@nEmpID", SqlDbType.Int, 4, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Proposed, vEmpID));
            SCmd.Parameters.Add(new SqlParameter("@nEmpLocation_ID", SqlDbType.Int, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, vEmpLocation));
            SCmd.Parameters.Add(new SqlParameter("@sEmpCode", SqlDbType.VarChar, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, vEmpCode));
            SCmd.Parameters.Add(new SqlParameter("@sEmpFatherName ", SqlDbType.VarChar, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, vEmpFatherName));
            SCmd.Parameters.Add(new SqlParameter("@sEmpFullName", SqlDbType.VarChar, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, vEmpFullName));
            SCmd.Parameters.Add(new SqlParameter("@sEmpSurName", SqlDbType.VarChar, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, EmpSurName));
            SCmd.Parameters.Add(new SqlParameter("@nEmpNationality_ID", SqlDbType.Int, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, EmpNationality));
            SCmd.Parameters.Add(new SqlParameter("@sEmpIDNo", SqlDbType.VarChar, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, vEmpIDNo));
            SCmd.Parameters.Add(new SqlParameter("@dEmpDOB", SqlDbType.DateTime, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, EmpDob));
            SCmd.Parameters.Add(new SqlParameter("@dEmpDOE ", SqlDbType.DateTime, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, EmpDoe));
            SCmd.Parameters.Add(new SqlParameter("@nEmpSection_ID", SqlDbType.Int, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, EmpSection));
            SCmd.Parameters.Add(new SqlParameter("@nEmpDepartment_ID", SqlDbType.Int, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, EmpDepartment));
            SCmd.Parameters.Add(new SqlParameter("@nEmpDepartmentLevel_ID", SqlDbType.Int, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, EmpDepartmentLevel));
            SCmd.Parameters.Add(new SqlParameter("@nEmpDesignation_ID", SqlDbType.Int, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, EmpDesignation));
            SCmd.Parameters.Add(new SqlParameter("@nEmpMarital_ID", SqlDbType.Int, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, EmpMarital));
            SCmd.Parameters.Add(new SqlParameter("@nEmpReligion_ID ", SqlDbType.Int, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, EmpReligion));
            SCmd.Parameters.Add(new SqlParameter("@nEmpLeavePolicy_ID", SqlDbType.Int, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, EmpLeavePolicy));
            SCmd.Parameters.Add(new SqlParameter("@nGender_ID", SqlDbType.Int, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, EmpGender));
            SCmd.Parameters.Add(new SqlParameter("@nEmpBlood_ID", SqlDbType.Int, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, EmpBlood));
            SCmd.Parameters.Add(new SqlParameter("@bEmpHOD", SqlDbType.Bit, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, EmpHOD));
            SCmd.Parameters.Add(new SqlParameter("@bEmpAsstHOD", SqlDbType.Bit, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, chkEmpAsstHOD));
            SCmd.Parameters.Add(new SqlParameter("@dEmp_DOJ ", SqlDbType.DateTime, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, EmpDoj));
            SCmd.Parameters.Add(new SqlParameter("@nEmpStatus_ID", SqlDbType.Int, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, EmpStatus));
            SCmd.Parameters.Add(new SqlParameter("@nEmpJobStatus_ID", SqlDbType.Int, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, EmpJobStatus));
            SCmd.Parameters.Add(new SqlParameter("@dEmpDOL", SqlDbType.DateTime, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, EmpDOL));

            SCmd.Parameters.Add(new SqlParameter("@sEmpReson", SqlDbType.VarChar, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, vEmpReson));
            SCmd.Parameters.Add(new SqlParameter("@nEmpGrade_ID", SqlDbType.Int, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, EmpGrade));
            SCmd.Parameters.Add(new SqlParameter("@dEmpDOC", SqlDbType.DateTime, 20, ParameterDirection.Input, false, 0, 0, string.Empty, DataRowVersion.Proposed, EmpDoc));
            SCmd.Parameters.Add(new SqlParameter("@nIsUpdate", SqlDbType.Int, 4, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Proposed, 1));
            ds_1 = clsdatabase1.Get_DS_SP("stp_EmpEmployee", SCmd);
            return ds_1;
        }

        //public DataSet Delete(int vEmpID)
        //{
        //    database1 clsdatabase1 = new database1();
        //    DataSet ds_1;
        //    SqlCommand SCmd = new SqlCommand();
        //    SCmd.Parameters.Add(new SqlParameter("@nEmpID", SqlDbType.Int, 4, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Proposed, vEmpID));
        //    SCmd.Parameters.Add(new SqlParameter("@nIsUpdate", SqlDbType.Int, 4, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Proposed, 3));
        //    ds_1 = clsdatabase1.Get_DS_SP("stp_EmpEmployee", SCmd);
        //    return ds_1;
        //}
    }
    
}
