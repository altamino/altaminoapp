package com.narvii.lib.databinding;

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
import com.narvii.lib.R;
import com.narvii.widget.FontAwesomeView;
import com.narvii.widget.SearchBar;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes10.dex */
public final class MediaAudioOnlinePickerSearchListBinding implements ViewBinding {

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TintButton searchBack;

    @NonNull
    public final SearchBar searchBar;

    @NonNull
    public final Button searchCancel;

    @NonNull
    public final FontAwesomeView searchClear;

    @NonNull
    public final TintButton searchIcon;

    @NonNull
    public final EditText searchText;

    @NonNull
    public static MediaAudioOnlinePickerSearchListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static MediaAudioOnlinePickerSearchListBinding bind(@NonNull View view) {
        int i10 = R.id.search_back;
        TintButton tintButton = (TintButton) ViewBindings.a(view, i10);
        if (tintButton != null) {
            i10 = R.id.search_bar;
            SearchBar searchBar = (SearchBar) ViewBindings.a(view, i10);
            if (searchBar != null) {
                i10 = R.id.search_cancel;
                Button button = (Button) ViewBindings.a(view, i10);
                if (button != null) {
                    i10 = R.id.search_clear;
                    FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, i10);
                    if (fontAwesomeView != null) {
                        i10 = R.id.search_icon;
                        TintButton tintButton2 = (TintButton) ViewBindings.a(view, i10);
                        if (tintButton2 != null) {
                            i10 = R.id.search_text;
                            EditText editText = (EditText) ViewBindings.a(view, i10);
                            if (editText != null) {
                                return new MediaAudioOnlinePickerSearchListBinding((LinearLayout) view, tintButton, searchBar, button, fontAwesomeView, tintButton2, editText);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static MediaAudioOnlinePickerSearchListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.media_audio_online_picker_search_list, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private MediaAudioOnlinePickerSearchListBinding(@NonNull LinearLayout linearLayout, @NonNull TintButton tintButton, @NonNull SearchBar searchBar, @NonNull Button button, @NonNull FontAwesomeView fontAwesomeView, @NonNull TintButton tintButton2, @NonNull EditText editText) {
        this.rootView = linearLayout;
        this.searchBack = tintButton;
        this.searchBar = searchBar;
        this.searchCancel = button;
        this.searchClear = fontAwesomeView;
        this.searchIcon = tintButton2;
        this.searchText = editText;
    }
}
