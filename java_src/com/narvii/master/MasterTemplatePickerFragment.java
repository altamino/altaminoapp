package com.narvii.master;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVApplication;
import com.narvii.master.theme.MasterThemeExtensionKt;
import com.narvii.model.api.ApiResponse;
import com.narvii.modulization.template.TemplatePickerFragment;
import com.narvii.prefs.AccountSettingFragment;
import com.narvii.util.NVToast;
import com.narvii.util.PackageUtils;
import com.narvii.util.PreferencesHelper;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.ACMAlertDialog;
import java.util.List;

/* loaded from: classes3.dex */
public class MasterTemplatePickerFragment extends TemplatePickerFragment {
    public static final int API_ERR_COMMUNITY_USER_CREATED_COMMUNITIES_EXCEED_QUOTA = 806;
    public static final int API_ERR_COMMUNITY_USER_CREATED_COMMUNITIES_VERIFY = 257;
    public ApiRequest apiRequest;
    PackageUtils packageUtils;
    public ProgressDialog progressDialog;
    PreferencesHelper sharedPreferencesHelper;

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131755020;
    }

    @Override // com.narvii.modulization.template.TemplatePickerFragment
    protected boolean isActionBarTransparent() {
        return true;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.modulization.template.TemplatePickerFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.packageUtils = new PackageUtils(getContext());
        this.sharedPreferencesHelper = new PreferencesHelper(this);
        setTitle((CharSequence) null);
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_master_create_template, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        FragmentManager fragmentManager = getFragmentManager();
        if (fragmentManager != null) {
            MasterThemeExtensionKt.addMasterThemeFragment(fragmentManager);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        ProgressDialog progressDialog = this.progressDialog;
        if (progressDialog != null) {
            progressDialog.dismiss();
            this.progressDialog = null;
        }
        super.onDestroy();
    }

    @Override // com.narvii.modulization.template.TemplatePickerFragment
    protected int getFooterHeight() {
        return getContext().getResources().getDimensionPixelSize(R.dimen.tab_bar_placeholder);
    }

    @Override // com.narvii.modulization.template.TemplatePickerFragment, android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != R.id.create_push_button) {
            return;
        }
        if (NVApplication.CLIENT_TYPE == 101) {
            if (this.packageUtils.isMasterInstalled()) {
                if (((AccountService) getService("account")).hasAccount()) {
                    createCheck(((Integer) view.getTag()).intValue());
                    return;
                } else {
                    ensureLogin(new Intent(CommunityDetailFragment.KEY_LOGIN_AHEAD));
                    return;
                }
            }
            new MasterHelper(this).showDownloadMaterDialog(null, "mastertab=create");
            return;
        }
        if (this.packageUtils.installedAcm()) {
            if (((AccountService) getService("account")).hasAccount()) {
                createCheck(((Integer) view.getTag()).intValue());
                return;
            } else {
                ensureLogin(new Intent(CommunityDetailFragment.KEY_LOGIN_AHEAD));
                return;
            }
        }
        new DownloadAcmDialog(getContext(), R.style.CustomDialogWithAnimation).show();
    }

    public void createCheck(final int i) {
        final ApiService apiService = (ApiService) getService("api");
        this.apiRequest = ApiRequest.builder().post().path("community/creatable-check").build();
        this.progressDialog = new ProgressDialog(getContext());
        this.progressDialog.show();
        this.progressDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.narvii.master.MasterTemplatePickerFragment.1
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                ApiRequest apiRequest = MasterTemplatePickerFragment.this.apiRequest;
                if (apiRequest != null) {
                    apiService.abort(apiRequest);
                }
            }
        });
        apiService.exec(this.apiRequest, new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.master.MasterTemplatePickerFragment.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                super.onFinish(apiRequest, apiResponse);
                if (MasterTemplatePickerFragment.this.getActivity() == null) {
                    return;
                }
                ProgressDialog progressDialog = MasterTemplatePickerFragment.this.progressDialog;
                if (progressDialog != null) {
                    progressDialog.dismiss();
                }
                MasterTemplatePickerFragment.this.packageUtils.createAmino(i);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i2, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i2, list, str, apiResponse, th);
                if (MasterTemplatePickerFragment.this.getActivity() == null) {
                    return;
                }
                ProgressDialog progressDialog = MasterTemplatePickerFragment.this.progressDialog;
                if (progressDialog != null) {
                    progressDialog.dismiss();
                }
                if (i2 == 806) {
                    ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(MasterTemplatePickerFragment.this.getContext());
                    aCMAlertDialog.setMessage(str);
                    aCMAlertDialog.addButton(android.R.string.ok, null);
                    aCMAlertDialog.show();
                    return;
                }
                if (i2 == 257) {
                    ACMAlertDialog aCMAlertDialog2 = new ACMAlertDialog(MasterTemplatePickerFragment.this.getContext());
                    aCMAlertDialog2.setTitle(R.string.incomplete_account_info);
                    aCMAlertDialog2.setMessage(str);
                    aCMAlertDialog2.addButton(android.R.string.cancel, null);
                    aCMAlertDialog2.addButton(R.string.prefs_settings, new View.OnClickListener() { // from class: com.narvii.master.MasterTemplatePickerFragment.2.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            MasterTemplatePickerFragment.this.startActivity(FragmentWrapperActivity.intent(AccountSettingFragment.class));
                        }
                    });
                    aCMAlertDialog2.show();
                    return;
                }
                NVToast.makeText(MasterTemplatePickerFragment.this.getContext(), str, 0).show();
            }
        });
    }
}
