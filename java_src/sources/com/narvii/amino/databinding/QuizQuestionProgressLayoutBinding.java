package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes7.dex */
public final class QuizQuestionProgressLayoutBinding implements ViewBinding {

    @NonNull
    public final ProgressBar progressBar;

    @NonNull
    private final ProgressBar rootView;

    @NonNull
    public static QuizQuestionProgressLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ProgressBar getRoot() {
        return this.rootView;
    }

    @NonNull
    public static QuizQuestionProgressLayoutBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        ProgressBar progressBar = (ProgressBar) view;
        return new QuizQuestionProgressLayoutBinding(progressBar, progressBar);
    }

    @NonNull
    public static QuizQuestionProgressLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.quiz_question_progress_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private QuizQuestionProgressLayoutBinding(@NonNull ProgressBar progressBar, @NonNull ProgressBar progressBar2) {
        this.rootView = progressBar;
        this.progressBar = progressBar2;
    }
}
