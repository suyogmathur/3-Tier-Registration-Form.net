using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System;

namespace DAL
{
    public class DataAccessLayer
    {
        public static string ProjectManagementConnection
        {
            get
            {
                return System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            }
        }

        /// <summary>
        /// method for inserting values into database returning int 
        /// </summary>
        /// <param name="insertCommand">SqlCommand type insertCommand</param>
        /// <returns>number of affected rows</returns>
        public int RunSql(SqlCommand insertCommand)
        {
            int affectedRows = 0;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ProjectManagementConnection;
            insertCommand.Connection = con;
            con.Open();
            affectedRows = insertCommand.ExecuteNonQuery();
            con.Close();
            return affectedRows;
        }

        /// <summary>
        /// method for inserting values into database returning int 
        /// </summary>
        /// <param name="insertCommand">SqlCommand type insertCommand</param>
        /// <returns>return rowcount</returns>
        public int RunSqlScalar(SqlCommand insertCommand)
        {
            int success = 0;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ProjectManagementConnection;
            insertCommand.Connection = con;
            con.Open();
            success = (int)insertCommand.ExecuteScalar();
            con.Close();
            return success;
        }

        /// <summary>
        /// Method to Call SP
        /// </summary>
        /// <param name="selectCommand">SqlCommand selectCommand </param>
        /// <returns>returns datatable</returns>
        public DataTable RunSqlReturnData(SqlCommand selectCommand)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ProjectManagementConnection;
            selectCommand.Connection = con;
            SqlDataAdapter sqlDa = new SqlDataAdapter(selectCommand);
            DataTable dt = new DataTable();
            sqlDa.Fill(dt);
            return dt;
        }

        /// <summary>
        /// Method to Call SP returning as dataset 
        /// </summary>
        /// <param name="selectCommand">SqlCommand type selectCommand</param>
        /// <returns>returns dataset</returns>
        public  DataSet RunSqlReturnDataWithDataset
            (SqlCommand selectCommand)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ProjectManagementConnection;
            selectCommand.Connection = con;
            SqlDataAdapter sqlDa = new SqlDataAdapter(selectCommand);
            DataSet ds = new DataSet();
            sqlDa.Fill(ds);
            return ds;
        }
    }
}
