package com.narvii.tipping;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.tipping.model.TipSummary;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.text.TextUtils;
import com.narvii.wallet.WalletRecyclerFragment;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class TippingAuthorListFragment extends TippingBaseFragment {
    private FrameLayout bottomContainer;
    TextView navToWallet;
    TextView totalCoins;

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.tipping.TippingBaseFragment, com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131951629;
    }

    @Override // com.narvii.tipping.TippingBaseFragment
    protected boolean isAuthor() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.tipping.TippingBaseFragment
    protected int titleId() {
        return R.string.tippers;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateHeader$0(View view) {
        Intent intent = FragmentWrapperActivity.intent(WalletRecyclerFragment.class);
        intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Props Givers");
        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
        LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("WalletBar").send();
    }

    private void updateHeader() {
        this.totalCoins = (TextView) this.bottomContainer.findViewById(R.id.balance);
        this.navToWallet = (TextView) this.bottomContainer.findViewById(R.id.nav_to_wallet);
        this.bottomContainer.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.tipping.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f2755a.lambda$updateHeader$0(view);
            }
        });
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
    }

    @Override // com.narvii.tipping.TippingBaseFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            ((StatisticsService) getService("statistics")).event("Prop Givers").source(getStringParam(ExternalPostPreviewFragment.SOURCE)).userPropInc("Prop Givers Total");
        }
    }

    @Override // com.narvii.tipping.TippingBaseFragment, com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewOnCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        FrameLayout frameLayout = (FrameLayout) viewOnCreateView.findViewById(R.id.bottom_container);
        this.bottomContainer = frameLayout;
        layoutInflater.inflate(R.layout.tipping_list_bottom, (ViewGroup) frameLayout, true);
        return viewOnCreateView;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
    }

    @Override // com.narvii.tipping.TippingBaseFragment
    protected void onTippingSummaryUpdated(TipSummary tipSummary, TipSummary tipSummary2) {
        super.onTippingSummaryUpdated(tipSummary, tipSummary2);
        if (tipSummary != null && tipSummary2 != null) {
            this.totalCoins.setText(TextUtils.numberFormat.format(tipSummary.totalCoins + tipSummary2.totalCoins));
        }
    }

    @Override // com.narvii.tipping.TippingBaseFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        setEmptyText(R.string.no_tipping);
        updateHeader();
    }
}
