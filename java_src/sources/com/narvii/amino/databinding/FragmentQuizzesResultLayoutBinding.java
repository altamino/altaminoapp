package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.FullscreenBackgroundView;
import com.narvii.widget.NVListView;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes2.dex */
public final class FragmentQuizzesResultLayoutBinding implements ViewBinding {

    @NonNull
    public final NVListView list;

    @NonNull
    public final FrameLayout listContainer;

    @NonNull
    public final FrameLayout listFrame;

    @NonNull
    public final FrameLayout nextQuizzesContainer;

    @NonNull
    public final SpinningView progress;

    @NonNull
    public final FullscreenBackgroundView quizzesBackground;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final QuizzesResultListTitleBinding titleHover;

    @NonNull
    public final ImageView topBackground;

    @NonNull
    public static FragmentQuizzesResultLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentQuizzesResultLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_quizzes_result_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentQuizzesResultLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull NVListView nVListView, @NonNull FrameLayout frameLayout2, @NonNull FrameLayout frameLayout3, @NonNull FrameLayout frameLayout4, @NonNull SpinningView spinningView, @NonNull FullscreenBackgroundView fullscreenBackgroundView, @NonNull QuizzesResultListTitleBinding quizzesResultListTitleBinding, @NonNull ImageView imageView) {
        this.rootView = frameLayout;
        this.list = nVListView;
        this.listContainer = frameLayout2;
        this.listFrame = frameLayout3;
        this.nextQuizzesContainer = frameLayout4;
        this.progress = spinningView;
        this.quizzesBackground = fullscreenBackgroundView;
        this.titleHover = quizzesResultListTitleBinding;
        this.topBackground = imageView;
    }

    @NonNull
    public static FragmentQuizzesResultLayoutBinding bind(@NonNull View view) {
        int i10 = android.R.id.list;
        NVListView nVListView = (NVListView) ViewBindings.a(view, android.R.id.list);
        if (nVListView != null) {
            i10 = R.id.list_container;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.list_container);
            if (frameLayout != null) {
                FrameLayout frameLayout2 = (FrameLayout) view;
                i10 = R.id.next_quizzes_container;
                FrameLayout frameLayout3 = (FrameLayout) ViewBindings.a(view, R.id.next_quizzes_container);
                if (frameLayout3 != null) {
                    i10 = android.R.id.progress;
                    SpinningView spinningView = (SpinningView) ViewBindings.a(view, android.R.id.progress);
                    if (spinningView != null) {
                        i10 = R.id.quizzes_background;
                        FullscreenBackgroundView fullscreenBackgroundView = (FullscreenBackgroundView) ViewBindings.a(view, R.id.quizzes_background);
                        if (fullscreenBackgroundView != null) {
                            i10 = R.id.title_hover;
                            View viewA = ViewBindings.a(view, R.id.title_hover);
                            if (viewA != null) {
                                QuizzesResultListTitleBinding quizzesResultListTitleBindingBind = QuizzesResultListTitleBinding.bind(viewA);
                                i10 = R.id.top_background;
                                ImageView imageView = (ImageView) ViewBindings.a(view, R.id.top_background);
                                if (imageView != null) {
                                    return new FragmentQuizzesResultLayoutBinding(frameLayout2, nVListView, frameLayout, frameLayout2, frameLayout3, spinningView, fullscreenBackgroundView, quizzesResultListTitleBindingBind, imageView);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
