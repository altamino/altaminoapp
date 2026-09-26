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
import com.narvii.widget.HorizontalRecyclerView;

/* JADX INFO: loaded from: classes8.dex */
public final class ItemRecentAminosLayoutBinding implements ViewBinding {

    @NonNull
    public final HorizontalRecyclerView recentAminoLayout;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static ItemRecentAminosLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemRecentAminosLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_recent_aminos_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemRecentAminosLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull HorizontalRecyclerView horizontalRecyclerView) {
        this.rootView = frameLayout;
        this.recentAminoLayout = horizontalRecyclerView;
    }

    @NonNull
    public static ItemRecentAminosLayoutBinding bind(@NonNull View view) {
        HorizontalRecyclerView horizontalRecyclerView = (HorizontalRecyclerView) ViewBindings.a(view, R.id.recent_amino_layout);
        if (horizontalRecyclerView != null) {
            return new ItemRecentAminosLayoutBinding((FrameLayout) view, horizontalRecyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.recent_amino_layout)));
    }
}
