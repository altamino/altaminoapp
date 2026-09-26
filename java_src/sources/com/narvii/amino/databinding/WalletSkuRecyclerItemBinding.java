package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.NVImageView;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes10.dex */
public final class WalletSkuRecyclerItemBinding implements ViewBinding {

    @NonNull
    public final NVImageView icon;

    @NonNull
    public final View listDivider;

    @NonNull
    public final TextView price;

    @NonNull
    public final FlexLayout purchase;

    @NonNull
    public final ThumbImageView purchaseBtn;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final TextView text;

    @NonNull
    public final TextView title;

    @NonNull
    public static WalletSkuRecyclerItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static WalletSkuRecyclerItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.wallet_sku_recycler_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private WalletSkuRecyclerItemBinding(@NonNull FrameLayout frameLayout, @NonNull NVImageView nVImageView, @NonNull View view, @NonNull TextView textView, @NonNull FlexLayout flexLayout, @NonNull ThumbImageView thumbImageView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = frameLayout;
        this.icon = nVImageView;
        this.listDivider = view;
        this.price = textView;
        this.purchase = flexLayout;
        this.purchaseBtn = thumbImageView;
        this.text = textView2;
        this.title = textView3;
    }

    @NonNull
    public static WalletSkuRecyclerItemBinding bind(@NonNull View view) {
        int i10 = R.id.icon;
        NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.icon);
        if (nVImageView != null) {
            i10 = R.id.list_divider;
            View viewA = ViewBindings.a(view, R.id.list_divider);
            if (viewA != null) {
                i10 = R.id.price;
                TextView textView = (TextView) ViewBindings.a(view, R.id.price);
                if (textView != null) {
                    i10 = R.id.purchase;
                    FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.purchase);
                    if (flexLayout != null) {
                        i10 = R.id.purchase_btn;
                        ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.purchase_btn);
                        if (thumbImageView != null) {
                            i10 = R.id.text;
                            TextView textView2 = (TextView) ViewBindings.a(view, R.id.text);
                            if (textView2 != null) {
                                i10 = R.id.title;
                                TextView textView3 = (TextView) ViewBindings.a(view, R.id.title);
                                if (textView3 != null) {
                                    return new WalletSkuRecyclerItemBinding((FrameLayout) view, nVImageView, viewA, textView, flexLayout, thumbImageView, textView2, textView3);
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
