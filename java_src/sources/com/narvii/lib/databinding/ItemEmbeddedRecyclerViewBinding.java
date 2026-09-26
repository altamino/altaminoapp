package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes8.dex */
public final class ItemEmbeddedRecyclerViewBinding implements ViewBinding {

    @NonNull
    public final RecyclerView embedRecycler;

    @NonNull
    private final RecyclerView rootView;

    @NonNull
    public static ItemEmbeddedRecyclerViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RecyclerView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemEmbeddedRecyclerViewBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        RecyclerView recyclerView = (RecyclerView) view;
        return new ItemEmbeddedRecyclerViewBinding(recyclerView, recyclerView);
    }

    @NonNull
    public static ItemEmbeddedRecyclerViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_embedded_recycler_view, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemEmbeddedRecyclerViewBinding(@NonNull RecyclerView recyclerView, @NonNull RecyclerView recyclerView2) {
        this.rootView = recyclerView;
        this.embedRecycler = recyclerView2;
    }
}
