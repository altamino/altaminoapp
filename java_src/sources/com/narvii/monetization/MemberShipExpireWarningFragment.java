package com.narvii.monetization;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.narvii.amino.master.R;
import com.narvii.app.NVFragment;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.wallet.MembershipService;
import com.narvii.wallet.membership.MembershipActivity;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes4.dex */
public class MemberShipExpireWarningFragment extends NVFragment implements View.OnClickListener {
    private View btnRenew;
    private View cell;
    private MembershipService membershipService;
    public String source;
    private TextView tvExpireContent;

    public static Fragment attachTo(Fragment fragment) {
        return attachTo(fragment, null);
    }

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public boolean isValidPage() {
        return false;
    }

    public static Fragment attachTo(Fragment fragment, String str) {
        if (fragment == null) {
            return null;
        }
        MemberShipExpireWarningFragment memberShipExpireWarningFragment = (MemberShipExpireWarningFragment) fragment.getChildFragmentManager().m0("membership_expire");
        if (memberShipExpireWarningFragment == null) {
            memberShipExpireWarningFragment = new MemberShipExpireWarningFragment();
            fragment.getChildFragmentManager().q().c(R.id.membership_expire_fragment_container, memberShipExpireWarningFragment, "membership_expire").k();
        }
        if (str != null) {
            memberShipExpireWarningFragment.source = str;
        }
        return memberShipExpireWarningFragment;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.renew || id == R.id.root) {
            Intent intentCreateMembershipIntent = MembershipActivity.createMembershipIntent();
            intentCreateMembershipIntent.putExtra(ExternalPostPreviewFragment.SOURCE, this.source);
            intentCreateMembershipIntent.putExtra("subscribe", true);
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intentCreateMembershipIntent);
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.membershipService = (MembershipService) getService("membership");
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_membership_warning, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onResume() {
        boolean z6;
        super.onResume();
        int iDaysExpired = this.membershipService.daysExpired();
        int i10 = 0;
        if (!this.membershipService.isMembership() && this.membershipService.hasMemberShipExpired() && iDaysExpired >= 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        if (iDaysExpired == 0) {
            this.tvExpireContent.setText(R.string.membership_expire_warning_0);
        } else if (iDaysExpired == 1) {
            this.tvExpireContent.setText(R.string.membership_expire_warning_1);
        } else if (iDaysExpired > 1) {
            this.tvExpireContent.setText(getString(R.string.membership_expire_warning_n, Integer.valueOf(iDaysExpired)));
        } else {
            this.tvExpireContent.setText((CharSequence) null);
        }
        View view = this.cell;
        if (!z6) {
            i10 = 8;
        }
        view.setVisibility(i10);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        View viewFindViewById = view.findViewById(R.id.root);
        this.cell = viewFindViewById;
        viewFindViewById.setOnClickListener(this);
        View viewFindViewById2 = view.findViewById(R.id.renew);
        this.btnRenew = viewFindViewById2;
        viewFindViewById2.setOnClickListener(this);
        this.tvExpireContent = (TextView) view.findViewById(R.id.expire_content);
    }
}
