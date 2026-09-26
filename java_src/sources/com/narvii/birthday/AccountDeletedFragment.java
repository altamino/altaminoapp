package com.narvii.birthday;

import android.app.ActionBar;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.narvii.account.LogoutHelper;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.NVActivity;
import com.narvii.app.NVFragment;
import com.narvii.master.MasterActivity;
import com.narvii.util.Callback;
import com.narvii.util.Constants;
import com.narvii.util.Utils;
import com.safedk.android.utils.Logger;
import java.io.Serializable;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class AccountDeletedFragment extends NVFragment implements FragmentOnBackListener {
    private EnterBirthdayFragment.BirthdayType birthdayType;

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(@Nullable NVActivity nVActivity) {
        return true;
    }

    private final void logout() {
        new LogoutHelper(this).logout(new Callback() { // from class: com.narvii.birthday.c
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                AccountDeletedFragment.logout$lambda$5(this.f1834a, (Boolean) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void logout$lambda$5(final AccountDeletedFragment this$0, Boolean bool) {
        t.j(this$0, "this$0");
        Utils.postDelayed(new Runnable() { // from class: com.narvii.birthday.a
            @Override // java.lang.Runnable
            public final void run() {
                AccountDeletedFragment.logout$lambda$5$lambda$4(this.f1832a);
            }
        }, 500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void logout$lambda$5$lambda$4(AccountDeletedFragment this$0) {
        t.j(this$0, "this$0");
        FragmentActivity activity = this$0.getActivity();
        if (activity != null) {
            Intent intent = new Intent(this$0.getContext(), (Class<?>) MasterActivity.class);
            intent.putExtra("disallowOnBoarding", true);
            intent.setFlags(268468224);
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this$0, intent);
            activity.overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
            activity.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$1(AccountDeletedFragment this$0, View view) {
        t.j(this$0, "this$0");
        this$0.logout();
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        t.j(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_account_deleted, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intent intent;
        ActionBar actionBar;
        t.j(view, "view");
        super.onViewCreated(view, bundle);
        FragmentActivity activity = getActivity();
        if (activity != null && (actionBar = activity.getActionBar()) != null) {
            actionBar.hide();
        }
        FragmentActivity activity2 = getActivity();
        EnterBirthdayFragment.BirthdayType birthdayType = null;
        Serializable serializableExtra = (activity2 == null || (intent = activity2.getIntent()) == null) ? null : intent.getSerializableExtra(Constants.PARAM_BIRTHDAY_TYPE);
        t.h(serializableExtra, "null cannot be cast to non-null type com.narvii.birthday.EnterBirthdayFragment.BirthdayType");
        this.birthdayType = (EnterBirthdayFragment.BirthdayType) serializableExtra;
        ((ImageView) view.findViewById(R.id.actionbar_back)).setVisibility(8);
        EnterBirthdayFragment.BirthdayType birthdayType2 = this.birthdayType;
        if (birthdayType2 == null) {
            t.B("birthdayType");
        } else {
            birthdayType = birthdayType2;
        }
        if (birthdayType == EnterBirthdayFragment.BirthdayType.LIVE) {
            ((TextView) view.findViewById(R.id.title)).setText(getString(R.string.tmg_go_live));
            ((TextView) view.findViewById(R.id.description)).setText(getString(R.string.birthday_not_eligible_tmg_desc));
        }
        ((Button) view.findViewById(R.id.ok)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.birthday.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                AccountDeletedFragment.onViewCreated$lambda$1(this.f1833a, view2);
            }
        });
        hideBottomAdsView();
    }
}
