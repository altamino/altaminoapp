package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.FontAwesomeView;
import com.narvii.widget.SearchBar;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes11.dex */
public final class GlobalSearchBarBinding implements ViewBinding {

    @NonNull
    private final SearchBar rootView;

    @NonNull
    public final TintButton searchBack;

    @NonNull
    public final Button searchCancel;

    @NonNull
    public final FontAwesomeView searchClear;

    @NonNull
    public final TintButton searchIcon;

    @NonNull
    public final SearchBar searchLayout;

    @NonNull
    public final EditText searchText;

    @NonNull
    public static GlobalSearchBarBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public SearchBar getRoot() {
        return this.rootView;
    }

    @NonNull
    public static GlobalSearchBarBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.global_search_bar, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private GlobalSearchBarBinding(@NonNull SearchBar searchBar, @NonNull TintButton tintButton, @NonNull Button button, @NonNull FontAwesomeView fontAwesomeView, @NonNull TintButton tintButton2, @NonNull SearchBar searchBar2, @NonNull EditText editText) {
        this.rootView = searchBar;
        this.searchBack = tintButton;
        this.searchCancel = button;
        this.searchClear = fontAwesomeView;
        this.searchIcon = tintButton2;
        this.searchLayout = searchBar2;
        this.searchText = editText;
    }

    @NonNull
    public static GlobalSearchBarBinding bind(@NonNull View view) {
        int i10 = R.id.search_back;
        TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.search_back);
        if (tintButton != null) {
            i10 = R.id.search_cancel;
            Button button = (Button) ViewBindings.a(view, R.id.search_cancel);
            if (button != null) {
                i10 = R.id.search_clear;
                FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.search_clear);
                if (fontAwesomeView != null) {
                    i10 = R.id.search_icon;
                    TintButton tintButton2 = (TintButton) ViewBindings.a(view, R.id.search_icon);
                    if (tintButton2 != null) {
                        SearchBar searchBar = (SearchBar) view;
                        i10 = R.id.search_text;
                        EditText editText = (EditText) ViewBindings.a(view, R.id.search_text);
                        if (editText != null) {
                            return new GlobalSearchBarBinding(searchBar, tintButton, button, fontAwesomeView, tintButton2, searchBar, editText);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
