Avalon.Site.Entities.Setting = function () {
    /// <summary>Contact page elements.</summary>
    //#region "PUBLIC INTERFACE METHODS"
    /// <field name="AJAXContactFormServiceURL" type="String">The AJAX contact service URL.</field>
    this.AJAXContactFormServiceURL = "/AJAX/ContactFormService/";
    /// <field name="AJAXSignUpFormServiceURL" type="String">The AJAX sign up service URL.</field>
    this.AJAXSignUpServiceURL = "/AJAX/SignUp/";
    /// <field name="AJAXLogInServiceURL" type="String">The AJAX log in service URL.</field>
    this.AJAXLogInServiceURL = "/AJAX/LogIn/";
    /// <field name="AJAXFeedbackURL" type="String">The AJAX feedback in service URL.</field>
    this.AJAXFeedbackURL = "/AJAX/SaveFeedback/";
    /// <field name="AJAXRecoverPasswordURL" type="String">The AJAX recover password service URL.</field>
    this.AJAXRecoverPasswordURL = "/AJAX/RecoverPassword/";
    /// <field name="AJAXResetPasswordURL" type="String">The AJAX reset password service URL.</field>
    this.AJAXResetPasswordURL = "/AJAX/ResetPassword/";
    /// <field name="AJAXUpdateClientURL" type="String">The AJAX update client service URL.</field>
    this.AJAXUpdateClientURL = "/AJAX/UpdateClient/";
    /// <field name="AJAXUpdateClientBillingAddressURL" type="String">The AJAX update client billing address service URL.</field>
    this.AJAXUpdateClientBillingAddressURL = "/AJAX/UpdateClientBillingAddress/";
    /// <field name="AJAXChangePasswordURL" type="String">The AJAX change password service URL.</field>
    this.AJAXChangePasswordURL = "/AJAX/ChangePassword/";
    /// <field name="AJAXCheckoutURL" type="String">The AJAX checkout service URL.</field>
    this.AJAXCheckoutURL = "/AJAX/Checkout/";
    /// <field name="AJAXCouponURL" type="String">The AJAX coupon service URL.</field>
    this.AJAXCouponURL = "/AJAX/Coupon/";
    /// <field name="UserPageURL" type="String">User home page URL.</field>
    this.UserPageURL = "/Account/Home/";
    /// <field name="CartPageURL" type="String">Cart page URL.</field>
    this.CartPageURL = "/Cart/";
    /// <field name="ThankYouPageURL" type="String">Thank you page URL.</field>
    this.ThankYouPageURL = "/ThankYou/";
    /// <field name="EmptyEmailValidationMessage" type="String">Validation message that display when the email is empty.</field>
    this.EmptyEmailValidationMessage = "Your full email address is required.";
    /// <field name="EmailInvalidValidationMessage" type="String">Validation message that display when the email is invalid.</field>
    this.EmailInvalidValidationMessage = "The email address is invalid.";
    /// <field name="EmptyEmailValidationMessage" type="String">Validation message that display when the email is empty.</field>
    this.EmptyPasswordValidationMessage = "Your password is empty.";
    /// <field name="ChangePasswordDoesNotMatchValidationMessage" type="String">Validation message that display when the new password and the confirmation password do not match.</field>
    this.ChangePasswordDoesNotMatchValidationMessage = "Passwords do not match.";
    /// <field name="EmptyMessageValidationMessage" type="String">Validation message that display when the message is empty.</field>
    this.EmptyMessageValidationMessage = "Your message is required.";
    /// <field name="ErrorDefaultMessage" type="String">Default error message when getting an error from the server.</field>
    this.ErrorDefaultMessage = "We are currently experiencing a problem with the server. Please try again later.";
    /// <field name="EmptyFeedbackMessageValidationMessage" type="String">Validation message that display when the feedback message is empty.</field>
    this.EmptyFeedbackMessageValidationMessage = "Your feedback is empty.";
    //#endregion
}