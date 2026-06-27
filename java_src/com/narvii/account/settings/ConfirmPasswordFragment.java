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
import com.narvii.account.AccountResponseListener;
import com.narvii.account.AccountService;
import com.narvii.account.AccountUtils;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVFragment;
import com.narvii.model.api.AccountResponse;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.AccountWebUtils;
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

/* loaded from: classes2.dex */
public abstract class ConfirmPasswordFragment extends NVFragment {
    public static final int ACTION_TYPE_CONNECT = 1;
    public static final int ACTION_TYPE_DISCONNECT = 2;
    AccountUtils accountUtils;
    protected int actionType;
    TextView forgerPassword;
    private final AccountResponseListener listener = new AccountResponseListener(this) { // from class: com.narvii.account.settings.ConfirmPasswordFragment.4
        @Override // com.narvii.account.AccountResponseListener, com.narvii.util.http.ApiResponseListener
        public void onFinish(ApiRequest apiRequest, AccountResponse accountResponse) throws Exception {
            super.onFinish(apiRequest, accountResponse);
            ProgressDialog progressDialog = ConfirmPasswordFragment.this.progressDialog;
            if (progressDialog != null) {
                progressDialog.dismiss();
            }
            if (ConfirmPasswordFragment.this.getActivity() != null) {
                ConfirmPasswordFragment.this.getActivity().finish();
            }
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
            ProgressDialog progressDialog = ConfirmPasswordFragment.this.progressDialog;
            if (progressDialog != null) {
                progressDialog.dismiss();
            }
            NVToast.makeText(ConfirmPasswordFragment.this.getContext(), str, 0).show();
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

    protected abstract void performLogin();

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.confirm_password, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.accountUtils = new AccountUtils(getContext());
        this.actionType = getIntParam("actionType");
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        setTitle(getThirdPartyAccountName());
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        AndroidBug5497Workaround.assistActivity(getActivity());
        this.textLoadingLayout = (TextLoadingLayout) view.findViewById(R.id.text_loading);
        this.textLoadingLayout.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.account.settings.ConfirmPasswordFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                ConfirmPasswordFragment confirmPasswordFragment = ConfirmPasswordFragment.this;
                confirmPasswordFragment.pass = confirmPasswordFragment.passEdit.getText().toString();
                ConfirmPasswordFragment confirmPasswordFragment2 = ConfirmPasswordFragment.this;
                confirmPasswordFragment2.progressDialog = new ProgressDialog(confirmPasswordFragment2.getContext());
                ConfirmPasswordFragment.this.progressDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.account.settings.ConfirmPasswordFragment.1.1
                    @Override // android.content.DialogInterface.OnCancelListener
                    public void onCancel(DialogInterface dialogInterface) {
                        if (ConfirmPasswordFragment.this.request != null) {
                            ((ApiService) ConfirmPasswordFragment.this.getService("api")).abort(ConfirmPasswordFragment.this.request);
                        }
                    }
                });
                ConfirmPasswordFragment.this.progressDialog.show();
                ConfirmPasswordFragment confirmPasswordFragment3 = ConfirmPasswordFragment.this;
                confirmPasswordFragment3.validatePassword(confirmPasswordFragment3.pass);
            }
        });
        this.textLoadingLayout.setEnabled(false);
        this.passEdit = (EditText) view.findViewById(R.id.edit_pass);
        this.passEdit.addTextChangedListener(new TextWatcher() { // from class: com.narvii.account.settings.ConfirmPasswordFragment.2
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (ConfirmPasswordFragment.this.textLoadingLayout.isLoading()) {
                    return;
                }
                String string = editable.toString();
                ConfirmPasswordFragment confirmPasswordFragment = ConfirmPasswordFragment.this;
                confirmPasswordFragment.textLoadingLayout.setEnabled(confirmPasswordFragment.accountUtils.isValidPassword(string));
            }
        });
        this.titleView = (TextView) view.findViewById(R.id.title);
        int i = this.actionType;
        if (i == 1) {
            this.titleView.setText(getString(R.string.enter_password_to_link_account, getString(getThirdPartyAccountName()).toLowerCase(Locale.getDefault())));
        } else if (i == 2) {
            this.titleView.setText(getString(R.string.enter_password_to_remove_account, getString(getThirdPartyAccountName()).toLowerCase(Locale.getDefault())));
        }
        this.forgerPassword = (TextView) view.findViewById(R.id.forget_password);
        this.forgerPassword.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.account.settings.ConfirmPasswordFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                try {
                    AccountWebUtils.openForgetPasswordPage(ConfirmPasswordFragment.this);
                } catch (Exception e) {
                    Log.e(e.getMessage());
                }
            }
        });
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        this.progressDialog = null;
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void validatePassword(String str) {
        AccountService accountService = (AccountService) getService("account");
        ApiService apiService = (ApiService) getService("api");
        ApiRequest.Builder builderParam = ApiRequest.builder().https().global().post().path("/auth/verify-password").param("deviceID", accountService.getDeviceId());
        if (!TextUtils.isEmpty(str)) {
            builderParam.param("secret", "0 " + str);
        }
        this.request = builderParam.build();
        apiService.exec(this.request, new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.account.settings.ConfirmPasswordFragment.5
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                ConfirmPasswordFragment confirmPasswordFragment = ConfirmPasswordFragment.this;
                int i = confirmPasswordFragment.actionType;
                if (i != 1) {
                    if (i != 2) {
                        return;
                    }
                    confirmPasswordFragment.disconnectAccount();
                } else {
                    ProgressDialog progressDialog = confirmPasswordFragment.progressDialog;
                    if (progressDialog != null) {
                        progressDialog.dismiss();
                    }
                    ConfirmPasswordFragment.this.performLogin();
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                NVToast.makeText(ConfirmPasswordFragment.this.getContext(), str2, 0).show();
                ProgressDialog progressDialog = ConfirmPasswordFragment.this.progressDialog;
                if (progressDialog != null) {
                    progressDialog.dismiss();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void disconnectAccount() {
        AccountService accountService = (AccountService) getService("account");
        ApiService apiService = (ApiService) getService("api");
        ApiRequest.Builder builder = ApiRequest.builder();
        builder.https().post().global();
        builder.path("/auth/disconnect");
        builder.param("deviceID", accountService.getDeviceId());
        builder.param("secret", "0 " + this.pass);
        builder.param("type", Integer.valueOf(getAuthType()));
        this.request = builder.build();
        apiService.exec(this.request, this.listener);
    }

    protected void connectAccount(String str) {
        this.progressDialog.show();
        AccountService accountService = (AccountService) getService("account");
        ApiService apiService = (ApiService) getService("api");
        ApiRequest.Builder builder = ApiRequest.builder();
        builder.https().post().global();
        builder.path("/auth/connect");
        builder.param("deviceID", accountService.getDeviceId());
        builder.param("secret", "0 " + this.pass);
        builder.param("secret2", getAuthType() + " " + str);
        this.request = builder.build();
        apiService.exec(this.request, this.listener);
    }

    protected void onConnectError(String str) {
        NVToast.makeText(getContext(), str, 0).show();
        ProgressDialog progressDialog = this.progressDialog;
        if (progressDialog != null) {
            progressDialog.dismiss();
        }
    }

    protected void onConnectCancel() {
        ProgressDialog progressDialog = this.progressDialog;
        if (progressDialog != null) {
            progressDialog.dismiss();
        }
    }
}
