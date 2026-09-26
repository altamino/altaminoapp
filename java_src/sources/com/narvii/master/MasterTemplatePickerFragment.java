package com.narvii.master;

import android.R;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.narvii.account.AccountService;
import com.narvii.app.ComScoreSectionDispatcher;
import com.narvii.app.FragmentWrapperActivity;
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
import com.narvii.util.statistics.StatisticsService;
import com.narvii.widget.ACMAlertDialog;
import com.safedk.android.utils.Logger;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class MasterTemplatePickerFragment extends TemplatePickerFragment {
    public static final int API_ERR_COMMUNITY_USER_CREATED_COMMUNITIES_EXCEED_QUOTA = 806;
    public static final int API_ERR_COMMUNITY_USER_CREATED_COMMUNITIES_VERIFY = 257;
    public ApiRequest apiRequest;
    PackageUtils packageUtils;
    public ProgressDialog progressDialog;
    PreferencesHelper sharedPreferencesHelper;

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131951629;
    }

    @Override // com.narvii.modulization.template.TemplatePickerFragment
    protected boolean isActionBarTransparent() {
        return true;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    public void createCheck(final int i10) {
        final ApiService apiService = (ApiService) getService("api");
        this.apiRequest = ApiRequest.builder().post().path("community/creatable-check").build();
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        this.progressDialog = progressDialog;
        progressDialog.show();
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
            public void onFail(ApiRequest apiRequest, int i11, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i11, list, str, apiResponse, th);
                if (MasterTemplatePickerFragment.this.getActivity() == null) {
                    return;
                }
                ProgressDialog progressDialog2 = MasterTemplatePickerFragment.this.progressDialog;
                if (progressDialog2 != null) {
                    progressDialog2.dismiss();
                }
                if (i11 == 806) {
                    ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(MasterTemplatePickerFragment.this.getContext());
                    aCMAlertDialog.setMessage(str);
                    aCMAlertDialog.addButton(R.string.ok, null);
                    aCMAlertDialog.show();
                    return;
                }
                if (i11 == 257) {
                    ACMAlertDialog aCMAlertDialog2 = new ACMAlertDialog(MasterTemplatePickerFragment.this.getContext());
                    aCMAlertDialog2.setTitle(com.narvii.amino.master.R.string.incomplete_account_info);
                    aCMAlertDialog2.setMessage(str);
                    aCMAlertDialog2.addButton(R.string.cancel, null);
                    aCMAlertDialog2.addButton(com.narvii.amino.master.R.string.prefs_settings, new View.OnClickListener() { // from class: com.narvii.master.MasterTemplatePickerFragment.2.1
                        public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
                            Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
                            if (p1 == null) {
                                return;
                            }
                            p0.startActivity(p1);
                        }

                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(MasterTemplatePickerFragment.this, FragmentWrapperActivity.intent(AccountSettingFragment.class));
                        }
                    });
                    aCMAlertDialog2.show();
                    ((StatisticsService) MasterTemplatePickerFragment.this.getService("statistics")).event("Incomplete Account Info").param("Template", i10).userPropInc("Incomplete Account Info Total");
                    return;
                }
                NVToast.makeText(MasterTemplatePickerFragment.this.getContext(), str, 0).show();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                super.onFinish(apiRequest, apiResponse);
                if (MasterTemplatePickerFragment.this.getActivity() == null) {
                    return;
                }
                ProgressDialog progressDialog2 = MasterTemplatePickerFragment.this.progressDialog;
                if (progressDialog2 != null) {
                    progressDialog2.dismiss();
                }
                MasterTemplatePickerFragment.this.packageUtils.createAmino(i10);
            }
        });
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
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
        return getContext().getResources().getDimensionPixelSize(com.narvii.amino.master.R.dimen.tab_bar_placeholder);
    }

    @Override // com.narvii.modulization.template.TemplatePickerFragment, android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == com.narvii.amino.master.R.id.create_push_button) {
            ((StatisticsService) getService("statistics")).event("Downloads or Opens ACM").param("Template", ((Integer) view.getTag()).intValue()).userPropInc("ACM Button Tapped Total");
            if (this.packageUtils.installedAcm()) {
                if (((AccountService) getService("account")).hasAccount()) {
                    createCheck(((Integer) view.getTag()).intValue());
                    return;
                } else {
                    ensureLogin(new Intent(CommunityDetailFragment.KEY_LOGIN_AHEAD));
                    return;
                }
            }
            new DownloadAcmDialog(getContext(), com.narvii.amino.master.R.style.CustomDialogWithAnimation).show();
        }
    }

    @Override // com.narvii.modulization.template.TemplatePickerFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ComScoreSectionDispatcher.INSTANCE.sectionChangeToNone();
        this.packageUtils = new PackageUtils(getContext());
        this.sharedPreferencesHelper = new PreferencesHelper(this);
        setTitle((CharSequence) null);
        if (bundle == null) {
            ((StatisticsService) getService("statistics")).event("Create Your Amino Tapped").userPropInc("Create Your Amino Tapped Total");
        }
    }

    @Override // com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(com.narvii.amino.master.R.layout.fragment_master_create_template, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        FragmentManager fragmentManager = getFragmentManager();
        if (fragmentManager != null) {
            MasterThemeExtensionKt.addMasterThemeFragment(fragmentManager);
        }
    }
}
