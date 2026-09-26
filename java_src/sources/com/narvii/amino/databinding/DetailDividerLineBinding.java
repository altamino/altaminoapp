package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes2.dex */
public final class DetailDividerLineBinding implements ViewBinding {

    @NonNull
    public final View dividerLine;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static DetailDividerLineBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DetailDividerLineBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.detail_divider_line, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DetailDividerLineBinding(@NonNull FrameLayout frameLayout, @NonNull View view) {
        this.rootView = frameLayout;
        this.dividerLine = view;
    }

    @NonNull
    public static DetailDividerLineBinding bind(@NonNull View view) {
        View viewA = ViewBindings.a(view, R.id.divider_line);
        if (viewA != null) {
            return new DetailDividerLineBinding((FrameLayout) view, viewA);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.divider_line)));
    }
}
