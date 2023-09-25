using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace SC.BLL
{
    public class EmpEmployee
    {
        public DataSet Fill_Combo(string vUni_DD)
        {
            database1 clsdatabase1 = new database1();
            DataSet ds_1;
            SqlCommand SCmd = new SqlCommand();
            SCmd.Parameters.Add(new SqlParameter("@nIsUpdate", SqlDbType.Int, 4, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Proposed, 4));
            ds_1 = clsdatabase1.Get_DS_SP("stpAcd_Student", SCmd);
            return ds_1;


        }
    }
}
