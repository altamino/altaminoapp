package com.narvii.account;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.fragment.app.FragmentViewModelLazyKt;
import com.narvii.account.vm.SignUpViewModel;
import com.narvii.account.vm.SignupUiState;
import com.narvii.amino.databinding.FragmentSignUpBinding;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.birthday.EnterBirthdayFragment;
import com.narvii.util.Constants;
import com.narvii.util.FragmentExtensionsKt;
import com.narvii.util.Log;
import com.narvii.util.kotlin.TextViewExtensionKt;
import com.narvii.util.statusbar.StatusBarUtils;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.o;
import w7.q;

/* JADX INFO: loaded from: classes9.dex */
public final class SignUpFragment extends AccountBaseFragment {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {kotlin.jvm.internal.q0.g(new kotlin.jvm.internal.g0(SignUpFragment.class, "binding", "getBinding()Lcom/narvii/amino/databinding/FragmentSignUpBinding;", 0))};

    @NotNull
    private final kotlin.properties.d binding$delegate;
    private ActivityResultLauncher<Intent> birthdayActivityResultLauncher;
    private boolean isEmailBirthdayConfirmation;
    private boolean isPhoneBirthdayConfirmation;

    @NotNull
    private final w7.m viewModel$delegate;

    /* JADX INFO: renamed from: com.narvii.account.SignUpFragment$onViewCreated$1, reason: invalid class name */
    static final class AnonymousClass1 extends kotlin.jvm.internal.v implements e8.a<w7.l0> {
        AnonymousClass1() {
            super(0);
        }

        @Override // e8.a
        public /* bridge */ /* synthetic */ w7.l0 invoke() {
            invoke2();
            return w7.l0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            FragmentManager fragmentManager = SignUpFragment.this.getFragmentManager();
            if (fragmentManager != null) {
                fragmentManager.l1(null, 1);
            }
        }
    }

