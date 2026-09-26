package com.narvii.widget;

import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.monetization.utils.ClaimGiftHintLayout;
import com.narvii.util.Utils;
import com.narvii.util.statistics.FirebaseLogManager;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.statistics.constants.EventConstants;
import com.narvii.wallet.MembershipService;
import com.narvii.wallet.WalletRecyclerFragment;
import com.safedk.android.utils.Logger;
import java.text.NumberFormat;
import java.util.Locale;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public class WalletBalanceView extends FrameLayout implements View.OnClickListener {
    private ClaimGiftHintLayout claimHintLayout;
    private View coinLayout;
    private MembershipService membership;
    OnPreClickListener onClaimIconPreClickListener;
    OnPreClickListener onWalletPreClickListener;
    public String source;

    public interface OnPreClickListener {
        void onPreClick();
    }

    public WalletBalanceView(@NonNull Context context) {
        this(context, null);
    }

    public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public void setOnClaimIconPreClickListener(OnPreClickListener onPreClickListener) {
        this.onClaimIconPreClickListener = onPreClickListener;
    }

    public void setOnWalletPreClickListener(OnPreClickListener onPreClickListener) {
        this.onWalletPreClickListener = onPreClickListener;
    }

    public WalletBalanceView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void refresh() {
        setIsNew(this.membership.canGetNewMemberRewards());
        setBalance(this.membership.walletBalance());
    }

    public void setClaimHintBackground(int i10, int i11) {
        ClaimGiftHintLayout claimGiftHintLayout = this.claimHintLayout;
        if (claimGiftHintLayout != null) {
            claimGiftHintLayout.setBackgroundResource(i10, i11);
        }
    }

    public void setCoinBackground(int i10, int i11) {
        View view = this.coinLayout;
        if (view != null) {
            if (Utils.isRtl()) {
                i10 = i11;
            }
            view.setBackgroundResource(i10);
        }
    }

    public void setIsNew(boolean z6) {
        this.coinLayout.setVisibility(z6 ? 8 : 0);
        this.claimHintLayout.setVisibility(z6 ? 0 : 8);
    }

    public WalletBalanceView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.source = "Store";
        this.membership = (MembershipService) Utils.getNVContext(context).getService("membership");
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        NVContext nVContext = Utils.getNVContext(getContext());
        Objects.requireNonNull(nVContext);
        FirebaseLogManager.logEvent(Utils.getNVContext(getContext()), ((StatisticsService) nVContext.getService("statistics")).event(EventConstants.GlobalNavigation.NAV_CLICK_GLOBAL).param(EventConstants.GlobalNavigation.GLOBAL_NAV_BUTTON, EventConstants.GlobalNavigation.WALLET));
        int id = view.getId();
        if (id != R.id.claim_gift_hint) {
            if (id != R.id.store_header_coin_info_layout) {
                return;
            }
            OnPreClickListener onPreClickListener = this.onWalletPreClickListener;
            if (onPreClickListener != null) {
                onPreClickListener.onPreClick();
            }
            Intent intent = FragmentWrapperActivity.intent(WalletRecyclerFragment.class);
            intent.putExtra(ExternalPostPreviewFragment.SOURCE, this.source);
            safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(getContext(), intent);
            return;
        }
        OnPreClickListener onPreClickListener2 = this.onClaimIconPreClickListener;
        if (onPreClickListener2 != null) {
            onPreClickListener2.onPreClick();
        }
        Intent intent2 = FragmentWrapperActivity.intent(WalletRecyclerFragment.class);
        intent2.putExtra(ExternalPostPreviewFragment.SOURCE, this.source);
        safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(getContext(), intent2);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        View viewFindViewById = findViewById(R.id.store_header_coin_info_layout);
        this.coinLayout = viewFindViewById;
        viewFindViewById.setOnClickListener(this);
        ((TextView) findViewById(R.id.wallet_balance)).setMaxWidth((int) Utils.dpToPx(getContext(), 90.0f));
        ClaimGiftHintLayout claimGiftHintLayout = (ClaimGiftHintLayout) findViewById(R.id.claim_gift_hint);
        this.claimHintLayout = claimGiftHintLayout;
        claimGiftHintLayout.setOnClickListener(this);
    }

    public void setBalance(int i10) {
        ((TextView) this.coinLayout.findViewById(R.id.wallet_balance)).setText(NumberFormat.getInstance(Locale.getDefault()).format(i10));
    }
}
