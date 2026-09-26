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
import com.narvii.widget.ColorTextView;
import com.narvii.widget.VersatileLoaderView;

/* JADX INFO: loaded from: classes9.dex */
public final class QuizzesResultHeaderLayoutBinding implements ViewBinding {

    @NonNull
    public final TextView beatNumber;

    @NonNull
    public final TextView beatTitle;

    @NonNull
    public final VersatileLoaderView beatView;

    @NonNull
    public final LinearLayout rateResultView;

    @NonNull
    public final FlexLayout resultBoard;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public final TextView scoreTitle;

    @NonNull
    public final ColorTextView yourScore;

    @NonNull
    public final LinearLayout yourScoreContainer;

    @NonNull
    public final TextView yourScoreSummaryHint;

    @NonNull
    public static QuizzesResultHeaderLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static QuizzesResultHeaderLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.quizzes_result_header_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private QuizzesResultHeaderLayoutBinding(@NonNull FlexLayout flexLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull VersatileLoaderView versatileLoaderView, @NonNull LinearLayout linearLayout, @NonNull FlexLayout flexLayout2, @NonNull TextView textView3, @NonNull ColorTextView colorTextView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView4) {
        this.rootView = flexLayout;
        this.beatNumber = textView;
        this.beatTitle = textView2;
        this.beatView = versatileLoaderView;
        this.rateResultView = linearLayout;
        this.resultBoard = flexLayout2;
        this.scoreTitle = textView3;
        this.yourScore = colorTextView;
        this.yourScoreContainer = linearLayout2;
        this.yourScoreSummaryHint = textView4;
    }

    @NonNull
    public static QuizzesResultHeaderLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.beat_number;
        TextView textView = (TextView) ViewBindings.a(view, R.id.beat_number);
        if (textView != null) {
            i10 = R.id.beat_title;
            TextView textView2 = (TextView) ViewBindings.a(view, R.id.beat_title);
            if (textView2 != null) {
                i10 = R.id.beatView;
                VersatileLoaderView versatileLoaderView = (VersatileLoaderView) ViewBindings.a(view, R.id.beatView);
                if (versatileLoaderView != null) {
                    i10 = R.id.rate_result_view;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.rate_result_view);
                    if (linearLayout != null) {
                        i10 = R.id.result_board;
                        FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.result_board);
                        if (flexLayout != null) {
                            i10 = R.id.score_title;
                            TextView textView3 = (TextView) ViewBindings.a(view, R.id.score_title);
                            if (textView3 != null) {
                                i10 = R.id.your_score;
                                ColorTextView colorTextView = (ColorTextView) ViewBindings.a(view, R.id.your_score);
                                if (colorTextView != null) {
                                    i10 = R.id.your_score_container;
                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.your_score_container);
                                    if (linearLayout2 != null) {
                                        i10 = R.id.your_score_summary_hint;
                                        TextView textView4 = (TextView) ViewBindings.a(view, R.id.your_score_summary_hint);
                                        if (textView4 != null) {
                                            return new QuizzesResultHeaderLayoutBinding((FlexLayout) view, textView, textView2, versatileLoaderView, linearLayout, flexLayout, textView3, colorTextView, linearLayout2, textView4);
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
}
