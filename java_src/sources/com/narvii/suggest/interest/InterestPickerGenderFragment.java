package com.narvii.suggest.interest;

import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.narvii.amino.master.R;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.Callback;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.ListDialog;

/* JADX INFO: loaded from: classes5.dex */
public class InterestPickerGenderFragment extends InterestPickerFragment.InterestPickerBaseFragment implements View.OnClickListener {
    private TextView genderTV;
    private int selectedGender = 0;

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        return null;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        return "gender_picker";
    }

    private void handleGenderPickerClick() {
        final int iIndexOf;
        GenderListDialog genderListDialog = new GenderListDialog(getParentContext(), new Callback() { // from class: com.narvii.suggest.interest.g
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                this.f2747a.lambda$handleGenderPickerClick$1((Integer) obj);
            }
        });
        int i10 = this.selectedGender;
        if (i10 != 0 && (iIndexOf = genderListDialog.genderList.indexOf(Integer.valueOf(i10))) > 0) {
            genderListDialog.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.narvii.suggest.interest.h
                @Override // android.content.DialogInterface.OnShowListener
                public final void onShow(DialogInterface dialogInterface) {
                    InterestPickerGenderFragment.lambda$handleGenderPickerClick$2(iIndexOf, dialogInterface);
                }
            });
        }
        genderListDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$doSubmit$0(String str) {
        TextView textView = this.btSkip;
        if (textView != null) {
            textView.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$handleGenderPickerClick$2(int i10, DialogInterface dialogInterface) {
        ((ListDialog) dialogInterface).getListView().setSelection(i10);
    }

    private void updateGender() {
        this.genderTV.setText("");
        int i10 = this.selectedGender;
        if (i10 == 1) {
            this.genderTV.setText(R.string.male);
        } else if (i10 == 2) {
            this.genderTV.setText(R.string.female);
        } else {
            if (i10 != 255) {
                return;
            }
            this.genderTV.setText(R.string.non_binary);
        }
    }

    @Override // com.narvii.suggest.interest.InterestPickerFragment.InterestPickerBaseFragment
    protected void doSubmit() {
        String str;
        if (this.selectedGender == 0) {
            ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
            aCMAlertDialog.setMessage(R.string.please_select_gender);
            aCMAlertDialog.addButton(android.R.string.ok, null);
            aCMAlertDialog.show();
            return;
        }
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.setCancelable(false);
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.suggest.interest.InterestPickerGenderFragment.1
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                Bundle bundle = new Bundle();
                bundle.putInt("selectedGender", InterestPickerGenderFragment.this.selectedGender);
                InterestPickerGenderFragment.this.showNext(bundle);
            }
        };
        progressDialog.failureListener = new Callback() { // from class: com.narvii.suggest.interest.f
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                this.f2746a.lambda$doSubmit$0((String) obj);
            }
        };
        progressDialog.show();
        int i10 = this.selectedGender;
        if (i10 != 1) {
            str = i10 != 2 ? "nonBinary" : "female";
        } else {
            str = "male";
        }
        LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("Next").extraParam("gender", str).send();
        ApiRequest.Builder builder = ApiRequest.builder();
        builder.path("/persona/profile/basic").post().param("gender", Integer.valueOf(this.selectedGender));
        ((ApiService) getService("api")).exec(builder.build(), progressDialog.dismissListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleGenderPickerClick$1(Integer num) {
        this.selectedGender = num.intValue();
        updateGender();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.gender) {
            handleGenderPickerClick();
        }
    }

    @Override // com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.interest_picker_layout_gender, viewGroup, false);
    }

    @Override // com.narvii.suggest.interest.InterestPickerFragment.InterestPickerBaseFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        TextView textView = (TextView) view.findViewById(R.id.gender);
        this.genderTV = textView;
        textView.setOnClickListener(this);
        ((TextView) view.findViewById(R.id.title)).setText(R.string.welcome);
        updateGender();
    }
}
