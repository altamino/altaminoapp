package com.narvii.account.settings;

import android.app.ActionBar;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentTransaction;
import com.narvii.account.AccountBaseFragment;
import com.narvii.account.verifyaccount.AddIdentityVerifyAccount;
import com.narvii.account.verifyaccount.CodeVerifyFragment;
import com.narvii.account.verifyaccount.ConfirmPasswordFragment;
import com.narvii.account.verifyaccount.EmailIdentity;
import com.narvii.account.verifyaccount.UpdateIdentityVerifyAccount;
import com.narvii.account.verifyaccount.VerifyAccountType;
import com.narvii.account.verifyaccount.VerifyAccountTypeKt;
import com.narvii.account.verifyaccount.VerifyCodeSharedPrefsHelper;
import com.narvii.amino.databinding.FragmentUpdateEmailSettingsBinding;
import com.narvii.amino.master.R;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.FragmentExtensionsKt;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.NameValuePair;
import java.util.List;
import kotlin.jvm.internal.g0;
import kotlin.jvm.internal.q0;
import kotlin.jvm.internal.t;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.o;

/* JADX INFO: loaded from: classes7.dex */
public final class UpdateEmailSettingsFragment extends AccountSettingsBaseFragment {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {q0.g(new g0(UpdateEmailSettingsFragment.class, "binding", "getBinding()Lcom/narvii/amino/databinding/FragmentUpdateEmailSettingsBinding;", 0))};

    @NotNull
    private final kotlin.properties.d binding$delegate = FragmentExtensionsKt.viewBinding(this, UpdateEmailSettingsFragment$binding$2.INSTANCE);

    @NotNull
    private final m emailText$delegate = o.a(new UpdateEmailSettingsFragment$emailText$2(this));
    public VerifyCodeSharedPrefsHelper verifyCodeHelper;

    public final void setVerifyCodeHelper(@NotNull VerifyCodeSharedPrefsHelper verifyCodeSharedPrefsHelper) {
        t.j(verifyCodeSharedPrefsHelper, "<set-?>");
        this.verifyCodeHelper = verifyCodeSharedPrefsHelper;
    }

