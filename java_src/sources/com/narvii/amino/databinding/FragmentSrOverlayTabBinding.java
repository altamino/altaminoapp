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
import com.narvii.widget.NVPagerTabLayout;
import com.narvii.widget.NVViewPager;

/* JADX INFO: loaded from: classes7.dex */
public final class FragmentSrOverlayTabBinding implements ViewBinding {

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final NVPagerTabLayout tabs;

    @NonNull
    public final NVViewPager viewpager;

    @NonNull
    public static FragmentSrOverlayTabBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentSrOverlayTabBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_sr_overlay_tab, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentSrOverlayTabBinding(@NonNull FrameLayout frameLayout, @NonNull NVPagerTabLayout nVPagerTabLayout, @NonNull NVViewPager nVViewPager) {
        this.rootView = frameLayout;
        this.tabs = nVPagerTabLayout;
        this.viewpager = nVViewPager;
    }

    @NonNull
    public static FragmentSrOverlayTabBinding bind(@NonNull View view) {
        int i10 = R.id.tabs;
        NVPagerTabLayout nVPagerTabLayout = (NVPagerTabLayout) ViewBindings.a(view, R.id.tabs);
        if (nVPagerTabLayout != null) {
            i10 = R.id.viewpager;
            NVViewPager nVViewPager = (NVViewPager) ViewBindings.a(view, R.id.viewpager);
            if (nVViewPager != null) {
                return new FragmentSrOverlayTabBinding((FrameLayout) view, nVPagerTabLayout, nVViewPager);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
