package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.FullscreenBackgroundView;

/* JADX INFO: loaded from: classes8.dex */
public final class QuizFullscreenBackgroundViewBinding implements ViewBinding {

    @NonNull
    public final FullscreenBackgroundView background;

    @NonNull
    public final View quizBackgroundOverlay;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static QuizFullscreenBackgroundViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static QuizFullscreenBackgroundViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.quiz_fullscreen_background_view, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private QuizFullscreenBackgroundViewBinding(@NonNull FrameLayout frameLayout, @NonNull FullscreenBackgroundView fullscreenBackgroundView, @NonNull View view) {
        this.rootView = frameLayout;
        this.background = fullscreenBackgroundView;
        this.quizBackgroundOverlay = view;
    }

    @NonNull
    public static QuizFullscreenBackgroundViewBinding bind(@NonNull View view) {
        int i10 = R.id.background;
        FullscreenBackgroundView fullscreenBackgroundView = (FullscreenBackgroundView) ViewBindings.a(view, R.id.background);
        if (fullscreenBackgroundView != null) {
            i10 = R.id.quiz_background_overlay;
            View viewA = ViewBindings.a(view, R.id.quiz_background_overlay);
            if (viewA != null) {
                return new QuizFullscreenBackgroundViewBinding((FrameLayout) view, fullscreenBackgroundView, viewA);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
