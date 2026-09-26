package com.narvii.account.resetpassword;

import android.app.AlertDialog;
import android.content.Intent;
import android.os.Bundle;
import android.telephony.PhoneNumberUtils;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.autofill.HintConstants;
import androidx.fragment.app.FragmentTransaction;
import com.narvii.account.AccountBaseFragment;
import com.narvii.account.AccountService;
import com.narvii.account.mobile.MyPhoneCountryCodePicker;
import com.narvii.account.verifyaccount.CodeVerifyFragment;
import com.narvii.account.verifyaccount.VerifyCodeSharedPrefsHelper;
import com.narvii.amino.databinding.FragmentMobileResetPasswordBinding;
import com.narvii.amino.master.R;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.FragmentExtensionsKt;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.TextInputLayout;
import java.util.List;
import kotlin.jvm.internal.g0;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.q0;
import kotlin.jvm.internal.t;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.o;

/* JADX INFO: loaded from: classes2.dex */
public final class MobileResetPasswordFragment extends AccountBaseFragment implements TextWatcher {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {q0.g(new g0(MobileResetPasswordFragment.class, "binding", "getBinding()Lcom/narvii/amino/databinding/FragmentMobileResetPasswordBinding;", 0))};

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final String KEY_OLD_CODE = "old_code";

    @NotNull
    public static final String KEY_OLD_IDENTITY = "old_identity";

    @NotNull
    public static final String KEY_OLD_IDENTITY_TYPE = "type";

    @NotNull
    public static final String KEY_OLD_PASSWORD = "old_password";
    private MyPhoneCountryCodePicker countryCodePicker;

    @Nullable
    private String lastRequestNumber;
    private TextInputLayout phoneInputLayout;
    private View sendView;

    @NotNull
    private final m verifyCodeHelper$delegate = o.a(new MobileResetPasswordFragment$verifyCodeHelper$2(this));

    @NotNull
    private final kotlin.properties.d binding$delegate = FragmentExtensionsKt.viewBinding(this, MobileResetPasswordFragment$binding$2.INSTANCE);

    @NotNull
    private final m checkLevel$delegate = o.a(new MobileResetPasswordFragment$checkLevel$2(this));

    @NotNull
    private final m oldIdentity$delegate = o.a(new MobileResetPasswordFragment$oldIdentity$2(this));

    @NotNull
    private final m oldIdentityType$delegate = o.a(new MobileResetPasswordFragment$oldIdentityType$2(this));

    @NotNull
    private final m oldCode$delegate = o.a(new MobileResetPasswordFragment$oldCode$2(this));

