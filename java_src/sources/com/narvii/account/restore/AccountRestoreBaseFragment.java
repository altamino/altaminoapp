package com.narvii.account.restore;

import a0.a;
import android.R;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextWatcher;
import android.text.style.UnderlineSpan;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.narvii.account.AccountService;
import com.narvii.account.AccountUtils;
import com.narvii.account.verifyaccount.VerifyAccountChooseIdentityFragment;
import com.narvii.app.NVFragment;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.AndroidBug5497Workaround;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.statusbar.StatusBarUtils;
import com.narvii.widget.NVImageView;
import com.narvii.widget.TextInputLayout;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public abstract class AccountRestoreBaseFragment extends NVFragment implements View.OnClickListener, TextView.OnEditorActionListener, TextWatcher {
    public static final String KEY_RESTORE_ACCOUNT = "key_restore_account_type";
    public static final int TYPE_RESTORE_ACCOUNT_EMAIL = 1;
    public static final int TYPE_RESTORE_ACCOUNT_PHONE = 2;
    protected AccountUtils accountUtils;
    TextInputLayout passInputLayout;
    protected ApiRequest request;
    Button restoreBtn;
    private int restoreType;

    private void updateViews() {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
    }

    @Override // com.narvii.app.NVFragment
    public int getStatusBarAlpha() {
        return 0;
    }

    protected boolean isContentVerified() {
        return true;
    }

    protected abstract int layoutId();

    @Override // android.widget.TextView.OnEditorActionListener
    public boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
        if (i10 != 6 && (keyEvent == null || keyEvent.getKeyCode() != 66)) {
            return false;
        }
        this.restoreBtn.performClick();
        return true;
    }

    protected void setupRequestBuilder(ApiRequest.Builder builder) {
    }

    protected void setupResultIntent(Intent intent) {
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        if (this.restoreBtn != null) {
            if (isContentVerified()) {
                this.restoreBtn.setEnabled(true);
            } else {
                this.restoreBtn.setEnabled(false);
            }
        }
    }

    private void restoreAccount() {
        if (!isContentVerified()) {
            return;
        }
        final ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.show();
        AccountService accountService = (AccountService) getService("account");
        ApiRequest.Builder builderParam = ApiRequest.builder().https().post().global().path("/account/delete-request/cancel").param("secret", "0 " + this.passInputLayout.getEditContent()).param(a.o, accountService.getDeviceId());
        setupRequestBuilder(builderParam);
        ((ApiService) getService("api")).exec(builderParam.build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.account.restore.AccountRestoreBaseFragment.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                progressDialog.dismiss();
                AlertDialog alertDialog = new AlertDialog(AccountRestoreBaseFragment.this.getContext());
                alertDialog.setMessage(str);
                alertDialog.addButton(R.string.ok, 0, (View.OnClickListener) null);
                alertDialog.show();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                progressDialog.dismiss();
                AlertDialog alertDialog = new AlertDialog(AccountRestoreBaseFragment.this.getContext());
                alertDialog.setMessage(com.narvii.amino.master.R.string.account_restore_succeed_message);
                alertDialog.addButton(R.string.ok, 0, (View.OnClickListener) null);
                alertDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.narvii.account.restore.AccountRestoreBaseFragment.2.1
                    @Override // android.content.DialogInterface.OnDismissListener
                    public void onDismiss(DialogInterface dialogInterface) {
                        if (AccountRestoreBaseFragment.this.getActivity() != null) {
                            Intent intent = new Intent();
                            AccountRestoreBaseFragment.this.setupResultIntent(intent);
                            intent.putExtra("pass", AccountRestoreBaseFragment.this.passInputLayout.getEditContent());
                            AccountRestoreBaseFragment.this.getActivity().setResult(-1, intent);
                            AccountRestoreBaseFragment.this.getActivity().finish();
                        }
                    }
                });
                alertDialog.show();
            }
        });
    }

    protected void forgetPassword() {
        FragmentManager fragmentManager = getFragmentManager();
        if (fragmentManager != null) {
            FragmentTransaction fragmentTransactionQ = fragmentManager.q();
            fragmentTransactionQ.z(com.narvii.amino.master.R.anim.activity_push_left_in, com.narvii.amino.master.R.anim.activity_push_left_out, com.narvii.amino.master.R.anim.activity_push_right_in, com.narvii.amino.master.R.anim.activity_push_right_out);
            VerifyAccountChooseIdentityFragment verifyAccountChooseIdentityFragment = new VerifyAccountChooseIdentityFragment();
            Bundle bundle = new Bundle();
            bundle.putInt("verify_type", 1);
            verifyAccountChooseIdentityFragment.setArguments(bundle);
            fragmentTransactionQ.v(com.narvii.amino.master.R.id.content, verifyAccountChooseIdentityFragment, "reset").h(null).k();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != com.narvii.amino.master.R.id.forget_password) {
            if (id == com.narvii.amino.master.R.id.restore) {
                restoreAccount();
                return;
            }
            return;
        }
        forgetPassword();
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getActivity().getActionBar().hide();
        this.restoreType = getIntParam(KEY_RESTORE_ACCOUNT, 1);
        this.accountUtils = new AccountUtils(getContext());
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(layoutId(), viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onPause() {
        SoftKeyboard.hideSoftKeyboard(getContext());
        super.onPause();
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        updateViews();
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        AndroidBug5497Workaround.assistActivity(getActivity());
        NVImageView nVImageView = (NVImageView) view.findViewById(com.narvii.amino.master.R.id.bg);
        if (nVImageView != null) {
            nVImageView.setBackgroundResource(com.narvii.amino.master.R.drawable.master_login_signup_bg);
        }
        TextInputLayout textInputLayout = (TextInputLayout) view.findViewById(com.narvii.amino.master.R.id.pass_input_layout);
        this.passInputLayout = textInputLayout;
        textInputLayout.addTextChangedListener(this);
        this.passInputLayout.setInputText(getStringParam("pass"));
        this.passInputLayout.getEditText().setOnEditorActionListener(this);
        Button button = (Button) view.findViewById(com.narvii.amino.master.R.id.restore);
        this.restoreBtn = button;
        button.setOnClickListener(this);
        this.restoreBtn.setTextColor(new AccountUtils(getContext()).getAccountForegroundColor());
        view.findViewById(com.narvii.amino.master.R.id.forget_password).setOnClickListener(this);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(getString(com.narvii.amino.master.R.string.account_forget_password));
        spannableStringBuilder.setSpan(new UnderlineSpan(), 0, spannableStringBuilder.length(), 0);
        ((TextView) view.findViewById(com.narvii.amino.master.R.id.forget_password)).setText(spannableStringBuilder);
        View viewFindViewById = view.findViewById(com.narvii.amino.master.R.id.actionbar_back);
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.account.restore.AccountRestoreBaseFragment.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    AccountRestoreBaseFragment.this.getActivity().finish();
                }
            });
        }
        StatusBarUtils.addMarginTopToContentChild(view.findViewById(com.narvii.amino.master.R.id.title_bar), getStatusBarOverlaySize());
    }
}
