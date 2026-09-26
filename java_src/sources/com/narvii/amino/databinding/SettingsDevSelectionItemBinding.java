package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.FontAwesomeView;

/* JADX INFO: loaded from: classes5.dex */
public final class SettingsDevSelectionItemBinding implements ViewBinding {

    @NonNull
    public final FontAwesomeView check;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final TextView text;

    @NonNull
    public static SettingsDevSelectionItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static SettingsDevSelectionItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.settings_dev_selection_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private SettingsDevSelectionItemBinding(@NonNull FrameLayout frameLayout, @NonNull FontAwesomeView fontAwesomeView, @NonNull TextView textView) {
        this.rootView = frameLayout;
        this.check = fontAwesomeView;
        this.text = textView;
    }

    @NonNull
    public static SettingsDevSelectionItemBinding bind(@NonNull View view) {
        int i10 = R.id.check;
        FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.check);
        if (fontAwesomeView != null) {
            i10 = R.id.text;
            TextView textView = (TextView) ViewBindings.a(view, R.id.text);
            if (textView != null) {
                return new SettingsDevSelectionItemBinding((FrameLayout) view, fontAwesomeView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
