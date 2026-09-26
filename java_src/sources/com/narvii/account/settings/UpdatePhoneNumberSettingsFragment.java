package com.narvii.account.settings;

import android.app.ActionBar;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentTransaction;
import com.narvii.account.verifyaccount.AddIdentityVerifyAccount;
import com.narvii.account.verifyaccount.ConfirmPasswordFragment;
import com.narvii.account.verifyaccount.PhoneIdentity;
import com.narvii.account.verifyaccount.UpdateIdentityVerifyAccount;
import com.narvii.account.verifyaccount.VerifyAccountType;
import com.narvii.account.verifyaccount.VerifyAccountTypeKt;
import com.narvii.account.verifyaccount.VerifyCodeSharedPrefsHelper;
import com.narvii.amino.databinding.FragmentUpdatePhoneNumberSettingsBinding;
import com.narvii.amino.master.R;
import com.narvii.util.FragmentExtensionsKt;
import com.narvii.util.Log;
import com.narvii.widget.TextInputLayout;
import kotlin.jvm.internal.g0;
import kotlin.jvm.internal.q0;
import kotlin.jvm.internal.t;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.o;

/* JADX INFO: loaded from: classes6.dex */
public final class UpdatePhoneNumberSettingsFragment extends AccountSettingsBaseFragment {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {q0.g(new g0(UpdatePhoneNumberSettingsFragment.class, "binding", "getBinding()Lcom/narvii/amino/databinding/FragmentUpdatePhoneNumberSettingsBinding;", 0))};

    @NotNull
    private final kotlin.properties.d binding$delegate = FragmentExtensionsKt.viewBinding(this, UpdatePhoneNumberSettingsFragment$binding$2.INSTANCE);

    @NotNull
    private final m phoneNumberText$delegate = o.a(new UpdatePhoneNumberSettingsFragment$phoneNumberText$2(this));
    public VerifyCodeSharedPrefsHelper verifyCodeHelper;

    public final void setVerifyCodeHelper(@NotNull VerifyCodeSharedPrefsHelper verifyCodeSharedPrefsHelper) {
        t.j(verifyCodeSharedPrefsHelper, "<set-?>");
        this.verifyCodeHelper = verifyCodeSharedPrefsHelper;
    }

    private final void addPhoneNumber() {
        goToConfirmPassword(new AddIdentityVerifyAccount(PhoneIdentity.INSTANCE));
    }

    private final FragmentUpdatePhoneNumberSettingsBinding getBinding() {
        return (FragmentUpdatePhoneNumberSettingsBinding) this.binding$delegate.getValue(this, $$delegatedProperties[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$0(UpdatePhoneNumberSettingsFragment this$0, View view) {
        t.j(this$0, "this$0");
        this$0.addPhoneNumber();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$1(UpdatePhoneNumberSettingsFragment this$0, View view) {
        t.j(this$0, "this$0");
        this$0.updatePhoneNumber();
    }

    private final void updatePhoneNumber() {
        goToConfirmPassword(new UpdateIdentityVerifyAccount(PhoneIdentity.INSTANCE));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void updateViews$lambda$2(UpdatePhoneNumberSettingsFragment this$0, View view) {
        t.j(this$0, "this$0");
        FragmentActivity activity = this$0.getActivity();
        if (activity != null) {
            activity.onBackPressed();
        }
    }

    @Nullable
    public final String getPhoneNumberText() {
        return (String) this.phoneNumberText$delegate.getValue();
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
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        t.j(inflater, "inflater");
        return getBinding().getRoot();
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        t.j(view, "view");
        super.onViewCreated(view, bundle);
        getBinding().addPhoneNumber.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.account.settings.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                UpdatePhoneNumberSettingsFragment.onViewCreated$lambda$0(this.f1757a, view2);
            }
        });
        getBinding().changePhoneNumber.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.account.settings.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                UpdatePhoneNumberSettingsFragment.onViewCreated$lambda$1(this.f1758a, view2);
            }
        });
        updateViews();
    }

    private final void goToConfirmPassword(VerifyAccountType verifyAccountType) {
        try {
            FragmentTransaction fragmentTransactionQ = getParentFragmentManager().q();
            ConfirmPasswordFragment confirmPasswordFragment = new ConfirmPasswordFragment();
            fragmentTransactionQ.z(R.anim.activity_push_left_in, R.anim.activity_push_left_out, R.anim.activity_push_right_in, R.anim.activity_push_right_out);
            Bundle bundle = new Bundle();
            bundle.putInt("verify_type", VerifyAccountTypeKt.getIntValue(verifyAccountType));
            bundle.putInt("set_identity_type", 1);
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
            window.setSoftInputMode(2);
        }
    }

    @Override // com.narvii.account.settings.AccountSettingsBaseFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Context context = getContext();
        t.i(context, "getContext(...)");
        setVerifyCodeHelper(new VerifyCodeSharedPrefsHelper(context));
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0021  */
    @Override // com.narvii.account.settings.AccountSettingsBaseFragment
    protected void updateViews() {
        boolean z6;
        int i10;
        int i11;
        int i12;
        int i13;
        super.updateViews();
        getBinding().actionbarBack.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.account.settings.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UpdatePhoneNumberSettingsFragment.updateViews$lambda$2(this.f1759a, view);
            }
        });
        String phoneNumberText = getPhoneNumberText();
        int i14 = 0;
        if (phoneNumberText != null) {
            z6 = true;
            if (!(!kotlin.text.t.z(phoneNumberText))) {
                z6 = false;
            }
        } else {
            z6 = false;
        }
        Button button = getBinding().addPhoneNumber;
        if (z6) {
            i10 = 8;
        } else {
            i10 = 0;
        }
        button.setVisibility(i10);
        Button button2 = getBinding().changePhoneNumber;
        if (z6) {
            i11 = 0;
        } else {
            i11 = 8;
        }
        button2.setVisibility(i11);
        TextView textView = getBinding().noPhoneSet;
        if (z6) {
            i12 = 8;
        } else {
            i12 = 0;
        }
        textView.setVisibility(i12);
        TextView textView2 = getBinding().desc;
        if (z6) {
            i13 = 0;
        } else {
            i13 = 8;
        }
        textView2.setVisibility(i13);
        TextInputLayout textInputLayout = getBinding().phoneInputLayout;
        if (!z6) {
            i14 = 8;
        }
        textInputLayout.setVisibility(i14);
        String countryCode = this.accountUtils.getCountryCode(getPhoneNumberText());
        if (countryCode != null) {
            getBinding().countryPicker.setPhoneNumber(org.slf4j.c.ANY_NON_NULL_MARKER + countryCode);
        }
        String nationalNumber = this.accountUtils.getNationalNumber(getPhoneNumberText());
        if (nationalNumber != null) {
            getBinding().edit.setText(nationalNumber);
        }
    }
}
