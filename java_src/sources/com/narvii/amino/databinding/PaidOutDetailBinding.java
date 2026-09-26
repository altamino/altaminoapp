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

/* JADX INFO: loaded from: classes7.dex */
public final class PaidOutDetailBinding implements ViewBinding {

    @NonNull
    public final TextView coinsCount;

    @NonNull
    public final TextView moneySent;

    @NonNull
    public final TextView paidOutTo;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView transactionId;

    @NonNull
    public final LinearLayout transactionIdLayout;

    @NonNull
    public final TextView transactionTime;

    @NonNull
    public static PaidOutDetailBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PaidOutDetailBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.paid_out_detail, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PaidOutDetailBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull LinearLayout linearLayout2, @NonNull TextView textView5) {
        this.rootView = linearLayout;
        this.coinsCount = textView;
        this.moneySent = textView2;
        this.paidOutTo = textView3;
        this.transactionId = textView4;
        this.transactionIdLayout = linearLayout2;
        this.transactionTime = textView5;
    }

    @NonNull
    public static PaidOutDetailBinding bind(@NonNull View view) {
        int i10 = R.id.coins_count;
        TextView textView = (TextView) ViewBindings.a(view, R.id.coins_count);
        if (textView != null) {
            i10 = R.id.money_sent;
            TextView textView2 = (TextView) ViewBindings.a(view, R.id.money_sent);
            if (textView2 != null) {
                i10 = R.id.paid_out_to;
                TextView textView3 = (TextView) ViewBindings.a(view, R.id.paid_out_to);
                if (textView3 != null) {
                    i10 = R.id.transaction_id;
                    TextView textView4 = (TextView) ViewBindings.a(view, R.id.transaction_id);
                    if (textView4 != null) {
                        i10 = R.id.transaction_id_layout;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.transaction_id_layout);
                        if (linearLayout != null) {
                            i10 = R.id.transaction_time;
                            TextView textView5 = (TextView) ViewBindings.a(view, R.id.transaction_time);
                            if (textView5 != null) {
                                return new PaidOutDetailBinding((LinearLayout) view, textView, textView2, textView3, textView4, linearLayout, textView5);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
