package com.narvii.mediaeditor.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.mediaeditor.R;

/* JADX INFO: loaded from: classes11.dex */
public final class ViewSceneTemplateMaterailSortBinding implements ViewBinding {

    @NonNull
    public final RecyclerView backgroundRecyclerView;

    @NonNull
    public final RecyclerView recyclerView;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static ViewSceneTemplateMaterailSortBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ViewSceneTemplateMaterailSortBinding bind(@NonNull View view) {
        int i10 = R.id.background_recycler_view;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.a(view, i10);
        if (recyclerView != null) {
            i10 = R.id.recycler_view;
            RecyclerView recyclerView2 = (RecyclerView) ViewBindings.a(view, i10);
            if (recyclerView2 != null) {
                return new ViewSceneTemplateMaterailSortBinding((FrameLayout) view, recyclerView, recyclerView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ViewSceneTemplateMaterailSortBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.view_scene_template_materail_sort, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ViewSceneTemplateMaterailSortBinding(@NonNull FrameLayout frameLayout, @NonNull RecyclerView recyclerView, @NonNull RecyclerView recyclerView2) {
        this.rootView = frameLayout;
        this.backgroundRecyclerView = recyclerView;
        this.recyclerView = recyclerView2;
    }
}
