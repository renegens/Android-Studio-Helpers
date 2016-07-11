<recipe>
	
    <instantiate from="src/app_package/classes/ApplicationComponent.java.ftl"
       to="${escapeXmlAttribute(srcOut)}/root/ApplicationComponent.java" />

    <instantiate from="src/app_package/classes/ApplicationModule.java.ftl"
       to="${escapeXmlAttribute(srcOut)}/root/ApplicationModule.java" />

    <instantiate from="src/app_package/classes/App.java.ftl"
       to="${escapeXmlAttribute(srcOut)}/root/${appClass}.java" />
  
</recipe>
