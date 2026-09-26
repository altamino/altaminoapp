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
import com.narvii.feed.featured.FeaturedMoreItemsLayout;

/* JADX INFO: loaded from: classes9.dex */
public final class MoreFeatureItemAllBinding implements ViewBinding {

    @NonNull
    public final FeaturedMoreItemsLayout moreItems;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static MoreFeatureItemAllBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static MoreFeatureItemAllBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.more_feature_item_all, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private MoreFeatureItemAllBinding(@NonNull LinearLayout linearLayout, @NonNull FeaturedMoreItemsLayout featuredMoreItemsLayout) {
        this.rootView = linearLayout;
        this.moreItems = featuredMoreItemsLayout;
    }

    @NonNull
    public static MoreFeatureItemAllBinding bind(@NonNull View view) {
        FeaturedMoreItemsLayout featuredMoreItemsLayout = (FeaturedMoreItemsLayout) ViewBindings.a(view, R.id.more_items);
        if (featuredMoreItemsLayout != null) {
            return new MoreFeatureItemAllBinding((LinearLayout) view, featuredMoreItemsLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.more_items)));
    }
}
