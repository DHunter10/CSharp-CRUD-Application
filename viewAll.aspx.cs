using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cakeRecords
{
    public partial class viewAll : System.Web.UI.Page
    {
        StringBuilder table = new StringBuilder();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings["ITD210_06ConnectionString"].ConnectionString;
                con.Open();

                SqlCommand cmd = con.CreateCommand();
                cmd.CommandText = "Select * from [Cake]";
                cmd.Connection = con;

                SqlDataReader rd = cmd.ExecuteReader();

                table.Append("<table class=\"table table-bordered\">");
                table.Append("<thead>\r\n                <tr>\r\n                    <th scope=\"col\">Cake ID</th>\r\n                    <th scope=\"col\">Cake Name</th>\r\n                    <th scope=\"col\">Flavor</th>\r\n                    <th scope=\"col\">Description</th>\r\n                    <th scope=\"col\">Price</th>\r\n                    <th scope=\"col\">Date Created</th>\r\n                </tr>\r\n            </thead>");
                table.Append("<tbody>");

                if (rd.HasRows)
                {
                    while (rd.Read())
                    {
                        table.Append("<tr>");
                        table.Append("<td>" + rd[0] + "</td>");
                        table.Append("<td>" + rd[1] + "</td>");
                        table.Append("<td>" + rd[2] + "</td>");
                        table.Append("<td>" + rd[3] + "</td>");
                        table.Append("<td>" + rd[4] + "</td>");
                        table.Append("<td>" + rd[5] + "</td>");
                        table.Append("</tr>");
                    }
                }
                table.Append("</tbody>");
                table.Append("</table>");


                CakeTable.Controls.Add(new Literal { Text = table.ToString() });
                rd.Close();
                con.Close();
            }//closes if postback
        }
    }
}