    @NotNull
    private final m oldPassword$delegate = o.a(new MobileResetPasswordFragment$oldPassword$2(this));

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX INFO: renamed from: com.narvii.account.resetpassword.MobileResetPasswordFragment$verifyNumber$1, reason: invalid class name */
    public static final class AnonymousClass1 extends ApiResponseListener<ApiResponse> {
        final /* synthetic */ String $phone;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(String str, Class<ApiResponse> cls) {
            super(cls);
            this.$phone = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onFail$lambda$2$lambda$1(final MobileResetPasswordFragment this$0, final String phone, final ACMAlertDialog this_apply, View view) {
            t.j(this$0, "this$0");
            t.j(phone, "$phone");
            t.j(this_apply, "$this_apply");
            this$0.showProgress();
            final Class<ApiResponse> cls = ApiResponse.class;
            this$0.requestSecurityCode(this$0.getAuthType(), phone, 1, new ApiResponseListener<ApiResponse>(cls) { // from class: com.narvii.account.resetpassword.MobileResetPasswordFragment$verifyNumber$1$onFail$1$1$1
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(@Nullable ApiRequest apiRequest, int i10, @Nullable List<NameValuePair> list, @Nullable String str, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
                    super.onFail(apiRequest, i10, list, str, apiResponse, th);
                    this$0.dismissProgress();
                    Utils.showShortToast(this_apply.getContext(), str);
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(@Nullable ApiRequest apiRequest, @Nullable ApiResponse apiResponse) throws Exception {
                    super.onFinish(apiRequest, apiResponse);
                    this$0.dismissProgress();
                    this$0.getVerifyCodeHelper().updatePhoneVerifyTime(phone);
                    this$0.toVerifyCodePage(phone);
                }
            });
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(@Nullable ApiRequest apiRequest, int i10, @Nullable List<NameValuePair> list, @Nullable String str, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
            super.onFail(apiRequest, i10, list, str, apiResponse, th);
            MobileResetPasswordFragment.this.dismissProgress();
            if (i10 != 215 && i10 != 246) {
                MobileResetPasswordFragment.this.finishWithResult(false, i10, str, apiRequest);
                return;
            }
            final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(MobileResetPasswordFragment.this.getContext());
            final String str2 = this.$phone;
            final MobileResetPasswordFragment mobileResetPasswordFragment = MobileResetPasswordFragment.this;
            aCMAlertDialog.setTitle(R.string.is_this_correct);
            aCMAlertDialog.setMessage(str2);
            aCMAlertDialog.setCancelable(false);
            aCMAlertDialog.setCanceledOnTouchOutside(false);
            aCMAlertDialog.addButton(R.string.edit, null);
            aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.account.resetpassword.e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MobileResetPasswordFragment.AnonymousClass1.onFail$lambda$2$lambda$1(mobileResetPasswordFragment, str2, aCMAlertDialog, view);
                }
            });
            aCMAlertDialog.show();
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFinish(@Nullable ApiRequest apiRequest, @Nullable ApiResponse apiResponse) throws Exception {
            super.onFinish(apiRequest, apiResponse);
            MobileResetPasswordFragment.this.dismissProgress();
            AlertDialog.Builder builder = new AlertDialog.Builder(MobileResetPasswordFragment.this.getContext());
            builder.setMessage(R.string.account_not_exist);
            builder.setNegativeButton(android.R.string.ok, Utils.DIALOG_BUTTON_EMPTY_LISTENER);
            builder.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getAuthType() {
        return 8;
    }

    @Override // com.narvii.account.AccountBaseFragment
    protected boolean addStatusBarMargin() {
        return false;
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @NotNull
    public String getPageName() {
        return "ResetPasswordEnterPhoneNumber";
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
    }

    private final FragmentMobileResetPasswordBinding getBinding() {
        return (FragmentMobileResetPasswordBinding) this.binding$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final int getCheckLevel() {
        return ((Number) this.checkLevel$delegate.getValue()).intValue();
    }

    private final String getCurrentPhoneNumber() {
        MyPhoneCountryCodePicker myPhoneCountryCodePicker = this.countryCodePicker;
        TextInputLayout textInputLayout = null;
        if (myPhoneCountryCodePicker == null) {
            t.B("countryCodePicker");
            myPhoneCountryCodePicker = null;
        }
        int countryCode = myPhoneCountryCodePicker.getCountryCode();
        TextInputLayout textInputLayout2 = this.phoneInputLayout;
        if (textInputLayout2 == null) {
            t.B("phoneInputLayout");
        } else {
            textInputLayout = textInputLayout2;
        }
        String editContent = textInputLayout.getEditContent();
        t.g(editContent);
        return org.slf4j.c.ANY_NON_NULL_MARKER + countryCode + " " + PhoneNumberUtils.stripSeparators(editContent.toString());
    }

    private final String getOldCode() {
        return (String) this.oldCode$delegate.getValue();
    }

    private final String getOldIdentity() {
        return (String) this.oldIdentity$delegate.getValue();
    }

    private final int getOldIdentityType() {
        return ((Number) this.oldIdentityType$delegate.getValue()).intValue();
    }

    private final String getOldPassword() {
        return (String) this.oldPassword$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final VerifyCodeSharedPrefsHelper getVerifyCodeHelper() {
        return (VerifyCodeSharedPrefsHelper) this.verifyCodeHelper$delegate.getValue();
    }

    private final boolean isContentVerified() {
        TextInputLayout textInputLayout = this.phoneInputLayout;
        if (textInputLayout == null) {
            t.B("phoneInputLayout");
            textInputLayout = null;
        }
        return !TextUtils.isEmpty(textInputLayout.getEditContent());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$0(MobileResetPasswordFragment this$0, View view) {
        t.j(this$0, "this$0");
        LogEvent.clickBuilder(this$0, ActSemantic.pageEnter).area("VerifyNumber").send();
        this$0.verifyNumber();
    }

    private final void toCheckPhone(String str, ApiResponseListener<ApiResponse> apiResponseListener) {
        AccountService accountService = (AccountService) getService("account");
        ApiService apiService = (ApiService) getService("api");
        ApiRequest.Builder builderPath = ApiRequest.builder().https().global().post().path("/auth/register-check");
        String str2 = a0.a.o;
        t.g(accountService);
        apiService.exec(builderPath.param(str2, accountService.getDeviceId()).param(HintConstants.AUTOFILL_HINT_PHONE_NUMBER, str).tag(HintConstants.AUTOFILL_HINT_PHONE_NUMBER, str).build(), apiResponseListener);
    }

    private final void toLoginPage() {
        Intent intent = new Intent();
        intent.putExtra(HintConstants.AUTOFILL_HINT_PHONE_NUMBER, getCurrentPhoneNumber());
        switchLogin(intent);
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(@Nullable Editable editable) {
        View view = this.sendView;
        if (view == null) {
            t.B("sendView");
            view = null;
        }
        view.setEnabled(isContentVerified());
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
        t.j(view, "view");
        super.onViewCreated(view, bundle);
        View viewFindViewById = view.findViewById(R.id.phone_input_layout);
        t.i(viewFindViewById, "findViewById(...)");
        this.phoneInputLayout = (TextInputLayout) viewFindViewById;
        View viewFindViewById2 = view.findViewById(R.id.country_picker);
        t.i(viewFindViewById2, "findViewById(...)");
        this.countryCodePicker = (MyPhoneCountryCodePicker) viewFindViewById2;
        View viewFindViewById3 = view.findViewById(R.id.send);
        t.i(viewFindViewById3, "findViewById(...)");
        this.sendView = viewFindViewById3;
        TextInputLayout textInputLayout = this.phoneInputLayout;
        View view2 = null;
        if (textInputLayout == null) {
            t.B("phoneInputLayout");
            textInputLayout = null;
        }
        textInputLayout.addTextChangedListener(this);
        View view3 = this.sendView;
        if (view3 == null) {
            t.B("sendView");
        } else {
            view2 = view3;
        }
        view2.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.account.resetpassword.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view4) {
                MobileResetPasswordFragment.onViewCreated$lambda$0(this.f1747a, view4);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void toVerifyCodePage(String str) {
        if (!isAdded()) {
            return;
        }
        this.lastRequestNumber = str;
        FragmentTransaction fragmentTransactionQ = requireFragmentManager().q();
        t.i(fragmentTransactionQ, "beginTransaction(...)");
        fragmentTransactionQ.z(R.anim.activity_push_left_in, R.anim.activity_push_left_out, R.anim.activity_push_right_in, R.anim.activity_push_right_out);
        CodeVerifyFragment codeVerifyFragment = new CodeVerifyFragment();
        Bundle bundle = new Bundle();
        bundle.putInt(CodeVerifyFragment.KEY_IDENTITY_TO_VERIFY_TYPE, 1);
        bundle.putString("phone", str);
        bundle.putInt("verify_type", 1);
        bundle.putInt(CodeVerifyFragment.KEY_CHECK_LEVEL, getCheckLevel());
        bundle.putString("old_identity", getOldIdentity());
        bundle.putInt("type", getOldIdentityType());
        bundle.putString("old_code", getOldCode());
        bundle.putString("old_password", getOldPassword());
        bundle.putString(AccountBaseFragment.KEY_THIRD_PART_SECRET, getStringParam(AccountBaseFragment.KEY_THIRD_PART_SECRET));
        bundle.putBoolean(AccountBaseFragment.KEY_IS_THIRD_PART, getBooleanParam(AccountBaseFragment.KEY_IS_THIRD_PART));
        bundle.putString(AccountBaseFragment.KEY_SIGN_UP_METHOD, getStringParam(AccountBaseFragment.KEY_SIGN_UP_METHOD));
        bundle.putString(AccountBaseFragment.KEY_NICKNAME, getStringParam(AccountBaseFragment.KEY_NICKNAME));
        bundle.putString(AccountBaseFragment.KEY_THIRDPARTY_AVATAR_URL, getStringParam(AccountBaseFragment.KEY_THIRDPARTY_AVATAR_URL));
        codeVerifyFragment.setArguments(bundle);
        Integer containerId = getContainerId();
        if (containerId != null) {
            fragmentTransactionQ.u(containerId.intValue(), codeVerifyFragment).h(null).k();
        }
    }

    private final void verifyNumber() {
        String currentPhoneNumber = getCurrentPhoneNumber();
        if (TextUtils.equals(currentPhoneNumber, this.lastRequestNumber)) {
            toVerifyCodePage(currentPhoneNumber);
            return;
        }
        showProgress();
        setIsRequesting(true);
        toCheckPhone(currentPhoneNumber, new AnonymousClass1(currentPhoneNumber, ApiResponse.class));
    }
}
