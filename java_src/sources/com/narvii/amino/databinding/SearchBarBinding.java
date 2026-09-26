package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;
import com.narvii.widget.SearchBar;

/* JADX INFO: loaded from: classes7.dex */
public final class SearchBarBinding implements ViewBinding {

    @NonNull
    private final SearchBar rootView;

    @NonNull
    public final SearchBar search;

    @NonNull
    public static SearchBarBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public SearchBar getRoot() {
        return this.rootView;
    }

    @NonNull
    public static SearchBarBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        SearchBar searchBar = (SearchBar) view;
        return new SearchBarBinding(searchBar, searchBar);
    }

    @NonNull
    public static SearchBarBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.search_bar, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private SearchBarBinding(@NonNull SearchBar searchBar, @NonNull SearchBar searchBar2) {
        this.rootView = searchBar;
        this.search = searchBar2;
    }
}
