package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes7.dex */
public final class MembershipRedeemItemBinding implements ViewBinding {

    @NonNull
    public final ImageView aminoCoin;

    @NonNull
    public final TextView redeemItemPrice;

    @NonNull
    public final TextView redeemItemTitle;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public static MembershipRedeemItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static MembershipRedeemItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.membership_redeem_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private MembershipRedeemItemBinding(@NonNull FlexLayout flexLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = flexLayout;
        this.aminoCoin = imageView;
        this.redeemItemPrice = textView;
        this.redeemItemTitle = textView2;
    }

    @NonNull
    public static MembershipRedeemItemBinding bind(@NonNull View view) {
        int i10 = R.id.amino_coin;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.amino_coin);
        if (imageView != null) {
            i10 = R.id.redeem_item_price;
            TextView textView = (TextView) ViewBindings.a(view, R.id.redeem_item_price);
            if (textView != null) {
                i10 = R.id.redeem_item_title;
                TextView textView2 = (TextView) ViewBindings.a(view, R.id.redeem_item_title);
                if (textView2 != null) {
                    return new MembershipRedeemItemBinding((FlexLayout) view, imageView, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
