(function () {

    "use strict";

    var Contact = {

        initialized: false,

        initialize: function () {

            if (this.initialized) return;
            this.initialized = true;

            this.build();
            this.events();

        },

        build: function () {

            this.validations();

        },

        events: function () {



        },

        validations: function () {

            $("#contactForm").validate({
                submitHandler: function (form) {
                },
                rules: {
                    name: {
                        required: true
                    },
                    email: {
                        required: true,
                        email: true
                    },
                    subject: {
                        required: true
                    },
                    message: {
                        required: true
                    }
                },
                highlight: function (element) {
                    $(element)
						.parent()
						.removeClass("has-success")
						.addClass("has-error");
                },
                success: function (element) {
                    $(element)
						.parent()
						.removeClass("has-error")
						.addClass("has-success")
						.find("label.error")
						.remove();
                }
            });

        }

    };

    Contact.initialize();

})();