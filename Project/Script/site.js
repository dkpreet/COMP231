//Initialize the name space
var Avalon = {};
Avalon.Site = {};
Avalon.Site.Controls = {};
Avalon.Site.Entities = {};
Avalon.Site.Entities.Controls = {};
Avalon.Site.Entities.Pages = {};
Avalon.Site.Pages = {};

Avalon.Site.Main = function () {
    /// <summary>Load site objects.</summary>
    //#region "PROPERTIES"
    //#region "FIELDS"
    //<var name="mainFolder" type="String">Main folder.</var>
    var mainFolder = '/Content/Scripts/';
    //<var name="frameworkFolder" type="String">Framework folder.</var>
    var frameworkFolder = mainFolder + 'Framework/';
    //<var name="siteFolder" type="String">Site folder.</var>
    var siteFolder = mainFolder + 'Site/';
    //<var name="frameworkControlsFolder" type="String">Framework controls folder.</var>
    var frameworkControlsFolder = frameworkFolder + 'Controls/';
    //<var name="frameworkEntitiesFolder" type="String">Framework entities folder.</var>
    var frameworkEntitiesFolder = frameworkFolder + 'Entities/';
    //<var name="frameworkEntitiesExtensionsFolder" type="String">Framework entities extensions folder.</var>
    var frameworkEntitiesExtensionsFolder = frameworkEntitiesFolder + 'Extensions/';
    //<var name="frameworkEntitiesWebFolder" type="String">Framework web entities folder.</var>
    var frameworkEntitiesWebFolder = frameworkEntitiesFolder + 'Web/';
    //<var name="frameworkEntityUtilitiesFolder" type="String">Framework utilities entities folder.</var>
    var frameworkEntityUtilitiesFolder = frameworkEntitiesFolder + 'Utilities/';
    //<var name="frameworkEntitiesWebRequestFolder" type="String">Framework web request entities folder.</var>
    var frameworkEntitiesWebRequestFolder = frameworkEntitiesWebFolder + 'Request/';
    //<var name="frameworkUtilitiesFolder" type="String">Framework utilities folder.</var>
    var frameworkUtilitiesFolder = frameworkFolder + 'Utilities/';
    //<var name="frameworkWebUtilitiesFolder" type="String">Framework Web utilities folder.</var>
    var frameworkWebUtilitiesFolder = frameworkUtilitiesFolder + 'Web/';
    //<var name="frameworkDOMUtilitiesFolder" type="String">Framework DOM utilities folder.</var>
    var frameworkDOMUtilitiesFolder = frameworkWebUtilitiesFolder + 'DOMUtilities/';
    //<var name="siteEntitiesFolder" type="String">Site entities folder.</var>
    var siteEntitiesFolder = siteFolder + 'Entities/';
    //<var name="siteEntitiesControlsFolder" type="String">Site controls entities folder.</var>
    var siteEntitiesControlsFolder = siteEntitiesFolder + 'Controls/';
    //<var name="siteEntitiesPageFolder" type="String">Site page entities folder.</var>
    var siteEntitiesPageFolder = siteEntitiesFolder + 'Pages/';
    //<var name="siteControlsFolder" type="String">Site controls folder.</var>
    var siteControlsFolder = siteFolder + 'Controls/';
    //<var name="sitePagesFolder" type="String">Site page folder.</var>
    var sitePagesFolder = siteFolder + 'Pages/';
    //#endregion
    //#endregion
    //#region "METHODS"
    //#region "PRIVATE METHODS"
    function main() {
        /// <summary>Initialize the object.</summary>
        loadJavaScriptFiles();
    }

    function loadJavaScriptFiles() {
        /// <summary>Load the JavaScript files.</summary>
        var files = getJavaScriptFiles();
        var numberOfFiles = files.length;
        for (var i = 0; i < numberOfFiles; i++) {
            loadFile(files[i]);
        }
    }

    function getJavaScriptFiles() {
        /// <summary>Get the JavaScript files.</summary>
        /// <returns type="Array">JavaScripts files.</returns>
        return getFrameworkJavaScriptFiles();
    }

    function getFrameworkJavaScriptFiles() {
        /// <summary>Get the JavaScript framework files.</summary>
        /// <returns type="Array">JavaScripts framework files.</returns>
        var frameworkFiles = new Array();
        frameworkFiles.push(frameworkEntitiesExtensionsFolder + 'StringExtension.js');
        frameworkFiles.push(frameworkEntitiesExtensionsFolder + 'ArrayExtension.js');
        frameworkFiles.push(frameworkEntitiesExtensionsFolder + 'DateExtensions.js');
        frameworkFiles.push(frameworkFolder + 'Framework.js');
        frameworkFiles.push(frameworkUtilitiesFolder + 'AJAXUtility.js');
        frameworkFiles.push(frameworkDOMUtilitiesFolder + 'DocumentUtility.js');
        frameworkFiles.push(frameworkDOMUtilitiesFolder + 'ElementUtility.js');
        frameworkFiles.push(frameworkDOMUtilitiesFolder + 'DOMBridge.js');
        frameworkFiles.push(frameworkWebUtilitiesFolder + 'CookieUtility.js');
        frameworkFiles.push(frameworkWebUtilitiesFolder + 'WebBridge.js');
        frameworkFiles.push(frameworkEntityUtilitiesFolder + 'Knowledge.js');
        frameworkFiles.push(frameworkEntitiesWebRequestFolder + 'AJAX.js');
        frameworkFiles.push(frameworkControlsFolder + 'ModalWindow.js');
        //frameworkFiles.push(siteEntitiesFolder + 'SuperEntity.js');
        //frameworkFiles.push(siteEntitiesFolder + 'Setting.js');
        frameworkFiles.push(frameworkControlsFolder + 'WebApplicationMessage.js');
        return frameworkFiles;
    }

    function loadFile(file) {
        /// <summary>Load the JavaScript file.</summary>
        /// <param name="file" type="String">JavaScript file to load.</param>
        var fileExt = file.substr(file.length - 3).toLowerCase();
        if (fileExt == ".js") {
            document.write("<script src='" + file + "' type='text/javascript' language='javascript'></script>");
        }
        if (fileExt == "css") {
            document.write("<link href='" + file + "' type='text/css' rel='Stylesheet' />");
        }
    }
    //#endregion
    //#region "PUBLIC INTERFACE METHODS"
    /// <field name="Main" type="Function">Initialize the object.</field>
    this.Main = main;
    //#endregion
    //#endregion
}

new Avalon.Site.Main().Main();