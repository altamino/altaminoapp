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
import com.narvii.quiz.QuizMilestoneAvatarView;
import com.narvii.quiz.QuizMilestoneCoverImageView;
import com.narvii.widget.AutoSizingTextView;
import com.narvii.widget.HorizontalRecyclerView;
import com.narvii.widget.cofetti.CofettiView;

/* JADX INFO: loaded from: classes10.dex */
public final class FragmentQuizMilestoneBinding implements ViewBinding {

    @NonNull
    public final AutoSizingTextView action;

    @NonNull
    public final View adContainer;

    @NonNull
    public final LinearLayout authorCoverLayout;

    @NonNull
    public final TextView authorCoverNickname;

    @NonNull
    public final LinearLayout authorLayout;

    @NonNull
    public final TextView authorNickname;

    @NonNull
    public final CofettiView cofetti;

    @NonNull
    public final QuizMilestoneCoverImageView cover;

    @NonNull
    public final AutoSizingTextView coverTitle;

    @NonNull
    public final HorizontalRecyclerView milestoneRecycler;

    @NonNull
    public final AutoSizingTextView questionNumber;

    @NonNull
    public final TextView quizExplanation;

    @NonNull
    public final QuizMilestoneAvatarView quizMilestoneAvatar;

    @NonNull
    public final AutoSizingTextView replay;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public final TextView title;

    private FragmentQuizMilestoneBinding(@NonNull FlexLayout flexLayout, @NonNull AutoSizingTextView autoSizingTextView, @NonNull View view, @NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView2, @NonNull CofettiView cofettiView, @NonNull QuizMilestoneCoverImageView quizMilestoneCoverImageView, @NonNull AutoSizingTextView autoSizingTextView2, @NonNull HorizontalRecyclerView horizontalRecyclerView, @NonNull AutoSizingTextView autoSizingTextView3, @NonNull TextView textView3, @NonNull QuizMilestoneAvatarView quizMilestoneAvatarView, @NonNull AutoSizingTextView autoSizingTextView4, @NonNull TextView textView4) {
        this.rootView = flexLayout;
        this.action = autoSizingTextView;
        this.adContainer = view;
        this.authorCoverLayout = linearLayout;
        this.authorCoverNickname = textView;
        this.authorLayout = linearLayout2;
        this.authorNickname = textView2;
        this.cofetti = cofettiView;
        this.cover = quizMilestoneCoverImageView;
        this.coverTitle = autoSizingTextView2;
        this.milestoneRecycler = horizontalRecyclerView;
        this.questionNumber = autoSizingTextView3;
        this.quizExplanation = textView3;
        this.quizMilestoneAvatar = quizMilestoneAvatarView;
        this.replay = autoSizingTextView4;
        this.title = textView4;
    }

    @NonNull
    public static FragmentQuizMilestoneBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentQuizMilestoneBinding bind(@NonNull View view) {
        int i10 = R.id.action;
        AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, R.id.action);
        if (autoSizingTextView != null) {
            i10 = R.id.ad_container;
            View viewA = ViewBindings.a(view, R.id.ad_container);
            if (viewA != null) {
                i10 = R.id.author_cover_layout;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.author_cover_layout);
                if (linearLayout != null) {
                    i10 = R.id.author_cover_nickname;
                    TextView textView = (TextView) ViewBindings.a(view, R.id.author_cover_nickname);
                    if (textView != null) {
                        i10 = R.id.author_layout;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.author_layout);
                        if (linearLayout2 != null) {
                            i10 = R.id.author_nickname;
                            TextView textView2 = (TextView) ViewBindings.a(view, R.id.author_nickname);
                            if (textView2 != null) {
                                i10 = R.id.cofetti;
                                CofettiView cofettiView = (CofettiView) ViewBindings.a(view, R.id.cofetti);
                                if (cofettiView != null) {
                                    i10 = R.id.cover;
                                    QuizMilestoneCoverImageView quizMilestoneCoverImageView = (QuizMilestoneCoverImageView) ViewBindings.a(view, R.id.cover);
                                    if (quizMilestoneCoverImageView != null) {
                                        i10 = R.id.cover_title;
                                        AutoSizingTextView autoSizingTextView2 = (AutoSizingTextView) ViewBindings.a(view, R.id.cover_title);
                                        if (autoSizingTextView2 != null) {
                                            i10 = R.id.milestone_recycler;
                                            HorizontalRecyclerView horizontalRecyclerView = (HorizontalRecyclerView) ViewBindings.a(view, R.id.milestone_recycler);
                                            if (horizontalRecyclerView != null) {
                                                i10 = R.id.question_number;
                                                AutoSizingTextView autoSizingTextView3 = (AutoSizingTextView) ViewBindings.a(view, R.id.question_number);
                                                if (autoSizingTextView3 != null) {
                                                    i10 = R.id.quiz_explanation;
                                                    TextView textView3 = (TextView) ViewBindings.a(view, R.id.quiz_explanation);
                                                    if (textView3 != null) {
                                                        i10 = R.id.quiz_milestone_avatar;
                                                        QuizMilestoneAvatarView quizMilestoneAvatarView = (QuizMilestoneAvatarView) ViewBindings.a(view, R.id.quiz_milestone_avatar);
                                                        if (quizMilestoneAvatarView != null) {
                                                            i10 = R.id.replay;
                                                            AutoSizingTextView autoSizingTextView4 = (AutoSizingTextView) ViewBindings.a(view, R.id.replay);
                                                            if (autoSizingTextView4 != null) {
                                                                i10 = R.id.title;
                                                                TextView textView4 = (TextView) ViewBindings.a(view, R.id.title);
                                                                if (textView4 != null) {
                                                                    return new FragmentQuizMilestoneBinding((FlexLayout) view, autoSizingTextView, viewA, linearLayout, textView, linearLayout2, textView2, cofettiView, quizMilestoneCoverImageView, autoSizingTextView2, horizontalRecyclerView, autoSizingTextView3, textView3, quizMilestoneAvatarView, autoSizingTextView4, textView4);
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
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static FragmentQuizMilestoneBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_quiz_milestone, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
