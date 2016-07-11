package ${packageName}.${featureName};

import dagger.Module;
import dagger.Provides;

import ${packageName}.${featureName}.${activityClass}Model;
import ${packageName}.${featureName}.${activityClass}MVP;
import ${packageName}.${featureName}.${activityClass}Presenter;

@Module
public class ${featureName?cap_first}Module {


    @Provides
    public ${activityClass}MVP.Model provide${activityClass}Model() {
        return new ${activityClass}Model();
    }

    @Provides
    public ${activityClass}MVP.Presenter provide${activityClass}Presenter(${activityClass}MVP.Model model) {
        return new ${activityClass}Presenter(model);
    }

}
