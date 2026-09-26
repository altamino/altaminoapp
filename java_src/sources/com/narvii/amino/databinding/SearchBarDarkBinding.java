package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.FontAwesomeView;
import com.narvii.widget.SearchBar;

/* JADX INFO: loaded from: classes10.dex */
public final class SearchBarDarkBinding implements ViewBinding {

    @NonNull
    private final SearchBar rootView;

    @NonNull
    public final SearchBar search;

    @NonNull
    public final Button searchBtn;

    @NonNull
    public final FontAwesomeView searchClear;

    @NonNull
    public final LinearLayout searchHint;

    @NonNull
    public final EditText searchText;

    @NonNull
    public static SearchBarDarkBinding bind(@NonNull View view) {
        SearchBar searchBar = (SearchBar) view;
        int i10 = R.id.search_btn;
        Button button = (Button) ViewBindings.a(view, R.id.search_btn);
        if (button != null) {
            i10 = R.id.search_clear;
            FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.search_clear);
            if (fontAwesomeView != null) {
                i10 = R.id.search_hint;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.search_hint);
                if (linearLayout != null) {
                    i10 = R.id.search_text;
                    EditText editText = (EditText) ViewBindings.a(view, R.id.search_text);
                    if (editText != null) {
                        return new SearchBarDarkBinding(searchBar, searchBar, button, fontAwesomeView, linearLayout, editText);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static SearchBarDarkBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public SearchBar getRoot() {
        return this.rootView;
    }

    @NonNull
    public static SearchBarDarkBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.search_bar_dark, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private SearchBarDarkBinding(@NonNull SearchBar searchBar, @NonNull SearchBar searchBar2, @NonNull Button button, @NonNull FontAwesomeView fontAwesomeView, @NonNull LinearLayout linearLayout, @NonNull EditText editText) {
        this.rootView = searchBar;
        this.search = searchBar2;
        this.searchBtn = button;
        this.searchClear = fontAwesomeView;
        this.searchHint = linearLayout;
        this.searchText = editText;
    }
}
