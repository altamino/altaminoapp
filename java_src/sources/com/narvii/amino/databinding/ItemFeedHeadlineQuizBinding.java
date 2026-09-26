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

/* JADX INFO: loaded from: classes11.dex */
public final class ItemFeedHeadlineQuizBinding implements ViewBinding {

    @NonNull
    public final CommunityInfoLayoutBinding communityInfo;

    @NonNull
    public final FeedToolbarHeadlineBinding feedToolbar;

    @NonNull
    public final FeedListItem headlineFeedItem;

    @NonNull
    public final QuizCoverView quizCover;

    @NonNull
    public final TextView quizPlayedTag;

    @NonNull
    public final TextView quizPlayedTimes;

    @NonNull
    private final LinearLayout rootView;

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
    public static ItemFeedHeadlineQuizBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemFeedHeadlineQuizBinding bind(@NonNull View view) {
        int i10 = R.id.community_info;
        View viewA = ViewBindings.a(view, R.id.community_info);
        if (viewA != null) {
            CommunityInfoLayoutBinding communityInfoLayoutBindingBind = CommunityInfoLayoutBinding.bind(viewA);
            i10 = R.id.feed_toolbar;
            View viewA2 = ViewBindings.a(view, R.id.feed_toolbar);
            if (viewA2 != null) {
                FeedToolbarHeadlineBinding feedToolbarHeadlineBindingBind = FeedToolbarHeadlineBinding.bind(viewA2);
                i10 = R.id.headline_feed_item;
                FeedListItem feedListItem = (FeedListItem) ViewBindings.a(view, R.id.headline_feed_item);
                if (feedListItem != null) {
                    i10 = R.id.quiz_cover;
                    QuizCoverView quizCoverView = (QuizCoverView) ViewBindings.a(view, R.id.quiz_cover);
                    if (quizCoverView != null) {
                        i10 = R.id.quiz_played_tag;
                        TextView textView = (TextView) ViewBindings.a(view, R.id.quiz_played_tag);
                        if (textView != null) {
                            i10 = R.id.quiz_played_times;
                            TextView textView2 = (TextView) ViewBindings.a(view, R.id.quiz_played_times);
                            if (textView2 != null) {
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
                                            TextView textView3 = (TextView) ViewBindings.a(view, R.id.start_quiz_text);
                                            if (textView3 != null) {
                                                i10 = R.id.stub1;
                                                FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.stub1);
                                                if (flexLayout != null) {
                                                    i10 = R.id.title;
                                                    TextView textView4 = (TextView) ViewBindings.a(view, R.id.title);
                                                    if (textView4 != null) {
                                                        return new ItemFeedHeadlineQuizBinding((LinearLayout) view, communityInfoLayoutBindingBind, feedToolbarHeadlineBindingBind, feedListItem, quizCoverView, textView, textView2, linearLayout, fontAwesomeView, spinningView, textView3, flexLayout, textView4);
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
    public static ItemFeedHeadlineQuizBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_feed_headline_quiz, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemFeedHeadlineQuizBinding(@NonNull LinearLayout linearLayout, @NonNull CommunityInfoLayoutBinding communityInfoLayoutBinding, @NonNull FeedToolbarHeadlineBinding feedToolbarHeadlineBinding, @NonNull FeedListItem feedListItem, @NonNull QuizCoverView quizCoverView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout2, @NonNull FontAwesomeView fontAwesomeView, @NonNull SpinningView spinningView, @NonNull TextView textView3, @NonNull FlexLayout flexLayout, @NonNull TextView textView4) {
        this.rootView = linearLayout;
        this.communityInfo = communityInfoLayoutBinding;
        this.feedToolbar = feedToolbarHeadlineBinding;
        this.headlineFeedItem = feedListItem;
        this.quizCover = quizCoverView;
        this.quizPlayedTag = textView;
        this.quizPlayedTimes = textView2;
        this.startQuiz = linearLayout2;
        this.startQuizIcon = fontAwesomeView;
        this.startQuizLoading = spinningView;
        this.startQuizText = textView3;
        this.stub1 = flexLayout;
        this.title = textView4;
    }
}
