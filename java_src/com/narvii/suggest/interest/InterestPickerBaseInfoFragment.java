package com.narvii.suggest.interest;

import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.model.api.ApiResponse;
import com.narvii.suggest.interest.InterestPickerFragment;
import com.narvii.util.Callback;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.widget.ACMAlertDialog;

/* loaded from: classes3.dex */
public class InterestPickerBaseInfoFragment extends InterestPickerFragment.InterestPickerBaseFragment implements View.OnClickListener {
    public static final int GENDER_TYPE_FEMALE = 2;
    public static final int GENDER_TYPE_MALE = 1;
    public static final int GENDER_TYPE_OTHER = 255;
    public static final int GENDER_TYPE_UNKNOWN = 0;
    private static final int MIN_AGE = 13;
    private static final String SELECT_AGE_EMPTY = " ";
    private static final int SELECT_AGE_EMPTY_MOCK_AGE = 11;
    private static final String SELECT_AGE_LESS_THAN_13 = "\u200e<13";
    private static final int SELECT_AGE_LESS_THAN_13_MOCK_AGE = 12;
    public static final String SUGGEST_INTEREST_AGE = "suggest_age";
    private View btGenderFemale;
    private View btGenderMale;
    private View btGenderNonBinary;
    private Button btNext;
    private int selectedAge = -1;
    private int selectedGender = 0;
    private TextView tvAge;

