package com.narvii.account.verifyaccount;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.FragmentTransaction;
import com.narvii.account.AccountBaseFragment;
import com.narvii.account.resetpassword.EmailResetPasswordFragment;
import com.narvii.account.resetpassword.MobileResetPasswordFragment;
import com.narvii.amino.databinding.FragmentVerifyAccountChooseIdentityBinding;
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
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.q0;
import kotlin.jvm.internal.t;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.m;
import w7.o;

/* JADX INFO: loaded from: classes.dex */
public final class VerifyAccountChooseIdentityFragment extends AccountBaseFragment {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {q0.g(new g0(VerifyAccountChooseIdentityFragment.class, "binding", "getBinding()Lcom/narvii/amino/databinding/FragmentVerifyAccountChooseIdentityBinding;", 0))};

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final String KEY_IDENTITY_EMAIL = "email";

    @NotNull
    public static final String KEY_IDENTITY_PHONE = "phone";

    @NotNull
    public static final String KEY_OLD_PASSWORD = "old_password";

    @NotNull
    public static final String KEY_SET_IDENTITY_TYPE = "set_identity_type";

    @NotNull
    public static final String KEY_VERIFY_ACCOUNT_TYPE = "verify_type";
    public VerifyCodeSharedPrefsHelper verifyCodeHelper;

    @NotNull
    private final m email$delegate = o.a(new VerifyAccountChooseIdentityFragment$email$2(this));

    @NotNull
    private final m phone$delegate = o.a(new VerifyAccountChooseIdentityFragment$phone$2(this));

    @NotNull
    private final m verifyAccountType$delegate = o.a(new VerifyAccountChooseIdentityFragment$verifyAccountType$2(this));

    @NotNull
    private final kotlin.properties.d binding$delegate = FragmentExtensionsKt.viewBinding(this, VerifyAccountChooseIdentityFragment$binding$2.INSTANCE);

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    private final void verifyEmail(final String str) {
        requestSecurityCode(1, str, 1, new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.account.verifyaccount.VerifyAccountChooseIdentityFragment.verifyEmail.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(@NotNull ApiRequest req, int i10, @Nullable List<? extends NameValuePair> list, @NotNull String message, @Nullable ApiResponse apiResponse, @NotNull Throwable t5) {
                t.j(req, "req");
                t.j(message, "message");
                t.j(t5, "t");
                super.onFail(req, i10, list, message, apiResponse, t5);
                VerifyAccountChooseIdentityFragment.this.dismissProgress();
                NVToast.makeText(VerifyAccountChooseIdentityFragment.this.getContext(), message, 1).show();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(@NotNull ApiRequest req, @Nullable ApiResponse apiResponse) throws Exception {
                t.j(req, "req");
                super.onFinish(req, apiResponse);
                VerifyAccountChooseIdentityFragment.this.getVerifyCodeHelper().updateEmailVerifyTime(str);
                VerifyAccountChooseIdentityFragment.this.dismissProgress();
                VerifyAccountChooseIdentityFragment.this.goToCodeVerify(EmailIdentity.INSTANCE);
            }
        });
    }

    private final void verifyPhone(final String str) {
        requestSecurityCode(8, str, 1, new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.account.verifyaccount.VerifyAccountChooseIdentityFragment.verifyPhone.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(@NotNull ApiRequest req, int i10, @Nullable List<? extends NameValuePair> list, @NotNull String message, @Nullable ApiResponse apiResponse, @NotNull Throwable t5) {
                t.j(req, "req");
                t.j(message, "message");
                t.j(t5, "t");
                super.onFail(req, i10, list, message, apiResponse, t5);
                VerifyAccountChooseIdentityFragment.this.dismissProgress();
                NVToast.makeText(VerifyAccountChooseIdentityFragment.this.getContext(), message, 1).show();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(@NotNull ApiRequest req, @Nullable ApiResponse apiResponse) throws Exception {
                t.j(req, "req");
                super.onFinish(req, apiResponse);
                VerifyAccountChooseIdentityFragment.this.getVerifyCodeHelper().updatePhoneVerifyTime(str);
                VerifyAccountChooseIdentityFragment.this.dismissProgress();
                VerifyAccountChooseIdentityFragment.this.goToCodeVerify(PhoneIdentity.INSTANCE);
            }
        });
    }

