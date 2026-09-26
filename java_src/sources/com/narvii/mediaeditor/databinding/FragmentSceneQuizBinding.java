package com.narvii.mediaeditor.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.list.overlay.OverlayListPlaceholder;
import com.narvii.mediaeditor.R;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes11.dex */
public final class FragmentSceneQuizBinding implements ViewBinding {

    @NonNull
    public final SceneQuizEditItemBinding answer1;

    @NonNull
    public final SceneQuizEditItemBinding answer2;

    @NonNull
    public final SceneQuizEditItemBinding answer3;

    @NonNull
    public final SceneQuizEditItemBinding answer4;

    @NonNull
    public final NVImageView bg;

    @NonNull
    public final FrameLayout deleteContainer;

    @NonNull
    public final ImageView deleteIv;

    @NonNull
    public final LinearLayout grid;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final ScrollView scroll;

    @NonNull
    public final View stub1;

    @NonNull
    public final EditText title;

    @NonNull
    public final OverlayListPlaceholder topBarPlaceholder;

    @NonNull
    public static FragmentSceneQuizBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentSceneQuizBinding bind(@NonNull View view) {
        View viewA;
        int i10 = R.id.answer_1;
        View viewA2 = ViewBindings.a(view, i10);
        if (viewA2 != null) {
            SceneQuizEditItemBinding sceneQuizEditItemBindingBind = SceneQuizEditItemBinding.bind(viewA2);
            i10 = R.id.answer_2;
            View viewA3 = ViewBindings.a(view, i10);
            if (viewA3 != null) {
                SceneQuizEditItemBinding sceneQuizEditItemBindingBind2 = SceneQuizEditItemBinding.bind(viewA3);
                i10 = R.id.answer_3;
                View viewA4 = ViewBindings.a(view, i10);
                if (viewA4 != null) {
                    SceneQuizEditItemBinding sceneQuizEditItemBindingBind3 = SceneQuizEditItemBinding.bind(viewA4);
                    i10 = R.id.answer_4;
                    View viewA5 = ViewBindings.a(view, i10);
                    if (viewA5 != null) {
                        SceneQuizEditItemBinding sceneQuizEditItemBindingBind4 = SceneQuizEditItemBinding.bind(viewA5);
                        i10 = R.id.bg;
                        NVImageView nVImageView = (NVImageView) ViewBindings.a(view, i10);
                        if (nVImageView != null) {
                            i10 = R.id.delete_container;
                            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, i10);
                            if (frameLayout != null) {
                                i10 = R.id.delete_iv;
                                ImageView imageView = (ImageView) ViewBindings.a(view, i10);
                                if (imageView != null) {
                                    i10 = R.id.grid;
                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, i10);
                                    if (linearLayout != null) {
                                        i10 = R.id.scroll;
                                        ScrollView scrollView = (ScrollView) ViewBindings.a(view, i10);
                                        if (scrollView != null && (viewA = ViewBindings.a(view, (i10 = R.id.stub1))) != null) {
                                            i10 = R.id.title;
                                            EditText editText = (EditText) ViewBindings.a(view, i10);
                                            if (editText != null) {
                                                i10 = R.id.top_bar_placeholder;
                                                OverlayListPlaceholder overlayListPlaceholder = (OverlayListPlaceholder) ViewBindings.a(view, i10);
                                                if (overlayListPlaceholder != null) {
                                                    return new FragmentSceneQuizBinding((FrameLayout) view, sceneQuizEditItemBindingBind, sceneQuizEditItemBindingBind2, sceneQuizEditItemBindingBind3, sceneQuizEditItemBindingBind4, nVImageView, frameLayout, imageView, linearLayout, scrollView, viewA, editText, overlayListPlaceholder);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static FragmentSceneQuizBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_scene_quiz, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentSceneQuizBinding(@NonNull FrameLayout frameLayout, @NonNull SceneQuizEditItemBinding sceneQuizEditItemBinding, @NonNull SceneQuizEditItemBinding sceneQuizEditItemBinding2, @NonNull SceneQuizEditItemBinding sceneQuizEditItemBinding3, @NonNull SceneQuizEditItemBinding sceneQuizEditItemBinding4, @NonNull NVImageView nVImageView, @NonNull FrameLayout frameLayout2, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull ScrollView scrollView, @NonNull View view, @NonNull EditText editText, @NonNull OverlayListPlaceholder overlayListPlaceholder) {
        this.rootView = frameLayout;
        this.answer1 = sceneQuizEditItemBinding;
        this.answer2 = sceneQuizEditItemBinding2;
        this.answer3 = sceneQuizEditItemBinding3;
        this.answer4 = sceneQuizEditItemBinding4;
        this.bg = nVImageView;
        this.deleteContainer = frameLayout2;
        this.deleteIv = imageView;
        this.grid = linearLayout;
        this.scroll = scrollView;
        this.stub1 = view;
        this.title = editText;
        this.topBarPlaceholder = overlayListPlaceholder;
    }
}
