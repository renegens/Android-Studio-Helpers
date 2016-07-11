package ${packageName}.${featureName};

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;

import ${packageName}.R;
import ${packageName}.${featureName}.${activityClass}MVP;

import javax.inject.Inject;



public class ${activityClass} extends AppCompatActivity implements ${activityClass}MVP.View {

		private static final String TAG = ${activityClass}.class.getName();



    @Inject
    ${activityClass}MVP.Presenter presenter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${layoutName});

        //Dagger injection
        (("CHANGE THIS TO APPLICATION APP") getApplication()).getComponent().inject(this);
        //add inject to to application component



    }

    @Override
    protected void onResume() {
        super.onResume();
        presenter.setView(this);
        
    }


}
