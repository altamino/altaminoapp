package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TabHost;
import android.widget.TabWidget;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes7.dex */
public final class PagerTabFragmentLayoutBinding implements ViewBinding {

    @NonNull
    public final ViewPager pager;

    @NonNull
    private final TabHost rootView;

    @NonNull
    public final FrameLayout tabcontent;

    @NonNull
    public final TabHost tabhost;

    @NonNull
    public final TabWidget tabs;

    @NonNull
    public static PagerTabFragmentLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public TabHost getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PagerTabFragmentLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.pager;
        ViewPager viewPager = (ViewPager) ViewBindings.a(view, i10);
        if (viewPager != null) {
            i10 = android.R.id.tabcontent;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, android.R.id.tabcontent);
            if (frameLayout != null) {
                TabHost tabHost = (TabHost) view;
                i10 = android.R.id.tabs;
                TabWidget tabWidget = (TabWidget) ViewBindings.a(view, android.R.id.tabs);
                if (tabWidget != null) {
                    return new PagerTabFragmentLayoutBinding(tabHost, viewPager, frameLayout, tabHost, tabWidget);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static PagerTabFragmentLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.pager_tab_fragment_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PagerTabFragmentLayoutBinding(@NonNull TabHost tabHost, @NonNull ViewPager viewPager, @NonNull FrameLayout frameLayout, @NonNull TabHost tabHost2, @NonNull TabWidget tabWidget) {
        this.rootView = tabHost;
        this.pager = viewPager;
        this.tabcontent = frameLayout;
        this.tabhost = tabHost2;
        this.tabs = tabWidget;
    }
}
