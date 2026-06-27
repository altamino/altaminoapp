package com.narvii.account.restore;

import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
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
import com.github.mmin18.widget.RealtimeBlurLayout;
import com.narvii.account.AccountService;
import com.narvii.account.AccountUtils;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVApplication;
import com.narvii.app.NVFragment;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.AndroidBug5497Workaround;
import com.narvii.util.PaletteUtils;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.image.NVImageLoader;
import com.narvii.util.statusbar.StatusBarUtils;
import com.narvii.widget.NVImageView;
import com.narvii.widget.TextInputLayout;
import java.util.List;

/* loaded from: classes2.dex */
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
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    protected void forgetPassword() {
    }

    @Override // com.narvii.app.NVFragment
    public int getStatusBarAlpha() {
        return 0;
    }

    protected boolean isContentVerified() {
        return true;
    }

    protected abstract int layoutId();

    protected void setupRequestBuilder(ApiRequest.Builder builder) {
    }

    protected void setupResultIntent(Intent intent) {
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getActivity().getActionBar().hide();
        this.restoreType = getIntParam(KEY_RESTORE_ACCOUNT, 1);
        this.accountUtils = new AccountUtils(getContext());
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(layoutId(), viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        AndroidBug5497Workaround.assistActivity(getActivity());
        NVImageView nVImageView = (NVImageView) view.findViewById(R.id.bg);
        RealtimeBlurLayout realtimeBlurLayout = (RealtimeBlurLayout) view.findViewById(R.id.nv_realtime_blur);
        if (NVApplication.CLIENT_TYPE == 101) {
            realtimeBlurLayout.setVisibility(0);
            Rect rect = new Rect();
            if (isAdded()) {
                getActivity().getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
            }
            Bitmap local = ((NVImageLoader) getService("imageLoader")).getLocal("assets://icon-community.jpg", rect.width() / 2, rect.height() / 2, true);
            if (nVImageView != null) {
                nVImageView.setImageDrawable(local == null ? null : new BitmapDrawable(local));
            }
            if (local != null && PaletteUtils.isLightTone(local)) {
                realtimeBlurLayout.setOverlayColor(570425344);
            }
        } else if (nVImageView != null) {
            nVImageView.setBackgroundResource(R.drawable.master_login_signup_bg);
        }
        this.passInputLayout = (TextInputLayout) view.findViewById(R.id.pass_input_layout);
        this.passInputLayout.addTextChangedListener(this);
        this.passInputLayout.setInputText(getStringParam("pass"));
        this.passInputLayout.getEditText().setOnEditorActionListener(this);
        this.restoreBtn = (Button) view.findViewById(R.id.restore);
        this.restoreBtn.setOnClickListener(this);
        this.restoreBtn.setTextColor(new AccountUtils(getContext()).getAccountForegroundColor());
        view.findViewById(R.id.forget_password).setOnClickListener(this);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(getString(R.string.account_forget_password));
        spannableStringBuilder.setSpan(new UnderlineSpan(), 0, spannableStringBuilder.length(), 0);
        ((TextView) view.findViewById(R.id.forget_password)).setText(spannableStringBuilder);
        View viewFindViewById = view.findViewById(R.id.actionbar_back);
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.account.restore.AccountRestoreBaseFragment.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    AccountRestoreBaseFragment.this.getActivity().finish();
                }
            });
        }
        StatusBarUtils.addMarginTopToContentChild(view.findViewById(R.id.title_bar), getStatusBarOverlaySize());
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onPause() {
        SoftKeyboard.hideSoftKeyboard(getContext());
        super.onPause();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.forget_password) {
            forgetPassword();
        } else {
            if (id != R.id.restore) {
                return;
            }
            restoreAccount();
        }
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 6 && (keyEvent == null || keyEvent.getKeyCode() != 66)) {
            return false;
        }
        this.restoreBtn.performClick();
        return true;
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        updateViews();
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
        if (isContentVerified()) {
            final ProgressDialog progressDialog = new ProgressDialog(getContext());
            progressDialog.show();
            AccountService accountService = (AccountService) getService("account");
            ApiRequest.Builder builderParam = ApiRequest.builder().https().post().global().path("/account/delete-request/cancel").param("secret", "0 " + this.passInputLayout.getEditContent()).param("deviceID", accountService.getDeviceId());
            setupRequestBuilder(builderParam);
            ((ApiService) getService("api")).exec(builderParam.build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.account.restore.AccountRestoreBaseFragment.2
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                    progressDialog.dismiss();
                    AlertDialog alertDialog = new AlertDialog(AccountRestoreBaseFragment.this.getContext());
                    alertDialog.setMessage(R.string.account_restore_succeed_message);
                    alertDialog.addButton(android.R.string.ok, 0, (View.OnClickListener) null);
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

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    progressDialog.dismiss();
                    AlertDialog alertDialog = new AlertDialog(AccountRestoreBaseFragment.this.getContext());
                    alertDialog.setMessage(str);
                    alertDialog.addButton(android.R.string.ok, 0, (View.OnClickListener) null);
                    alertDialog.show();
                }
            });
        }
    }
}
