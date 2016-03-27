Avalon.Site.Pages.Contact = function () {
    /// <summary>Load the contact page.</summary>

    //#region "PROPERTIES"
    //#region "FIELDS"
    //<var name="Utility" type="Knowledge">Utilities.</var>
    var Utility = new Avalon.Framework.Entities.Utilities.Knowledge();
    //<var name="WebSettings" type="Setting">Web settings.</var>
    var webSettings;
    //<var name="Page" type="ContactPage">Contact page elements.</var>
    var Page = new Avalon.Site.Entities.Pages.ContactPage();
    //<var name="appMessage" type="WebApplicationMessage">Application message.</var>
    var appMessage = new Avalon.Framework.Controls.WebApplicationMessage(null);
    //<var name="waitWindow" type="ModalWindow">Please wait modal window.</var>
    var waitWindow = new Avalon.Framework.Controls.ModalWindow(null, null, 'please-wait-window', null, false, false);
    //#endregion
    //#region "GETTERS AND SETTERS"
    function WebSettings() {
        /// <summary>Get the Website settings.</summary>
        /// <returns type="Setting">Web settings.</returns>
        if (webSettings == null) {
            webSettings = new Avalon.Site.Entities.Setting();
        }
        return webSettings;
    }
    //#endregion
    //#endregion
    //#region "METHODS"
    //#region "PRIVATE METHODS"

    function main() {
        /// <summary>Initialize the object.</summary>
        Utility.Web().DOM().Element().AddEvent(window, 'load', function () {
            loadElements();
        });
    }

    function loadElements() {
        /// <summary>Loads the page elements.</summary>
        Utility.Web().DOM().Element().AddEvent(Page.BtnSubmit(), 'click', sendContactMessage);
    }

    function sendContactMessage() {
        /// <summary>Send the contact form to the sever.</summary>
        waitWindow.Open();
        if (isContactFormValid()) {
            Utility.AJAX().CallServer('POST', getContactFormURL(), onSuccess, onFailure, null, null, true);
        }
        else {
            waitWindow.Close();
        }
    }

    function getContactFormURL() {
        /// <summary>Create the contact form AJAX URL.</summary>
        /// <returns type="String">Contact form URL.</returns>
        return WebSettings().AJAXContactFormServiceURL + "?firstname="
            + encodeURIComponent(Page.TxtName().value) + "&subject=Contact Form: " + encodeURIComponent(Page.TxtSubject().value)
            + "&email=" + encodeURIComponent(Page.TxtEmail().value) + "&message=" + encodeURIComponent(Page.TxtMessage().value);
    }

    function isContactFormValid() {
        /// <summary>Determine if the contact form is valid.</summary>
        /// <returns type="Boolean">Flag that indicates whether the contact form is a valid.</returns>
        if (Page.TxtEmail().value.isBlank()) {
            appMessage.DisplayErrorMessage(WebSettings().EmptyEmailValidationMessage);
            return false;
        }
        if (!Page.TxtEmail().value.isAnEmail()) {
            appMessage.DisplayErrorMessage(WebSettings().EmailInvalidValidationMessage);
            return false;
        }
        return true;
    }

    function onSuccess(ajax) {
        /// <summary>Run once the contact form is received successfully on the server.</summary>
        /// <param name="ajax" type="JSON">Server response.</param>
        appMessage.DisplayMessage(ajax);
        if (ajax.Succeed) {
            Utility.Web().DOM().Element().DisplayElement(Page.PnlContactControls(), false, null);
            Page.ClearPageTextBoxes();
        }
        waitWindow.Close();
    }

    function onFailure(ajax) {
        /// <summary>Run if the contact form fails to be received by the server.</summary>
        /// <param name="ajax" type="XMLHttpRequest">Server response.</param>
        appMessage.DisplayErrorMessage(WebSettings().ErrorDefaultMessage);
        waitWindow.Close();
    }

    //#endregion
    //#region "PUBLIC INTERFACE METHODS"
    /// <field name="Main" type="Function">Initialize the object.</field>
    this.Main = main;
    //#endregion
    //#endregion
}

new Avalon.Site.Pages.Contact().Main();