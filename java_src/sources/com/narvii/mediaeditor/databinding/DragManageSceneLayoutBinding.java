package com.narvii.mediaeditor.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.mobeta.android.dslv.DragSortListView;
import com.narvii.mediaeditor.R;

/* JADX INFO: loaded from: classes4.dex */
public final class DragManageSceneLayoutBinding implements ViewBinding {

    @NonNull
    public final DragSortListView list;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static DragManageSceneLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DragManageSceneLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.drag_manage_scene_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DragManageSceneLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull DragSortListView dragSortListView) {
        this.rootView = linearLayout;
        this.list = dragSortListView;
    }

    @NonNull
    public static DragManageSceneLayoutBinding bind(@NonNull View view) {
        DragSortListView dragSortListView = (DragSortListView) ViewBindings.a(view, android.R.id.list);
        if (dragSortListView != null) {
            return new DragManageSceneLayoutBinding((LinearLayout) view, dragSortListView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(android.R.id.list)));
    }
}
