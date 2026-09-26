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
import com.narvii.feed.FeedListItem;
import com.narvii.feed.quizzes.QuizCoverView;
import com.narvii.widget.FontAwesomeView;
import com.narvii.widget.SpinningView;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes5.dex */
public final class FeedQuizItemBinding implements ViewBinding {

    @NonNull
    public final TextView content;

    @NonNull
    public final FeedToolbarBinding feedToolbar;

    @NonNull
    public final TintButton icon;

    @NonNull
    public final QuizCoverView quizCover;

    @NonNull
    public final TextView quizPlayedTag;

    @NonNull
    public final TextView quizPlayedTimes;

    @NonNull
    private final FeedListItem rootView;

    @NonNull
    public final LinearLayout startQuiz;

    @NonNull
    public final FontAwesomeView startQuizIcon;

    @NonNull
    public final SpinningView startQuizLoading;

    @NonNull
    public final TextView startQuizText;

    @NonNull
    public final FlexLayout stub1;

    @NonNull
    public final TextView title;

    @NonNull
    public final FeedUserHeaderBinding userHead;

    @NonNull
    public static FeedQuizItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FeedListItem getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FeedQuizItemBinding bind(@NonNull View view) {
        int i10 = R.id.content;
        TextView textView = (TextView) ViewBindings.a(view, R.id.content);
        if (textView != null) {
            i10 = R.id.feed_toolbar;
            View viewA = ViewBindings.a(view, R.id.feed_toolbar);
            if (viewA != null) {
                FeedToolbarBinding feedToolbarBindingBind = FeedToolbarBinding.bind(viewA);
                i10 = R.id.icon;
                TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.icon);
                if (tintButton != null) {
                    i10 = R.id.quiz_cover;
                    QuizCoverView quizCoverView = (QuizCoverView) ViewBindings.a(view, R.id.quiz_cover);
                    if (quizCoverView != null) {
                        i10 = R.id.quiz_played_tag;
                        TextView textView2 = (TextView) ViewBindings.a(view, R.id.quiz_played_tag);
                        if (textView2 != null) {
                            i10 = R.id.quiz_played_times;
                            TextView textView3 = (TextView) ViewBindings.a(view, R.id.quiz_played_times);
                            if (textView3 != null) {
                                i10 = R.id.start_quiz;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.start_quiz);
                                if (linearLayout != null) {
                                    i10 = R.id.start_quiz_icon;
                                    FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.start_quiz_icon);
                                    if (fontAwesomeView != null) {
                                        i10 = R.id.start_quiz_loading;
                                        SpinningView spinningView = (SpinningView) ViewBindings.a(view, R.id.start_quiz_loading);
                                        if (spinningView != null) {
                                            i10 = R.id.start_quiz_text;
                                            TextView textView4 = (TextView) ViewBindings.a(view, R.id.start_quiz_text);
                                            if (textView4 != null) {
                                                i10 = R.id.stub1;
                                                FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.stub1);
                                                if (flexLayout != null) {
                                                    i10 = R.id.title;
                                                    TextView textView5 = (TextView) ViewBindings.a(view, R.id.title);
                                                    if (textView5 != null) {
                                                        i10 = R.id.user_head;
                                                        View viewA2 = ViewBindings.a(view, R.id.user_head);
                                                        if (viewA2 != null) {
                                                            return new FeedQuizItemBinding((FeedListItem) view, textView, feedToolbarBindingBind, tintButton, quizCoverView, textView2, textView3, linearLayout, fontAwesomeView, spinningView, textView4, flexLayout, textView5, FeedUserHeaderBinding.bind(viewA2));
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
    public static FeedQuizItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.feed_quiz_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FeedQuizItemBinding(@NonNull FeedListItem feedListItem, @NonNull TextView textView, @NonNull FeedToolbarBinding feedToolbarBinding, @NonNull TintButton tintButton, @NonNull QuizCoverView quizCoverView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull LinearLayout linearLayout, @NonNull FontAwesomeView fontAwesomeView, @NonNull SpinningView spinningView, @NonNull TextView textView4, @NonNull FlexLayout flexLayout, @NonNull TextView textView5, @NonNull FeedUserHeaderBinding feedUserHeaderBinding) {
        this.rootView = feedListItem;
        this.content = textView;
        this.feedToolbar = feedToolbarBinding;
        this.icon = tintButton;
        this.quizCover = quizCoverView;
        this.quizPlayedTag = textView2;
        this.quizPlayedTimes = textView3;
        this.startQuiz = linearLayout;
        this.startQuizIcon = fontAwesomeView;
        this.startQuizLoading = spinningView;
        this.startQuizText = textView4;
        this.stub1 = flexLayout;
        this.title = textView5;
        this.userHead = feedUserHeaderBinding;
    }
}
