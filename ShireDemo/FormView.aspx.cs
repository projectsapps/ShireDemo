using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;


namespace ShireDemo
{
    public partial class FormView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //public DataTable GetDataTable()
        //{
        //    DataTable table = new DataTable();
        //    table.Columns.Add("Firstname");
        //    table.Columns.Add("Lastname");
        //    table.Columns.Add("Email");
        //    table.Columns.Add("Occupation");
        //    table.Columns.Add("Salary",typeof(Int32));
        //    table.Columns.Add("IsMarried",typeof(bool));
        //    table.Columns.Add("StartingDate",typeof(DateTime));
        //    table.Rows.Add("Sarah", "Blake", "Product Manager", 3500, true, "01/02/2014 00:00:00");

        //    return table;

        //}
        public class Member
        {
            public int ID { get; set; }
            public string Company { get; set; }
            public int unitNo { get; set; }
            public string FluidLevels { get; set; }
            public string Dates { get; set; }
        }
        public string GetConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["test1Entities"].ConnectionString;
        }
        public void ExecuteInsert(Member member)
        {
            using (SqlConnection sqlConn = new SqlConnection(GetConnectionString()))
            {
                string sql = "Insert Into testtbl (company,unitno,fluidlevels,dates) "+
                    "Values(@company,@unitno,@fluidlevels,@dates)";
                using (SqlCommand sqlCmd = new SqlCommand(sql,sqlConn))
                {
                    sqlCmd.Parameters.AddWithValue("@company",member.Company);
                    sqlCmd.Parameters.AddWithValue("@unitno",member.unitNo);
                    sqlCmd.Parameters.AddWithValue("@fluidlevels",member.FluidLevels);
                    sqlCmd.Parameters.AddWithValue("@dates",member.Dates);
                    sqlConn.Open();
                    sqlCmd.CommandType = CommandType.Text;
                    sqlCmd.ExecuteNonQuery();
                }
            }

        }
        string isOkay = "";
        public void InsertInfo()
        {
            if (Company.Text != "" && Unitno.Text != "" && fluidlevels.Text != "")
            {
                isOkay = "OK";

            }
            else if (Company.Text != "" || Unitno.Text != "" || fluidlevels.Text != "")
            {
                isOkay = "ERROR";
            }

        }
        public void ButtonClick_Event(object sender, EventArgs e)
        {
            if(isOkay == "OK")
            {
                Member member = new Member();
                member.Company = Company.Text; member.unitNo = int.Parse(Unitno.Text);
                member.FluidLevels = fluidlevels.Text; member.Dates = dates.Text.ToString();
                ExecuteInsert(member);
                Response.Write("Record was successfully Submitted");
                ClearControls(Page);
            }
            else if (isOkay == "ERROR")
            {
                Response.Write("Oh snap!, Some field is empty!");
            }
        }
        private static void ClearControls(Control Parent)
        {
            if (Parent is TextBox)
            { (Parent as TextBox).Text = string.Empty; }
            else
            {
                foreach (Control c in Parent.Controls)
                    ClearControls(c);
            }
        }
    }
}