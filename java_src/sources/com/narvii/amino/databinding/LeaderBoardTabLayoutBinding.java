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
import com.narvii.leaderboard.LeaderBoardTabBar;
import com.narvii.list.overlay.OverlayListPlaceholder;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NVPagerTabLayout;
import com.narvii.widget.NVViewPager;

/* JADX INFO: loaded from: classes9.dex */
public final class LeaderBoardTabLayoutBinding implements ViewBinding {

    @NonNull
    public final NVImageView leaderBoardBackground;

    @NonNull
    public final NVImageView leaderBoardBackgroundNext;

    @NonNull
    public final View leaderBoardBackgroundOverlay;

    @NonNull
    public final FrameLayout leaderBoardRoot;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final LeaderBoardTabBar tabBars;

    @NonNull
    public final NVPagerTabLayout tabs;

    @NonNull
    public final OverlayListPlaceholder topPlaceholder;

    @NonNull
    public final NVViewPager viewpager;

    @NonNull
    public static LeaderBoardTabLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LeaderBoardTabLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.leader_board_tab_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LeaderBoardTabLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull NVImageView nVImageView, @NonNull NVImageView nVImageView2, @NonNull View view, @NonNull FrameLayout frameLayout2, @NonNull LeaderBoardTabBar leaderBoardTabBar, @NonNull NVPagerTabLayout nVPagerTabLayout, @NonNull OverlayListPlaceholder overlayListPlaceholder, @NonNull NVViewPager nVViewPager) {
        this.rootView = frameLayout;
        this.leaderBoardBackground = nVImageView;
        this.leaderBoardBackgroundNext = nVImageView2;
        this.leaderBoardBackgroundOverlay = view;
        this.leaderBoardRoot = frameLayout2;
        this.tabBars = leaderBoardTabBar;
        this.tabs = nVPagerTabLayout;
        this.topPlaceholder = overlayListPlaceholder;
        this.viewpager = nVViewPager;
    }

    @NonNull
    public static LeaderBoardTabLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.leader_board_background;
        NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.leader_board_background);
        if (nVImageView != null) {
            i10 = R.id.leader_board_background_next;
            NVImageView nVImageView2 = (NVImageView) ViewBindings.a(view, R.id.leader_board_background_next);
            if (nVImageView2 != null) {
                i10 = R.id.leader_board_background_overlay;
                View viewA = ViewBindings.a(view, R.id.leader_board_background_overlay);
                if (viewA != null) {
                    FrameLayout frameLayout = (FrameLayout) view;
                    i10 = R.id.tab_bars;
                    LeaderBoardTabBar leaderBoardTabBar = (LeaderBoardTabBar) ViewBindings.a(view, R.id.tab_bars);
                    if (leaderBoardTabBar != null) {
                        i10 = R.id.tabs;
                        NVPagerTabLayout nVPagerTabLayout = (NVPagerTabLayout) ViewBindings.a(view, R.id.tabs);
                        if (nVPagerTabLayout != null) {
                            i10 = R.id.top_placeholder;
                            OverlayListPlaceholder overlayListPlaceholder = (OverlayListPlaceholder) ViewBindings.a(view, R.id.top_placeholder);
                            if (overlayListPlaceholder != null) {
                                i10 = R.id.viewpager;
                                NVViewPager nVViewPager = (NVViewPager) ViewBindings.a(view, R.id.viewpager);
                                if (nVViewPager != null) {
                                    return new LeaderBoardTabLayoutBinding(frameLayout, nVImageView, nVImageView2, viewA, frameLayout, leaderBoardTabBar, nVPagerTabLayout, overlayListPlaceholder, nVViewPager);
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
