package com.narvii.account;

import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.autofill.HintConstants;
import androidx.fragment.app.FragmentTransaction;
import com.narvii.account.verifyaccount.CodeVerifyFragment;
import com.narvii.account.verifyaccount.VerifyAccountType;
import com.narvii.account.verifyaccount.VerifyAccountTypeKt;
import com.narvii.account.verifyaccount.VerifyCodeSharedPrefsHelper;
import com.narvii.amino.master.R;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.ACMAlertDialog;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.o;

/* JADX INFO: loaded from: classes2.dex */
public abstract class SetIdentityFragment extends AccountBaseFragment {

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

    @NotNull
    public static final String KEY_SET_IDENTITY_TYPE = "set_identity_type";

    @NotNull
    public static final String KEY_VERIFY_ACCOUNT_TYPE = "verify_type";

    @Nullable
    private ApiRequest request;

    @NotNull
    private final w7.m verifyAccountType$delegate = o.a(new SetIdentityFragment$verifyAccountType$2(this));

    @NotNull
    private final w7.m accountService$delegate = o.a(new SetIdentityFragment$accountService$2(this));

    @NotNull
    private final w7.m accountUtils$delegate = o.a(new SetIdentityFragment$accountUtils$2(this));

    @NotNull
    private final w7.m verifyCodeHelper$delegate = o.a(new SetIdentityFragment$verifyCodeHelper$2(this));

    @NotNull
    private final w7.m oldIdentity$delegate = o.a(new SetIdentityFragment$oldIdentity$2(this));

    @NotNull
    private final w7.m oldIdentityType$delegate = o.a(new SetIdentityFragment$oldIdentityType$2(this));

    @NotNull
    private final w7.m oldCode$delegate = o.a(new SetIdentityFragment$oldCode$2(this));

