using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cakeRecords
{
    public partial class insertCake : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Save_Click(object sender, EventArgs e)
        {
            var cakeName = cakeNameInput.Text.ToString(); 
            var cakeFlavor = cakeFlavorInput.Text.ToString();
            var cakeDescription = cakeDescriptionInput.Text.ToString();
            var cakePrice = cakePriceInput.Text.ToString();

            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ITD210_06ConnectionString"].ConnectionString;
            con.Open();

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "Insert into [Cake] (CakeName,Flavor,Description,Price, CreatedDate) Values('" + cakeName + "','" + cakeFlavor + "','" + cakeDescription + "','" + cakePrice + "', GETDATE() )";

            cmd.Connection = con;
            int rowAffected = cmd.ExecuteNonQuery();

            if (rowAffected == 1)
            {
                lbl1.Text = "WOOHOO WE DID IT";
            }
            else
            {
                lbl1.Text = "NO GOOD";
            }
            con.Close();
        }
    }
}