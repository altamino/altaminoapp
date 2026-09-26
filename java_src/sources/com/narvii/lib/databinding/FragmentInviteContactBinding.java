package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.widget.FontAwesomeView;
import com.narvii.widget.SearchBar;

/* JADX INFO: loaded from: classes10.dex */
public final class FragmentInviteContactBinding implements ViewBinding {

    @NonNull
    public final TextView finalStep;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final SearchBar search;

    @NonNull
    public final FontAwesomeView searchClear;

    @NonNull
    public final EditText searchText;

    @NonNull
    public final TextView send;

    @NonNull
    public static FragmentInviteContactBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentInviteContactBinding bind(@NonNull View view) {
        int i10 = R.id.final_step;
        TextView textView = (TextView) ViewBindings.a(view, i10);
        if (textView != null) {
            i10 = R.id.search;
            SearchBar searchBar = (SearchBar) ViewBindings.a(view, i10);
            if (searchBar != null) {
                i10 = R.id.search_clear;
                FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, i10);
                if (fontAwesomeView != null) {
                    i10 = R.id.search_text;
                    EditText editText = (EditText) ViewBindings.a(view, i10);
                    if (editText != null) {
                        i10 = R.id.send;
                        TextView textView2 = (TextView) ViewBindings.a(view, i10);
                        if (textView2 != null) {
                            return new FragmentInviteContactBinding((LinearLayout) view, textView, searchBar, fontAwesomeView, editText, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static FragmentInviteContactBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_invite_contact, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentInviteContactBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull SearchBar searchBar, @NonNull FontAwesomeView fontAwesomeView, @NonNull EditText editText, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.finalStep = textView;
        this.search = searchBar;
        this.searchClear = fontAwesomeView;
        this.searchText = editText;
        this.send = textView2;
    }
}
