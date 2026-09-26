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

/* JADX INFO: loaded from: classes10.dex */
public final class ItemStoreItemSubscriptionHeaderBinding implements ViewBinding {

    @NonNull
    public final TextView checkDetail;

    @NonNull
    public final TextView expiring;

    @NonNull
    public final NVImageView icon;

    @NonNull
    public final TextView renew;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView since;

    @NonNull
    public final TextView title;

    @NonNull
    public static ItemStoreItemSubscriptionHeaderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemStoreItemSubscriptionHeaderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_store_item_subscription_header, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemStoreItemSubscriptionHeaderBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull NVImageView nVImageView, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.rootView = linearLayout;
        this.checkDetail = textView;
        this.expiring = textView2;
        this.icon = nVImageView;
        this.renew = textView3;
        this.since = textView4;
        this.title = textView5;
    }

    @NonNull
    public static ItemStoreItemSubscriptionHeaderBinding bind(@NonNull View view) {
        int i10 = R.id.check_detail;
        TextView textView = (TextView) ViewBindings.a(view, R.id.check_detail);
        if (textView != null) {
            i10 = R.id.expiring;
            TextView textView2 = (TextView) ViewBindings.a(view, R.id.expiring);
            if (textView2 != null) {
                i10 = R.id.icon;
                NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.icon);
                if (nVImageView != null) {
                    i10 = R.id.renew;
                    TextView textView3 = (TextView) ViewBindings.a(view, R.id.renew);
                    if (textView3 != null) {
                        i10 = R.id.since;
                        TextView textView4 = (TextView) ViewBindings.a(view, R.id.since);
                        if (textView4 != null) {
                            i10 = R.id.title;
                            TextView textView5 = (TextView) ViewBindings.a(view, R.id.title);
                            if (textView5 != null) {
                                return new ItemStoreItemSubscriptionHeaderBinding((LinearLayout) view, textView, textView2, nVImageView, textView3, textView4, textView5);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
