package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.feed.quizzes.QuizCoverView;

/* JADX INFO: loaded from: classes10.dex */
public final class DetailQuizItemBinding implements ViewBinding {

    @NonNull
    public final QuizCoverView quizCover;

    @NonNull
    public final TextView quizPlayedTag;

    @NonNull
    public final TextView quizPlayedTimes;

    @NonNull
    public final TextView quizRankings;

    @NonNull
    public final View quizRankingsIcon;

    @NonNull
    public final LinearLayout quizRankingsLayout;

    @NonNull
    public final View quizRankingsLine;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public final TextView startQuiz;

    @NonNull
    public static DetailQuizItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DetailQuizItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.detail_quiz_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DetailQuizItemBinding(@NonNull FlexLayout flexLayout, @NonNull QuizCoverView quizCoverView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull View view, @NonNull LinearLayout linearLayout, @NonNull View view2, @NonNull TextView textView4) {
        this.rootView = flexLayout;
        this.quizCover = quizCoverView;
        this.quizPlayedTag = textView;
        this.quizPlayedTimes = textView2;
        this.quizRankings = textView3;
        this.quizRankingsIcon = view;
        this.quizRankingsLayout = linearLayout;
        this.quizRankingsLine = view2;
        this.startQuiz = textView4;
    }

    @NonNull
    public static DetailQuizItemBinding bind(@NonNull View view) {
        int i10 = R.id.quiz_cover;
        QuizCoverView quizCoverView = (QuizCoverView) ViewBindings.a(view, R.id.quiz_cover);
        if (quizCoverView != null) {
            i10 = R.id.quiz_played_tag;
            TextView textView = (TextView) ViewBindings.a(view, R.id.quiz_played_tag);
            if (textView != null) {
                i10 = R.id.quiz_played_times;
                TextView textView2 = (TextView) ViewBindings.a(view, R.id.quiz_played_times);
                if (textView2 != null) {
                    i10 = R.id.quiz_rankings;
                    TextView textView3 = (TextView) ViewBindings.a(view, R.id.quiz_rankings);
                    if (textView3 != null) {
                        i10 = R.id.quiz_rankings_icon;
                        View viewA = ViewBindings.a(view, R.id.quiz_rankings_icon);
                        if (viewA != null) {
                            i10 = R.id.quiz_rankings_layout;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.quiz_rankings_layout);
                            if (linearLayout != null) {
                                i10 = R.id.quiz_rankings_line;
                                View viewA2 = ViewBindings.a(view, R.id.quiz_rankings_line);
                                if (viewA2 != null) {
                                    i10 = R.id.start_quiz;
                                    TextView textView4 = (TextView) ViewBindings.a(view, R.id.start_quiz);
                                    if (textView4 != null) {
                                        return new DetailQuizItemBinding((FlexLayout) view, quizCoverView, textView, textView2, textView3, viewA, linearLayout, viewA2, textView4);
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
}
