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

/* JADX INFO: loaded from: classes9.dex */
public final class SrRecyclerDividerItemBinding implements ViewBinding {

    @NonNull
    public final View dividerLine;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static SrRecyclerDividerItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static SrRecyclerDividerItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.sr_recycler_divider_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private SrRecyclerDividerItemBinding(@NonNull FrameLayout frameLayout, @NonNull View view) {
        this.rootView = frameLayout;
        this.dividerLine = view;
    }

    @NonNull
    public static SrRecyclerDividerItemBinding bind(@NonNull View view) {
        View viewA = ViewBindings.a(view, R.id.divider_line);
        if (viewA != null) {
            return new SrRecyclerDividerItemBinding((FrameLayout) view, viewA);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.divider_line)));
    }
}
