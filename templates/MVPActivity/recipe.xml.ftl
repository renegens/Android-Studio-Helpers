<?xml version="1.0"?>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />

    <#include "activity_layout_recipe.xml.ftl" />

    <instantiate from="src/app_package/classes/Activity.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/${featureName}/${activityClass}.java" />

    <instantiate from="src/app_package/classes/Presenter.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/${featureName}/${activityClass}Presenter.java" />

    <instantiate from="src/app_package/classes/ActivityMVP.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/${featureName}/${activityClass}MVP.java" />

    <instantiate from="src/app_package/classes/Model.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/${featureName}/${activityClass}Model.java" />

    <instantiate from="src/app_package/classes/Module.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/${featureName}/${featureName?cap_first}Module.java" />

    <open file="${srcOut}/${featureName}/${activityClass}.java"/>

</recipe>
