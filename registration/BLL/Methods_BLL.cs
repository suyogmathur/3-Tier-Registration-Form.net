// -----------------------------------------------------------------------
// <copyright file="Methods_BLL.cs" company="-">
// TODO: Update copyright text.
// </copyright>
// -----------------------------------------------------------------------

namespace BLL
{
    using System;
    using System.Collections.Generic;
    using System.Data;
    using System.Data.SqlClient;
    using System.Linq;
    using System.Text;
    using BLL;
    using DAL;

    /// <summary>
    /// TODO: Methods_BLL Class
    /// </summary>
    public class Methods_BLL
    {
        /// <summary>
        /// class in DAL layer
        /// </summary>
        DataAccessLayer objDataAccess = new DataAccessLayer();

        /// <summary>
        /// method to insert user details
        /// </summary>
        /// <param name="objregformbll">parameter of property layer</param>
        /// <returns>number of affected rows</returns>
        public int Settask(regformbll objregformbll)
        {
            SqlCommand insertcommand = new SqlCommand("sp_insert");
            insertcommand.CommandType = CommandType.StoredProcedure;
            insertcommand.Parameters.AddWithValue("@first_name", objregformbll.First_Name);
            insertcommand.Parameters.AddWithValue("@last_name", objregformbll.Last_Name);
            insertcommand.Parameters.AddWithValue("@address", objregformbll.Address);
            insertcommand.Parameters.AddWithValue("@phone", objregformbll.Phone);
            insertcommand.Parameters.AddWithValue("@mobile", objregformbll.Mobile);
            insertcommand.Parameters.AddWithValue("@bank_account", objregformbll.Bank_Account);
            insertcommand.Parameters.AddWithValue("@pan_no", objregformbll.Pan_No);
            insertcommand.Parameters.AddWithValue("@email", objregformbll.Email);
            insertcommand.Parameters.AddWithValue("@gender", objregformbll.Gender);
            insertcommand.Parameters.AddWithValue("@location", objregformbll.Current_Location);
            insertcommand.Parameters.AddWithValue("@nationality", objregformbll.Nationality);
            insertcommand.Parameters.AddWithValue("@date", objregformbll.Date);
            int rowsaffectd = this.objDataAccess.RunSql(insertcommand);
            return rowsaffectd;
        }

        /// <summary>
        /// method to select user details from database
        /// </summary>
        /// <returns>return DataTable</returns>
        public DataTable GetUserDetails()
        {
            SqlCommand selectCommand = new SqlCommand("sp_select");
            selectCommand.CommandType = CommandType.StoredProcedure;
            DataTable dt = this.objDataAccess.RunSqlReturnData(selectCommand);
            return dt;
        }

        /// <summary>
        ///  method to show user details of selected user
        /// </summary>
        /// <param name="userid">id of selected user</param>
        /// <returns>return DataSet</returns>
        public DataSet GetUserDetailsForEdit(int userid)
        {
            SqlCommand selectCommand = new SqlCommand("sp_selectuserdetail");
            selectCommand.CommandType = CommandType.StoredProcedure;
            selectCommand.Parameters.AddWithValue("id", userid);
            DataSet ds = this.objDataAccess.RunSqlReturnDataWithDataset(selectCommand);
            return ds;
        }

        /// <summary>
        ///  method to update user details
        /// </summary>
        /// <param name="objregformbll">parameter of property layer</param>
        /// <returns>number of affected rows</returns>
        public int UpdateUserinfo(regformbll objregformbll)
        {
            SqlCommand updatecommand = new SqlCommand("sp_update");
            updatecommand.CommandType = CommandType.StoredProcedure;
            updatecommand.Parameters.AddWithValue("id", objregformbll.Id);
            updatecommand.Parameters.AddWithValue("@first_name", objregformbll.First_Name);
            updatecommand.Parameters.AddWithValue("@last_name", objregformbll.Last_Name);
            updatecommand.Parameters.AddWithValue("@address", objregformbll.Address);
            updatecommand.Parameters.AddWithValue("@phone", objregformbll.Phone);
            updatecommand.Parameters.AddWithValue("@mobile", objregformbll.Mobile);
            updatecommand.Parameters.AddWithValue("@bank_account", objregformbll.Bank_Account);
            updatecommand.Parameters.AddWithValue("@pan_no", objregformbll.Pan_No);
            updatecommand.Parameters.AddWithValue("@email", objregformbll.Email);
            updatecommand.Parameters.AddWithValue("@gender", objregformbll.Gender);
            updatecommand.Parameters.AddWithValue("@location", objregformbll.Current_Location);
            updatecommand.Parameters.AddWithValue("@nationality", objregformbll.Nationality);
            updatecommand.Parameters.AddWithValue("@date", objregformbll.Date);
            int rowsaffectd = this.objDataAccess.RunSql(updatecommand);
            return rowsaffectd;
        }

        /// <summary>
        /// method to delete user details
        /// </summary>
        /// <param name="userid">id of selected user</param>
        /// <returns>number of affected rows</returns>
        public int DeleteUserinfo(int userid)
        {
            SqlCommand deletecommand = new SqlCommand("sp_delete");
            deletecommand.CommandType = CommandType.StoredProcedure;
            deletecommand.Parameters.AddWithValue("id", userid);
            int rowsaffectd = this.objDataAccess.RunSql(deletecommand);
            return rowsaffectd;
        }
    }
}
