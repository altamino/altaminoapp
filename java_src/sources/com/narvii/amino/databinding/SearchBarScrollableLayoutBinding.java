package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.FontAwesomeView;
import com.narvii.widget.SearchBar;

/* JADX INFO: loaded from: classes10.dex */
public final class SearchBarScrollableLayoutBinding implements ViewBinding {

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final SearchBar searchBar;

    @NonNull
    public final FontAwesomeView searchClear;

    @NonNull
    public final FontAwesomeView searchIcon;

    @NonNull
    public final EditText searchText;

    @NonNull
    public final HorizontalScrollView searchThumbScroller;

    @NonNull
    public final LinearLayout thumbContainer;

    @NonNull
    public static SearchBarScrollableLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static SearchBarScrollableLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.search_bar_scrollable_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private SearchBarScrollableLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull SearchBar searchBar, @NonNull FontAwesomeView fontAwesomeView, @NonNull FontAwesomeView fontAwesomeView2, @NonNull EditText editText, @NonNull HorizontalScrollView horizontalScrollView, @NonNull LinearLayout linearLayout2) {
        this.rootView = linearLayout;
        this.searchBar = searchBar;
        this.searchClear = fontAwesomeView;
        this.searchIcon = fontAwesomeView2;
        this.searchText = editText;
        this.searchThumbScroller = horizontalScrollView;
        this.thumbContainer = linearLayout2;
    }

    @NonNull
    public static SearchBarScrollableLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.search_bar;
        SearchBar searchBar = (SearchBar) ViewBindings.a(view, R.id.search_bar);
        if (searchBar != null) {
            i10 = R.id.search_clear;
            FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.search_clear);
            if (fontAwesomeView != null) {
                i10 = R.id.search_icon;
                FontAwesomeView fontAwesomeView2 = (FontAwesomeView) ViewBindings.a(view, R.id.search_icon);
                if (fontAwesomeView2 != null) {
                    i10 = R.id.search_text;
                    EditText editText = (EditText) ViewBindings.a(view, R.id.search_text);
                    if (editText != null) {
                        i10 = R.id.search_thumb_scroller;
                        HorizontalScrollView horizontalScrollView = (HorizontalScrollView) ViewBindings.a(view, R.id.search_thumb_scroller);
                        if (horizontalScrollView != null) {
                            i10 = R.id.thumb_container;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.thumb_container);
                            if (linearLayout != null) {
                                return new SearchBarScrollableLayoutBinding((LinearLayout) view, searchBar, fontAwesomeView, fontAwesomeView2, editText, horizontalScrollView, linearLayout);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
