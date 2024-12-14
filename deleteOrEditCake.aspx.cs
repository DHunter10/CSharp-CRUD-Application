using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cakeRecords
{
    public partial class deleteOrEditCake : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                // Setting conn string and opening DB connection 
                string connString = ConfigurationManager.ConnectionStrings["ITD210_06ConnectionString"].ConnectionString;
                SqlConnection conn = null;
                conn = new SqlConnection(connString);
                conn.Open();

                // Set select statement
                SqlCommand cmd = conn.CreateCommand();
                string selectStatement = "SELECT ID, CakeName from Cake";

                SqlDataAdapter da = new SqlDataAdapter(selectStatement, conn);
                DataSet ds = new DataSet();
                da.Fill(ds);

                if (ds.Tables[0].Rows.Count != 0)
                {
                    CheckBoxList1.DataSource = ds;
                    CheckBoxList1.DataTextField = "CakeName";
                    CheckBoxList1.DataValueField = "ID";

                    CheckBoxList1.DataBind();
                }
                else
                {

                }

                conn.Close();
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {

            // Setting conn string and opening DB connection 
            string connString = ConfigurationManager.ConnectionStrings["ITD210_06ConnectionString"].ConnectionString;
            SqlConnection conn = null;
            conn = new SqlConnection(connString);
            conn.Open();
            string CakeID = "";
            for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Selected)
                {
                    CakeID = CheckBoxList1.Items[i].Value;
                }
            }
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Delete from Cake where ID = '" + CakeID + "'";
            cmd.Connection = conn;
            int rowAffected = cmd.ExecuteNonQuery();

            if (rowAffected == 1)
            {
                lbl1.Text = "Successfully deleted this cake";
            }
            else
            {
                lbl1.Text = "Error could not delete the cake";
            }
        }

        protected void btnLookup_Click(object sender, EventArgs e) 
        {
            string connString = ConfigurationManager.ConnectionStrings["ITD210_06ConnectionString"].ConnectionString;
            SqlConnection conn = null;
            conn = new SqlConnection(connString);
            conn.Open();
            string CakeID = "";

            for (int i = 0; i < CheckBoxList1.Items.Count; i++) 
            {
                if (CheckBoxList1.Items[i].Selected)
                {
                    CakeID = CheckBoxList1.Items[i].Value;
                }
                else
                { 
                    lbl1.Text = CheckBoxList1.Items[i].Value;
                }
            }
            var sql = "SELECT * FROM [Cake] where ID = '" + CakeID + "'";
            
            SqlCommand cmd = new SqlCommand(sql, conn);

            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.Read()) 
            {
                txtCakeID.Text = reader[0].ToString();
                txtCakeName.Text = reader[1].ToString();
                txtFlavor.Text = reader[2].ToString();
                txtDescription.Text = reader[3].ToString();
                txtPrice.Text = reader[4].ToString();
                txtCreatedDate.Text = reader[5].ToString();
            }
            conn.Close();
        }

        protected void btnUpdateCake_Click(object sender, EventArgs e) 
        {
            string cakeID = txtCakeID.Text.ToString();
            string cakeName = txtFlavor.Text.ToString();
            string cakeFlavor = txtFlavor.Text.ToString();
            string cakeDesription = txtDescription.Text.ToString();
            string cakePrice = txtPrice.Text.ToString();

            string connString = ConfigurationManager.ConnectionStrings["ITD210_06ConnectionString"].ConnectionString;
            SqlConnection conn = null;
            conn = new SqlConnection(connString);
            conn.Open();
            

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "UPDATE [cake] set cakeName = '" + cakeName + "', Flavor = '" + cakeFlavor + "', Description = '" + cakeDesription + "',Price = '" + cakePrice + "' where ID = '" + cakeID + "'";
            cmd.Connection = conn;
            int rowAffected = cmd.ExecuteNonQuery();

            if (rowAffected == 1)
            {
                lbl1.Text = "Successfully updated this cake";
            }
            else
            {
                lbl1.Text = "Error could not updated the cake";
            }

        }
    }
}

    