package com.narvii.account.settings;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.narvii.account.AccountResponseListener;
import com.narvii.account.AccountService;
import com.narvii.account.AccountUtils;
import com.narvii.account.verifyaccount.VerifyAccountChooseIdentityFragment;
import com.narvii.amino.master.R;
import com.narvii.app.NVFragment;
import com.narvii.model.api.AccountResponse;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.AndroidBug5497Workaround;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.TextLoadingLayout;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ThirdPartyConfirmPasswordFragment extends NVFragment {
    public static final int ACTION_TYPE_CONNECT = 1;
    public static final int ACTION_TYPE_DISCONNECT = 2;
    AccountUtils accountUtils;
    protected int actionType;
    TextView forgerPassword;
    private final AccountResponseListener listener = new AccountResponseListener(this) { // from class: com.narvii.account.settings.ThirdPartyConfirmPasswordFragment.4
        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
            ProgressDialog progressDialog = ThirdPartyConfirmPasswordFragment.this.progressDialog;
            if (progressDialog != null) {
                progressDialog.dismiss();
            }
            NVToast.makeText(ThirdPartyConfirmPasswordFragment.this.getContext(), str, 0).show();
        }

        @Override // com.narvii.account.AccountResponseListener, com.narvii.util.http.ApiResponseListener
        public void onFinish(ApiRequest apiRequest, AccountResponse accountResponse) throws Exception {
            super.onFinish(apiRequest, accountResponse);
            ProgressDialog progressDialog = ThirdPartyConfirmPasswordFragment.this.progressDialog;
            if (progressDialog != null) {
                progressDialog.dismiss();
            }
            if (ThirdPartyConfirmPasswordFragment.this.getActivity() != null) {
                ThirdPartyConfirmPasswordFragment.this.getActivity().finish();
            }
        }
    };
    String pass;
    EditText passEdit;
    ProgressDialog progressDialog;
    private ApiRequest request;
    protected TextLoadingLayout textLoadingLayout;
    TextView titleView;

    protected abstract int getAuthType();

    protected abstract int getThirdPartyAccountName();

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        this.progressDialog = null;
        super.onDestroy();
    }

    protected abstract void performLogin();

    /* JADX INFO: Access modifiers changed from: private */
    public void disconnectAccount() {
        AccountService accountService = (AccountService) getService("account");
        ApiService apiService = (ApiService) getService("api");
        ApiRequest.Builder builder = ApiRequest.builder();
        builder.https().post().global();
        builder.path("/auth/disconnect");
        builder.param(a0.a.o, accountService.getDeviceId());
        builder.param("secret", "0 " + this.pass);
        builder.param("type", Integer.valueOf(getAuthType()));
        ApiRequest apiRequestBuild = builder.build();
        this.request = apiRequestBuild;
        apiService.exec(apiRequestBuild, this.listener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void validatePassword(String str) {
        AccountService accountService = (AccountService) getService("account");
        ApiService apiService = (ApiService) getService("api");
        ApiRequest.Builder builderParam = ApiRequest.builder().https().global().post().path("/auth/verify-password").param(a0.a.o, accountService.getDeviceId());
        if (!TextUtils.isEmpty(str)) {
            builderParam.param("secret", "0 " + str);
        }
        ApiRequest apiRequestBuild = builderParam.build();
        this.request = apiRequestBuild;
        apiService.exec(apiRequestBuild, new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.account.settings.ThirdPartyConfirmPasswordFragment.5
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                NVToast.makeText(ThirdPartyConfirmPasswordFragment.this.getContext(), str2, 0).show();
                ProgressDialog progressDialog = ThirdPartyConfirmPasswordFragment.this.progressDialog;
                if (progressDialog != null) {
                    progressDialog.dismiss();
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                ThirdPartyConfirmPasswordFragment thirdPartyConfirmPasswordFragment = ThirdPartyConfirmPasswordFragment.this;
                int i10 = thirdPartyConfirmPasswordFragment.actionType;
                if (i10 != 1) {
                    if (i10 != 2) {
                        return;
                    }
                    thirdPartyConfirmPasswordFragment.disconnectAccount();
                } else {
                    ProgressDialog progressDialog = thirdPartyConfirmPasswordFragment.progressDialog;
                    if (progressDialog != null) {
                        progressDialog.dismiss();
                    }
                    ThirdPartyConfirmPasswordFragment.this.performLogin();
                }
            }
        });
    }

    protected void connectAccount(String str) {
        this.progressDialog.show();
        AccountService accountService = (AccountService) getService("account");
        ApiService apiService = (ApiService) getService("api");
        ApiRequest.Builder builder = ApiRequest.builder();
        builder.https().post().global();
        builder.path("/auth/connect");
        builder.param(a0.a.o, accountService.getDeviceId());
        builder.param("secret", "0 " + this.pass);
        builder.param("secret2", getAuthType() + " " + str);
        ApiRequest apiRequestBuild = builder.build();
        this.request = apiRequestBuild;
        apiService.exec(apiRequestBuild, this.listener);
    }

    protected void onConnectCancel() {
        ProgressDialog progressDialog = this.progressDialog;
        if (progressDialog != null) {
            progressDialog.dismiss();
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        setTitle(getThirdPartyAccountName());
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        super.onActivityResult(i10, i11, intent);
    }

    protected void onConnectError(String str) {
        NVToast.makeText(getContext(), str, 0).show();
        ProgressDialog progressDialog = this.progressDialog;
        if (progressDialog != null) {
            progressDialog.dismiss();
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.accountUtils = new AccountUtils(getContext());
        this.actionType = getIntParam("actionType");
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.third_party_confirm_password, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        AndroidBug5497Workaround.assistActivity(getActivity());
        TextLoadingLayout textLoadingLayout = (TextLoadingLayout) view.findViewById(R.id.text_loading);
        this.textLoadingLayout = textLoadingLayout;
        textLoadingLayout.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.account.settings.ThirdPartyConfirmPasswordFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                ThirdPartyConfirmPasswordFragment thirdPartyConfirmPasswordFragment = ThirdPartyConfirmPasswordFragment.this;
                thirdPartyConfirmPasswordFragment.pass = thirdPartyConfirmPasswordFragment.passEdit.getText().toString();
                ThirdPartyConfirmPasswordFragment.this.progressDialog = new ProgressDialog(ThirdPartyConfirmPasswordFragment.this.getContext());
                ThirdPartyConfirmPasswordFragment.this.progressDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.account.settings.ThirdPartyConfirmPasswordFragment.1.1
                    @Override // android.content.DialogInterface.OnCancelListener
                    public void onCancel(DialogInterface dialogInterface) {
                        if (ThirdPartyConfirmPasswordFragment.this.request != null) {
                            ((ApiService) ThirdPartyConfirmPasswordFragment.this.getService("api")).abort(ThirdPartyConfirmPasswordFragment.this.request);
                        }
                    }
                });
                ThirdPartyConfirmPasswordFragment.this.progressDialog.show();
                ThirdPartyConfirmPasswordFragment thirdPartyConfirmPasswordFragment2 = ThirdPartyConfirmPasswordFragment.this;
                thirdPartyConfirmPasswordFragment2.validatePassword(thirdPartyConfirmPasswordFragment2.pass);
            }
        });
        this.textLoadingLayout.setEnabled(false);
        EditText editText = (EditText) view.findViewById(R.id.edit_pass);
        this.passEdit = editText;
        editText.addTextChangedListener(new TextWatcher() { // from class: com.narvii.account.settings.ThirdPartyConfirmPasswordFragment.2
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (ThirdPartyConfirmPasswordFragment.this.textLoadingLayout.isLoading()) {
                    return;
                }
                String string = editable.toString();
                ThirdPartyConfirmPasswordFragment thirdPartyConfirmPasswordFragment = ThirdPartyConfirmPasswordFragment.this;
                thirdPartyConfirmPasswordFragment.textLoadingLayout.setEnabled(thirdPartyConfirmPasswordFragment.accountUtils.isValidPassword(string));
            }
        });
        TextView textView = (TextView) view.findViewById(R.id.title);
        this.titleView = textView;
        int i10 = this.actionType;
        if (i10 != 1) {
            if (i10 == 2) {
                textView.setText(getString(R.string.enter_password_to_remove_account, getString(getThirdPartyAccountName()).toLowerCase(Locale.getDefault())));
            }
        } else {
            textView.setText(getString(R.string.enter_password_to_link_account, getString(getThirdPartyAccountName()).toLowerCase(Locale.getDefault())));
        }
        TextView textView2 = (TextView) view.findViewById(R.id.forget_password);
        this.forgerPassword = textView2;
        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.account.settings.ThirdPartyConfirmPasswordFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                try {
                    FragmentManager fragmentManager = ThirdPartyConfirmPasswordFragment.this.getFragmentManager();
                    if (fragmentManager != null) {
                        FragmentTransaction fragmentTransactionQ = fragmentManager.q();
                        fragmentTransactionQ.z(R.anim.activity_push_left_in, R.anim.activity_push_left_out, R.anim.activity_push_right_in, R.anim.activity_push_right_out);
                        VerifyAccountChooseIdentityFragment verifyAccountChooseIdentityFragment = new VerifyAccountChooseIdentityFragment();
                        Bundle bundle2 = new Bundle();
                        bundle2.putInt("verify_type", 1);
                        verifyAccountChooseIdentityFragment.setArguments(bundle2);
                        fragmentTransactionQ.v(R.id.content, verifyAccountChooseIdentityFragment, "reset").h(null).k();
                    }
                } catch (Exception e) {
                    Log.e(e.getMessage());
                }
            }
        });
    }
}
