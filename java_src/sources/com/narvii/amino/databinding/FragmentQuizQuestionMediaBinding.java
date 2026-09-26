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
import com.narvii.widget.AutoSizingTextView;
import com.narvii.widget.EqualGridLayout;
import com.narvii.widget.FontAwesomeView;
import com.narvii.widget.SpinningView;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentQuizQuestionMediaBinding implements ViewBinding {

    @NonNull
    public final EqualGridLayout answerLayout;

    @NonNull
    public final ThumbImageView media;

    @NonNull
    public final LinearLayout mediaError;

    @NonNull
    public final SpinningView mediaLoading;

    @NonNull
    public final AutoSizingTextView question;

    @NonNull
    public final FontAwesomeView retry;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public final TextView text;

    @NonNull
    public static FragmentQuizQuestionMediaBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentQuizQuestionMediaBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_quiz_question_media, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentQuizQuestionMediaBinding(@NonNull FlexLayout flexLayout, @NonNull EqualGridLayout equalGridLayout, @NonNull ThumbImageView thumbImageView, @NonNull LinearLayout linearLayout, @NonNull SpinningView spinningView, @NonNull AutoSizingTextView autoSizingTextView, @NonNull FontAwesomeView fontAwesomeView, @NonNull TextView textView) {
        this.rootView = flexLayout;
        this.answerLayout = equalGridLayout;
        this.media = thumbImageView;
        this.mediaError = linearLayout;
        this.mediaLoading = spinningView;
        this.question = autoSizingTextView;
        this.retry = fontAwesomeView;
        this.text = textView;
    }

    @NonNull
    public static FragmentQuizQuestionMediaBinding bind(@NonNull View view) {
        int i10 = R.id.answer_layout;
        EqualGridLayout equalGridLayout = (EqualGridLayout) ViewBindings.a(view, R.id.answer_layout);
        if (equalGridLayout != null) {
            i10 = R.id.media;
            ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.media);
            if (thumbImageView != null) {
                i10 = R.id.media_error;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.media_error);
                if (linearLayout != null) {
                    i10 = R.id.media_loading;
                    SpinningView spinningView = (SpinningView) ViewBindings.a(view, R.id.media_loading);
                    if (spinningView != null) {
                        i10 = R.id.question;
                        AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, R.id.question);
                        if (autoSizingTextView != null) {
                            i10 = R.id.retry;
                            FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.retry);
                            if (fontAwesomeView != null) {
                                i10 = R.id.text;
                                TextView textView = (TextView) ViewBindings.a(view, R.id.text);
                                if (textView != null) {
                                    return new FragmentQuizQuestionMediaBinding((FlexLayout) view, equalGridLayout, thumbImageView, linearLayout, spinningView, autoSizingTextView, fontAwesomeView, textView);
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
