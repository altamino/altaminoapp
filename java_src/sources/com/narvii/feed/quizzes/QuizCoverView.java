package com.narvii.feed.quizzes;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.model.Blog;
import com.narvii.model.Media;
import com.narvii.widget.NVImageView;
import com.narvii.widget.SecretImageView;

/* JADX INFO: loaded from: classes9.dex */
public class QuizCoverView extends FlexLayout {
    boolean darkTheme;
    int layoutId;
    Blog quiz;
    View quizCoverBackgroundView;
    public NVImageView quizCoverImageView;
    TextView quizTitleTextView;

    public void setQuiz(Blog blog) {
        setQuiz(blog, false);
    }

    public void setDarkTheme(boolean z6) {
        this.darkTheme = z6;
        this.quizCoverImageView.setDefaultDrawable(ContextCompat.getDrawable(getContext(), z6 ? R.color.placeholder_darker : R.color.placeholder));
    }

    public void setQuiz(Blog blog, boolean z6) {
        this.quiz = blog;
        Media mediaFirstMediaIncludePromote = z6 ? blog.firstMediaIncludePromote() : blog.firstMedia();
        this.quizCoverImageView.setVisibility(mediaFirstMediaIncludePromote != null ? 0 : 8);
        NVImageView nVImageView = this.quizCoverImageView;
        if (nVImageView instanceof SecretImageView) {
            ((SecretImageView) nVImageView).setImageMedia(mediaFirstMediaIncludePromote, blog.needHidden);
        } else {
            nVImageView.setImageMedia(mediaFirstMediaIncludePromote);
        }
        this.quizCoverBackgroundView.setVisibility(mediaFirstMediaIncludePromote == null ? 0 : 8);
        this.quizTitleTextView.setVisibility(mediaFirstMediaIncludePromote == null ? 0 : 8);
        this.quizTitleTextView.setText(blog.title);
    }

    public QuizCoverView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.narvii.amino.R.styleable.QuizCoverView);
        this.layoutId = typedArrayObtainStyledAttributes.getResourceId(0, R.layout.quiz_cover_view);
        typedArrayObtainStyledAttributes.recycle();
        initView();
    }

    private void initView() {
        View.inflate(getContext(), this.layoutId, this);
        this.quizCoverImageView = (NVImageView) findViewById(R.id.quiz_cover_image);
        this.quizCoverBackgroundView = findViewById(R.id.quiz_cover_alternative);
        this.quizTitleTextView = (TextView) findViewById(R.id.quiz_title);
    }
}
