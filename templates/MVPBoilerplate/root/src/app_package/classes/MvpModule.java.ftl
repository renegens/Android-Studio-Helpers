package ${packageName}.injection;

import dagger.Module;
import dagger.Provides;

import ${packageName}.model.${activityClass}Model;
import ${packageName}.presenter.${activityClass}MVP;
import ${packageName}.presenter.${activityClass}Presenter;

@Module
public class MvpModule {


    @Provides
    public ${activityClass}MVP.Model provide${activityClass}Model() {
        return new ${activityClass}Model();
    }

    @Provides
    public ${activityClass}MVP.Presenter provide${activityClass}Presenter(${activityClass}MVP.Model model) {
        return new ${activityClass}Presenter(model);
    }

}
