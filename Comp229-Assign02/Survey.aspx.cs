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
            BirthDateTextBox_RangeValidator.MaximumValue = UtilsHelper.MaxBirthDate();
        }

        protected void SubmitSurveyButton_Click(object sender, EventArgs e)
        {
            // Getting the values into the session.
            Session["FirstName"] = FirstNameTextBox.Text;
            Session["LastName"] = LastNameTextBox.Text;
            Session["BirthDate"] = BirthDateTextBox.Text;
            Session["Province"] = ProvinceDropDown.SelectedValue;
            Session["City"] = CityTextBox.Text;
            Session["PhoneNumber"] = PhoneNumberTextBox.Text;
            Session["Email"] = EmailTextBox.Text;
            Session["MostLikedService"] = GetMostLikedService();
            Session["MostWishedService"] = GetMostWishedService();
            Session["RecommendationLevel"] = RecommendationLevelDropDown.SelectedValue;
            Session["Comments"] = CommentTextBox.Text;

            // Filling that the survey was just answered.
            Session["SurveyFilled"] = "Y";

            // Redirecting the user to the Thank You page.
            Response.Redirect("~/ThankYou");
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

        /*
         * Returns the selected most liked service.
         */
        string GetMostLikedService()
        {
            // Getting the radio button values.
            if (ClinicMeRadioButton.Checked)
            {
                return "Clinic.Me";
            }
            else if (GymMeRadioButton.Checked)
            {
                return "Gym.Me";
            }

            return "Band.Me";
        }

        /*
         * Returns the selected most wished service.
         */
        string GetMostWishedService()
        {
            // Getting the radio button values.
            if (PetMeRadioButton.Checked)
            {
                return "Pet.Me";
            }
            else if (RestaurantMeRadiioButton.Checked)
            {
                return "Restaurante.Me";
            }

            return "Language.Me";
        }
    }
}