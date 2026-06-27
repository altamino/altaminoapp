package com.narvii.monetization;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVFragment;
import com.narvii.wallet.MembershipMainRecyclerFragment;
import com.narvii.wallet.MembershipService;

/* loaded from: classes3.dex */
public class MemberShipExpireWarningFragment extends NVFragment implements View.OnClickListener {
    private View btnRenew;
    private View cell;
    private MembershipService membershipService;
    public String source;
    private TextView tvExpireContent;

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public boolean isValidPage() {
        return false;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.membershipService = (MembershipService) getService("membership");
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_membership_warning, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.cell = view.findViewById(R.id.root);
        this.cell.setOnClickListener(this);
        this.btnRenew = view.findViewById(R.id.renew);
        this.btnRenew.setOnClickListener(this);
        this.tvExpireContent = (TextView) view.findViewById(R.id.expire_content);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        int iDaysExpired = this.membershipService.daysExpired();
        boolean z = !this.membershipService.isMembership() && this.membershipService.hasMemberShipExpired() && iDaysExpired >= 0;
        if (iDaysExpired == 0) {
            this.tvExpireContent.setText(R.string.membership_expire_warning_0);
        } else if (iDaysExpired == 1) {
            this.tvExpireContent.setText(R.string.membership_expire_warning_1);
        } else if (iDaysExpired > 1) {
            this.tvExpireContent.setText(getString(R.string.membership_expire_warning_n, Integer.valueOf(iDaysExpired)));
        } else {
            this.tvExpireContent.setText((CharSequence) null);
        }
        this.cell.setVisibility(z ? 0 : 8);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.renew || id == R.id.root) {
            Intent intent = FragmentWrapperActivity.intent(MembershipMainRecyclerFragment.class);
            intent.putExtra("Source", this.source);
            intent.putExtra("subscribe", true);
            startActivity(intent);
        }
    }

    public static Fragment attachTo(Fragment fragment) {
        return attachTo(fragment, null);
    }

    public static Fragment attachTo(Fragment fragment, String str) {
        if (fragment == null) {
            return null;
        }
        MemberShipExpireWarningFragment memberShipExpireWarningFragment = (MemberShipExpireWarningFragment) fragment.getChildFragmentManager().findFragmentByTag("membership_expire");
        if (memberShipExpireWarningFragment == null) {
            memberShipExpireWarningFragment = new MemberShipExpireWarningFragment();
            fragment.getChildFragmentManager().beginTransaction().add(R.id.membership_expire_fragment_container, memberShipExpireWarningFragment, "membership_expire").commitAllowingStateLoss();
        }
        if (str != null) {
            memberShipExpireWarningFragment.source = str;
        }
        return memberShipExpireWarningFragment;
    }
}
