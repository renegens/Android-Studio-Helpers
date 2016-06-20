package ${packageName}.injection;

import javax.inject.Singleton;

import ${packageName}.${appClass};
import dagger.Component;

@Singleton
@Component(modules = {ApplicationModule.class, MvpModule.class})
public interface ApplicationComponent {

    void inject(${appClass} target);

    void inject(${activityClass} target);


}
