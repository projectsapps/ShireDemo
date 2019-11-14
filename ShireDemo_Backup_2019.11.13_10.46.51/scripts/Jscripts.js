function slideConfig(uniqudId, dir) {
    if (!uniqudId) { return; }

    var opposite = (dir == 'Down' ? 'Up' : 'Down'),
        $cfgHeadContainer = $("#" + uniqudId).find("a.cfgHead"),
        $cfgContent = $("#" + uniqudId).find("div.cfgContent"),
        $cfgHiddenFieldContainer = $("#" + uniqudId).find("div.hiddenFieldContainer");

    $cfgContent.slideToggle(300, function () {
        $cfgHeadContainer.find(".cfgButton")
            .removeClass("cfgUp")
            .removeClass("cfgDown")
            .addClass("cfg" + opposite);
    });

    $cfgHeadContainer[0].href = "javascript:slideConfig('" + uniqudId + "','" + opposite + "');";
    $("input[type='hidden']", $cfgHiddenFieldContainer).val(dir == "Down" ? "true" : "false");
}