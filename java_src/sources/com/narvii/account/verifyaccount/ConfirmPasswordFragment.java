package com.narvii.account.verifyaccount;

import android.app.ActionBar;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentTransaction;
import com.narvii.account.AccountService;
import com.narvii.account.AccountUtils;
import com.narvii.account.SuccessfullyCompletedFragment;
import com.narvii.account.settings.AccountSettingsBaseFragment;
import com.narvii.amino.databinding.FragmentConfirmPasswordBinding;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.NVActivity;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.FragmentExtensionsKt;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
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
import w7.s;

/* JADX INFO: loaded from: classes5.dex */
public final class ConfirmPasswordFragment extends AccountSettingsBaseFragment implements FragmentOnBackListener {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {q0.g(new g0(ConfirmPasswordFragment.class, "binding", "getBinding()Lcom/narvii/amino/databinding/FragmentConfirmPasswordBinding;", 0))};

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final String KEY_SET_IDENTITY_TYPE = "set_identity_type";

    @NotNull
    public static final String KEY_VERIFY_ACCOUNT_TYPE = "verify_type";
    private EditText passEdit;

    @NotNull
    private final kotlin.properties.d binding$delegate = FragmentExtensionsKt.viewBinding(this, ConfirmPasswordFragment$binding$2.INSTANCE);

    @NotNull
    private final m verifyAccountType$delegate = o.a(new ConfirmPasswordFragment$verifyAccountType$2(this));

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(@Nullable NVActivity nVActivity) {
        return false;
    }

