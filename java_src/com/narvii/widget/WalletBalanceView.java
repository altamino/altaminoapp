package com.narvii.widget;

import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.monetization.utils.ClaimGiftHintLayout;
import com.narvii.util.Utils;
import com.narvii.wallet.MembershipService;
import com.narvii.wallet.WalletRecyclerFragment;
import java.text.NumberFormat;
import java.util.Locale;

/* loaded from: classes3.dex */
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

    public void setOnWalletPreClickListener(OnPreClickListener onPreClickListener) {
        this.onWalletPreClickListener = onPreClickListener;
    }

    public void setOnClaimIconPreClickListener(OnPreClickListener onPreClickListener) {
        this.onClaimIconPreClickListener = onPreClickListener;
    }

    public WalletBalanceView(Context context) {
        this(context, null);
    }

    public WalletBalanceView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public WalletBalanceView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.source = "Store";
        this.membership = (MembershipService) Utils.getNVContext(context).getService("membership");
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.coinLayout = findViewById(R.id.store_header_coin_info_layout);
        this.coinLayout.setOnClickListener(this);
        ((TextView) findViewById(R.id.wallet_balance)).setMaxWidth((int) Utils.dpToPx(getContext(), 90.0f));
        this.claimHintLayout = (ClaimGiftHintLayout) findViewById(R.id.claim_gift_hint);
        this.claimHintLayout.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.claim_gift_hint) {
            OnPreClickListener onPreClickListener = this.onClaimIconPreClickListener;
            if (onPreClickListener != null) {
                onPreClickListener.onPreClick();
            }
            Intent intent = FragmentWrapperActivity.intent(WalletRecyclerFragment.class);
            intent.putExtra("Source", this.source);
            getContext().startActivity(intent);
            return;
        }
        if (id != R.id.store_header_coin_info_layout) {
            return;
        }
        OnPreClickListener onPreClickListener2 = this.onWalletPreClickListener;
        if (onPreClickListener2 != null) {
            onPreClickListener2.onPreClick();
        }
        Intent intent2 = FragmentWrapperActivity.intent(WalletRecyclerFragment.class);
        intent2.putExtra("Source", this.source);
        getContext().startActivity(intent2);
    }

    public void setBalance(int i) {
        ((TextView) this.coinLayout.findViewById(R.id.wallet_balance)).setText(NumberFormat.getInstance(Locale.getDefault()).format(i));
    }

    public void setIsNew(boolean z) {
        this.coinLayout.setVisibility(z ? 8 : 0);
        this.claimHintLayout.setVisibility(z ? 0 : 8);
    }

    public void refresh() {
        setIsNew(this.membership.canGetNewMemberRewards());
        setBalance(this.membership.walletBalance());
    }

    public void setCoinBackground(int i, int i2) {
        View view = this.coinLayout;
        if (view != null) {
            if (Utils.isRtl()) {
                i = i2;
            }
            view.setBackgroundResource(i);
        }
    }

    public void setClaimHintBackground(int i, int i2) {
        ClaimGiftHintLayout claimGiftHintLayout = this.claimHintLayout;
        if (claimGiftHintLayout != null) {
            claimGiftHintLayout.setBackgroundResource(i, i2);
        }
    }
}
