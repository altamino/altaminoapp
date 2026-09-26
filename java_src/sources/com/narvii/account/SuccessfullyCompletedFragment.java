package com.narvii.account;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.narvii.account.verifyaccount.AddIdentityVerifyAccount;
import com.narvii.account.verifyaccount.ChangePassVerifyAccount;
import com.narvii.account.verifyaccount.DeleteAccountVerifyAccount;
import com.narvii.account.verifyaccount.EmailIdentity;
import com.narvii.account.verifyaccount.ForgotPassVerifyAccount;
import com.narvii.account.verifyaccount.IdentityType;
import com.narvii.account.verifyaccount.PhoneIdentity;
import com.narvii.account.verifyaccount.ResetPassVerifyAccount;
import com.narvii.account.verifyaccount.UpdateIdentityVerifyAccount;
import com.narvii.account.verifyaccount.VerifyAccountType;
import com.narvii.account.verifyaccount.VerifyAccountTypeKt;
import com.narvii.account.verifyaccount.VerifyNewIdentityVerifyAccount;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVFragment;
import com.narvii.master.MasterActivity;
import com.narvii.util.Callback;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.safedk.android.utils.Logger;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.o;

/* JADX INFO: loaded from: classes4.dex */
public final class SuccessfullyCompletedFragment extends NVFragment implements FragmentOnBackListener {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final String KEY_SET_IDENTITY_TYPE = "set_identity_type";

    @NotNull
    public static final String KEY_VERIFY_ACCOUNT_TYPE = "verify_type";

    @NotNull
    private final w7.m verifyAccountType$delegate = o.a(new SuccessfullyCompletedFragment$verifyAccountType$2(this));

    @NotNull
    private final w7.m accountService$delegate = o.a(new SuccessfullyCompletedFragment$accountService$2(this));

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(@Nullable NVActivity nVActivity) {
        return false;
    }

    private final AccountService getAccountService() {
        Object value = this.accountService$delegate.getValue();
        kotlin.jvm.internal.t.i(value, "getValue(...)");
        return (AccountService) value;
    }

    private final VerifyAccountType getVerifyAccountType() {
        return (VerifyAccountType) this.verifyAccountType$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void logout$lambda$2(SuccessfullyCompletedFragment this$0, Boolean bool) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        if (!bool.booleanValue()) {
            NVToast.makeText(this$0.getContext(), this$0.getString(R.string.account_logout_fail_message), 0).show();
        }
        this$0.resetApp();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$1(SuccessfullyCompletedFragment this$0) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        try {
            VerifyAccountType verifyAccountType = this$0.getVerifyAccountType();
            if ((verifyAccountType instanceof ChangePassVerifyAccount) || (verifyAccountType instanceof VerifyNewIdentityVerifyAccount) || (verifyAccountType instanceof AddIdentityVerifyAccount) || (verifyAccountType instanceof UpdateIdentityVerifyAccount)) {
                FragmentActivity activity = this$0.getActivity();
                if (activity != null) {
                    activity.finish();
                }
            } else if (verifyAccountType instanceof DeleteAccountVerifyAccount) {
                this$0.logout();
            } else {
                this$0.getParentFragmentManager().l1(null, 1);
            }
        } catch (IllegalStateException e) {
            Log.w(e.getLocalizedMessage());
        }
    }

    private final void resetApp() {
        Utils.postDelayed(new Runnable() { // from class: com.narvii.account.d1
            @Override // java.lang.Runnable
            public final void run() {
                SuccessfullyCompletedFragment.resetApp$lambda$3(this.f1697a);
            }
        }, 500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void resetApp$lambda$3(SuccessfullyCompletedFragment this$0) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        if (this$0.getActivity() == null) {
            return;
        }
        if (NVApplication.CLIENT_TYPE == 100) {
            Intent intent = new Intent(this$0.getContext(), (Class<?>) MasterActivity.class);
            intent.putExtra("disallowOnBoarding", true);
            intent.setFlags(268468224);
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this$0, intent);
            FragmentActivity activity = this$0.getActivity();
            if (activity != null) {
                activity.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
            }
        }
        FragmentActivity activity2 = this$0.getActivity();
        if (activity2 != null) {
            activity2.finish();
        }
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        kotlin.jvm.internal.t.j(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_successfully_completed, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        int i10;
        kotlin.jvm.internal.t.j(view, "view");
        super.onViewCreated(view, bundle);
        View viewFindViewById = view.findViewById(R.id.title);
        kotlin.jvm.internal.t.h(viewFindViewById, "null cannot be cast to non-null type android.widget.TextView");
        ((TextView) viewFindViewById).setText(VerifyAccountTypeKt.getPageTitle(getVerifyAccountType()));
        VerifyAccountType verifyAccountType = getVerifyAccountType();
        if ((verifyAccountType instanceof ResetPassVerifyAccount) || (verifyAccountType instanceof ForgotPassVerifyAccount)) {
            i10 = R.string.great_reset_password_success_subtitle;
        } else if (verifyAccountType instanceof ChangePassVerifyAccount) {
            i10 = R.string.great_changed_password_success_subtitle;
        } else if (verifyAccountType instanceof VerifyNewIdentityVerifyAccount) {
            i10 = R.string.successfully_activated_email;
        } else if (verifyAccountType instanceof AddIdentityVerifyAccount) {
            IdentityType identityType = VerifyAccountTypeKt.identityType(getIntParam("set_identity_type"));
            if (identityType instanceof EmailIdentity) {
                i10 = R.string.great_successfully_added_email;
            } else {
                if (!(identityType instanceof PhoneIdentity)) {
                    throw new w7.s();
                }
                i10 = R.string.great_successfully_added_phone_number;
            }
        } else if (verifyAccountType instanceof UpdateIdentityVerifyAccount) {
            IdentityType identityType2 = VerifyAccountTypeKt.identityType(getIntParam("set_identity_type"));
            if (identityType2 instanceof EmailIdentity) {
                i10 = R.string.great_successfully_updated_email;
            } else {
                if (!(identityType2 instanceof PhoneIdentity)) {
                    throw new w7.s();
                }
                i10 = R.string.great_successfully_updated_phone_number;
            }
        } else {
            i10 = verifyAccountType instanceof DeleteAccountVerifyAccount ? R.string.successfully_deleted_account : R.string.great_successfully_completed_subtitle;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(getResources().getString(i10));
        if (!getAccountService().hasAccount()) {
            sb.append("\n");
            sb.append(getResources().getString(R.string.login_again));
        }
        View viewFindViewById2 = view.findViewById(R.id.subtitle);
        kotlin.jvm.internal.t.h(viewFindViewById2, "null cannot be cast to non-null type android.widget.TextView");
        ((TextView) viewFindViewById2).setText(sb.toString());
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.narvii.account.e1
            @Override // java.lang.Runnable
            public final void run() {
                SuccessfullyCompletedFragment.onViewCreated$lambda$1(this.f1700a);
            }
        }, 3000L);
    }

    private final void logout() {
        if (getActivity() != null) {
            new ProgressDialog(getActivity()).show();
        }
        new LogoutHelper(this).logout(new Callback() { // from class: com.narvii.account.c1
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                SuccessfullyCompletedFragment.logout$lambda$2(this.f1692a, (Boolean) obj);
            }
        });
    }
}
