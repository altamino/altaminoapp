package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemEmbeddedRecyclerViewMyCommunityBinding implements ViewBinding {

    @NonNull
    public final RecyclerView embedRecycler;

    @NonNull
    private final RecyclerView rootView;

    @NonNull
    public static ItemEmbeddedRecyclerViewMyCommunityBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RecyclerView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemEmbeddedRecyclerViewMyCommunityBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        RecyclerView recyclerView = (RecyclerView) view;
        return new ItemEmbeddedRecyclerViewMyCommunityBinding(recyclerView, recyclerView);
    }

    @NonNull
    public static ItemEmbeddedRecyclerViewMyCommunityBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_embedded_recycler_view_my_community, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemEmbeddedRecyclerViewMyCommunityBinding(@NonNull RecyclerView recyclerView, @NonNull RecyclerView recyclerView2) {
        this.rootView = recyclerView;
        this.embedRecycler = recyclerView2;
    }
}
