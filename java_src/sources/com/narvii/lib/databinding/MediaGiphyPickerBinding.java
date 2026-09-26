package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.widget.AutoCloseKeyboardLayout;
import com.narvii.widget.FontAwesomeView;
import com.narvii.widget.SearchBar;

/* JADX INFO: loaded from: classes.dex */
public final class MediaGiphyPickerBinding implements ViewBinding {

    @NonNull
    private final AutoCloseKeyboardLayout rootView;

    @NonNull
    public final SearchBar search;

    @NonNull
    public final FontAwesomeView searchClear;

    @NonNull
    public final EditText searchText;

    @NonNull
    public static MediaGiphyPickerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public AutoCloseKeyboardLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static MediaGiphyPickerBinding bind(@NonNull View view) {
        int i10 = R.id.search;
        SearchBar searchBar = (SearchBar) ViewBindings.a(view, i10);
        if (searchBar != null) {
            i10 = R.id.search_clear;
            FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, i10);
            if (fontAwesomeView != null) {
                i10 = R.id.search_text;
                EditText editText = (EditText) ViewBindings.a(view, i10);
                if (editText != null) {
                    return new MediaGiphyPickerBinding((AutoCloseKeyboardLayout) view, searchBar, fontAwesomeView, editText);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static MediaGiphyPickerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.media_giphy_picker, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private MediaGiphyPickerBinding(@NonNull AutoCloseKeyboardLayout autoCloseKeyboardLayout, @NonNull SearchBar searchBar, @NonNull FontAwesomeView fontAwesomeView, @NonNull EditText editText) {
        this.rootView = autoCloseKeyboardLayout;
        this.search = searchBar;
        this.searchClear = fontAwesomeView;
        this.searchText = editText;
    }
}