    /* JADX INFO: renamed from: com.narvii.account.SignUpFragment$onViewCreated$6, reason: invalid class name */
    static final class AnonymousClass6 extends kotlin.jvm.internal.v implements e8.l<SignupUiState, w7.l0> {
        AnonymousClass6() {
            super(1);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ w7.l0 invoke(SignupUiState signupUiState) {
            invoke2(signupUiState);
            return w7.l0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(SignupUiState signupUiState) {
            Button emailSignup = SignUpFragment.this.getBinding().emailSignup;
            kotlin.jvm.internal.t.i(emailSignup, "emailSignup");
            emailSignup.setVisibility(signupUiState.isEmailSignupAvailable() ? 0 : 8);
            Button phoneSignup = SignUpFragment.this.getBinding().phoneSignup;
            kotlin.jvm.internal.t.i(phoneSignup, "phoneSignup");
            phoneSignup.setVisibility(signupUiState.isPhoneSignupAvailable() ? 0 : 8);
        }
    }

    @Override // com.narvii.account.AccountBaseFragment
    protected boolean addStatusBarMargin() {
        return false;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @NotNull
    public String getPageName() {
        return "sign_up_options";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final FragmentSignUpBinding getBinding() {
        return (FragmentSignUpBinding) this.binding$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final SignUpViewModel getViewModel() {
        return (SignUpViewModel) this.viewModel$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreate$lambda$2(SignUpFragment this$0, ActivityResult activityResult) {
        Intent intentC;
        kotlin.jvm.internal.t.j(this$0, "this$0");
        if (activityResult.e() == -1) {
            FragmentActivity activity = this$0.getActivity();
            LoginActivity loginActivity = activity instanceof LoginActivity ? (LoginActivity) activity : null;
            if (loginActivity == null || (intentC = activityResult.c()) == null) {
                return;
            }
            loginActivity.birthday = intentC.getStringExtra(Constants.PARAM_BIRTHDAY);
            if (this$0.isEmailBirthdayConfirmation) {
                this$0.isEmailBirthdayConfirmation = false;
                this$0.goToEmailSignup();
            } else if (this$0.isPhoneBirthdayConfirmation) {
                this$0.isPhoneBirthdayConfirmation = false;
                this$0.goToPhoneNumberSignup();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$3(SignUpFragment this$0, View view) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        Intent intent = FragmentWrapperActivity.intent(EnterBirthdayFragment.class);
        intent.putExtra(Constants.PARAM_BIRTHDAY_TYPE, EnterBirthdayFragment.BirthdayType.SIGNUP);
        this$0.isEmailBirthdayConfirmation = true;
        ActivityResultLauncher<Intent> activityResultLauncher = this$0.birthdayActivityResultLauncher;
        if (activityResultLauncher == null) {
            kotlin.jvm.internal.t.B("birthdayActivityResultLauncher");
            activityResultLauncher = null;
        }
        activityResultLauncher.a(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$4(SignUpFragment this$0, View view) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        Intent intent = FragmentWrapperActivity.intent(EnterBirthdayFragment.class);
        intent.putExtra(Constants.PARAM_BIRTHDAY_TYPE, EnterBirthdayFragment.BirthdayType.SIGNUP);
        this$0.isPhoneBirthdayConfirmation = true;
        ActivityResultLauncher<Intent> activityResultLauncher = this$0.birthdayActivityResultLauncher;
        if (activityResultLauncher == null) {
            kotlin.jvm.internal.t.B("birthdayActivityResultLauncher");
            activityResultLauncher = null;
        }
        activityResultLauncher.a(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$6(SignUpFragment this$0, View view) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        FragmentActivity activity = this$0.getActivity();
        LoginActivity loginActivity = activity instanceof LoginActivity ? (LoginActivity) activity : null;
        if (loginActivity != null) {
            loginActivity.statType = 3;
            loginActivity.loggingMethod = "Facebook";
        }
        FragmentManager fragmentManager = this$0.getFragmentManager();
        if ((fragmentManager != null ? fragmentManager.l0(R.id.facebook_login_fragment) : null) != null) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$8(SignUpFragment this$0, View view) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        FragmentActivity activity = this$0.getActivity();
        LoginActivity loginActivity = activity instanceof LoginActivity ? (LoginActivity) activity : null;
        if (loginActivity != null) {
            loginActivity.statType = 4;
            loginActivity.loggingMethod = "Google";
        }
        FragmentManager fragmentManager = this$0.getFragmentManager();
        GoogleLoginFragment googleLoginFragment = (GoogleLoginFragment) (fragmentManager != null ? fragmentManager.l0(R.id.google_login_fragment) : null);
        if (googleLoginFragment != null) {
            googleLoginFragment.googleConnect();
        }
    }

    @Override // androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        kotlin.jvm.internal.t.j(inflater, "inflater");
        ScrollView root = getBinding().getRoot();
        kotlin.jvm.internal.t.i(root, "getRoot(...)");
        return root;
    }

    @Override // com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        kotlin.jvm.internal.t.j(view, "view");
        super.onViewCreated(view, bundle);
        StatusBarUtils.addMarginTopToContentChild(getActivity(), view.findViewById(R.id.main_layout));
        String string = getContext().getText(R.string.account_login_link).toString();
        int color = ContextCompat.getColor(getContext(), R.color.text_link_color);
        TextView signupLinkTV = getBinding().signupLinkTV;
        kotlin.jvm.internal.t.i(signupLinkTV, "signupLinkTV");
        TextViewExtensionKt.makeTextLink(signupLinkTV, string, false, Integer.valueOf(color), new AnonymousClass1());
        getBinding().emailSignup.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.account.y0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                SignUpFragment.onViewCreated$lambda$3(this.f1785a, view2);
            }
        });
        Button phoneSignup = getBinding().phoneSignup;
        kotlin.jvm.internal.t.i(phoneSignup, "phoneSignup");
        Boolean showPhoneNumberItem = LoginActivity.showPhoneNumberItem;
        kotlin.jvm.internal.t.i(showPhoneNumberItem, "showPhoneNumberItem");
        phoneSignup.setVisibility(showPhoneNumberItem.booleanValue() ? 0 : 8);
        getBinding().phoneSignup.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.account.z0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                SignUpFragment.onViewCreated$lambda$4(this.f1787a, view2);
            }
        });
        getBinding().facebook.setVisibility(8);
        getBinding().google.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.account.b1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                SignUpFragment.onViewCreated$lambda$8(this.f1687a, view2);
            }
        });
        getViewModel().getUiState().i(getViewLifecycleOwner(), new SignUpFragment$sam$androidx_lifecycle_Observer$0(new AnonymousClass6()));
        getViewModel().loadPhoneAndEmailSignUp();
    }

    public SignUpFragment() {
        w7.m mVarB = o.b(q.NONE, new SignUpFragment$special$$inlined$viewModels$default$2(new SignUpFragment$special$$inlined$viewModels$default$1(this)));
        this.viewModel$delegate = FragmentViewModelLazyKt.c(this, kotlin.jvm.internal.q0.b(SignUpViewModel.class), new SignUpFragment$special$$inlined$viewModels$default$3(mVarB), new SignUpFragment$special$$inlined$viewModels$default$4(null, mVarB), new SignUpFragment$special$$inlined$viewModels$default$5(this, mVarB));
        this.binding$delegate = FragmentExtensionsKt.viewBinding(this, SignUpFragment$binding$2.INSTANCE);
    }

    private final void goToEmailSignup() {
        try {
            FragmentTransaction fragmentTransactionQ = getParentFragmentManager().q();
            kotlin.jvm.internal.t.i(fragmentTransactionQ, "beginTransaction(...)");
            fragmentTransactionQ.z(R.anim.activity_push_left_in, R.anim.activity_push_left_out, R.anim.activity_push_right_in, R.anim.activity_push_right_out);
            EmailSignupFragment emailSignupFragment = new EmailSignupFragment();
            Bundle bundle = new Bundle();
            bundle.putString(AccountBaseFragment.KEY_SIGN_UP_METHOD, "emailSignup");
            emailSignupFragment.setArguments(bundle);
            fragmentTransactionQ.u(R.id.frame, emailSignupFragment).h(null).k();
        } catch (IllegalStateException e) {
            Log.e(e.getLocalizedMessage());
        }
    }

    private final void goToPhoneNumberSignup() {
        try {
            FragmentTransaction fragmentTransactionQ = getParentFragmentManager().q();
            kotlin.jvm.internal.t.i(fragmentTransactionQ, "beginTransaction(...)");
            fragmentTransactionQ.z(R.anim.activity_push_left_in, R.anim.activity_push_left_out, R.anim.activity_push_right_in, R.anim.activity_push_right_out);
            MobileSignupFragment mobileSignupFragment = new MobileSignupFragment();
            Bundle bundle = new Bundle();
            bundle.putString(AccountBaseFragment.KEY_SIGN_UP_METHOD, "phoneSignup");
            mobileSignupFragment.setArguments(bundle);
            fragmentTransactionQ.u(R.id.frame, mobileSignupFragment).h(null).k();
        } catch (IllegalStateException e) {
            Log.e(e.getLocalizedMessage());
        }
    }

    @Override // com.narvii.account.AccountBaseFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        ActivityResultLauncher<Intent> activityResultLauncherRegisterForActivityResult = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new ActivityResultCallback() { // from class: com.narvii.account.x0
            @Override // androidx.activity.result.ActivityResultCallback
            public final void a(Object obj) {
                SignUpFragment.onCreate$lambda$2(this.f1783a, (ActivityResult) obj);
            }
        });
        kotlin.jvm.internal.t.i(activityResultLauncherRegisterForActivityResult, "registerForActivityResult(...)");
        this.birthdayActivityResultLauncher = activityResultLauncherRegisterForActivityResult;
    }
}
