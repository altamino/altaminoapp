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
import com.narvii.widget.recycleview.NVRecyclerView;

/* JADX INFO: loaded from: classes8.dex */
public final class LinkedCommunityLayoutBinding implements ViewBinding {

    @NonNull
    public final NVRecyclerView recyclerView;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static LinkedCommunityLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LinkedCommunityLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.linked_community_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LinkedCommunityLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull NVRecyclerView nVRecyclerView) {
        this.rootView = linearLayout;
        this.recyclerView = nVRecyclerView;
    }

    @NonNull
    public static LinkedCommunityLayoutBinding bind(@NonNull View view) {
        NVRecyclerView nVRecyclerView = (NVRecyclerView) ViewBindings.a(view, R.id.recycler_view);
        if (nVRecyclerView != null) {
            return new LinkedCommunityLayoutBinding((LinearLayout) view, nVRecyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.recycler_view)));
    }
}
