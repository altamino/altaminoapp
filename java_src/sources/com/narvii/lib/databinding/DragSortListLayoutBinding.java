package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.mobeta.android.dslv.DragSortListView;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class DragSortListLayoutBinding implements ViewBinding {

    @NonNull
    public final DragSortListView list;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static DragSortListLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DragSortListLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.drag_sort_list_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DragSortListLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull DragSortListView dragSortListView) {
        this.rootView = frameLayout;
        this.list = dragSortListView;
    }

    @NonNull
    public static DragSortListLayoutBinding bind(@NonNull View view) {
        DragSortListView dragSortListView = (DragSortListView) ViewBindings.a(view, android.R.id.list);
        if (dragSortListView != null) {
            return new DragSortListLayoutBinding((FrameLayout) view, dragSortListView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(android.R.id.list)));
    }
}
