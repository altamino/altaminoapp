package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.FontAwesomeView;

/* JADX INFO: loaded from: classes6.dex */
public final class FlaglogListLayoutBinding implements ViewBinding {

    @NonNull
    public final FontAwesomeView reposrtsClose;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static FlaglogListLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FlaglogListLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.flaglog_list_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FlaglogListLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull FontAwesomeView fontAwesomeView) {
        this.rootView = linearLayout;
        this.reposrtsClose = fontAwesomeView;
    }

    @NonNull
    public static FlaglogListLayoutBinding bind(@NonNull View view) {
        FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.reposrts_close);
        if (fontAwesomeView != null) {
            return new FlaglogListLayoutBinding((LinearLayout) view, fontAwesomeView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.reposrts_close)));
    }
}
