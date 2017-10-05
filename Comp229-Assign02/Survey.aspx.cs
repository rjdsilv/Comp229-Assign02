using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign02
{
    public partial class Survey : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "Satisfaction Survey";
            FirstNameTextBox.Focus();
            BirthDateTextBox_RangeValidator.MaximumValue = DateManipulator.MaxBirthDate();
        }

        protected void SubmitSurveyButton_Click(object sender, EventArgs e)
        {
            Session["FirstName"] = FirstNameTextBox.Text;
            Session["LastName"] = LastNameTextBox.Text;
            Session["BirthDate"] = BirthDateTextBox.Text;
            Session["Province"] = ProvinceDropDown.SelectedValue;
            Session["City"] = CityTextBox.Text;
            Session["PhoneNumber"] = PhoneNumberTextBox.Text;
            Session["Email"] = EmailTextBox.Text;
        }

        /*
         * Validates the most liked service selection.
         */
        protected void ValidateServiceMostLikedSelected(object o, ServerValidateEventArgs e)
        {
            e.IsValid = ClinicMeRadioButton.Checked || GymMeRadioButton.Checked || BandMeRadioButton.Checked;
        }

        /*
         * Validates the most wished service selection.
         */
        protected void ValidateServiceMostWishedSelected(object o, ServerValidateEventArgs e)
        {
            e.IsValid = PetMeRadioButton.Checked || RestaurantMeRadiioButton.Checked || LanguageMeRadioButton.Checked;
        }
    }
}