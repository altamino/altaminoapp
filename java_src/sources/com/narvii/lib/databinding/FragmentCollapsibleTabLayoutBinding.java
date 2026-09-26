package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.list.refresh.SwipeRefreshLayout;
import com.narvii.widget.headercollapse.NVHeaderCollapsibleLayout;

/* JADX INFO: loaded from: classes10.dex */
public final class FragmentCollapsibleTabLayoutBinding implements ViewBinding {

    @NonNull
    public final NVHeaderCollapsibleLayout collapsibleLayout;

    @NonNull
    private final SwipeRefreshLayout rootView;

    @NonNull
    public final SwipeRefreshLayout swipeRefreshLayout;

    @NonNull
    public static FragmentCollapsibleTabLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public SwipeRefreshLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentCollapsibleTabLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.collapsible_layout;
        NVHeaderCollapsibleLayout nVHeaderCollapsibleLayout = (NVHeaderCollapsibleLayout) ViewBindings.a(view, i10);
        if (nVHeaderCollapsibleLayout == null) {
            throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
        }
        SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) view;
        return new FragmentCollapsibleTabLayoutBinding(swipeRefreshLayout, nVHeaderCollapsibleLayout, swipeRefreshLayout);
    }

    @NonNull
    public static FragmentCollapsibleTabLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_collapsible_tab_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentCollapsibleTabLayoutBinding(@NonNull SwipeRefreshLayout swipeRefreshLayout, @NonNull NVHeaderCollapsibleLayout nVHeaderCollapsibleLayout, @NonNull SwipeRefreshLayout swipeRefreshLayout2) {
        this.rootView = swipeRefreshLayout;
        this.collapsibleLayout = nVHeaderCollapsibleLayout;
        this.swipeRefreshLayout = swipeRefreshLayout2;
    }
}
