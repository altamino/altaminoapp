package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes2.dex */
public final class SingleRecyclerViewLayoutBinding implements ViewBinding {

    @NonNull
    public final RecyclerView recycler;

    @NonNull
    private final RecyclerView rootView;

    @NonNull
    public static SingleRecyclerViewLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RecyclerView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static SingleRecyclerViewLayoutBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        RecyclerView recyclerView = (RecyclerView) view;
        return new SingleRecyclerViewLayoutBinding(recyclerView, recyclerView);
    }

    @NonNull
    public static SingleRecyclerViewLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.single_recycler_view_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private SingleRecyclerViewLayoutBinding(@NonNull RecyclerView recyclerView, @NonNull RecyclerView recyclerView2) {
        this.rootView = recyclerView;
        this.recycler = recyclerView2;
    }
}