    private final FragmentUpdateEmailSettingsBinding getBinding() {
        return (FragmentUpdateEmailSettingsBinding) this.binding$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final void goToAddEmail() {
        goToConfirmPassword(new AddIdentityVerifyAccount(EmailIdentity.INSTANCE));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void goToCodeVerify() {
        if (isAdded()) {
            try {
                FragmentTransaction fragmentTransactionQ = getParentFragmentManager().q();
                fragmentTransactionQ.z(R.anim.activity_push_left_in, R.anim.activity_push_left_out, R.anim.activity_push_right_in, R.anim.activity_push_right_out);
                CodeVerifyFragment codeVerifyFragment = new CodeVerifyFragment();
                String emailText = getEmailText();
                if (emailText != null) {
                    Bundle bundle = new Bundle();
                    bundle.putInt(CodeVerifyFragment.KEY_IDENTITY_TO_VERIFY_TYPE, 2);
                    bundle.putString("email", emailText);
                    bundle.putInt("verify_type", 7);
                    bundle.putInt("set_identity_type", 2);
                    bundle.putInt(CodeVerifyFragment.KEY_CHECK_LEVEL, 2);
                    bundle.putString(AccountBaseFragment.KEY_THIRD_PART_SECRET, getStringParam(AccountBaseFragment.KEY_THIRD_PART_SECRET));
                    bundle.putBoolean(AccountBaseFragment.KEY_IS_THIRD_PART, getBooleanParam(AccountBaseFragment.KEY_IS_THIRD_PART));
                    bundle.putString(AccountBaseFragment.KEY_SIGN_UP_METHOD, getStringParam(AccountBaseFragment.KEY_SIGN_UP_METHOD));
                    bundle.putString(AccountBaseFragment.KEY_NICKNAME, getStringParam(AccountBaseFragment.KEY_NICKNAME));
                    bundle.putString(AccountBaseFragment.KEY_THIRDPARTY_AVATAR_URL, getStringParam(AccountBaseFragment.KEY_THIRDPARTY_AVATAR_URL));
                    codeVerifyFragment.setArguments(bundle);
                    Integer containerId = getContainerId();
                    if (containerId != null) {
                        t.g(containerId);
                        fragmentTransactionQ.u(containerId.intValue(), codeVerifyFragment).h(null).k();
                    }
                }
            } catch (IllegalStateException e) {
                Log.e(e.getLocalizedMessage());
            }
        }
    }

    private final void goToUpdateEmail() {
        goToConfirmPassword(new UpdateIdentityVerifyAccount(EmailIdentity.INSTANCE));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$0(UpdateEmailSettingsFragment this$0, View view) {
        t.j(this$0, "this$0");
        this$0.goToAddEmail();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$1(UpdateEmailSettingsFragment this$0, View view) {
        t.j(this$0, "this$0");
        this$0.goToUpdateEmail();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$2(UpdateEmailSettingsFragment this$0, View view) {
        t.j(this$0, "this$0");
        this$0.requestSecurityCode();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void updateViews$lambda$4$lambda$3(UpdateEmailSettingsFragment this$0, View view) {
        t.j(this$0, "this$0");
        FragmentActivity activity = this$0.getActivity();
        if (activity != null) {
            activity.onBackPressed();
        }
    }

    @Nullable
    public final String getEmailText() {
        return (String) this.emailText$delegate.getValue();
    }

    @NotNull
    public final VerifyCodeSharedPrefsHelper getVerifyCodeHelper() {
        VerifyCodeSharedPrefsHelper verifyCodeSharedPrefsHelper = this.verifyCodeHelper;
        if (verifyCodeSharedPrefsHelper != null) {
            return verifyCodeSharedPrefsHelper;
        }
        t.B("verifyCodeHelper");
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        t.j(inflater, "inflater");
        LinearLayout root = getBinding().getRoot();
        t.i(root, "getRoot(...)");
        return root;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        t.j(view, "view");
        super.onViewCreated(view, bundle);
        updateViews();
        getBinding().addEmail.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.account.settings.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                UpdateEmailSettingsFragment.onViewCreated$lambda$0(this.f1753a, view2);
            }
        });
        getBinding().changeEmail.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.account.settings.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                UpdateEmailSettingsFragment.onViewCreated$lambda$1(this.f1754a, view2);
            }
        });
        getBinding().verifyEmail.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.account.settings.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                UpdateEmailSettingsFragment.onViewCreated$lambda$2(this.f1755a, view2);
            }
        });
    }

    private final void goToConfirmPassword(VerifyAccountType verifyAccountType) {
        try {
            FragmentTransaction fragmentTransactionQ = getParentFragmentManager().q();
            ConfirmPasswordFragment confirmPasswordFragment = new ConfirmPasswordFragment();
            fragmentTransactionQ.z(R.anim.activity_push_left_in, R.anim.activity_push_left_out, R.anim.activity_push_right_in, R.anim.activity_push_right_out);
            Bundle bundle = new Bundle();
            bundle.putInt("verify_type", VerifyAccountTypeKt.getIntValue(verifyAccountType));
            bundle.putInt("set_identity_type", 2);
            confirmPasswordFragment.setArguments(bundle);
            Integer containerId = getContainerId();
            if (containerId != null) {
                t.g(containerId);
                fragmentTransactionQ.u(containerId.intValue(), confirmPasswordFragment).h(null).k();
            }
        } catch (IllegalStateException e) {
            String localizedMessage = e.getLocalizedMessage();
            t.g(localizedMessage);
            Log.e(localizedMessage);
        }
    }

    private final void requestSecurityCode() {
        requestSecurityCode(1, getEmailText(), 1, new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.account.settings.UpdateEmailSettingsFragment.requestSecurityCode.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(@NotNull ApiRequest req, int i10, @Nullable List<? extends NameValuePair> list, @NotNull String message, @Nullable ApiResponse apiResponse, @NotNull Throwable t5) {
                t.j(req, "req");
                t.j(message, "message");
                t.j(t5, "t");
                super.onFail(req, i10, list, message, apiResponse, t5);
                NVToast.makeText(UpdateEmailSettingsFragment.this.getContext(), message, 1).show();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(@NotNull ApiRequest req, @Nullable ApiResponse apiResponse) throws Exception {
                t.j(req, "req");
                super.onFinish(req, apiResponse);
                String emailText = UpdateEmailSettingsFragment.this.getEmailText();
                if (emailText != null) {
                    UpdateEmailSettingsFragment updateEmailSettingsFragment = UpdateEmailSettingsFragment.this;
                    updateEmailSettingsFragment.getVerifyCodeHelper().updateEmailVerifyTime(emailText);
                    updateEmailSettingsFragment.goToCodeVerify();
                }
            }
        });
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        Window window;
        ActionBar actionBar;
        super.onActivityCreated(bundle);
        FragmentActivity activity = getActivity();
        if (activity != null && (actionBar = activity.getActionBar()) != null) {
            actionBar.hide();
        }
        FragmentActivity activity2 = getActivity();
        if (activity2 != null && (window = activity2.getWindow()) != null) {
            window.setSoftInputMode(32);
        }
    }

    @Override // com.narvii.account.settings.AccountSettingsBaseFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Context context = getContext();
        t.i(context, "getContext(...)");
        setVerifyCodeHelper(new VerifyCodeSharedPrefsHelper(context));
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0025  */
    @Override // com.narvii.account.settings.AccountSettingsBaseFragment
    protected void updateViews() {
        boolean z6;
        int i10;
        int i11;
        String str;
        FragmentUpdateEmailSettingsBinding binding = getBinding();
        super.updateViews();
        getBinding().actionbarBack.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.account.settings.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UpdateEmailSettingsFragment.updateViews$lambda$4$lambda$3(this.f1756a, view);
            }
        });
        String emailText = getEmailText();
        int i12 = 0;
        if (emailText != null) {
            z6 = true;
            if (!(!kotlin.text.t.z(emailText))) {
                z6 = false;
            }
        } else {
            z6 = false;
        }
        if (z6) {
            TextView textView = binding.email;
            if (textView != null) {
                textView.setText(getEmailText());
            }
        } else {
            TextView textView2 = binding.email;
            if (textView2 != null) {
                textView2.setText(R.string.account_no_email_yet);
            }
        }
        Button button = getBinding().addEmail;
        if (z6) {
            i10 = 8;
        } else {
            i10 = 0;
        }
        button.setVisibility(i10);
        Button button2 = getBinding().changeEmail;
        if (z6) {
            i11 = 0;
        } else {
            i11 = 8;
        }
        button2.setVisibility(i11);
        TextView textView3 = binding.desc;
        if (textView3 != null) {
            if (!z6) {
                str = null;
            } else if (this.accountService.hasEmailActivation()) {
                str = getString(R.string.account_settings_email_verified) + " 👏";
            } else {
                str = getString(R.string.account_settings_email_not_verified) + " 😱";
            }
            textView3.setText(str);
        }
        Button button3 = getBinding().verifyEmail;
        if (!z6 || this.accountService.hasEmailActivation()) {
            i12 = 8;
        }
        button3.setVisibility(i12);
    }
}
