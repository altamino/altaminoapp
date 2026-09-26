package com.narvii.mediaeditor.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.mediaeditor.R;
import com.narvii.scene.view.ScenePreviewLayout;
import com.narvii.widgets.StoryProgressBar;

/* JADX INFO: loaded from: classes4.dex */
public final class PreviewSceneFullscreenLayoutBinding implements ViewBinding {

    @NonNull
    public final LinearLayout clickOverlay;

    @NonNull
    public final RelativeLayout overlay;

    @NonNull
    public final FrameLayout pollQuizContainer;

    @NonNull
    public final ScenePreviewLayout previewLayout;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public final StoryProgressBar storyProgress;

    @NonNull
    public final View toLastScene;

    @NonNull
    public final View toNextScene;

    @NonNull
    public static PreviewSceneFullscreenLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PreviewSceneFullscreenLayoutBinding bind(@NonNull View view) {
        View viewA;
        View viewA2;
        int i10 = R.id.click_overlay;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, i10);
        if (linearLayout != null) {
            RelativeLayout relativeLayout = (RelativeLayout) view;
            i10 = R.id.poll_quiz_container;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, i10);
            if (frameLayout != null) {
                i10 = R.id.preview_layout;
                ScenePreviewLayout scenePreviewLayout = (ScenePreviewLayout) ViewBindings.a(view, i10);
                if (scenePreviewLayout != null) {
                    i10 = R.id.story_progress;
                    StoryProgressBar storyProgressBar = (StoryProgressBar) ViewBindings.a(view, i10);
                    if (storyProgressBar != null && (viewA = ViewBindings.a(view, (i10 = R.id.to_last_scene))) != null && (viewA2 = ViewBindings.a(view, (i10 = R.id.to_next_scene))) != null) {
                        return new PreviewSceneFullscreenLayoutBinding(relativeLayout, linearLayout, relativeLayout, frameLayout, scenePreviewLayout, storyProgressBar, viewA, viewA2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static PreviewSceneFullscreenLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.preview_scene_fullscreen_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PreviewSceneFullscreenLayoutBinding(@NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout, @NonNull RelativeLayout relativeLayout2, @NonNull FrameLayout frameLayout, @NonNull ScenePreviewLayout scenePreviewLayout, @NonNull StoryProgressBar storyProgressBar, @NonNull View view, @NonNull View view2) {
        this.rootView = relativeLayout;
        this.clickOverlay = linearLayout;
        this.overlay = relativeLayout2;
        this.pollQuizContainer = frameLayout;
        this.previewLayout = scenePreviewLayout;
        this.storyProgress = storyProgressBar;
        this.toLastScene = view;
        this.toNextScene = view2;
    }
}
