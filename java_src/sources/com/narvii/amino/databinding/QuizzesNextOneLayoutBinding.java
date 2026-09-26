package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes8.dex */
public final class QuizzesNextOneLayoutBinding implements ViewBinding {

    @NonNull
    public final View gradient;

    @NonNull
    public final LinearLayout leftContainer;

    @NonNull
    public final TextView nextQuizzes;

    @NonNull
    public final TextView playHint;

    @NonNull
    public final TextView quizPlayedTimes;

    @NonNull
    public final NVImageView quizzesBackground;

    @NonNull
    public final LinearLayout quizzesNextPlayContainer;

    @NonNull
    public final TextView quizzesTitle;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static QuizzesNextOneLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static QuizzesNextOneLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.quizzes_next_one_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private QuizzesNextOneLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull View view, @NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull NVImageView nVImageView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView4) {
        this.rootView = frameLayout;
        this.gradient = view;
        this.leftContainer = linearLayout;
        this.nextQuizzes = textView;
        this.playHint = textView2;
        this.quizPlayedTimes = textView3;
        this.quizzesBackground = nVImageView;
        this.quizzesNextPlayContainer = linearLayout2;
        this.quizzesTitle = textView4;
    }

    @NonNull
    public static QuizzesNextOneLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.gradient;
        View viewA = ViewBindings.a(view, R.id.gradient);
        if (viewA != null) {
            i10 = R.id.left_container;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.left_container);
            if (linearLayout != null) {
                i10 = R.id.next_quizzes;
                TextView textView = (TextView) ViewBindings.a(view, R.id.next_quizzes);
                if (textView != null) {
                    i10 = R.id.play_hint;
                    TextView textView2 = (TextView) ViewBindings.a(view, R.id.play_hint);
                    if (textView2 != null) {
                        i10 = R.id.quiz_played_times;
                        TextView textView3 = (TextView) ViewBindings.a(view, R.id.quiz_played_times);
                        if (textView3 != null) {
                            i10 = R.id.quizzes_background;
                            NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.quizzes_background);
                            if (nVImageView != null) {
                                i10 = R.id.quizzes_next_play_container;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.quizzes_next_play_container);
                                if (linearLayout2 != null) {
                                    i10 = R.id.quizzes_title;
                                    TextView textView4 = (TextView) ViewBindings.a(view, R.id.quizzes_title);
                                    if (textView4 != null) {
                                        return new QuizzesNextOneLayoutBinding((FrameLayout) view, viewA, linearLayout, textView, textView2, textView3, nVImageView, linearLayout2, textView4);
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
