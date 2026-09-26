package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.SecretImageView;

/* JADX INFO: loaded from: classes5.dex */
public final class QuizCoverViewBinding implements ViewBinding {

    @NonNull
    public final View quizCoverAlternative;

    @NonNull
    public final SecretImageView quizCoverImage;

    @NonNull
    public final TextView quizTitle;

    @NonNull
    private final View rootView;

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static QuizCoverViewBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R.layout.quiz_cover_view, viewGroup);
        return bind(viewGroup);
    }

    private QuizCoverViewBinding(@NonNull View view, @NonNull View view2, @NonNull SecretImageView secretImageView, @NonNull TextView textView) {
        this.rootView = view;
        this.quizCoverAlternative = view2;
        this.quizCoverImage = secretImageView;
        this.quizTitle = textView;
    }

    @NonNull
    public static QuizCoverViewBinding bind(@NonNull View view) {
        int i10 = R.id.quiz_cover_alternative;
        View viewA = ViewBindings.a(view, R.id.quiz_cover_alternative);
        if (viewA != null) {
            i10 = R.id.quiz_cover_image;
            SecretImageView secretImageView = (SecretImageView) ViewBindings.a(view, R.id.quiz_cover_image);
            if (secretImageView != null) {
                i10 = R.id.quiz_title;
                TextView textView = (TextView) ViewBindings.a(view, R.id.quiz_title);
                if (textView != null) {
                    return new QuizCoverViewBinding(view, viewA, secretImageView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
