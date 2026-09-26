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

/* JADX INFO: loaded from: classes10.dex */
public final class FragmentGlobalSearchBinding implements ViewBinding {

    @NonNull
    public final FrameLayout masterBackground;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final GlobalSearchBarBinding searchBar;

    @NonNull
    public final NVPagerTabLayout tabs;

    @NonNull
    public final NVViewPager viewpager;

    @NonNull
    public static FragmentGlobalSearchBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentGlobalSearchBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_global_search, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentGlobalSearchBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull GlobalSearchBarBinding globalSearchBarBinding, @NonNull NVPagerTabLayout nVPagerTabLayout, @NonNull NVViewPager nVViewPager) {
        this.rootView = frameLayout;
        this.masterBackground = frameLayout2;
        this.searchBar = globalSearchBarBinding;
        this.tabs = nVPagerTabLayout;
        this.viewpager = nVViewPager;
    }

    @NonNull
    public static FragmentGlobalSearchBinding bind(@NonNull View view) {
        int i10 = R.id.master_background;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.master_background);
        if (frameLayout != null) {
            i10 = R.id.search_bar;
            View viewA = ViewBindings.a(view, R.id.search_bar);
            if (viewA != null) {
                GlobalSearchBarBinding globalSearchBarBindingBind = GlobalSearchBarBinding.bind(viewA);
                i10 = R.id.tabs;
                NVPagerTabLayout nVPagerTabLayout = (NVPagerTabLayout) ViewBindings.a(view, R.id.tabs);
                if (nVPagerTabLayout != null) {
                    i10 = R.id.viewpager;
                    NVViewPager nVViewPager = (NVViewPager) ViewBindings.a(view, R.id.viewpager);
                    if (nVViewPager != null) {
                        return new FragmentGlobalSearchBinding((FrameLayout) view, frameLayout, globalSearchBarBindingBind, nVPagerTabLayout, nVViewPager);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
