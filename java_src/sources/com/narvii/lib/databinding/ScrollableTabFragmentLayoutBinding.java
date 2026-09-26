package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.widget.NVPagerTabLayout;
import com.narvii.widget.NVViewPager;

/* JADX INFO: loaded from: classes5.dex */
public final class ScrollableTabFragmentLayoutBinding implements ViewBinding {

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final NVPagerTabLayout tabs;

    @NonNull
    public final NVViewPager viewpager;

    @NonNull
    public static ScrollableTabFragmentLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ScrollableTabFragmentLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.tabs;
        NVPagerTabLayout nVPagerTabLayout = (NVPagerTabLayout) ViewBindings.a(view, i10);
        if (nVPagerTabLayout != null) {
            i10 = R.id.viewpager;
            NVViewPager nVViewPager = (NVViewPager) ViewBindings.a(view, i10);
            if (nVViewPager != null) {
                return new ScrollableTabFragmentLayoutBinding((LinearLayout) view, nVPagerTabLayout, nVViewPager);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ScrollableTabFragmentLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.scrollable_tab_fragment_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ScrollableTabFragmentLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull NVPagerTabLayout nVPagerTabLayout, @NonNull NVViewPager nVViewPager) {
        this.rootView = linearLayout;
        this.tabs = nVPagerTabLayout;
        this.viewpager = nVViewPager;
    }
}
