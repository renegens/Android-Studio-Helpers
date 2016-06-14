package ${packageName}.view;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import ${packageName}.R;
import ${packageName}.presenter.${activityClass}MVP;

import javax.inject.Inject;



public class ${activityClass} extends Fragment implements ${activityClass}MVP.View {

		private static final String TAG = ${activityClass}.class.getName();

    @Inject
    ${activityClass}MVP.Presenter presenter;

    public ${activityClass}() {
        // Required empty public constructor
    }

    @Override
    public void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        //Dagger injection
        ((CHANGE THIS TO APPLICATION APP)getApplication()).getComponent().inject(this);

        presenter.setView(this);
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {

        View view = inflater.inflate(R.layout.fragment_main, container, false);
        // Inflate the layout for this fragment
        return view;
    }

    @Override
    public void onAttach(Context context) {
        super.onAttach(context);
        if (presenter == null) {
            presenter.setView(this);
        }
    }
}
