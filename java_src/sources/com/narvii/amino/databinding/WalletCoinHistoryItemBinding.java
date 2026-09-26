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
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes7.dex */
public final class WalletCoinHistoryItemBinding implements ViewBinding {

    @NonNull
    public final TextView aminoBonus;

    @NonNull
    public final TextView amount;

    @NonNull
    public final TextView datetime;

    @NonNull
    public final NVImageView icon;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView tax;

    @NonNull
    public final TextView text;

    @NonNull
    public final TextView title;

    @NonNull
    public static WalletCoinHistoryItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static WalletCoinHistoryItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.wallet_coin_history_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private WalletCoinHistoryItemBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull NVImageView nVImageView, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6) {
        this.rootView = linearLayout;
        this.aminoBonus = textView;
        this.amount = textView2;
        this.datetime = textView3;
        this.icon = nVImageView;
        this.tax = textView4;
        this.text = textView5;
        this.title = textView6;
    }

    @NonNull
    public static WalletCoinHistoryItemBinding bind(@NonNull View view) {
        int i10 = R.id.amino_bonus;
        TextView textView = (TextView) ViewBindings.a(view, R.id.amino_bonus);
        if (textView != null) {
            i10 = R.id.amount;
            TextView textView2 = (TextView) ViewBindings.a(view, R.id.amount);
            if (textView2 != null) {
                i10 = R.id.datetime;
                TextView textView3 = (TextView) ViewBindings.a(view, R.id.datetime);
                if (textView3 != null) {
                    i10 = R.id.icon;
                    NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.icon);
                    if (nVImageView != null) {
                        i10 = R.id.tax;
                        TextView textView4 = (TextView) ViewBindings.a(view, R.id.tax);
                        if (textView4 != null) {
                            i10 = R.id.text;
                            TextView textView5 = (TextView) ViewBindings.a(view, R.id.text);
                            if (textView5 != null) {
                                i10 = R.id.title;
                                TextView textView6 = (TextView) ViewBindings.a(view, R.id.title);
                                if (textView6 != null) {
                                    return new WalletCoinHistoryItemBinding((LinearLayout) view, textView, textView2, textView3, nVImageView, textView4, textView5, textView6);
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
