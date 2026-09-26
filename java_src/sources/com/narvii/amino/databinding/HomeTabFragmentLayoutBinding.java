package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.list.refresh.SwipeRefreshLayout;
import com.narvii.widget.headercollapse.NVHeaderCollapsibleLayout;

/* JADX INFO: loaded from: classes7.dex */
public final class HomeTabFragmentLayoutBinding implements ViewBinding {

    @NonNull
    public final NVHeaderCollapsibleLayout collapsibleLayout;

    @NonNull
    public final SwipeRefreshLayout homeSwipeRefreshLayout;

    @NonNull
    private final SwipeRefreshLayout rootView;

    @NonNull
    public static HomeTabFragmentLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public SwipeRefreshLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static HomeTabFragmentLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.home_tab_fragment_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private HomeTabFragmentLayoutBinding(@NonNull SwipeRefreshLayout swipeRefreshLayout, @NonNull NVHeaderCollapsibleLayout nVHeaderCollapsibleLayout, @NonNull SwipeRefreshLayout swipeRefreshLayout2) {
        this.rootView = swipeRefreshLayout;
        this.collapsibleLayout = nVHeaderCollapsibleLayout;
        this.homeSwipeRefreshLayout = swipeRefreshLayout2;
    }

    @NonNull
    public static HomeTabFragmentLayoutBinding bind(@NonNull View view) {
        NVHeaderCollapsibleLayout nVHeaderCollapsibleLayout = (NVHeaderCollapsibleLayout) ViewBindings.a(view, R.id.collapsible_layout);
        if (nVHeaderCollapsibleLayout != null) {
            SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) view;
            return new HomeTabFragmentLayoutBinding(swipeRefreshLayout, nVHeaderCollapsibleLayout, swipeRefreshLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.collapsible_layout)));
    }
}
