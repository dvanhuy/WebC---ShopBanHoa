using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLyShopHoa
{
    public partial class QuanLyShopHoa : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\WEB DESIGN\Web apsx\QuanLyShopHoa\App_data\ShopHoa.mdf;Integrated Security=True";
            cn.Open();
            string SQL = "select * from [DanhMucHoa]";
            SqlDataAdapter adp = new SqlDataAdapter(SQL, cn);
            DataTable tbDANHMUC = new DataTable();
            adp.Fill(tbDANHMUC);
            Repeater1.DataSource = tbDANHMUC;
            Repeater1.DataBind();
        }
    }
}