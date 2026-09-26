package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.NVPagerTabLayout;
import com.narvii.widget.NVViewPager;
import com.narvii.widget.SearchBar;
import com.narvii.widget.StatusBarPlaceHolder;

/* JADX INFO: loaded from: classes7.dex */
public final class FragmentSearchKeywordBinding implements ViewBinding {

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final SearchBar search;

    @NonNull
    public final StatusBarPlaceHolder statusBar;

    @NonNull
    public final NVPagerTabLayout tabs;

    @NonNull
    public final NVViewPager viewpager;

    @NonNull
    public static FragmentSearchKeywordBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentSearchKeywordBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_search_keyword, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentSearchKeywordBinding(@NonNull LinearLayout linearLayout, @NonNull SearchBar searchBar, @NonNull StatusBarPlaceHolder statusBarPlaceHolder, @NonNull NVPagerTabLayout nVPagerTabLayout, @NonNull NVViewPager nVViewPager) {
        this.rootView = linearLayout;
        this.search = searchBar;
        this.statusBar = statusBarPlaceHolder;
        this.tabs = nVPagerTabLayout;
        this.viewpager = nVViewPager;
    }

    @NonNull
    public static FragmentSearchKeywordBinding bind(@NonNull View view) {
        int i10 = R.id.search;
        SearchBar searchBar = (SearchBar) ViewBindings.a(view, R.id.search);
        if (searchBar != null) {
            i10 = R.id.status_bar;
            StatusBarPlaceHolder statusBarPlaceHolder = (StatusBarPlaceHolder) ViewBindings.a(view, R.id.status_bar);
            if (statusBarPlaceHolder != null) {
                i10 = R.id.tabs;
                NVPagerTabLayout nVPagerTabLayout = (NVPagerTabLayout) ViewBindings.a(view, R.id.tabs);
                if (nVPagerTabLayout != null) {
                    i10 = R.id.viewpager;
                    NVViewPager nVViewPager = (NVViewPager) ViewBindings.a(view, R.id.viewpager);
                    if (nVViewPager != null) {
                        return new FragmentSearchKeywordBinding((LinearLayout) view, searchBar, statusBarPlaceHolder, nVPagerTabLayout, nVViewPager);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
