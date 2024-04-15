sap.ui.define(["sap/ui/test/Opa5"], function (Opa5) {
    "use strict";

    return Opa5.extend("example.DevOpsExample.test.integration.arrangements.Startup", {
        iStartMyApp: function () {
            this.iStartMyUIComponent({
                componentConfig: {
                    name: "example.DevOpsExample",
                    async: true,
                    manifest: true,
                },
            });
        },
    });
});
