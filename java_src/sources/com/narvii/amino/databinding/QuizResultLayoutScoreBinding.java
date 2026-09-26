package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.AutoSizingTextView;
import com.narvii.widget.Color3DTextView;

/* JADX INFO: loaded from: classes3.dex */
public final class QuizResultLayoutScoreBinding implements ViewBinding {

    @NonNull
    public final AutoSizingTextView beatTitle;

    @NonNull
    public final ImageView quizScoreBackground;

    @NonNull
    public final ImageView quizScoreDetailBackground;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public final Color3DTextView yourScore;

    @NonNull
    public final TextView yourScoreSummaryHint;

    @NonNull
    public static QuizResultLayoutScoreBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static QuizResultLayoutScoreBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.quiz_result_layout_score, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private QuizResultLayoutScoreBinding(@NonNull FlexLayout flexLayout, @NonNull AutoSizingTextView autoSizingTextView, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull Color3DTextView color3DTextView, @NonNull TextView textView) {
        this.rootView = flexLayout;
        this.beatTitle = autoSizingTextView;
        this.quizScoreBackground = imageView;
        this.quizScoreDetailBackground = imageView2;
        this.yourScore = color3DTextView;
        this.yourScoreSummaryHint = textView;
    }

    @NonNull
    public static QuizResultLayoutScoreBinding bind(@NonNull View view) {
        int i10 = R.id.beat_title;
        AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, R.id.beat_title);
        if (autoSizingTextView != null) {
            i10 = R.id.quiz_score_background;
            ImageView imageView = (ImageView) ViewBindings.a(view, R.id.quiz_score_background);
            if (imageView != null) {
                i10 = R.id.quiz_score_detail_background;
                ImageView imageView2 = (ImageView) ViewBindings.a(view, R.id.quiz_score_detail_background);
                if (imageView2 != null) {
                    i10 = R.id.your_score;
                    Color3DTextView color3DTextView = (Color3DTextView) ViewBindings.a(view, R.id.your_score);
                    if (color3DTextView != null) {
                        i10 = R.id.your_score_summary_hint;
                        TextView textView = (TextView) ViewBindings.a(view, R.id.your_score_summary_hint);
                        if (textView != null) {
                            return new QuizResultLayoutScoreBinding((FlexLayout) view, autoSizingTextView, imageView, imageView2, color3DTextView, textView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