    @Override // com.narvii.account.AccountBaseFragment
    protected boolean addStatusBarMargin() {
        return false;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @NotNull
    public String getPageName() {
        return "VerifyAccountChooseIdentity";
    }

    public final void setVerifyCodeHelper(@NotNull VerifyCodeSharedPrefsHelper verifyCodeSharedPrefsHelper) {
        t.j(verifyCodeSharedPrefsHelper, "<set-?>");
        this.verifyCodeHelper = verifyCodeSharedPrefsHelper;
    }

    private final FragmentVerifyAccountChooseIdentityBinding getBinding() {
        return (FragmentVerifyAccountChooseIdentityBinding) this.binding$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final String getEmail() {
        return (String) this.email$delegate.getValue();
    }

    private final String getPhone() {
        return (String) this.phone$delegate.getValue();
    }

    private final VerifyAccountType getVerifyAccountType() {
        return (VerifyAccountType) this.verifyAccountType$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void goToCodeVerify(IdentityType identityType) {
        if (isAdded()) {
            try {
                FragmentTransaction fragmentTransactionQ = getParentFragmentManager().q();
                fragmentTransactionQ.z(R.anim.activity_push_left_in, R.anim.activity_push_left_out, R.anim.activity_push_right_in, R.anim.activity_push_right_out);
                CodeVerifyFragment codeVerifyFragment = new CodeVerifyFragment();
                Bundle bundle = new Bundle();
                int i10 = 1;
                if (identityType instanceof EmailIdentity) {
                    bundle.putInt(CodeVerifyFragment.KEY_IDENTITY_TO_VERIFY_TYPE, 2);
                    bundle.putString("email", getEmail());
                } else if (identityType instanceof PhoneIdentity) {
                    bundle.putInt(CodeVerifyFragment.KEY_IDENTITY_TO_VERIFY_TYPE, 1);
                    bundle.putString("phone", getPhone());
                }
                bundle.putInt("verify_type", VerifyAccountTypeKt.getIntValue(getVerifyAccountType()));
                bundle.putInt("set_identity_type", getIntParam("set_identity_type"));
                bundle.putString("old_password", getStringParam("old_password"));
                VerifyAccountType verifyAccountType = getVerifyAccountType();
                if (!(verifyAccountType instanceof AddIdentityVerifyAccount) && !(verifyAccountType instanceof UpdateIdentityVerifyAccount)) {
                    i10 = 2;
                }
                bundle.putInt(CodeVerifyFragment.KEY_CHECK_LEVEL, i10);
                bundle.putString(AccountBaseFragment.KEY_THIRD_PART_SECRET, getStringParam(AccountBaseFragment.KEY_THIRD_PART_SECRET));
                bundle.putBoolean(AccountBaseFragment.KEY_IS_THIRD_PART, getBooleanParam(AccountBaseFragment.KEY_IS_THIRD_PART));
                bundle.putString(AccountBaseFragment.KEY_SIGN_UP_METHOD, getStringParam(AccountBaseFragment.KEY_SIGN_UP_METHOD));
                bundle.putString(AccountBaseFragment.KEY_NICKNAME, getStringParam(AccountBaseFragment.KEY_NICKNAME));
                bundle.putString(AccountBaseFragment.KEY_THIRDPARTY_AVATAR_URL, getStringParam(AccountBaseFragment.KEY_THIRDPARTY_AVATAR_URL));
                codeVerifyFragment.setArguments(bundle);
                Integer containerId = getContainerId();
                if (containerId == null) {
                    fragmentTransactionQ.u(R.id.frame, codeVerifyFragment).h(null).k();
                } else {
                    t.g(containerId);
                    fragmentTransactionQ.u(containerId.intValue(), codeVerifyFragment).h(null).k();
                }
            } catch (IllegalStateException e) {
                Log.e(e.getLocalizedMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupEmailBtn$lambda$8$lambda$7(VerifyAccountChooseIdentityFragment this$0, FragmentVerifyAccountChooseIdentityBinding this_with, View view) {
        t.j(this$0, "this$0");
        t.j(this_with, "$this_with");
        String email = this$0.getEmail();
        if (email != null) {
            this$0.verifyEmail(email);
            l0 l0Var = l0.INSTANCE;
            return;
        }
        FragmentTransaction fragmentTransactionQ = this$0.getParentFragmentManager().q();
        fragmentTransactionQ.z(R.anim.activity_push_left_in, R.anim.activity_push_left_out, R.anim.activity_push_right_in, R.anim.activity_push_right_out);
        EmailResetPasswordFragment emailResetPasswordFragment = new EmailResetPasswordFragment();
        Integer containerId = this$0.getContainerId();
        if (containerId != null) {
            t.g(containerId);
            fragmentTransactionQ.v(containerId.intValue(), emailResetPasswordFragment, "emailReset").h(null).k();
        } else {
            fragmentTransactionQ.v(R.id.frame, emailResetPasswordFragment, "emailReset").h(null).k();
        }
        t.i(fragmentTransactionQ, "run(...)");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupPhoneNumberBtn$lambda$17$lambda$16(VerifyAccountChooseIdentityFragment this$0, FragmentVerifyAccountChooseIdentityBinding this_with, View view) {
        t.j(this$0, "this$0");
        t.j(this_with, "$this_with");
        String phone = this$0.getPhone();
        if (phone != null) {
            this$0.verifyPhone(phone);
            l0 l0Var = l0.INSTANCE;
            return;
        }
        FragmentTransaction fragmentTransactionQ = this$0.getParentFragmentManager().q();
        fragmentTransactionQ.z(R.anim.activity_push_left_in, R.anim.activity_push_left_out, R.anim.activity_push_right_in, R.anim.activity_push_right_out);
        MobileResetPasswordFragment mobileResetPasswordFragment = new MobileResetPasswordFragment();
        Integer containerId = this$0.getContainerId();
        if (containerId != null) {
            t.g(containerId);
            fragmentTransactionQ.v(containerId.intValue(), mobileResetPasswordFragment, "mobileReset").h(null).k();
        } else {
            fragmentTransactionQ.v(R.id.frame, mobileResetPasswordFragment, "mobileReset").h(null).k();
        }
        t.i(fragmentTransactionQ, "run(...)");
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

    @Override // com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        String phone;
        t.j(view, "view");
        super.onViewCreated(view, bundle);
        View viewFindViewById = view.findViewById(R.id.title);
        t.h(viewFindViewById, "null cannot be cast to non-null type android.widget.TextView");
        ((TextView) viewFindViewById).setText(VerifyAccountTypeKt.getPageTitle(getVerifyAccountType()));
        String email = getEmail();
        int i10 = ((email == null || !(kotlin.text.t.z(email) ^ true)) && ((phone = getPhone()) == null || !(kotlin.text.t.z(phone) ^ true))) ? R.string.verify_identity : R.string.enter_confirmation_code;
        View viewFindViewById2 = view.findViewById(R.id.title_verify);
        t.h(viewFindViewById2, "null cannot be cast to non-null type android.widget.TextView");
        ((TextView) viewFindViewById2).setText(i10);
        int i11 = getVerifyAccountType() instanceof ForgotPassVerifyAccount ? R.string.forgot_password_choose_identity_desc : R.string.verify_identity_description;
        View viewFindViewById3 = view.findViewById(R.id.description_verify);
        t.h(viewFindViewById3, "null cannot be cast to non-null type android.widget.TextView");
        ((TextView) viewFindViewById3).setText(i11);
        setupEmailBtn();
        setupPhoneNumberBtn();
        getBinding().emailBtn.performClick();
    }

    private final void setupEmailBtn() {
        int i10;
        String email;
        final FragmentVerifyAccountChooseIdentityBinding binding = getBinding();
        Button button = binding.emailBtn;
        StringBuilder sb = new StringBuilder(getString(R.string.account_email));
        String email2 = getEmail();
        if (email2 != null) {
            sb.append("\n");
            sb.append(email2);
        }
        button.setText(sb.toString());
        Button button2 = binding.emailBtn;
        String phone = getPhone();
        if (phone != null && (!kotlin.text.t.z(phone)) && ((email = getEmail()) == null || kotlin.text.t.z(email))) {
            i10 = 8;
        } else {
            i10 = 0;
        }
        button2.setVisibility(i10);
        binding.emailBtn.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.account.verifyaccount.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VerifyAccountChooseIdentityFragment.setupEmailBtn$lambda$8$lambda$7(this.f1777a, binding, view);
            }
        });
    }

    private final void setupPhoneNumberBtn() {
        int i10;
        String phone;
        final FragmentVerifyAccountChooseIdentityBinding binding = getBinding();
        Button button = binding.phoneBtn;
        StringBuilder sb = new StringBuilder(getString(R.string.account_phone_number));
        String phone2 = getPhone();
        if (phone2 != null) {
            sb.append("\n");
            sb.append(phone2);
        }
        button.setText(sb.toString());
        Button button2 = binding.phoneBtn;
        String email = getEmail();
        if (email != null && (!kotlin.text.t.z(email)) && ((phone = getPhone()) == null || kotlin.text.t.z(phone))) {
            i10 = 8;
        } else {
            i10 = 0;
        }
        button2.setVisibility(i10);
        binding.phoneBtn.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.account.verifyaccount.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VerifyAccountChooseIdentityFragment.setupPhoneNumberBtn$lambda$17$lambda$16(this.f1779a, binding, view);
            }
        });
    }

    @Override // com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Context context = getContext();
        t.i(context, "getContext(...)");
        setVerifyCodeHelper(new VerifyCodeSharedPrefsHelper(context));
    }
}
