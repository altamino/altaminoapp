package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
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
import com.narvii.widget.StatusBarPlaceHolder;
import com.narvii.widget.recycleview.NVRecyclerView;

/* JADX INFO: loaded from: classes6.dex */
public final class FragmentMembershipMainRecyclerBinding implements ViewBinding {

    @NonNull
    public final AppBarLayout appbarLayout;

    @NonNull
    public final FakeActionBar fakeActionBar;

    @NonNull
    public final FrameLayout overlay;

    @NonNull
    public final NVThemeFrameLayout recycleFrame;

    @NonNull
    public final NVRecyclerView recycleLayout;

    @NonNull
    private final SwipeRefreshLayout rootView;

    @NonNull
    public final StatusBarPlaceHolder statusBar;

    @NonNull
    public final PageStatusView statusView;

    @NonNull
    public final SwipeRefreshLayout swipeRefresh;

    @NonNull
    public static FragmentMembershipMainRecyclerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public SwipeRefreshLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentMembershipMainRecyclerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_membership_main_recycler, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentMembershipMainRecyclerBinding(@NonNull SwipeRefreshLayout swipeRefreshLayout, @NonNull AppBarLayout appBarLayout, @NonNull FakeActionBar fakeActionBar, @NonNull FrameLayout frameLayout, @NonNull NVThemeFrameLayout nVThemeFrameLayout, @NonNull NVRecyclerView nVRecyclerView, @NonNull StatusBarPlaceHolder statusBarPlaceHolder, @NonNull PageStatusView pageStatusView, @NonNull SwipeRefreshLayout swipeRefreshLayout2) {
        this.rootView = swipeRefreshLayout;
        this.appbarLayout = appBarLayout;
        this.fakeActionBar = fakeActionBar;
        this.overlay = frameLayout;
        this.recycleFrame = nVThemeFrameLayout;
        this.recycleLayout = nVRecyclerView;
        this.statusBar = statusBarPlaceHolder;
        this.statusView = pageStatusView;
        this.swipeRefresh = swipeRefreshLayout2;
    }

    @NonNull
    public static FragmentMembershipMainRecyclerBinding bind(@NonNull View view) {
        int i10 = R.id.appbar_layout;
        AppBarLayout appBarLayout = (AppBarLayout) ViewBindings.a(view, R.id.appbar_layout);
        if (appBarLayout != null) {
            i10 = R.id.fake_action_bar;
            FakeActionBar fakeActionBar = (FakeActionBar) ViewBindings.a(view, R.id.fake_action_bar);
            if (fakeActionBar != null) {
                i10 = R.id.overlay;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.overlay);
                if (frameLayout != null) {
                    i10 = R.id.recycle_frame;
                    NVThemeFrameLayout nVThemeFrameLayout = (NVThemeFrameLayout) ViewBindings.a(view, R.id.recycle_frame);
                    if (nVThemeFrameLayout != null) {
                        i10 = R.id.recycle_layout;
                        NVRecyclerView nVRecyclerView = (NVRecyclerView) ViewBindings.a(view, R.id.recycle_layout);
                        if (nVRecyclerView != null) {
                            i10 = R.id.status_bar;
                            StatusBarPlaceHolder statusBarPlaceHolder = (StatusBarPlaceHolder) ViewBindings.a(view, R.id.status_bar);
                            if (statusBarPlaceHolder != null) {
                                i10 = R.id.status_view;
                                PageStatusView pageStatusView = (PageStatusView) ViewBindings.a(view, R.id.status_view);
                                if (pageStatusView != null) {
                                    SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) view;
                                    return new FragmentMembershipMainRecyclerBinding(swipeRefreshLayout, appBarLayout, fakeActionBar, frameLayout, nVThemeFrameLayout, nVRecyclerView, statusBarPlaceHolder, pageStatusView, swipeRefreshLayout);
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
