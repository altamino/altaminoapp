package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes9.dex */
public final class QuizCoverViewHeadlineBinding implements ViewBinding {

    @NonNull
    public final View quizCoverAlternative;

    @NonNull
    public final ThumbImageView quizCoverImage;

    @NonNull
    public final TextView quizTitle;

    @NonNull
    private final View rootView;

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static QuizCoverViewHeadlineBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R.layout.quiz_cover_view_headline, viewGroup);
        return bind(viewGroup);
    }

    private QuizCoverViewHeadlineBinding(@NonNull View view, @NonNull View view2, @NonNull ThumbImageView thumbImageView, @NonNull TextView textView) {
        this.rootView = view;
        this.quizCoverAlternative = view2;
        this.quizCoverImage = thumbImageView;
        this.quizTitle = textView;
    }

    @NonNull
    public static QuizCoverViewHeadlineBinding bind(@NonNull View view) {
        int i10 = R.id.quiz_cover_alternative;
        View viewA = ViewBindings.a(view, R.id.quiz_cover_alternative);
        if (viewA != null) {
            i10 = R.id.quiz_cover_image;
            ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.quiz_cover_image);
            if (thumbImageView != null) {
                i10 = R.id.quiz_title;
                TextView textView = (TextView) ViewBindings.a(view, R.id.quiz_title);
                if (textView != null) {
                    return new QuizCoverViewHeadlineBinding(view, viewA, thumbImageView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
