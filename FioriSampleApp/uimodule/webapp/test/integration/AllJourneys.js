sap.ui.define(["sap/ui/test/Opa5", "./arrangements/Startup", "./MainJourney", "./MainJourney", "./MainJourney"], function (Opa5, Startup) {
    "use strict";

    Opa5.extendConfig({
        arrangements: new Startup(),
        autoWait: true,
    });
});
