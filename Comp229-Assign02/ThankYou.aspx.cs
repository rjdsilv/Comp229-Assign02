using System;
using System.Web.UI;

namespace Comp229_Assign02
{
    public partial class ThankYou : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "Thank You";
        }

        protected string FormatPhoneNumber()
        {
            return UtilsHelper.FormatPhoneNumber(Session["PhoneNumber"] as string);
        }
    }
}