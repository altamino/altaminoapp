package com.narvii.account;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.telephony.PhoneNumberUtils;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.account.MobileSignupFragment;
import com.narvii.account.mobile.MyPhoneCountryCodePicker;
import com.narvii.amino.mastes.R;
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
import java.util.HashMap;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: MobileSignupFragment.kt */
/* loaded from: classes2.dex */
public final class MobileSignupFragment extends AccountBaseFragment implements TextWatcher {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(MobileSignupFragment.class), "accountUtils", "getAccountUtils()Lcom/narvii/account/AccountUtils;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(MobileSignupFragment.class), "verifyCodeHelper", "getVerifyCodeHelper()Lcom/narvii/account/VerifyCodeSharedPrefsHelper;"))};
    private HashMap _$_findViewCache;
    public MyPhoneCountryCodePicker countryCodePicker;
    private String lastRequestNumber;
    public TextInputLayout phoneInputLayout;
    public View sendView;
    private final Lazy accountUtils$delegate = LazyKt__LazyJVMKt.lazy(new Function0<AccountUtils>() { // from class: com.narvii.account.MobileSignupFragment$accountUtils$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final AccountUtils invoke() {
            return new AccountUtils(this.this$0.getContext());
        }
    });
    private final Lazy verifyCodeHelper$delegate = LazyKt__LazyJVMKt.lazy(new Function0<VerifyCodeSharedPrefsHelper>() { // from class: com.narvii.account.MobileSignupFragment$verifyCodeHelper$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final VerifyCodeSharedPrefsHelper invoke() {
            Context context = this.this$0.getContext();
            Intrinsics.checkExpressionValueIsNotNull(context, "context");
            return new VerifyCodeSharedPrefsHelper(context);
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    public final int getAuthType() {
        return 8;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final VerifyCodeSharedPrefsHelper getVerifyCodeHelper() {
        Lazy lazy = this.verifyCodeHelper$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (VerifyCodeSharedPrefsHelper) lazy.getValue();
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View view2 = getView();
        if (view2 == null) {
            return null;
        }
        View viewFindViewById = view2.findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    protected final AccountUtils getAccountUtils() {
        Lazy lazy = this.accountUtils$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (AccountUtils) lazy.getValue();
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "SignUpEnterPhoneNumber";
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public final TextInputLayout getPhoneInputLayout() {
        TextInputLayout textInputLayout = this.phoneInputLayout;
        if (textInputLayout != null) {
            return textInputLayout;
        }
        Intrinsics.throwUninitializedPropertyAccessException("phoneInputLayout");
        throw null;
    }

    public final void setPhoneInputLayout(TextInputLayout textInputLayout) {
        Intrinsics.checkParameterIsNotNull(textInputLayout, "<set-?>");
        this.phoneInputLayout = textInputLayout;
    }

    public final MyPhoneCountryCodePicker getCountryCodePicker() {
        MyPhoneCountryCodePicker myPhoneCountryCodePicker = this.countryCodePicker;
        if (myPhoneCountryCodePicker != null) {
            return myPhoneCountryCodePicker;
        }
        Intrinsics.throwUninitializedPropertyAccessException("countryCodePicker");
        throw null;
    }

    public final void setCountryCodePicker(MyPhoneCountryCodePicker myPhoneCountryCodePicker) {
        Intrinsics.checkParameterIsNotNull(myPhoneCountryCodePicker, "<set-?>");
        this.countryCodePicker = myPhoneCountryCodePicker;
    }

    public final View getSendView() {
        View view = this.sendView;
        if (view != null) {
            return view;
        }
        Intrinsics.throwUninitializedPropertyAccessException("sendView");
        throw null;
    }

    public final void setSendView(View view) {
        Intrinsics.checkParameterIsNotNull(view, "<set-?>");
        this.sendView = view;
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_mobile_signup, viewGroup, false);
    }

    @Override // com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        View viewFindViewById = view.findViewById(R.id.phone_input_layout);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "view.findViewById(R.id.phone_input_layout)");
        this.phoneInputLayout = (TextInputLayout) viewFindViewById;
        View viewFindViewById2 = view.findViewById(R.id.country_picker);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById2, "view.findViewById(R.id.country_picker)");
        this.countryCodePicker = (MyPhoneCountryCodePicker) viewFindViewById2;
        View viewFindViewById3 = view.findViewById(R.id.send);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById3, "view.findViewById(R.id.send)");
        this.sendView = viewFindViewById3;
        TextInputLayout textInputLayout = this.phoneInputLayout;
        if (textInputLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("phoneInputLayout");
            throw null;
        }
        textInputLayout.addTextChangedListener(this);
        View view2 = this.sendView;
        if (view2 != null) {
            view2.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.account.MobileSignupFragment.onViewCreated.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    LogEvent.clickBuilder(MobileSignupFragment.this, ActSemantic.pageEnter).area("VerifyNumber").send();
                    MobileSignupFragment.this.verifyNumber();
                }
            });
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("sendView");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void verifyNumber() {
        String currentPhoneNumber = getCurrentPhoneNumber();
        if (TextUtils.equals(currentPhoneNumber, this.lastRequestNumber)) {
            toVerifyCodePage(currentPhoneNumber);
            return;
        }
        showProgress();
        setIsRequesting(true);
        toCheckPhone(currentPhoneNumber, new C09201(currentPhoneNumber, ApiResponse.class));
    }

    /* compiled from: MobileSignupFragment.kt */
    /* renamed from: com.narvii.account.MobileSignupFragment$verifyNumber$1, reason: invalid class name and case insensitive filesystem */
    public static final class C09201 extends ApiResponseListener<ApiResponse> {
        final /* synthetic */ String $phone;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C09201(String str, Class cls) {
            super(cls);
            this.$phone = str;
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
            super.onFinish(apiRequest, apiResponse);
            MobileSignupFragment.this.dismissProgress();
            final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(MobileSignupFragment.this.getContext());
            aCMAlertDialog.setTitle(R.string.is_this_correct);
            aCMAlertDialog.setMessage(this.$phone);
            aCMAlertDialog.setCancelable(false);
            aCMAlertDialog.setCanceledOnTouchOutside(false);
            aCMAlertDialog.addButton(R.string.edit, null);
            aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.account.MobileSignupFragment$verifyNumber$1$onFinish$$inlined$apply$lambda$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MobileSignupFragment.this.showProgress();
                    MobileSignupFragment mobileSignupFragment = MobileSignupFragment.this;
                    mobileSignupFragment.requestSecurityCode(mobileSignupFragment.getAuthType(), this.$phone, new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.account.MobileSignupFragment$verifyNumber$1$onFinish$$inlined$apply$lambda$1.1
                        @Override // com.narvii.util.http.ApiResponseListener
                        public void onFinish(ApiRequest apiRequest2, ApiResponse apiResponse2) throws Exception {
                            super.onFinish(apiRequest2, apiResponse2);
                            MobileSignupFragment.this.dismissProgress();
                            MobileSignupFragment.this.getVerifyCodeHelper().updatePhoneVerifyTime(this.$phone);
                            MobileSignupFragment.C09201 c09201 = this;
                            MobileSignupFragment.this.toVerifyCodePage(c09201.$phone);
                        }

                        @Override // com.narvii.util.http.ApiResponseListener
                        public void onFail(ApiRequest apiRequest2, int i, List<NameValuePair> list, String str, ApiResponse apiResponse2, Throwable th) {
                            super.onFail(apiRequest2, i, list, str, apiResponse2, th);
                            MobileSignupFragment.this.dismissProgress();
                            Utils.showShortToast(aCMAlertDialog.getContext(), str);
                        }
                    });
                }
            });
            aCMAlertDialog.show();
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
            super.onFail(apiRequest, i, list, str, apiResponse, th);
            MobileSignupFragment.this.dismissProgress();
            MobileSignupFragment.this.finishWithResult(false, i, str, apiRequest);
        }
    }

    @Override // com.narvii.account.AccountBaseFragment
    protected void handleAlreadyRegistered(final String str, String str2) {
        final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this, "SignUpNumberTaken");
        aCMAlertDialog.setTitle(R.string.number_taken);
        aCMAlertDialog.setMessage(str);
        aCMAlertDialog.addButton(R.string.edit, new View.OnClickListener() { // from class: com.narvii.account.MobileSignupFragment$handleAlreadyRegistered$$inlined$apply$lambda$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LogEvent.clickWildcardBuilder(aCMAlertDialog, "Edit").send();
                this.getPhoneInputLayout().setInputText("");
            }
        });
        aCMAlertDialog.addButton(R.string.account_login, new View.OnClickListener() { // from class: com.narvii.account.MobileSignupFragment$handleAlreadyRegistered$$inlined$apply$lambda$2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LogEvent.clickWildcardBuilder(aCMAlertDialog, "Login").send();
                this.toLoginPage();
            }
        });
        aCMAlertDialog.show();
    }

    private final void toCheckPhone(String str, ApiResponseListener<ApiResponse> apiResponseListener) {
        AccountService accountService = (AccountService) getService("account");
        ApiService apiService = (ApiService) getService("api");
        ApiRequest.Builder builderPath = ApiRequest.builder().https().global().post().path("/auth/register-check");
        if (accountService == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        apiService.exec(builderPath.param("deviceID", accountService.getDeviceId()).param("phoneNumber", str).tag("phoneNumber", str).build(), apiResponseListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void toVerifyCodePage(String str) {
        if (isAdded()) {
            this.lastRequestNumber = str;
            FragmentManager fragmentManager = getFragmentManager();
            if (fragmentManager == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            FragmentTransaction fragmentTransactionBeginTransaction = fragmentManager.beginTransaction();
            fragmentTransactionBeginTransaction.setCustomAnimations(R.anim.activity_push_left_in, R.anim.activity_push_left_out, R.anim.activity_push_right_in, R.anim.activity_push_right_out);
            CodeVerifyFragment codeVerifyFragment = new CodeVerifyFragment();
            Bundle bundle = new Bundle();
            bundle.putInt("type", 1);
            bundle.putString(CodeVerifyFragment.KEY_PHONE, str);
            bundle.putString(AccountBaseFragment.KEY_THIRD_PART_SECRET, getStringParam(AccountBaseFragment.KEY_THIRD_PART_SECRET));
            bundle.putBoolean(AccountBaseFragment.KEY_IS_THIRD_PART, getBooleanParam(AccountBaseFragment.KEY_IS_THIRD_PART));
            bundle.putString(AccountBaseFragment.KEY_SIGN_UP_METHOD, getStringParam(AccountBaseFragment.KEY_SIGN_UP_METHOD));
            bundle.putString(AccountBaseFragment.KEY_NICKNAME, getStringParam(AccountBaseFragment.KEY_NICKNAME));
            bundle.putString(AccountBaseFragment.KEY_THIRDPARTY_AVATAR_URL, getStringParam(AccountBaseFragment.KEY_THIRDPARTY_AVATAR_URL));
            codeVerifyFragment.setArguments(bundle);
            fragmentTransactionBeginTransaction.replace(R.id.frame, codeVerifyFragment).addToBackStack(null).commitAllowingStateLoss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void toLoginPage() {
        Intent intent = new Intent();
        intent.putExtra("phoneNumber", getCurrentPhoneNumber());
        switchLogin(intent);
    }

    private final String getCurrentPhoneNumber() {
        TextInputLayout textInputLayout = this.phoneInputLayout;
        if (textInputLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("phoneInputLayout");
            throw null;
        }
        String editContent = textInputLayout.getEditContent();
        if (editContent == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        String strStripSeparators = PhoneNumberUtils.stripSeparators(editContent.toString());
        StringBuilder sb = new StringBuilder();
        sb.append("+");
        MyPhoneCountryCodePicker myPhoneCountryCodePicker = this.countryCodePicker;
        if (myPhoneCountryCodePicker == null) {
            Intrinsics.throwUninitializedPropertyAccessException("countryCodePicker");
            throw null;
        }
        sb.append(myPhoneCountryCodePicker.getCountryCode());
        sb.append(" ");
        sb.append(strStripSeparators);
        return sb.toString();
    }

    private final boolean isContentVerified() {
        if (this.phoneInputLayout != null) {
            return !TextUtils.isEmpty(r0.getEditContent());
        }
        Intrinsics.throwUninitializedPropertyAccessException("phoneInputLayout");
        throw null;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        View view = this.sendView;
        if (view != null) {
            view.setEnabled(isContentVerified());
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("sendView");
            throw null;
        }
    }
}
