package com.narvii.feed.quizzes;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.R;
import com.narvii.model.Blog;
import com.narvii.model.Media;
import com.narvii.widget.NVImageView;
import com.narvii.widget.SecretImageView;

/* loaded from: classes2.dex */
public class QuizCoverView extends FlexLayout {
    boolean darkTheme;
    int layoutId;
    Blog quiz;
    View quizCoverBackgroundView;
    public NVImageView quizCoverImageView;
    TextView quizTitleTextView;

    public QuizCoverView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.QuizCoverView);
        this.layoutId = typedArrayObtainStyledAttributes.getResourceId(0, com.narvii.amino.mastes.R.layout.quiz_cover_view);
        typedArrayObtainStyledAttributes.recycle();
        initView();
    }

    private void initView() {
        ViewGroup.inflate(getContext(), this.layoutId, this);
        this.quizCoverImageView = (NVImageView) findViewById(com.narvii.amino.mastes.R.id.quiz_cover_image);
        this.quizCoverBackgroundView = findViewById(com.narvii.amino.mastes.R.id.quiz_cover_alternative);
        this.quizTitleTextView = (TextView) findViewById(com.narvii.amino.mastes.R.id.quiz_title);
    }

    public void setQuiz(Blog blog) {
        setQuiz(blog, false);
    }

    public void setQuiz(Blog blog, boolean z) {
        this.quiz = blog;
        Media mediaFirstMediaIncludePromote = z ? blog.firstMediaIncludePromote() : blog.firstMedia();
        this.quizCoverImageView.setVisibility(mediaFirstMediaIncludePromote != null ? 0 : 8);
        NVImageView nVImageView = this.quizCoverImageView;
        if (nVImageView instanceof SecretImageView) {
            ((SecretImageView) nVImageView).setImageMedia(mediaFirstMediaIncludePromote, blog.needHidden);
        } else {
            nVImageView.setImageMedia(mediaFirstMediaIncludePromote);
        }
        this.quizCoverBackgroundView.setVisibility(mediaFirstMediaIncludePromote == null ? 0 : 8);
        this.quizTitleTextView.setVisibility(mediaFirstMediaIncludePromote != null ? 8 : 0);
        this.quizTitleTextView.setText(blog.title);
    }

    public void setDarkTheme(boolean z) {
        this.darkTheme = z;
        this.quizCoverImageView.setDefaultDrawable(ContextCompat.getDrawable(getContext(), z ? com.narvii.amino.mastes.R.color.placeholder_darker : com.narvii.amino.mastes.R.color.placeholder));
    }
}
