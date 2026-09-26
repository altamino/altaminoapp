package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.AutoSizingTextView;
import com.narvii.widget.PushButton;

/* JADX INFO: loaded from: classes9.dex */
public final class QuizQuestionAnswerItemBinding implements ViewBinding {

    @NonNull
    public final PushButton pushBtn;

    @NonNull
    private final PushButton rootView;

    @NonNull
    public final AutoSizingTextView title;

    @NonNull
    public static QuizQuestionAnswerItemBinding bind(@NonNull View view) {
        PushButton pushButton = (PushButton) view;
        AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, R.id.title);
        if (autoSizingTextView != null) {
            return new QuizQuestionAnswerItemBinding(pushButton, pushButton, autoSizingTextView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.title)));
    }

    @NonNull
    public static QuizQuestionAnswerItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public PushButton getRoot() {
        return this.rootView;
    }

    @NonNull
    public static QuizQuestionAnswerItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.quiz_question_answer_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private QuizQuestionAnswerItemBinding(@NonNull PushButton pushButton, @NonNull PushButton pushButton2, @NonNull AutoSizingTextView autoSizingTextView) {
        this.rootView = pushButton;
        this.pushBtn = pushButton2;
        this.title = autoSizingTextView;
    }
}
