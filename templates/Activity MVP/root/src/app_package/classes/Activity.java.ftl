package ${packageName}.view;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;

import ${packageName}.R;
import ${packageName}.presenter.${activityClass}MVP;

import javax.inject.Inject;



public class ${activityClass} extends AppCompatActivity implements ${activityClass}MVP.View {


    @Inject
    ${activityClass}MVP.Presenter presenter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${layoutName});

        //Dagger injection
        ((CHANGE THIS TO APPLICATION APP) getApplication()).getComponent().inject(this);

        presenter.setView(this);

    }

    @Override
    protected void onResume() {
        super.onResume();
        if (presenter == null){
            presenter.setView(this);
        }
    }


}
