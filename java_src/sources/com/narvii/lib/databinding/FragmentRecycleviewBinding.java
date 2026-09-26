package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.app.theme.view.NVThemeFrameLayout;
import com.narvii.lib.R;
import com.narvii.paging.state.PageStatusView;
import com.narvii.widget.recycleview.NVRecyclerView;

/* JADX INFO: loaded from: classes2.dex */
public final class FragmentRecycleviewBinding implements ViewBinding {

    @NonNull
    public final NVThemeFrameLayout recycleFrame;

    @NonNull
    public final NVRecyclerView recycleLayout;

    @NonNull
    private final SwipeRefreshLayout rootView;

    @NonNull
    public final PageStatusView statusView;

    @NonNull
    public final SwipeRefreshLayout swipeRefresh;

    @NonNull
    public static FragmentRecycleviewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public SwipeRefreshLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentRecycleviewBinding bind(@NonNull View view) {
        int i10 = R.id.recycle_frame;
        NVThemeFrameLayout nVThemeFrameLayout = (NVThemeFrameLayout) ViewBindings.a(view, i10);
        if (nVThemeFrameLayout != null) {
            i10 = R.id.recycle_layout;
            NVRecyclerView nVRecyclerView = (NVRecyclerView) ViewBindings.a(view, i10);
            if (nVRecyclerView != null) {
                i10 = R.id.status_view;
                PageStatusView pageStatusView = (PageStatusView) ViewBindings.a(view, i10);
                if (pageStatusView != null) {
                    SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) view;
                    return new FragmentRecycleviewBinding(swipeRefreshLayout, nVThemeFrameLayout, nVRecyclerView, pageStatusView, swipeRefreshLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static FragmentRecycleviewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_recycleview, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentRecycleviewBinding(@NonNull SwipeRefreshLayout swipeRefreshLayout, @NonNull NVThemeFrameLayout nVThemeFrameLayout, @NonNull NVRecyclerView nVRecyclerView, @NonNull PageStatusView pageStatusView, @NonNull SwipeRefreshLayout swipeRefreshLayout2) {
        this.rootView = swipeRefreshLayout;
        this.recycleFrame = nVThemeFrameLayout;
        this.recycleLayout = nVRecyclerView;
        this.statusView = pageStatusView;
        this.swipeRefresh = swipeRefreshLayout2;
    }
}
