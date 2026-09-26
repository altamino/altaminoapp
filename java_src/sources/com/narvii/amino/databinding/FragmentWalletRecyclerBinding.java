package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.appbar.AppBarLayout;
import com.narvii.amino.master.R;
import com.narvii.app.theme.view.NVThemeFrameLayout;
import com.narvii.nested.FakeActionBar;
import com.narvii.paging.state.PageStatusView;
import com.narvii.widget.recycleview.NVRecyclerView;

/* JADX INFO: loaded from: classes6.dex */
public final class FragmentWalletRecyclerBinding implements ViewBinding {

    @NonNull
    public final AppBarLayout appbarLayout;

    @NonNull
    public final FakeActionBar fakeActionBar;

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
    public static FragmentWalletRecyclerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public SwipeRefreshLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentWalletRecyclerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_wallet_recycler, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentWalletRecyclerBinding(@NonNull SwipeRefreshLayout swipeRefreshLayout, @NonNull AppBarLayout appBarLayout, @NonNull FakeActionBar fakeActionBar, @NonNull NVThemeFrameLayout nVThemeFrameLayout, @NonNull NVRecyclerView nVRecyclerView, @NonNull PageStatusView pageStatusView, @NonNull SwipeRefreshLayout swipeRefreshLayout2) {
        this.rootView = swipeRefreshLayout;
        this.appbarLayout = appBarLayout;
        this.fakeActionBar = fakeActionBar;
        this.recycleFrame = nVThemeFrameLayout;
        this.recycleLayout = nVRecyclerView;
        this.statusView = pageStatusView;
        this.swipeRefresh = swipeRefreshLayout2;
    }

    @NonNull
    public static FragmentWalletRecyclerBinding bind(@NonNull View view) {
        int i10 = R.id.appbar_layout;
        AppBarLayout appBarLayout = (AppBarLayout) ViewBindings.a(view, R.id.appbar_layout);
        if (appBarLayout != null) {
            i10 = R.id.fake_action_bar;
            FakeActionBar fakeActionBar = (FakeActionBar) ViewBindings.a(view, R.id.fake_action_bar);
            if (fakeActionBar != null) {
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
                            return new FragmentWalletRecyclerBinding(swipeRefreshLayout, appBarLayout, fakeActionBar, nVThemeFrameLayout, nVRecyclerView, pageStatusView, swipeRefreshLayout);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