    private void updateButton() {
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        return null;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "GenderAge";
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.interest_picker_layout_base_info, viewGroup, false);
    }

    @Override // com.narvii.suggest.interest.InterestPickerFragment.InterestPickerBaseFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        this.btNext = (Button) view.findViewById(R.id.next_button);
        this.tvAge = (TextView) view.findViewById(R.id.interest_picker_user_age);
        this.tvAge.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.suggest.interest.-$$Lambda$InterestPickerBaseInfoFragment$bBZInnLnWDduMYgFuWBwbOSCcI8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$onViewCreated$1$InterestPickerBaseInfoFragment(view2);
            }
        });
        updateAge();
        this.btGenderMale = view.findViewById(R.id.interest_picker_gender_male);
        this.btGenderFemale = view.findViewById(R.id.interest_picker_gender_female);
        this.btGenderNonBinary = view.findViewById(R.id.interest_picker_gender_non_binary);
        this.btGenderMale.setOnClickListener(this);
        ((TextView) this.btGenderMale.findViewById(R.id.gender_text)).setText(R.string.male);
        this.btGenderFemale.setOnClickListener(this);
        ((TextView) this.btGenderFemale.findViewById(R.id.gender_text)).setText(R.string.female);
        this.btGenderNonBinary.setOnClickListener(this);
        ((TextView) this.btGenderNonBinary.findViewById(R.id.gender_text)).setText(R.string.non_binary);
        updateGender();
        updateButton();
    }

    public /* synthetic */ void lambda$onViewCreated$1$InterestPickerBaseInfoFragment(View view) {
        NumberPickerDialog numberPickerDialog = new NumberPickerDialog(getContext());
        numberPickerDialog.setValueRange(11, 100);
        numberPickerDialog.addSpecialValues(12, SELECT_AGE_LESS_THAN_13);
        numberPickerDialog.addSpecialValues(11, SELECT_AGE_EMPTY);
        int i = this.selectedAge;
        if (i == -1) {
            numberPickerDialog.setValue(11);
        } else {
            numberPickerDialog.setValue(i);
        }
        numberPickerDialog.setDoneListener(new Callback() { // from class: com.narvii.suggest.interest.-$$Lambda$InterestPickerBaseInfoFragment$kabDjzIE6xN8SPCxc3P8VjbALg0
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                this.f$0.lambda$null$0$InterestPickerBaseInfoFragment((Integer) obj);
            }
        });
        numberPickerDialog.show();
    }

    public /* synthetic */ void lambda$null$0$InterestPickerBaseInfoFragment(Integer num) {
        if (num != null) {
            if (num.intValue() == 11) {
                this.selectedAge = -1;
            } else {
                this.selectedAge = num.intValue();
            }
        }
        updateAge();
        updateButton();
    }

    @Override // com.narvii.suggest.interest.InterestPickerFragment.InterestPickerBaseFragment
    protected void doSubmit() {
        int i;
        if (this.selectedGender == 0 || (i = this.selectedAge) == -1) {
            ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
            if (this.selectedGender == 0) {
                aCMAlertDialog.setMessage(R.string.please_select_gender);
            } else {
                aCMAlertDialog.setMessage(R.string.please_select_age);
            }
            aCMAlertDialog.addButton(android.R.string.ok, null);
            aCMAlertDialog.show();
            return;
        }
        if (i < 13) {
            ACMAlertDialog aCMAlertDialog2 = new ACMAlertDialog(getContext());
            aCMAlertDialog2.setMessage(R.string.interest_picker_age_hint);
            aCMAlertDialog2.addButton(android.R.string.ok, null);
            aCMAlertDialog2.show();
            return;
        }
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.setCancelable(false);
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.suggest.interest.InterestPickerBaseInfoFragment.1
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                ((SharedPreferences) InterestPickerBaseInfoFragment.this.getService("prefs")).edit().putInt(InterestPickerBaseInfoFragment.SUGGEST_INTEREST_AGE, InterestPickerBaseInfoFragment.this.selectedAge).apply();
                Bundle bundle = new Bundle();
                bundle.putInt("selectedAge", InterestPickerBaseInfoFragment.this.selectedAge);
                bundle.putInt("selectedGender", InterestPickerBaseInfoFragment.this.selectedGender);
                InterestPickerBaseInfoFragment.this.showNext(bundle);
            }
        };
        progressDialog.failureListener = new Callback<String>() { // from class: com.narvii.suggest.interest.InterestPickerBaseInfoFragment.2
            @Override // com.narvii.util.Callback
            public void call(String str) {
                TextView textView = InterestPickerBaseInfoFragment.this.btSkip;
                if (textView != null) {
                    textView.setVisibility(0);
                }
            }
        };
        progressDialog.show();
        int i2 = this.selectedGender;
        LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("Next").extraParam("gender", i2 != 1 ? i2 != 2 ? "nonBinary" : "female" : "male").extraParam("age", Integer.valueOf(this.selectedAge)).send();
        ApiRequest.Builder builder = ApiRequest.builder();
        builder.path("/persona/profile/basic").post().param("age", Integer.valueOf(this.selectedAge)).param("gender", Integer.valueOf(this.selectedGender));
        ((ApiService) getService("api")).exec(builder.build(), progressDialog.dismissListener);
    }

    private void updateAge() {
        int i = this.selectedAge;
        if (i == -1) {
            this.tvAge.setText((CharSequence) null);
        } else if (i < 13) {
            this.tvAge.setText(SELECT_AGE_LESS_THAN_13);
        } else {
            this.tvAge.setText(String.valueOf(i));
        }
    }

    private void updateGender() {
        ((ImageView) this.btGenderMale.findViewById(R.id.gender_icon)).setImageResource(this.selectedGender == 1 ? R.drawable.ic_interest_picker_gender_male_selected : R.drawable.ic_interest_picker_gender_male);
        ImageView imageView = (ImageView) this.btGenderMale.findViewById(R.id.gender_icon);
        int i = this.selectedGender;
        imageView.setAlpha((i == 1 || i == 0) ? 1.0f : 0.7f);
        ((TextView) this.btGenderMale.findViewById(R.id.gender_text)).setTextColor(this.selectedGender == 1 ? -15599663 : -1);
        ((ImageView) this.btGenderFemale.findViewById(R.id.gender_icon)).setImageResource(this.selectedGender == 2 ? R.drawable.ic_interest_picker_gender_female_selected : R.drawable.ic_interest_picker_gender_female);
        ImageView imageView2 = (ImageView) this.btGenderFemale.findViewById(R.id.gender_icon);
        int i2 = this.selectedGender;
        imageView2.setAlpha((i2 == 2 || i2 == 0) ? 1.0f : 0.7f);
        ((TextView) this.btGenderFemale.findViewById(R.id.gender_text)).setTextColor(this.selectedGender == 2 ? -46863 : -1);
        ((ImageView) this.btGenderNonBinary.findViewById(R.id.gender_icon)).setImageResource(this.selectedGender == 255 ? R.drawable.ic_interest_picker_gender_non_binary_selected : R.drawable.ic_interest_picker_gender_non_binary);
        ImageView imageView3 = (ImageView) this.btGenderNonBinary.findViewById(R.id.gender_icon);
        int i3 = this.selectedGender;
        imageView3.setAlpha((i3 == 255 || i3 == 0) ? 1.0f : 0.7f);
        ((TextView) this.btGenderNonBinary.findViewById(R.id.gender_text)).setTextColor(this.selectedGender == 255 ? -18176 : -1);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.interest_picker_gender_female /* 2131297717 */:
                this.selectedGender = 2;
                updateGender();
                updateButton();
                break;
            case R.id.interest_picker_gender_male /* 2131297718 */:
                this.selectedGender = 1;
                updateGender();
                updateButton();
                break;
            case R.id.interest_picker_gender_non_binary /* 2131297719 */:
                this.selectedGender = 255;
                updateGender();
                updateButton();
                break;
        }
    }
}
