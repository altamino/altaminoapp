package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.RadiusLayout;

/* JADX INFO: loaded from: classes10.dex */
public final class TippingListBottomBinding implements ViewBinding {

    @NonNull
    public final TextView balance;

    @NonNull
    public final LinearLayout balanceFrame;

    @NonNull
    public final TextView navToWallet;

    @NonNull
    private final RadiusLayout rootView;

    @NonNull
    public static TippingListBottomBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RadiusLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static TippingListBottomBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.tipping_list_bottom, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private TippingListBottomBinding(@NonNull RadiusLayout radiusLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout, @NonNull TextView textView2) {
        this.rootView = radiusLayout;
        this.balance = textView;
        this.balanceFrame = linearLayout;
        this.navToWallet = textView2;
    }

    @NonNull
    public static TippingListBottomBinding bind(@NonNull View view) {
        int i10 = R.id.balance;
        TextView textView = (TextView) ViewBindings.a(view, R.id.balance);
        if (textView != null) {
            i10 = R.id.balance_frame;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.balance_frame);
            if (linearLayout != null) {
                i10 = R.id.nav_to_wallet;
                TextView textView2 = (TextView) ViewBindings.a(view, R.id.nav_to_wallet);
                if (textView2 != null) {
                    return new TippingListBottomBinding((RadiusLayout) view, textView, linearLayout, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
