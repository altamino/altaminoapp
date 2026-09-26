package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.list.refresh.SwipeRefreshLayout;
import com.narvii.master.widget.MasterTabPlaceHolder;
import com.narvii.master.widget.MasterTabTransparentPlaceHolder;
import com.narvii.nested.NVAppBarLayout;
import com.narvii.widget.NVPagerTabLayout;
import com.narvii.widget.NVViewPager;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes10.dex */
public final class FragmentDiscoverTabBinding implements ViewBinding {

    @NonNull
    public final NVAppBarLayout appbarLayout;

    @NonNull
    public final LinearLayout bodyContent;

    @NonNull
    public final View bottomOffset;

    @NonNull
    public final LinearLayout coordinateTopContent;

    @NonNull
    public final MasterTabTransparentPlaceHolder gradientTopContent;

    @NonNull
    public final FrameLayout masterBackground;

    @NonNull
    public final MasterTabPlaceHolder masterTopPlaceholder;

    @NonNull
    public final TintButton picker;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final FrameLayout storyListFrame;

    @NonNull
    public final SwipeRefreshLayout swipeRefreshLayout;

    @NonNull
    public final NVPagerTabLayout tabs;

    @NonNull
    public final NVViewPager viewpager;

    @NonNull
    public static FragmentDiscoverTabBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentDiscoverTabBinding bind(@NonNull View view) {
        int i10 = R.id.appbar_layout;
        NVAppBarLayout nVAppBarLayout = (NVAppBarLayout) ViewBindings.a(view, R.id.appbar_layout);
        if (nVAppBarLayout != null) {
            i10 = R.id.body_content;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.body_content);
            if (linearLayout != null) {
                i10 = R.id.bottom_offset;
                View viewA = ViewBindings.a(view, R.id.bottom_offset);
                if (viewA != null) {
                    i10 = R.id.coordinate_top_content;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.coordinate_top_content);
                    if (linearLayout2 != null) {
                        i10 = R.id.gradient_top_content;
                        MasterTabTransparentPlaceHolder masterTabTransparentPlaceHolder = (MasterTabTransparentPlaceHolder) ViewBindings.a(view, R.id.gradient_top_content);
                        if (masterTabTransparentPlaceHolder != null) {
                            i10 = R.id.master_background;
                            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.master_background);
                            if (frameLayout != null) {
                                i10 = R.id.master_top_placeholder;
                                MasterTabPlaceHolder masterTabPlaceHolder = (MasterTabPlaceHolder) ViewBindings.a(view, R.id.master_top_placeholder);
                                if (masterTabPlaceHolder != null) {
                                    i10 = R.id.picker;
                                    TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.picker);
                                    if (tintButton != null) {
                                        i10 = R.id.story_list_frame;
                                        FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.story_list_frame);
                                        if (frameLayout2 != null) {
                                            i10 = R.id.swipe_refresh_layout;
                                            SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) ViewBindings.a(view, R.id.swipe_refresh_layout);
                                            if (swipeRefreshLayout != null) {
                                                i10 = R.id.tabs;
                                                NVPagerTabLayout nVPagerTabLayout = (NVPagerTabLayout) ViewBindings.a(view, R.id.tabs);
                                                if (nVPagerTabLayout != null) {
                                                    i10 = R.id.viewpager;
                                                    NVViewPager nVViewPager = (NVViewPager) ViewBindings.a(view, R.id.viewpager);
                                                    if (nVViewPager != null) {
                                                        return new FragmentDiscoverTabBinding((FrameLayout) view, nVAppBarLayout, linearLayout, viewA, linearLayout2, masterTabTransparentPlaceHolder, frameLayout, masterTabPlaceHolder, tintButton, frameLayout2, swipeRefreshLayout, nVPagerTabLayout, nVViewPager);
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static FragmentDiscoverTabBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_discover_tab, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentDiscoverTabBinding(@NonNull FrameLayout frameLayout, @NonNull NVAppBarLayout nVAppBarLayout, @NonNull LinearLayout linearLayout, @NonNull View view, @NonNull LinearLayout linearLayout2, @NonNull MasterTabTransparentPlaceHolder masterTabTransparentPlaceHolder, @NonNull FrameLayout frameLayout2, @NonNull MasterTabPlaceHolder masterTabPlaceHolder, @NonNull TintButton tintButton, @NonNull FrameLayout frameLayout3, @NonNull SwipeRefreshLayout swipeRefreshLayout, @NonNull NVPagerTabLayout nVPagerTabLayout, @NonNull NVViewPager nVViewPager) {
        this.rootView = frameLayout;
        this.appbarLayout = nVAppBarLayout;
        this.bodyContent = linearLayout;
        this.bottomOffset = view;
        this.coordinateTopContent = linearLayout2;
        this.gradientTopContent = masterTabTransparentPlaceHolder;
        this.masterBackground = frameLayout2;
        this.masterTopPlaceholder = masterTabPlaceHolder;
        this.picker = tintButton;
        this.storyListFrame = frameLayout3;
        this.swipeRefreshLayout = swipeRefreshLayout;
        this.tabs = nVPagerTabLayout;
        this.viewpager = nVViewPager;
    }
}