    private final FragmentConfirmPasswordBinding getBinding() {
        return (FragmentConfirmPasswordBinding) this.binding$delegate.getValue(this, $$delegatedProperties[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final VerifyAccountType getVerifyAccountType() {
        return (VerifyAccountType) this.verifyAccountType$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$0(ConfirmPasswordFragment this$0, View view) {
        t.j(this$0, "this$0");
        FragmentActivity activity = this$0.getActivity();
        if (activity != null) {
            activity.onBackPressed();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$2(ConfirmPasswordFragment this$0, View view) {
        t.j(this$0, "this$0");
        EditText editText = this$0.passEdit;
        if (editText == null) {
            t.B("passEdit");
            editText = null;
        }
        this$0.validatePassword(editText.getText().toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$8(ConfirmPasswordFragment this$0, View view) {
        t.j(this$0, "this$0");
        try {
            FragmentTransaction fragmentTransactionQ = this$0.getParentFragmentManager().q();
            fragmentTransactionQ.z(R.anim.activity_push_left_in, R.anim.activity_push_left_out, R.anim.activity_push_right_in, R.anim.activity_push_right_out);
            VerifyAccountChooseIdentityFragment verifyAccountChooseIdentityFragment = new VerifyAccountChooseIdentityFragment();
            Bundle bundle = new Bundle();
            bundle.putInt("verify_type", 1);
            verifyAccountChooseIdentityFragment.setArguments(bundle);
            Integer containerId = this$0.getContainerId();
            if (containerId != null) {
                t.g(containerId);
                fragmentTransactionQ.v(containerId.intValue(), verifyAccountChooseIdentityFragment, "verify_choose_identity").h(null).k();
            } else if (this$0.getFrame() != null) {
                fragmentTransactionQ.v(R.id.frame, verifyAccountChooseIdentityFragment, "verify_choose_identity").h(null).k();
            }
        } catch (IllegalStateException e) {
            Log.e(e.getLocalizedMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateNextView() {
        EditText editText = this.passEdit;
        if (editText == null) {
            t.B("passEdit");
            editText = null;
        }
        getBinding().next.setEnabled(editText.getText().toString().length() >= 6);
    }

    private final void validatePassword(final String str) {
        AccountService accountService = (AccountService) getService("account");
        ApiService apiService = (ApiService) getService("api");
        ApiRequest.Builder builderParam = ApiRequest.builder().https().global().post().path("/auth/verify-password").param(a0.a.o, accountService.getDeviceId());
        if (str.length() > 0) {
            builderParam.param("secret", "0 " + str);
        }
        apiService.exec(builderParam.build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.account.verifyaccount.ConfirmPasswordFragment.validatePassword.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(@NotNull ApiRequest req, int i10, @Nullable List<? extends NameValuePair> list, @NotNull String message, @Nullable ApiResponse apiResponse, @NotNull Throwable t5) {
                t.j(req, "req");
                t.j(message, "message");
                t.j(t5, "t");
                NVToast.makeText(ConfirmPasswordFragment.this.getContext(), message, 0).show();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(@NotNull ApiRequest req, @Nullable ApiResponse apiResponse) throws Exception {
                t.j(req, "req");
                if (ConfirmPasswordFragment.this.getVerifyAccountType() instanceof DeleteAccountVerifyAccount) {
                    ConfirmPasswordFragment.this.deleteAccount(str);
                } else {
                    ConfirmPasswordFragment.this.goToVerifyIdentity(str);
                }
            }
        });
    }

    public final void deleteAccount(@NotNull String password) {
        t.j(password, "password");
        AccountService accountService = (AccountService) getService("account");
        ApiService apiService = (ApiService) getService("api");
        ApiRequest.Builder builderParam = ApiRequest.builder().https().global().post().path("/account/delete-request").param(a0.a.o, accountService.getDeviceId());
        if (password.length() > 0) {
            builderParam.param("secret", "0 " + password);
        }
        apiService.exec(builderParam.build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.account.verifyaccount.ConfirmPasswordFragment.deleteAccount.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(@NotNull ApiRequest req, int i10, @Nullable List<? extends NameValuePair> list, @NotNull String message, @Nullable ApiResponse apiResponse, @NotNull Throwable t5) {
                t.j(req, "req");
                t.j(message, "message");
                t.j(t5, "t");
                NVToast.makeText(ConfirmPasswordFragment.this.getContext(), message, 0).show();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(@NotNull ApiRequest req, @Nullable ApiResponse apiResponse) throws Exception {
                t.j(req, "req");
                try {
                    FragmentTransaction fragmentTransactionQ = ConfirmPasswordFragment.this.getParentFragmentManager().q();
                    ConfirmPasswordFragment confirmPasswordFragment = ConfirmPasswordFragment.this;
                    fragmentTransactionQ.z(R.anim.activity_push_left_in, R.anim.activity_push_left_out, R.anim.activity_push_right_in, R.anim.activity_push_right_out);
                    SuccessfullyCompletedFragment successfullyCompletedFragment = new SuccessfullyCompletedFragment();
                    Bundle bundle = new Bundle();
                    bundle.putInt("verify_type", VerifyAccountTypeKt.getIntValue(confirmPasswordFragment.getVerifyAccountType()));
                    successfullyCompletedFragment.setArguments(bundle);
                    Integer containerId = confirmPasswordFragment.getContainerId();
                    if (containerId != null) {
                        t.g(containerId);
                        fragmentTransactionQ.v(containerId.intValue(), successfullyCompletedFragment, "successfully_completed").h(null).k();
                    } else if (confirmPasswordFragment.getFrame() != null) {
                        fragmentTransactionQ.v(R.id.frame, successfullyCompletedFragment, "successfully_completed").h(null).k();
                    }
                } catch (IllegalStateException e) {
                    Log.e(e.getLocalizedMessage());
                }
            }
        });
    }

    public final void goToVerifyIdentity(@NotNull String password) {
        t.j(password, "password");
        try {
            FragmentTransaction fragmentTransactionQ = getParentFragmentManager().q();
            VerifyAccountChooseIdentityFragment verifyAccountChooseIdentityFragment = new VerifyAccountChooseIdentityFragment();
            fragmentTransactionQ.z(R.anim.activity_push_left_in, R.anim.activity_push_left_out, R.anim.activity_push_right_in, R.anim.activity_push_right_out);
            Bundle bundle = new Bundle();
            bundle.putInt("verify_type", VerifyAccountTypeKt.getIntValue(getVerifyAccountType()));
            bundle.putInt("set_identity_type", getIntParam("set_identity_type"));
            bundle.putString("old_password", password);
            String email = this.accountService.getEmail();
            if (email != null) {
                t.g(email);
                if (!kotlin.text.t.z(email)) {
                    bundle.putString("email", email);
                }
            }
            String phoneNumber = this.accountService.getPhoneNumber();
            if (phoneNumber != null) {
                t.g(phoneNumber);
                if (!kotlin.text.t.z(phoneNumber)) {
                    bundle.putString("phone", phoneNumber);
                }
            }
            verifyAccountChooseIdentityFragment.setArguments(bundle);
            Integer containerId = getContainerId();
            if (containerId != null) {
                t.g(containerId);
                fragmentTransactionQ.v(containerId.intValue(), verifyAccountChooseIdentityFragment, "verifyAccount").h(null).k();
            } else if (getFrame() != null) {
                fragmentTransactionQ.v(R.id.frame, verifyAccountChooseIdentityFragment, "verifyAccount").h(null).k();
            }
        } catch (IllegalStateException e) {
            Log.e(e.getLocalizedMessage());
        }
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
        ((TextView) view.findViewById(R.id.title)).setText(VerifyAccountTypeKt.getPageTitle(getVerifyAccountType()));
        View viewFindViewById = view.findViewById(R.id.titleConfirmPass);
        t.i(viewFindViewById, "findViewById(...)");
        updateSubtitle((TextView) viewFindViewById);
        View viewFindViewById2 = view.findViewById(R.id.password_layout).findViewById(R.id.edit);
        t.i(viewFindViewById2, "findViewById(...)");
        EditText editText = (EditText) viewFindViewById2;
        this.passEdit = editText;
        if (editText == null) {
            t.B("passEdit");
            editText = null;
        }
        editText.addTextChangedListener(new TextWatcher() { // from class: com.narvii.account.verifyaccount.ConfirmPasswordFragment.onViewCreated.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(@Nullable Editable editable) {
                ConfirmPasswordFragment.this.updateNextView();
            }
        });
        getBinding().actionbarBack.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.account.verifyaccount.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ConfirmPasswordFragment.onViewCreated$lambda$0(this.f1771a, view2);
            }
        });
        getBinding().next.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.account.verifyaccount.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ConfirmPasswordFragment.onViewCreated$lambda$2(this.f1772a, view2);
            }
        });
        getBinding().forgot.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.account.verifyaccount.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ConfirmPasswordFragment.onViewCreated$lambda$8(this.f1773a, view2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final View getFrame() {
        View view = getView();
        if (view != null) {
            return view.findViewById(R.id.frame);
        }
        return null;
    }

    private final void updateSubtitle(TextView textView) {
        int i10;
        VerifyAccountType verifyAccountType = getVerifyAccountType();
        if (verifyAccountType instanceof UpdateIdentityVerifyAccount) {
            IdentityType identityType = VerifyAccountTypeKt.identityType(getIntParam("set_identity_type"));
            if (identityType instanceof EmailIdentity) {
                i10 = R.string.confirm_password_update_email;
            } else if (identityType instanceof PhoneIdentity) {
                i10 = R.string.confirm_password_update_phone_number;
            } else {
                throw new s();
            }
        } else if (verifyAccountType instanceof AddIdentityVerifyAccount) {
            IdentityType identityType2 = VerifyAccountTypeKt.identityType(getIntParam("set_identity_type"));
            if (identityType2 instanceof EmailIdentity) {
                i10 = R.string.confirm_password_add_email;
            } else if (identityType2 instanceof PhoneIdentity) {
                i10 = R.string.confirm_password_add_phone_number;
            } else {
                throw new s();
            }
        } else if (verifyAccountType instanceof DeleteAccountVerifyAccount) {
            i10 = R.string.confirm_password_delete_account_title;
        } else {
            i10 = R.string.change_password_confirm_title;
        }
        textView.setText(i10);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        return VerifyAccountTypeKt.getNvFragmentPageName(getVerifyAccountType()) + "confirm_password";
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
        this.accountUtils = new AccountUtils(getContext());
    }
}
