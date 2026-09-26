package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.SearchBar;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes2.dex */
public final class SearchBarChatBinding implements ViewBinding {

    @NonNull
    private final SearchBar rootView;

    @NonNull
    public final SearchBar search;

    @NonNull
    public final ImageView searchClear;

    @NonNull
    public final TextView searchHint;

    @NonNull
    public final TintButton searchIcon;

    @NonNull
    public final EditText searchText;

    @NonNull
    public static SearchBarChatBinding bind(@NonNull View view) {
        SearchBar searchBar = (SearchBar) view;
        int i10 = R.id.search_clear;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.search_clear);
        if (imageView != null) {
            i10 = R.id.search_hint;
            TextView textView = (TextView) ViewBindings.a(view, R.id.search_hint);
            if (textView != null) {
                i10 = R.id.search_icon;
                TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.search_icon);
                if (tintButton != null) {
                    i10 = R.id.search_text;
                    EditText editText = (EditText) ViewBindings.a(view, R.id.search_text);
                    if (editText != null) {
                        return new SearchBarChatBinding(searchBar, searchBar, imageView, textView, tintButton, editText);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static SearchBarChatBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public SearchBar getRoot() {
        return this.rootView;
    }

    @NonNull
    public static SearchBarChatBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.search_bar_chat, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private SearchBarChatBinding(@NonNull SearchBar searchBar, @NonNull SearchBar searchBar2, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TintButton tintButton, @NonNull EditText editText) {
        this.rootView = searchBar;
        this.search = searchBar2;
        this.searchClear = imageView;
        this.searchHint = textView;
        this.searchIcon = tintButton;
        this.searchText = editText;
    }
}
