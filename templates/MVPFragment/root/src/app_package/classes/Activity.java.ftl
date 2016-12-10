package ${packageName}.${featureName};

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import ${packageName}.${featureName}R;
import ${packageName}.${featureName}.${activityClass}MVP;

import javax.inject.Inject;



public class ${activityClass} extends Fragment implements ${activityClass}MVP.View {

	private static final String TAG = ${activityClass}.class.getName();

    @Inject
    ${activityClass}MVP.Presenter presenter;

    public ${activityClass}() {
        // Required empty public constructor
    }

    public static ${activityClass} newInstance(int someInt) {
    ${activityClass} fragment = new ${activityClass}();
    Bundle args = new Bundle();
    args.putInt("someInt", someInt);
    fragment.setArguments(args);
    return fragment;
}

    @Override
    public void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        //Dagger injection
        (("CHANGE THIS TO APPLICATION APP") getActivity().getApplication()).getComponent().inject(this);

    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {

        View view = inflater.inflate(R.layout.${layoutName}, container, false);
        // Inflate the layout for this fragment
        return view;
    }

    
    @Override
    public void onStart() {
        super.onStart();
        presenter.setView(this);
        
    }
}
