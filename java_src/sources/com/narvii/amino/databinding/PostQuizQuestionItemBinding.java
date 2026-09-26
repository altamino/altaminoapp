package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.AutoSizingTextView;
import com.narvii.widget.SwipeToDeleteLayout;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes10.dex */
public final class PostQuizQuestionItemBinding implements ViewBinding {

    @NonNull
    public final Button delete;

    @NonNull
    public final TextView error;

    @NonNull
    public final ThumbImageView image;

    @NonNull
    public final SwipeToDeleteLayout postQuizQuestion;

    @NonNull
    public final RelativeLayout postQuizQuestionClick;

    @NonNull
    public final AutoSizingTextView postQuizQuestionNo;

    @NonNull
    private final SwipeToDeleteLayout rootView;

    @NonNull
    public final ImageView stub1;

    @NonNull
    public final TextView title;

    @NonNull
    public static PostQuizQuestionItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public SwipeToDeleteLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PostQuizQuestionItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.post_quiz_question_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PostQuizQuestionItemBinding(@NonNull SwipeToDeleteLayout swipeToDeleteLayout, @NonNull Button button, @NonNull TextView textView, @NonNull ThumbImageView thumbImageView, @NonNull SwipeToDeleteLayout swipeToDeleteLayout2, @NonNull RelativeLayout relativeLayout, @NonNull AutoSizingTextView autoSizingTextView, @NonNull ImageView imageView, @NonNull TextView textView2) {
        this.rootView = swipeToDeleteLayout;
        this.delete = button;
        this.error = textView;
        this.image = thumbImageView;
        this.postQuizQuestion = swipeToDeleteLayout2;
        this.postQuizQuestionClick = relativeLayout;
        this.postQuizQuestionNo = autoSizingTextView;
        this.stub1 = imageView;
        this.title = textView2;
    }

    @NonNull
    public static PostQuizQuestionItemBinding bind(@NonNull View view) {
        int i10 = R.id.delete;
        Button button = (Button) ViewBindings.a(view, R.id.delete);
        if (button != null) {
            i10 = R.id.error;
            TextView textView = (TextView) ViewBindings.a(view, R.id.error);
            if (textView != null) {
                i10 = R.id.image;
                ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.image);
                if (thumbImageView != null) {
                    SwipeToDeleteLayout swipeToDeleteLayout = (SwipeToDeleteLayout) view;
                    i10 = R.id.post_quiz_question_click;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.a(view, R.id.post_quiz_question_click);
                    if (relativeLayout != null) {
                        i10 = R.id.post_quiz_question_no;
                        AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, R.id.post_quiz_question_no);
                        if (autoSizingTextView != null) {
                            i10 = R.id.stub1;
                            ImageView imageView = (ImageView) ViewBindings.a(view, R.id.stub1);
                            if (imageView != null) {
                                i10 = R.id.title;
                                TextView textView2 = (TextView) ViewBindings.a(view, R.id.title);
                                if (textView2 != null) {
                                    return new PostQuizQuestionItemBinding(swipeToDeleteLayout, button, textView, thumbImageView, swipeToDeleteLayout, relativeLayout, autoSizingTextView, imageView, textView2);
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
