package com.narvii.story.widgets;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.narvii.amino.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.model.story.StoryTopic;
import com.narvii.topic.TopicTabFragment;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.widget.NVImageView;
import com.narvii.widget.TagRoundView;

/* loaded from: classes3.dex */
public class StoryTopicView extends TagRoundView implements View.OnClickListener {
    private AnimatorSet blinkAnimatorSet;
    private boolean blinkEnabled;
    NVImageView imgBg;
    NVImageView imgOverlay;
    private boolean isPreview;
    OnPreClickListener onPreClickListener;
    boolean showBg;
    private int textPadding;
    private float textSize;
    private StoryTopic topic;

    public interface OnPreClickListener {
        void onPreClick(StoryTopicView storyTopicView, StoryTopic storyTopic);
    }

    public void setOnPreClickListener(OnPreClickListener onPreClickListener) {
        this.onPreClickListener = onPreClickListener;
    }

    public StoryTopicView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isPreview = false;
        this.blinkEnabled = false;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.StoryTopicView);
        boolean z = typedArrayObtainStyledAttributes.getBoolean(0, false);
        this.textSize = typedArrayObtainStyledAttributes.getDimension(2, Utils.dpToPx(context, 11.0f));
        this.textPadding = typedArrayObtainStyledAttributes.getDimensionPixelOffset(1, 0);
        typedArrayObtainStyledAttributes.recycle();
        View.inflate(context, z ? com.narvii.amino.mastes.R.layout.story_topic_view_with_background : com.narvii.amino.mastes.R.layout.story_topic_view_no_background, this);
    }

    public void enableBlink(boolean z) {
        this.blinkEnabled = z;
        post(new Runnable() { // from class: com.narvii.story.widgets.-$$Lambda$StoryTopicView$__-WgScqPUF9XTDQeMe_lAwvlnk
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.startBlink();
            }
        });
    }

    public void setShowBg(boolean z) {
        this.showBg = z;
    }

    public void setTopic(StoryTopic storyTopic) {
        String str;
        this.topic = storyTopic;
        updateView();
        NVImageView nVImageView = this.imgBg;
        if (nVImageView == null || !this.showBg) {
            return;
        }
        StoryTopic.Style style = storyTopic.style;
        if (style != null && (str = style.backgroundImage) != null) {
            nVImageView.setImageUrl(str);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setCornerRadius(Utils.dpToPx(getContext(), 18.0f));
            gradientDrawable.setColor(storyTopic.style.backgroundColor);
            gradientDrawable.setAlpha(180);
            this.imgOverlay.setBackgroundDrawable(gradientDrawable);
            return;
        }
        this.imgBg.setImageUrl(null);
        this.imgOverlay.setBackgroundDrawable(null);
    }

    public void setPreview(boolean z) {
        this.isPreview = z;
    }

    @Override // com.narvii.widget.TagRoundView, android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.imgBg = (NVImageView) findViewById(com.narvii.amino.mastes.R.id.background);
        this.imgOverlay = (NVImageView) findViewById(com.narvii.amino.mastes.R.id.overlay);
        TextView textView = this.topicText;
        if (textView != null) {
            int i = this.textPadding;
            textView.setPadding(i, 0, i, 0);
            setTextSize(this.textSize);
        }
        setOnClickListener(this);
        setClickable(false);
    }

    public void setTextSize(float f) {
        this.textSize = f;
        TextView textView = this.topicText;
        if (textView != null) {
            textView.setTextSize(0, f);
        }
    }

    public void setTextMaxWidth(int i) {
        TextView textView = this.topicText;
        if (textView != null) {
            textView.setMaxWidth(i);
        }
    }

    @Override // com.narvii.widget.TagRoundView
    protected void onRadiusUpdated(float f) {
        super.onRadiusUpdated(f);
        NVImageView nVImageView = this.imgBg;
        if (nVImageView != null) {
            nVImageView.setCornerRadius((int) f);
        }
        NVImageView nVImageView2 = this.imgOverlay;
        if (nVImageView2 != null) {
            nVImageView2.setCornerRadius((int) f);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.isPreview) {
            NVToast.makeText(getContext(), com.narvii.amino.mastes.R.string.this_is_preview, 0).show();
            return;
        }
        OnPreClickListener onPreClickListener = this.onPreClickListener;
        if (onPreClickListener != null) {
            onPreClickListener.onPreClick(this, this.topic);
        }
        Intent intent = FragmentWrapperActivity.intent(TopicTabFragment.class);
        intent.putExtra("topic", JacksonUtils.writeAsString(this.topic));
        StoryTopic storyTopic = this.topic;
        if (storyTopic == null || storyTopic.topicId == 0) {
            Log.e("topic0problem : StoryTopicView open with error: " + this.topic);
            return;
        }
        if ((getContext() instanceof NVActivity) && !((NVActivity) getContext()).isGlobalInteractionScope()) {
            intent.putExtra("__communityId", 0);
        }
        intent.putExtra(NVActivity.INTERACTION_SCOPE, true);
        getContext().startActivity(intent);
    }

    @Override // com.narvii.widget.TagRoundView
    protected String getName() {
        StoryTopic storyTopic = this.topic;
        if (storyTopic == null) {
            return null;
        }
        return storyTopic.getDisplayName();
    }

    @Override // com.narvii.widget.TagRoundView
    protected int getAutoBackgroundColor() {
        StoryTopic.Style style;
        StoryTopic storyTopic = this.topic;
        if (storyTopic == null || (style = storyTopic.style) == null) {
            return 0;
        }
        return style.backgroundColor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startBlink() {
        final ImageView imageView = (ImageView) findViewById(com.narvii.amino.mastes.R.id.blink_background);
        if (!this.blinkEnabled) {
            if (imageView != null) {
                AnimatorSet animatorSet = this.blinkAnimatorSet;
                if (animatorSet != null) {
                    animatorSet.cancel();
                }
                removeView(imageView);
                return;
            }
            return;
        }
        if (imageView == null) {
            imageView = new ImageView(getContext());
            imageView.setId(com.narvii.amino.mastes.R.id.blink_background);
            addView(imageView, 0, new FrameLayout.LayoutParams(-1, -1));
        }
        AnimatorSet animatorSet2 = this.blinkAnimatorSet;
        if (animatorSet2 != null) {
            animatorSet2.cancel();
        }
        final GradientDrawable backgroundDrawable = getBackgroundDrawable();
        backgroundDrawable.setColor(0);
        imageView.setImageDrawable(backgroundDrawable);
        float dimenPixelSize = Utils.getDimenPixelSize(getContext(), com.narvii.amino.mastes.R.dimen.histogramTextSizeSmall);
        int width = getWidth();
        float f = width > 0 ? dimenPixelSize / width : 0.1f;
        float f2 = (f / 70.0f) + 1.0f;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(imageView, (Property<ImageView, Float>) View.SCALE_X, f2, f + 1.0f);
        objectAnimatorOfFloat.setDuration(600L);
        int height = getHeight();
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(imageView, (Property<ImageView, Float>) View.SCALE_Y, f2, (height > 0 ? dimenPixelSize / height : 0.1f) + 1.0f);
        objectAnimatorOfFloat2.setDuration(600L);
        final float f3 = dimenPixelSize / 7.0f;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f, 1.0f, 1.33f, 1.66f, 2.0f, 1.6f, 1.2f, 0.8f, 0.4f, 0.0f);
        valueAnimatorOfFloat.setDuration(600L);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.story.widgets.-$$Lambda$StoryTopicView$5FtM8HEXYa_daIOWkD8HsM5zUsA
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$startBlink$0$StoryTopicView(backgroundDrawable, f3, imageView, valueAnimator);
            }
        });
        AnimatorSet animatorSet3 = new AnimatorSet();
        animatorSet3.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2, valueAnimatorOfFloat);
        animatorSet3.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.story.widgets.StoryTopicView.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                animator.removeAllListeners();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                animator.setStartDelay(1200L);
                animator.start();
            }
        });
        animatorSet3.setStartDelay(1200L);
        animatorSet3.start();
        this.blinkAnimatorSet = animatorSet3;
    }

    public /* synthetic */ void lambda$startBlink$0$StoryTopicView(GradientDrawable gradientDrawable, float f, ImageView imageView, ValueAnimator valueAnimator) {
        gradientDrawable.setStroke((int) (f * ((Float) valueAnimator.getAnimatedValue()).floatValue()), getBackgroundDrawableColor());
        imageView.setImageDrawable(gradientDrawable);
    }
}
