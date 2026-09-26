package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.monetization.StoreItemStatusView;
import com.narvii.monetization.utils.StoreItemNameView;

/* JADX INFO: loaded from: classes.dex */
public final class BubbleContentDetailBinding implements ViewBinding {

    @NonNull
    public final StoreItemNameView itemName;

    @NonNull
    public final StoreItemStatusView itemStatusView;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static BubbleContentDetailBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static BubbleContentDetailBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.bubble_content_detail, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private BubbleContentDetailBinding(@NonNull LinearLayout linearLayout, @NonNull StoreItemNameView storeItemNameView, @NonNull StoreItemStatusView storeItemStatusView) {
        this.rootView = linearLayout;
        this.itemName = storeItemNameView;
        this.itemStatusView = storeItemStatusView;
    }

    @NonNull
    public static BubbleContentDetailBinding bind(@NonNull View view) {
        int i10 = R.id.item_name;
        StoreItemNameView storeItemNameView = (StoreItemNameView) ViewBindings.a(view, R.id.item_name);
        if (storeItemNameView != null) {
            i10 = R.id.item_status_view;
            StoreItemStatusView storeItemStatusView = (StoreItemStatusView) ViewBindings.a(view, R.id.item_status_view);
            if (storeItemStatusView != null) {
                return new BubbleContentDetailBinding((LinearLayout) view, storeItemNameView, storeItemStatusView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
