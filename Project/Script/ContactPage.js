Avalon.Site.Entities.Pages.ContactPage = function () {
    /// <summary>Contact page elements.</summary>
    //#region "PROPERTIES"
    //#region "FIELDS"
    //<var name="Utility" type="Knowledge">Utilities.</var>
    var Utility = new Avalon.Framework.Entities.Utilities.Knowledge();
    //<var name="txtName" type="HTMLElement">Textbox containing the user name.</var>
    var txtName;
    //<var name="txtEmail" type="HTMLElement">Textbox containing the user email.</var>
    var txtEmail;
    //<var name="txtSubject" type="HTMLElement">Textbox containing the email subject.</var>
    var txtSubject;
    //<var name="txtMessage" type="HTMLElement">Textbox containing the message.</var>
    var txtMessage;
    //<var name="btnSubmit" type="HTMLElement">Submit button.</var>
    var btnSubmit;
    //<var name="pnlContactControls" type="HTMLElement">Division containing the contact page controls.</var>
    var pnlContactControls;
    //#endregion
    //#region "GETTERS AND SETTERS"

    function getTxtName() {
        /// <summary>Get the name textbox.</summary>
        /// <returns type="HTMLElement">Name textbox.</returns>
        if (txtName == null) {
            txtName = Utility.Web().DOM().Element().GetElement("txtName");
        }
        return txtName;
    }

    function getTxtEmail() {
        /// <summary>Get the email textbox.</summary>
        /// <returns type="HTMLElement">Email textbox.</returns>
        if (txtEmail == null) {
            txtEmail = Utility.Web().DOM().Element().GetElement("txtEmail");
        }
        return txtEmail;
    }

    function getTxtSubject() {
        /// <summary>Get the subject textbox.</summary>
        /// <returns type="HTMLElement">Subject textbox.</returns>
        if (txtSubject == null) {
            txtSubject = Utility.Web().DOM().Element().GetElement("txtSubject");
        }
        return txtSubject;
    }

    function getTxtMessage() {
        /// <summary>Get the message textbox.</summary>
        /// <returns type="HTMLElement">Message textbox.</returns>
        if (txtMessage == null) {
            txtMessage = Utility.Web().DOM().Element().GetElement("txtMessage");
        }
        return txtMessage;
    }

    function getBtnSubmit() {
        /// <summary>Get the submit button.</summary>
        /// <returns type="HTMLElement">Submit button.</returns>
        if (btnSubmit == null) {
            btnSubmit = Utility.Web().DOM().Element().GetElement("btnSubmit");
        }
        return btnSubmit;
    }

    function getPnlContactControls() {
        /// <summary>Get the division containing the contact page controls.</summary>
        /// <returns type="HTMLElement">Division containing the contact page controls.</returns>
        if (pnlContactControls == null) {
            pnlContactControls = Utility.Web().DOM().Element().GetElement("pnlContactControls");
        }
        return pnlContactControls;
    }

    function clearPageTextBoxes() {
        /// <summary>Reset the contact form TextBoxes.</summary>
        getTxtName().value = "";
        getTxtEmail().value = "";
        getTxtSubject().value = "";
        getTxtMessage().value = "";
    }


    //#endregion
    //#endregion
    //#region "PUBLIC INTERFACE METHODS"
    /// <field name="TxtName" type="Function">Get the name textbox.</field>
    this.TxtName = getTxtName;
    /// <field name="TxtEmail" type="Function">Get the email textbox.</field>
    this.TxtEmail = getTxtEmail;
    /// <field name="TxtEmail" type="Function">Get the subject textbox.</field>
    this.TxtSubject = getTxtSubject;
    /// <field name="TxtMessage" type="Function">Get the message textbox.</field>
    this.TxtMessage = getTxtMessage;
    /// <field name="BtnSubmit" type="Function">Get the submit button.</field>
    this.BtnSubmit = getBtnSubmit;
    /// <field name="PnlContactControls" type="Function">Get the division containing the contact page controls.</field>
    this.PnlContactControls = getPnlContactControls;
    /// <field name="ClearPageTextBoxes" type="Function">Reset the contact form TextBoxes.</field>
    this.ClearPageTextBoxes = clearPageTextBoxes;
    //#endregion
    //#endregion
}