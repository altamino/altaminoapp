package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.AutoSizingTextView;
import com.narvii.widget.EqualGridLayout;

/* JADX INFO: loaded from: classes2.dex */
public final class FragmentQuizQuestionBinding implements ViewBinding {

    @NonNull
    public final EqualGridLayout answerLayout;

    @NonNull
    public final AutoSizingTextView question;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public static FragmentQuizQuestionBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentQuizQuestionBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_quiz_question, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentQuizQuestionBinding(@NonNull FlexLayout flexLayout, @NonNull EqualGridLayout equalGridLayout, @NonNull AutoSizingTextView autoSizingTextView) {
        this.rootView = flexLayout;
        this.answerLayout = equalGridLayout;
        this.question = autoSizingTextView;
    }

    @NonNull
    public static FragmentQuizQuestionBinding bind(@NonNull View view) {
        int i10 = R.id.answer_layout;
        EqualGridLayout equalGridLayout = (EqualGridLayout) ViewBindings.a(view, R.id.answer_layout);
        if (equalGridLayout != null) {
            i10 = R.id.question;
            AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, R.id.question);
            if (autoSizingTextView != null) {
                return new FragmentQuizQuestionBinding((FlexLayout) view, equalGridLayout, autoSizingTextView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
