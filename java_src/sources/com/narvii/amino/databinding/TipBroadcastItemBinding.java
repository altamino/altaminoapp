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

/* JADX INFO: loaded from: classes9.dex */
public final class TipBroadcastItemBinding implements ViewBinding {

    @NonNull
    public final TextView coinsCount;

    @NonNull
    public final TextView giveCoins;

    @NonNull
    public final TextView nickname;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static TipBroadcastItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static TipBroadcastItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.tip_broadcast_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private TipBroadcastItemBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = linearLayout;
        this.coinsCount = textView;
        this.giveCoins = textView2;
        this.nickname = textView3;
    }

    @NonNull
    public static TipBroadcastItemBinding bind(@NonNull View view) {
        int i10 = R.id.coins_count;
        TextView textView = (TextView) ViewBindings.a(view, R.id.coins_count);
        if (textView != null) {
            i10 = R.id.give_coins;
            TextView textView2 = (TextView) ViewBindings.a(view, R.id.give_coins);
            if (textView2 != null) {
                i10 = R.id.nickname;
                TextView textView3 = (TextView) ViewBindings.a(view, R.id.nickname);
                if (textView3 != null) {
                    return new TipBroadcastItemBinding((LinearLayout) view, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
