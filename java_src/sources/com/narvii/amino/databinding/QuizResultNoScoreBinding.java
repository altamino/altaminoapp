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
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes10.dex */
public final class QuizResultNoScoreBinding implements ViewBinding {

    @NonNull
    public final TextView playHint;

    @NonNull
    public final LinearLayout quizPlayLayout;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView share;

    @NonNull
    public final LinearLayout shareContainer;

    @NonNull
    public static QuizResultNoScoreBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static QuizResultNoScoreBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.quiz_result_no_score, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private QuizResultNoScoreBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView2, @NonNull LinearLayout linearLayout3) {
        this.rootView = linearLayout;
        this.playHint = textView;
        this.quizPlayLayout = linearLayout2;
        this.share = textView2;
        this.shareContainer = linearLayout3;
    }

    @NonNull
    public static QuizResultNoScoreBinding bind(@NonNull View view) {
        int i10 = R.id.play_hint;
        TextView textView = (TextView) ViewBindings.a(view, R.id.play_hint);
        if (textView != null) {
            i10 = R.id.quiz_play_layout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.quiz_play_layout);
            if (linearLayout != null) {
                i10 = R.id.share;
                TextView textView2 = (TextView) ViewBindings.a(view, R.id.share);
                if (textView2 != null) {
                    i10 = R.id.share_container;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.share_container);
                    if (linearLayout2 != null) {
                        return new QuizResultNoScoreBinding((LinearLayout) view, textView, linearLayout, textView2, linearLayout2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
