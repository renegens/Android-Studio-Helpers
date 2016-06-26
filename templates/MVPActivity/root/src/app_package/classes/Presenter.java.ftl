package ${packageName}.presenter;


public class ${activityClass}Presenter implements ${activityClass}MVP.Presenter {

		private static final String TAG = ${activityClass}Presenter.class.getName();

    @Nullable
    private ${activityClass}MVP.View view;
		private ${activityClass}MVP.Model model;


    public ${activityClass}Presenter(${activityClass}MVP.Model model) {
        this.model = model;
    }

    @Override
    public void setView(${activityClass}MVP.View view) {
        this.view = view;
    }

}
