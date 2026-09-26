package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.FontAwesomeView;

/* JADX INFO: loaded from: classes10.dex */
public final class SearchBarChildsBinding implements ViewBinding {

    @NonNull
    private final View rootView;

    @NonNull
    public final FontAwesomeView searchClear;

    @NonNull
    public final EditText searchText;

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static SearchBarChildsBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R.layout.search_bar_childs, viewGroup);
        return bind(viewGroup);
    }

    private SearchBarChildsBinding(@NonNull View view, @NonNull FontAwesomeView fontAwesomeView, @NonNull EditText editText) {
        this.rootView = view;
        this.searchClear = fontAwesomeView;
        this.searchText = editText;
    }

    @NonNull
    public static SearchBarChildsBinding bind(@NonNull View view) {
        int i10 = R.id.search_clear;
        FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.search_clear);
        if (fontAwesomeView != null) {
            i10 = R.id.search_text;
            EditText editText = (EditText) ViewBindings.a(view, R.id.search_text);
            if (editText != null) {
                return new SearchBarChildsBinding(view, fontAwesomeView, editText);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
