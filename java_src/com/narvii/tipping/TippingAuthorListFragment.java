package com.narvii.tipping;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.tipping.model.TipSummary;
import com.narvii.util.text.TextUtils;
import com.narvii.wallet.WalletRecyclerFragment;

/* loaded from: classes3.dex */
public class TippingAuthorListFragment extends TippingBaseFragment {
    private FrameLayout bottomContainer;
    TextView navToWallet;
    TextView totalCoins;

    @Override // com.narvii.tipping.TippingBaseFragment, com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131755020;
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

    @Override // com.narvii.tipping.TippingBaseFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // com.narvii.tipping.TippingBaseFragment, com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewOnCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.bottomContainer = (FrameLayout) viewOnCreateView.findViewById(R.id.bottom_container);
        layoutInflater.inflate(R.layout.tipping_list_bottom, (ViewGroup) this.bottomContainer, true);
        return viewOnCreateView;
    }

    @Override // com.narvii.tipping.TippingBaseFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        setEmptyText(R.string.no_tipping);
        updateHeader();
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onStop() {
        super.onStop();
    }

    private void updateHeader() {
        this.totalCoins = (TextView) this.bottomContainer.findViewById(R.id.balance);
        this.navToWallet = (TextView) this.bottomContainer.findViewById(R.id.nav_to_wallet);
        this.bottomContainer.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.tipping.-$$Lambda$TippingAuthorListFragment$IwR2ROFJi0agdInCv4RA31oVkdI
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$updateHeader$0$TippingAuthorListFragment(view);
            }
        });
    }

    public /* synthetic */ void lambda$updateHeader$0$TippingAuthorListFragment(View view) {
        Intent intent = FragmentWrapperActivity.intent(WalletRecyclerFragment.class);
        intent.putExtra("Source", "Props Givers");
        startActivity(intent);
        LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("WalletBar").send();
    }

    @Override // com.narvii.tipping.TippingBaseFragment
    protected void onTippingSummaryUpdated(TipSummary tipSummary, TipSummary tipSummary2) {
        super.onTippingSummaryUpdated(tipSummary, tipSummary2);
        if (tipSummary == null || tipSummary2 == null) {
            return;
        }
        this.totalCoins.setText(TextUtils.numberFormat.format(tipSummary.totalCoins + tipSummary2.totalCoins));
    }
}
