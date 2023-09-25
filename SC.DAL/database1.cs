using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SC.DAL;
using System.Data;
using System.Data.SqlClient;

namespace SC.DAL
{
    public class database1
    {
        DataSet SDataSet = new DataSet();
        public string m_ConnectionString = "";
        public static string strServerName = "";
        public static string strDatabaseName = "";
        public static string strUserID = "";
        public static string strPassword = "";
        public string pServerName = "";
        public const string pDBError_Prefix = "The system is unable to process the request, please check error: ";
        public const int pSQL_CommandTimeOut = 3600;
        SqlConnection SConnection = new SqlConnection();
        SqlCommand SCmd = new SqlCommand();
        SqlDataAdapter SDataAdapter = new SqlDataAdapter();
        //DataSet SDataSet = new DataSet();
        DataTable SDataTable = new DataTable();
        private string strErrorCode;
        public string Getdatabase1()
        {
            DataSet tmpDs = new DataSet();
            string _Server = "";
            string strPath = "";
            //strPath = Application.StartupPath;
            //tmpDs.ReadXml(strPath.Substring(0, strPath.Length - 4) + "\\Counter\\counter.xml");
            //strType_Connection = tmpDs.Tables[0].Rows[0]["strType_Connection"].ToString();

            _Server = "(local)";
            strServerName = _Server;
            pServerName = _Server;

            m_ConnectionString = "data source=" + _Server + ";initial catalog=Emp_Employee;user id=sa;pwd=111;";
            strServerName = _Server;
            strDatabaseName = "Emp_Employee";
            strUserID = "sa";
            strPassword = "111";

            SConnection.ConnectionString = m_ConnectionString;
            return m_ConnectionString;
        }
        public int Exec_Int_SP(string vSPName, SqlCommand SCmd)
        {
            SqlTransaction Tran = null;
            bool blnTran = true;
            int strRecAffected = 0;

            try
            {
                SConnection.ConnectionString = Getdatabase1();
                SConnection.Open();
                Tran = SConnection.BeginTransaction();
                SCmd.Connection = SConnection;
                SCmd.CommandTimeout = pSQL_CommandTimeOut;
                SCmd.Transaction = Tran;
                SCmd.CommandText = vSPName;
                SCmd.CommandType = CommandType.StoredProcedure;
                strRecAffected = SCmd.ExecuteNonQuery();
                strErrorCode = "";
            }
            catch (Exception ex)
            {
                blnTran = false;
                if (Tran != null)
                {
                    Tran.Rollback();
                    Tran.Dispose();
                }
                SConnection.Close();
                strErrorCode = Get_ErrorString(ex.Message);
            }
            finally
            {
                if (blnTran == true)
                {
                    Tran.Commit();
                    Tran.Dispose();
                    SConnection.Close();
                    strErrorCode = "";
                }
            }

            return strRecAffected;

        }
        public DataSet Get_DS_SP(string vSPName, SqlCommand SCmd)
        {
            DataSet ds_1 = new DataSet();

            try
            {
                SConnection.ConnectionString = Getdatabase1();
                SConnection.Open();
                SCmd.Connection = SConnection;
                SCmd.CommandText = vSPName;
                SCmd.CommandTimeout = pSQL_CommandTimeOut;
                SCmd.CommandType = CommandType.StoredProcedure;
                SDataAdapter.SelectCommand = SCmd;
                SDataAdapter.Fill(ds_1);
                strErrorCode = "";
            }
            catch (Exception ex)
            {

                strErrorCode = Get_ErrorString(ex.Message);
            }
            finally
            {
                SConnection.Close();
            }
            return ds_1;
        }
        public string sErrorCode
        {
            get
            {
                return strErrorCode;
            }
            set
            {
                strErrorCode = value;
            }
        }
        public string Get_ErrorString(string vError)
        {
            return pDBError_Prefix + vError.Replace("'", "`").Replace("(", "[").Replace(")", "]").Replace('\r', '-').Replace('\n', '-');
        }
      
     
    }
}
