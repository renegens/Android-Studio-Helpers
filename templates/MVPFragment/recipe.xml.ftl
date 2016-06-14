<?xml version="1.0"?>
<recipe>
    <#include "fragment_layout_recipe.xml.ftl" />

    
    <instantiate from="src/app_package/classes/Activity.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/view/${activityClass}.java" />

    <instantiate from="src/app_package/classes/Presenter.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/presenter/${activityClass}Presenter.java" />

    <instantiate from="src/app_package/classes/ActivityMVP.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/presenter/${activityClass}MVP.java" />

    <instantiate from="src/app_package/classes/Model.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/model/${activityClass}Model.java" />

    <open file="${srcOut}/${activityClass}.java"/>

</recipe>
