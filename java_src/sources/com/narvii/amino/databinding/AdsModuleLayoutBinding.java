package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.master.home.widgets.AdsModuleIndicator;
import com.narvii.widget.AutoScrollHorizontalRecyclerView;

/* JADX INFO: loaded from: classes9.dex */
public final class AdsModuleLayoutBinding implements ViewBinding {

    @NonNull
    public final AutoScrollHorizontalRecyclerView embedRecycler;

    @NonNull
    public final AdsModuleIndicator indicatorView;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static AdsModuleLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static AdsModuleLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.ads_module_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private AdsModuleLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull AutoScrollHorizontalRecyclerView autoScrollHorizontalRecyclerView, @NonNull AdsModuleIndicator adsModuleIndicator) {
        this.rootView = frameLayout;
        this.embedRecycler = autoScrollHorizontalRecyclerView;
        this.indicatorView = adsModuleIndicator;
    }

    @NonNull
    public static AdsModuleLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.embed_recycler;
        AutoScrollHorizontalRecyclerView autoScrollHorizontalRecyclerView = (AutoScrollHorizontalRecyclerView) ViewBindings.a(view, R.id.embed_recycler);
        if (autoScrollHorizontalRecyclerView != null) {
            i10 = R.id.indicator_view;
            AdsModuleIndicator adsModuleIndicator = (AdsModuleIndicator) ViewBindings.a(view, R.id.indicator_view);
            if (adsModuleIndicator != null) {
                return new AdsModuleLayoutBinding((FrameLayout) view, autoScrollHorizontalRecyclerView, adsModuleIndicator);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
