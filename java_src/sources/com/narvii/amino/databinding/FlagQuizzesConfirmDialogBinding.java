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
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes5.dex */
public final class FlagQuizzesConfirmDialogBinding implements ViewBinding {

    @NonNull
    public final TextView content;

    @NonNull
    public final FeedListItem feedLayout;

    @NonNull
    public final TintButton icon;

    @NonNull
    public final QuizCoverView quizCover;

    @NonNull
    public final TextView quizPlayedTimes;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final FlexLayout stub1;

    @NonNull
    public final TextView title;

    @NonNull
    public final FeedUserHeaderBinding userHead;

    @NonNull
    public static FlagQuizzesConfirmDialogBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FlagQuizzesConfirmDialogBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.flag_quizzes_confirm_dialog, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FlagQuizzesConfirmDialogBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull FeedListItem feedListItem, @NonNull TintButton tintButton, @NonNull QuizCoverView quizCoverView, @NonNull TextView textView2, @NonNull FlexLayout flexLayout, @NonNull TextView textView3, @NonNull FeedUserHeaderBinding feedUserHeaderBinding) {
        this.rootView = linearLayout;
        this.content = textView;
        this.feedLayout = feedListItem;
        this.icon = tintButton;
        this.quizCover = quizCoverView;
        this.quizPlayedTimes = textView2;
        this.stub1 = flexLayout;
        this.title = textView3;
        this.userHead = feedUserHeaderBinding;
    }

    @NonNull
    public static FlagQuizzesConfirmDialogBinding bind(@NonNull View view) {
        int i10 = R.id.content;
        TextView textView = (TextView) ViewBindings.a(view, R.id.content);
        if (textView != null) {
            i10 = R.id.feed_layout;
            FeedListItem feedListItem = (FeedListItem) ViewBindings.a(view, R.id.feed_layout);
            if (feedListItem != null) {
                i10 = R.id.icon;
                TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.icon);
                if (tintButton != null) {
                    i10 = R.id.quiz_cover;
                    QuizCoverView quizCoverView = (QuizCoverView) ViewBindings.a(view, R.id.quiz_cover);
                    if (quizCoverView != null) {
                        i10 = R.id.quiz_played_times;
                        TextView textView2 = (TextView) ViewBindings.a(view, R.id.quiz_played_times);
                        if (textView2 != null) {
                            i10 = R.id.stub1;
                            FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.stub1);
                            if (flexLayout != null) {
                                i10 = R.id.title;
                                TextView textView3 = (TextView) ViewBindings.a(view, R.id.title);
                                if (textView3 != null) {
                                    i10 = R.id.user_head;
                                    View viewA = ViewBindings.a(view, R.id.user_head);
                                    if (viewA != null) {
                                        return new FlagQuizzesConfirmDialogBinding((LinearLayout) view, textView, feedListItem, tintButton, quizCoverView, textView2, flexLayout, textView3, FeedUserHeaderBinding.bind(viewA));
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
