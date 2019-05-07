using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Latham_Tour_Sales
{
    public partial class Book : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = Convert.ToString(txtName.Text);
            string email = Convert.ToString(txtEmail.Text);
            string product = Convert.ToString(ddlPackage);
            string booking = lbPackageAvailable.SelectedItem.Text;

            txtOutPut.Text = "Thank you " + name + ", you're booked for " + booking + ". A confirmation was emailed to " + email + "!";
        }

        protected void txtName_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtGuide_TextChanged(object sender, EventArgs e)
        {

        }
    }
}