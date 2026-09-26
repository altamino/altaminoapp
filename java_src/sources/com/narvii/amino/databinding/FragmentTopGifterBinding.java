package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.app.theme.view.NVThemeFrameLayout;
import com.narvii.paging.state.PageStatusView;
import com.narvii.widget.FullscreenBackgroundView;
import com.narvii.widget.recycleview.NVRecyclerView;

/* JADX INFO: loaded from: classes.dex */
public final class FragmentTopGifterBinding implements ViewBinding {

    @NonNull
    public final FullscreenBackgroundView background;

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
    public static FragmentTopGifterBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public SwipeRefreshLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentTopGifterBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_top_gifter, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentTopGifterBinding(@NonNull SwipeRefreshLayout swipeRefreshLayout, @NonNull FullscreenBackgroundView fullscreenBackgroundView, @NonNull NVThemeFrameLayout nVThemeFrameLayout, @NonNull NVRecyclerView nVRecyclerView, @NonNull PageStatusView pageStatusView, @NonNull SwipeRefreshLayout swipeRefreshLayout2) {
        this.rootView = swipeRefreshLayout;
        this.background = fullscreenBackgroundView;
        this.recycleFrame = nVThemeFrameLayout;
        this.recycleLayout = nVRecyclerView;
        this.statusView = pageStatusView;
        this.swipeRefresh = swipeRefreshLayout2;
    }

    @NonNull
    public static FragmentTopGifterBinding bind(@NonNull View view) {
        int i10 = R.id.background;
        FullscreenBackgroundView fullscreenBackgroundView = (FullscreenBackgroundView) ViewBindings.a(view, R.id.background);
        if (fullscreenBackgroundView != null) {
            i10 = R.id.recycle_frame;
            NVThemeFrameLayout nVThemeFrameLayout = (NVThemeFrameLayout) ViewBindings.a(view, R.id.recycle_frame);
            if (nVThemeFrameLayout != null) {
                i10 = R.id.recycle_layout;
                NVRecyclerView nVRecyclerView = (NVRecyclerView) ViewBindings.a(view, R.id.recycle_layout);
                if (nVRecyclerView != null) {
                    i10 = R.id.status_view;
                    PageStatusView pageStatusView = (PageStatusView) ViewBindings.a(view, R.id.status_view);
                    if (pageStatusView != null) {
                        SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) view;
                        return new FragmentTopGifterBinding(swipeRefreshLayout, fullscreenBackgroundView, nVThemeFrameLayout, nVRecyclerView, pageStatusView, swipeRefreshLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