    @NotNull
    private final w7.m oldPassword$delegate = o.a(new SetIdentityFragment$oldPassword$2(this));

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }
    }

    @Override // com.narvii.account.AccountBaseFragment
    protected boolean addStatusBarMargin() {
        return false;
    }

    @Nullable
    protected final ApiRequest getRequest() {
        return this.request;
    }

    public abstract void requestCode(@NotNull String str);

    protected final void setRequest(@Nullable ApiRequest apiRequest) {
        this.request = apiRequest;
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
    public final void showConfirmationDialog(final String str) {
        ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
        aCMAlertDialog.setTitle(R.string.is_this_correct);
        aCMAlertDialog.setMessage(str);
        aCMAlertDialog.setCancelable(false);
        aCMAlertDialog.setCanceledOnTouchOutside(false);
        aCMAlertDialog.addButton(R.string.edit, null);
        aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.account.m0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SetIdentityFragment.showConfirmationDialog$lambda$6$lambda$5(this.f1722a, str, view);
            }
        });
        aCMAlertDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showConfirmationDialog$lambda$6$lambda$5(SetIdentityFragment this$0, String identity, View view) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        kotlin.jvm.internal.t.j(identity, "$identity");
        this$0.showProgress();
        this$0.requestCode(identity);
    }

    protected final void checkLegality(@NotNull final String identity) {
        String str;
        kotlin.jvm.internal.t.j(identity, "identity");
        showProgress();
        AccountService accountService = (AccountService) getService("account");
        ApiService apiService = (ApiService) getService("api");
        ApiRequest.Builder builderParam = ApiRequest.builder().https().global().post().path("/auth/register-check").param(a0.a.o, accountService.getDeviceId());
        if (this instanceof SetEmailFragment) {
            str = "email";
        } else {
            str = this instanceof SetPhoneNumberFragment ? HintConstants.AUTOFILL_HINT_PHONE_NUMBER : null;
        }
        if (str != null) {
            builderParam.param(str, identity);
            builderParam.tag(str, identity);
        }
        this.request = builderParam.build();
        setIsRequesting(true);
        apiService.exec(this.request, new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.account.SetIdentityFragment.checkLegality.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(@NotNull ApiRequest req, int i10, @Nullable List<? extends NameValuePair> list, @NotNull String message, @Nullable ApiResponse apiResponse, @NotNull Throwable t5) {
                kotlin.jvm.internal.t.j(req, "req");
                kotlin.jvm.internal.t.j(message, "message");
                kotlin.jvm.internal.t.j(t5, "t");
                super.onFail(req, i10, list, message, apiResponse, t5);
                SetIdentityFragment.this.dismissProgress();
                SetIdentityFragment.this.setRequest(null);
                Utils.showShortToast(SetIdentityFragment.this.getContext(), message);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(@NotNull ApiRequest req, @Nullable ApiResponse apiResponse) {
                kotlin.jvm.internal.t.j(req, "req");
                SetIdentityFragment.this.dismissProgress();
                SetIdentityFragment.this.setRequest(null);
                SetIdentityFragment.this.showConfirmationDialog(identity);
            }
        });
    }

    @NotNull
    protected final AccountService getAccountService() {
        Object value = this.accountService$delegate.getValue();
        kotlin.jvm.internal.t.i(value, "getValue(...)");
        return (AccountService) value;
    }

    @NotNull
    protected final AccountUtils getAccountUtils() {
        return (AccountUtils) this.accountUtils$delegate.getValue();
    }

    @Nullable
    protected final String getOldCode() {
        return (String) this.oldCode$delegate.getValue();
    }

    @NotNull
    protected final VerifyAccountType getVerifyAccountType() {
        return (VerifyAccountType) this.verifyAccountType$delegate.getValue();
    }

    @NotNull
    protected final VerifyCodeSharedPrefsHelper getVerifyCodeHelper() {
        return (VerifyCodeSharedPrefsHelper) this.verifyCodeHelper$delegate.getValue();
    }

    protected final void goNext(@NotNull String identity) {
        kotlin.jvm.internal.t.j(identity, "identity");
        if (isAdded()) {
            try {
                FragmentTransaction fragmentTransactionQ = getParentFragmentManager().q();
                fragmentTransactionQ.z(R.anim.activity_push_left_in, R.anim.activity_push_left_out, R.anim.activity_push_right_in, R.anim.activity_push_right_out);
                CodeVerifyFragment codeVerifyFragment = new CodeVerifyFragment();
                Bundle bundle = new Bundle();
                if (this instanceof SetEmailFragment) {
                    bundle.putInt(CodeVerifyFragment.KEY_IDENTITY_TO_VERIFY_TYPE, 2);
                    bundle.putString("email", identity);
                } else if (this instanceof SetPhoneNumberFragment) {
                    bundle.putInt(CodeVerifyFragment.KEY_IDENTITY_TO_VERIFY_TYPE, 1);
                    bundle.putString("phone", identity);
                }
                bundle.putInt("verify_type", VerifyAccountTypeKt.getIntValue(getVerifyAccountType()));
                bundle.putInt("set_identity_type", getIntParam("set_identity_type"));
                bundle.putString("old_identity", getOldIdentity());
                bundle.putInt("type", getOldIdentityType());
                bundle.putString("old_code", getOldCode());
                bundle.putString("old_password", getOldPassword());
                bundle.putInt(CodeVerifyFragment.KEY_CHECK_LEVEL, 2);
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
                    kotlin.jvm.internal.t.g(containerId);
                    fragmentTransactionQ.u(containerId.intValue(), codeVerifyFragment).h(null).k();
                }
            } catch (IllegalStateException e) {
                Log.e(e.getLocalizedMessage());
            }
        }
    }

    @Override // com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        kotlin.jvm.internal.t.j(view, "view");
        super.onViewCreated(view, bundle);
        ((TextView) view.findViewById(R.id.title)).setText(VerifyAccountTypeKt.getPageTitle(getVerifyAccountType()));
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @NotNull
    public String getPageName() {
        return VerifyAccountTypeKt.getNvFragmentPageName(getVerifyAccountType()) + "SetIdentity";
    }
}
