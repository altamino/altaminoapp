package com.narvii.account;

import android.content.Intent;
import android.os.Bundle;
import android.telephony.PhoneNumberUtils;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.autofill.HintConstants;
import androidx.fragment.app.FragmentTransaction;
import com.narvii.account.mobile.MyPhoneCountryCodePicker;
import com.narvii.account.verifyaccount.CodeVerifyFragment;
import com.narvii.account.verifyaccount.VerifyCodeSharedPrefsHelper;
import com.narvii.amino.master.R;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.TextInputLayout;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.o;

/* JADX INFO: loaded from: classes6.dex */
public final class MobileSignupFragment extends AccountBaseFragment implements TextWatcher {
    private MyPhoneCountryCodePicker countryCodePicker;

    @Nullable
    private String lastRequestNumber;
    private TextInputLayout phoneInputLayout;
    private View sendView;

    @NotNull
    private final w7.m verifyCodeHelper$delegate = o.a(new MobileSignupFragment$verifyCodeHelper$2(this));

    /* JADX INFO: renamed from: com.narvii.account.MobileSignupFragment$verifyNumber$1, reason: invalid class name */
    public static final class AnonymousClass1 extends ApiResponseListener<ApiResponse> {
        final /* synthetic */ String $phone;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(String str, Class<ApiResponse> cls) {
            super(cls);
            this.$phone = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onFinish$lambda$1$lambda$0(final MobileSignupFragment this$0, final String phone, final ACMAlertDialog this_apply, View view) {
            kotlin.jvm.internal.t.j(this$0, "this$0");
            kotlin.jvm.internal.t.j(phone, "$phone");
            kotlin.jvm.internal.t.j(this_apply, "$this_apply");
            this$0.showProgress();
            final Class<ApiResponse> cls = ApiResponse.class;
            this$0.requestSecurityCode(this$0.getAuthType(), phone, new ApiResponseListener<ApiResponse>(cls) { // from class: com.narvii.account.MobileSignupFragment$verifyNumber$1$onFinish$1$1$1
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
            MobileSignupFragment.this.dismissProgress();
            MobileSignupFragment.this.finishWithResult(false, i10, str, apiRequest);
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFinish(@Nullable ApiRequest apiRequest, @Nullable ApiResponse apiResponse) throws Exception {
            super.onFinish(apiRequest, apiResponse);
            MobileSignupFragment.this.dismissProgress();
            final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(MobileSignupFragment.this.getContext());
            final String str = this.$phone;
            final MobileSignupFragment mobileSignupFragment = MobileSignupFragment.this;
            aCMAlertDialog.setTitle(R.string.is_this_correct);
            aCMAlertDialog.setMessage(str);
            aCMAlertDialog.setCancelable(false);
            aCMAlertDialog.setCanceledOnTouchOutside(false);
            aCMAlertDialog.addButton(R.string.edit, null);
            aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.account.f0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MobileSignupFragment.AnonymousClass1.onFinish$lambda$1$lambda$0(mobileSignupFragment, str, aCMAlertDialog, view);
                }
            });
            aCMAlertDialog.show();
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
        return "SignUpEnterPhoneNumber";
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
    }

    private final String getCurrentPhoneNumber() {
        MyPhoneCountryCodePicker myPhoneCountryCodePicker = this.countryCodePicker;
        TextInputLayout textInputLayout = null;
        if (myPhoneCountryCodePicker == null) {
            kotlin.jvm.internal.t.B("countryCodePicker");
            myPhoneCountryCodePicker = null;
        }
        int countryCode = myPhoneCountryCodePicker.getCountryCode();
        TextInputLayout textInputLayout2 = this.phoneInputLayout;
        if (textInputLayout2 == null) {
            kotlin.jvm.internal.t.B("phoneInputLayout");
        } else {
            textInputLayout = textInputLayout2;
        }
        String editContent = textInputLayout.getEditContent();
        kotlin.jvm.internal.t.g(editContent);
        return org.slf4j.c.ANY_NON_NULL_MARKER + countryCode + " " + PhoneNumberUtils.stripSeparators(editContent.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final VerifyCodeSharedPrefsHelper getVerifyCodeHelper() {
        return (VerifyCodeSharedPrefsHelper) this.verifyCodeHelper$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleAlreadyRegistered$lambda$3$lambda$1(ACMAlertDialog this_apply, MobileSignupFragment this$0, View view) {
        kotlin.jvm.internal.t.j(this_apply, "$this_apply");
        kotlin.jvm.internal.t.j(this$0, "this$0");
        LogEvent.clickWildcardBuilder(this_apply, "Edit").send();
        TextInputLayout textInputLayout = this$0.phoneInputLayout;
        if (textInputLayout == null) {
            kotlin.jvm.internal.t.B("phoneInputLayout");
            textInputLayout = null;
        }
        textInputLayout.setInputText("");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleAlreadyRegistered$lambda$3$lambda$2(ACMAlertDialog this_apply, MobileSignupFragment this$0, View view) {
        kotlin.jvm.internal.t.j(this_apply, "$this_apply");
        kotlin.jvm.internal.t.j(this$0, "this$0");
        LogEvent.clickWildcardBuilder(this_apply, "Login").send();
        this$0.toLoginPage();
    }

    private final boolean isContentVerified() {
        TextInputLayout textInputLayout = this.phoneInputLayout;
        if (textInputLayout == null) {
            kotlin.jvm.internal.t.B("phoneInputLayout");
            textInputLayout = null;
        }
        return !TextUtils.isEmpty(textInputLayout.getEditContent());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$0(MobileSignupFragment this$0, View view) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        LogEvent.clickBuilder(this$0, ActSemantic.pageEnter).area("VerifyNumber").send();
        this$0.verifyNumber();
    }

    private final void toCheckPhone(String str, ApiResponseListener<ApiResponse> apiResponseListener) {
        AccountService accountService = (AccountService) getService("account");
        ApiService apiService = (ApiService) getService("api");
        ApiRequest.Builder builderPath = ApiRequest.builder().https().global().post().path("/auth/register-check");
        String str2 = a0.a.o;
        kotlin.jvm.internal.t.g(accountService);
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
            kotlin.jvm.internal.t.B("sendView");
            view = null;
        }
        view.setEnabled(isContentVerified());
    }

    @Override // com.narvii.account.AccountBaseFragment
    protected void handleAlreadyRegistered(@Nullable String str, @Nullable String str2) {
        final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this, "SignUpNumberTaken");
        aCMAlertDialog.setTitle(R.string.number_taken);
        aCMAlertDialog.setMessage(str);
        aCMAlertDialog.addButton(R.string.edit, new View.OnClickListener() { // from class: com.narvii.account.c0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MobileSignupFragment.handleAlreadyRegistered$lambda$3$lambda$1(aCMAlertDialog, this, view);
            }
        });
        aCMAlertDialog.addButton(R.string.account_login, new View.OnClickListener() { // from class: com.narvii.account.d0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MobileSignupFragment.handleAlreadyRegistered$lambda$3$lambda$2(aCMAlertDialog, this, view);
            }
        });
        aCMAlertDialog.show();
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        kotlin.jvm.internal.t.j(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_mobile_signup, viewGroup, false);
    }

    @Override // com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        kotlin.jvm.internal.t.j(view, "view");
        super.onViewCreated(view, bundle);
        View viewFindViewById = view.findViewById(R.id.phone_input_layout);
        kotlin.jvm.internal.t.i(viewFindViewById, "findViewById(...)");
        this.phoneInputLayout = (TextInputLayout) viewFindViewById;
        View viewFindViewById2 = view.findViewById(R.id.country_picker);
        kotlin.jvm.internal.t.i(viewFindViewById2, "findViewById(...)");
        this.countryCodePicker = (MyPhoneCountryCodePicker) viewFindViewById2;
        View viewFindViewById3 = view.findViewById(R.id.send);
        kotlin.jvm.internal.t.i(viewFindViewById3, "findViewById(...)");
        this.sendView = viewFindViewById3;
        TextInputLayout textInputLayout = this.phoneInputLayout;
        View view2 = null;
        if (textInputLayout == null) {
            kotlin.jvm.internal.t.B("phoneInputLayout");
            textInputLayout = null;
        }
        textInputLayout.addTextChangedListener(this);
        View view3 = this.sendView;
        if (view3 == null) {
            kotlin.jvm.internal.t.B("sendView");
        } else {
            view2 = view3;
        }
        view2.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.account.e0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view4) {
                MobileSignupFragment.onViewCreated$lambda$0(this.f1699a, view4);
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
        kotlin.jvm.internal.t.i(fragmentTransactionQ, "beginTransaction(...)");
        fragmentTransactionQ.z(R.anim.activity_push_left_in, R.anim.activity_push_left_out, R.anim.activity_push_right_in, R.anim.activity_push_right_out);
        CodeVerifyFragment codeVerifyFragment = new CodeVerifyFragment();
        Bundle bundle = new Bundle();
        bundle.putInt(CodeVerifyFragment.KEY_IDENTITY_TO_VERIFY_TYPE, 1);
        bundle.putString("phone", str);
        bundle.putInt("verify_type", 4);
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
