package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.NVListOverlay;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes3.dex */
public final class WalletHeaderBinding implements ViewBinding {

    @NonNull
    public final TextView balance;

    @NonNull
    public final LinearLayout balanceFrame;

    @NonNull
    public final ThumbImageView image;

    @NonNull
    public final FrameLayout membershipCard;

    @NonNull
    public final ThumbImageView membershipCardBg;

    @NonNull
    public final NVListOverlay overlay;

    @NonNull
    private final NVListOverlay rootView;

    @NonNull
    public final View stub1;

    @NonNull
    public final TextView text;

    @NonNull
    public final FlexLayout walletHeader;

    @NonNull
    public final ImageView walletHeaderMembershipChevron;

    @NonNull
    public static WalletHeaderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVListOverlay getRoot() {
        return this.rootView;
    }

    @NonNull
    public static WalletHeaderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.wallet_header, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private WalletHeaderBinding(@NonNull NVListOverlay nVListOverlay, @NonNull TextView textView, @NonNull LinearLayout linearLayout, @NonNull ThumbImageView thumbImageView, @NonNull FrameLayout frameLayout, @NonNull ThumbImageView thumbImageView2, @NonNull NVListOverlay nVListOverlay2, @NonNull View view, @NonNull TextView textView2, @NonNull FlexLayout flexLayout, @NonNull ImageView imageView) {
        this.rootView = nVListOverlay;
        this.balance = textView;
        this.balanceFrame = linearLayout;
        this.image = thumbImageView;
        this.membershipCard = frameLayout;
        this.membershipCardBg = thumbImageView2;
        this.overlay = nVListOverlay2;
        this.stub1 = view;
        this.text = textView2;
        this.walletHeader = flexLayout;
        this.walletHeaderMembershipChevron = imageView;
    }

    @NonNull
    public static WalletHeaderBinding bind(@NonNull View view) {
        int i10 = R.id.balance;
        TextView textView = (TextView) ViewBindings.a(view, R.id.balance);
        if (textView != null) {
            i10 = R.id.balance_frame;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.balance_frame);
            if (linearLayout != null) {
                i10 = R.id.image;
                ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.image);
                if (thumbImageView != null) {
                    i10 = R.id.membership_card;
                    FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.membership_card);
                    if (frameLayout != null) {
                        i10 = R.id.membership_card_bg;
                        ThumbImageView thumbImageView2 = (ThumbImageView) ViewBindings.a(view, R.id.membership_card_bg);
                        if (thumbImageView2 != null) {
                            NVListOverlay nVListOverlay = (NVListOverlay) view;
                            i10 = R.id.stub1;
                            View viewA = ViewBindings.a(view, R.id.stub1);
                            if (viewA != null) {
                                i10 = R.id.text;
                                TextView textView2 = (TextView) ViewBindings.a(view, R.id.text);
                                if (textView2 != null) {
                                    i10 = R.id.wallet_header;
                                    FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.wallet_header);
                                    if (flexLayout != null) {
                                        i10 = R.id.wallet_header_membership_chevron;
                                        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.wallet_header_membership_chevron);
                                        if (imageView != null) {
                                            return new WalletHeaderBinding(nVListOverlay, textView, linearLayout, thumbImageView, frameLayout, thumbImageView2, nVListOverlay, viewA, textView2, flexLayout, imageView);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
