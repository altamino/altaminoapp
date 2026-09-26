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
import com.narvii.app.theme.view.NVThemeLinearLayout;
import com.narvii.mediaeditor.R;
import com.narvii.scene.template.view.SceneTemplateMaterialSortLayout;

/* JADX INFO: loaded from: classes7.dex */
public final class FragmentSceneTemplateGeneratorBinding implements ViewBinding {

    @NonNull
    public final RecyclerView recyclerView;

    @NonNull
    private final NVThemeLinearLayout rootView;

    @NonNull
    public final SceneTemplateMaterialSortLayout sortLayout;

    @NonNull
    public final FrameLayout wmeFrame;

    @NonNull
    public static FragmentSceneTemplateGeneratorBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVThemeLinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentSceneTemplateGeneratorBinding bind(@NonNull View view) {
        int i10 = R.id.recycler_view;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.a(view, i10);
        if (recyclerView != null) {
            i10 = R.id.sort_layout;
            SceneTemplateMaterialSortLayout sceneTemplateMaterialSortLayout = (SceneTemplateMaterialSortLayout) ViewBindings.a(view, i10);
            if (sceneTemplateMaterialSortLayout != null) {
                i10 = R.id.wme_frame;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, i10);
                if (frameLayout != null) {
                    return new FragmentSceneTemplateGeneratorBinding((NVThemeLinearLayout) view, recyclerView, sceneTemplateMaterialSortLayout, frameLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static FragmentSceneTemplateGeneratorBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_scene_template_generator, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentSceneTemplateGeneratorBinding(@NonNull NVThemeLinearLayout nVThemeLinearLayout, @NonNull RecyclerView recyclerView, @NonNull SceneTemplateMaterialSortLayout sceneTemplateMaterialSortLayout, @NonNull FrameLayout frameLayout) {
        this.rootView = nVThemeLinearLayout;
        this.recyclerView = recyclerView;
        this.sortLayout = sceneTemplateMaterialSortLayout;
        this.wmeFrame = frameLayout;
    }
}
