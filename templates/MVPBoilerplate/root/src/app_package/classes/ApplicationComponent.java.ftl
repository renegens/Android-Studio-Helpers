package ${packageName}.root;

import javax.inject.Singleton;

import ${packageName}.${appClass};
import dagger.Component;

@Singleton
@Component(modules = {ApplicationModule.class})
public interface ApplicationComponent {

    void inject(${appClass} target);



}
