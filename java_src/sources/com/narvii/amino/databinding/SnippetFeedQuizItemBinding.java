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

/* JADX INFO: loaded from: classes9.dex */
public final class SnippetFeedQuizItemBinding implements ViewBinding {

    @NonNull
    public final LinearLayout TitleLayout;

    @NonNull
    public final TextView content;

    @NonNull
    public final SnippetFeedToolbarBinding feedToolbar;

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
    public static SnippetFeedQuizItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FeedListItem getRoot() {
        return this.rootView;
    }

    @NonNull
    public static SnippetFeedQuizItemBinding bind(@NonNull View view) {
        int i10 = R.id._title_layout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id._title_layout);
        if (linearLayout != null) {
            i10 = R.id.content;
            TextView textView = (TextView) ViewBindings.a(view, R.id.content);
            if (textView != null) {
                i10 = R.id.feed_toolbar;
                View viewA = ViewBindings.a(view, R.id.feed_toolbar);
                if (viewA != null) {
                    SnippetFeedToolbarBinding snippetFeedToolbarBindingBind = SnippetFeedToolbarBinding.bind(viewA);
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
                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.start_quiz);
                                    if (linearLayout2 != null) {
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
                                                            return new SnippetFeedQuizItemBinding((FeedListItem) view, linearLayout, textView, snippetFeedToolbarBindingBind, tintButton, quizCoverView, textView2, textView3, linearLayout2, fontAwesomeView, spinningView, textView4, flexLayout, textView5);
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
    public static SnippetFeedQuizItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.snippet_feed_quiz_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private SnippetFeedQuizItemBinding(@NonNull FeedListItem feedListItem, @NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull SnippetFeedToolbarBinding snippetFeedToolbarBinding, @NonNull TintButton tintButton, @NonNull QuizCoverView quizCoverView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull LinearLayout linearLayout2, @NonNull FontAwesomeView fontAwesomeView, @NonNull SpinningView spinningView, @NonNull TextView textView4, @NonNull FlexLayout flexLayout, @NonNull TextView textView5) {
        this.rootView = feedListItem;
        this.TitleLayout = linearLayout;
        this.content = textView;
        this.feedToolbar = snippetFeedToolbarBinding;
        this.icon = tintButton;
        this.quizCover = quizCoverView;
        this.quizPlayedTag = textView2;
        this.quizPlayedTimes = textView3;
        this.startQuiz = linearLayout2;
        this.startQuizIcon = fontAwesomeView;
        this.startQuizLoading = spinningView;
        this.startQuizText = textView4;
        this.stub1 = flexLayout;
        this.title = textView5;
    }
}
