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
import com.narvii.master.MasterTopBar;
import com.narvii.master.widget.MasterBottomBar;
import com.narvii.nested.NVCoordinateLayout;
import com.narvii.widget.NVPagerTabLayout;
import com.narvii.widget.NVViewPager;
import com.narvii.widget.RoundFrameLayout;

/* JADX INFO: loaded from: classes7.dex */
public final class IncubatorTabLayoutBinding implements ViewBinding {

    @NonNull
    public final View bottomBg;

    @NonNull
    public final RoundFrameLayout bottomContainer;

    @NonNull
    public final FrameLayout bottomLayout;

    @NonNull
    public final FrameLayout bottomTab;

    @NonNull
    public final FrameLayout masterBackground;

    @NonNull
    public final MasterBottomBar masterBottomBar;

    @NonNull
    public final LinearLayout masterTabOffset;

    @NonNull
    public final MasterTopBar masterTopBar;

    @NonNull
    private final NVCoordinateLayout rootView;

    @NonNull
    public final NVPagerTabLayout tabs;

    @NonNull
    public final NVViewPager viewpager;

    @NonNull
    public static IncubatorTabLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVCoordinateLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static IncubatorTabLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.incubator_tab_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private IncubatorTabLayoutBinding(@NonNull NVCoordinateLayout nVCoordinateLayout, @NonNull View view, @NonNull RoundFrameLayout roundFrameLayout, @NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull FrameLayout frameLayout3, @NonNull MasterBottomBar masterBottomBar, @NonNull LinearLayout linearLayout, @NonNull MasterTopBar masterTopBar, @NonNull NVPagerTabLayout nVPagerTabLayout, @NonNull NVViewPager nVViewPager) {
        this.rootView = nVCoordinateLayout;
        this.bottomBg = view;
        this.bottomContainer = roundFrameLayout;
        this.bottomLayout = frameLayout;
        this.bottomTab = frameLayout2;
        this.masterBackground = frameLayout3;
        this.masterBottomBar = masterBottomBar;
        this.masterTabOffset = linearLayout;
        this.masterTopBar = masterTopBar;
        this.tabs = nVPagerTabLayout;
        this.viewpager = nVViewPager;
    }

    @NonNull
    public static IncubatorTabLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.bottom_bg;
        View viewA = ViewBindings.a(view, R.id.bottom_bg);
        if (viewA != null) {
            i10 = R.id.bottom_container;
            RoundFrameLayout roundFrameLayout = (RoundFrameLayout) ViewBindings.a(view, R.id.bottom_container);
            if (roundFrameLayout != null) {
                i10 = R.id.bottom_layout;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.bottom_layout);
                if (frameLayout != null) {
                    i10 = R.id.bottom_tab;
                    FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.bottom_tab);
                    if (frameLayout2 != null) {
                        i10 = R.id.master_background;
                        FrameLayout frameLayout3 = (FrameLayout) ViewBindings.a(view, R.id.master_background);
                        if (frameLayout3 != null) {
                            i10 = R.id.master_bottom_bar;
                            MasterBottomBar masterBottomBar = (MasterBottomBar) ViewBindings.a(view, R.id.master_bottom_bar);
                            if (masterBottomBar != null) {
                                i10 = R.id.master_tab_offset;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.master_tab_offset);
                                if (linearLayout != null) {
                                    i10 = R.id.master_top_bar;
                                    MasterTopBar masterTopBar = (MasterTopBar) ViewBindings.a(view, R.id.master_top_bar);
                                    if (masterTopBar != null) {
                                        i10 = R.id.tabs;
                                        NVPagerTabLayout nVPagerTabLayout = (NVPagerTabLayout) ViewBindings.a(view, R.id.tabs);
                                        if (nVPagerTabLayout != null) {
                                            i10 = R.id.viewpager;
                                            NVViewPager nVViewPager = (NVViewPager) ViewBindings.a(view, R.id.viewpager);
                                            if (nVViewPager != null) {
                                                return new IncubatorTabLayoutBinding((NVCoordinateLayout) view, viewA, roundFrameLayout, frameLayout, frameLayout2, frameLayout3, masterBottomBar, linearLayout, masterTopBar, nVPagerTabLayout, nVViewPager);
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
}
