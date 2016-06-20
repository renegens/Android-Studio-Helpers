<recipe>
	
    <instantiate from="src/app_package/classes/ApplicationComponent.java.ftl"
       to="${escapeXmlAttribute(srcOut)}/injection/ApplicationComponent.java" />

    <instantiate from="src/app_package/classes/ApplicationModule.java.ftl"
       to="${escapeXmlAttribute(srcOut)}/injection/ApplicationModule.java" />

    <instantiate from="src/app_package/classes/MvpModule.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/injection/MvpModule.java" />

    <instantiate from="src/app_package/classes/App.java.ftl"
       to="${escapeXmlAttribute(srcOut)}/${appClass}.java" />
  
</recipe>
