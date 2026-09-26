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
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.narvii.amino.master.R;
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
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes6.dex */
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

    public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public void setOnPreClickListener(OnPreClickListener onPreClickListener) {
        this.onPreClickListener = onPreClickListener;
    }

    public void setPreview(boolean z6) {
        this.isPreview = z6;
    }

    public void setShowBg(boolean z6) {
        this.showBg = z6;
    }

    public void enableBlink(boolean z6) {
        this.blinkEnabled = z6;
        post(new Runnable() { // from class: com.narvii.story.widgets.b
            @Override // java.lang.Runnable
            public final void run() {
                this.f2740a.startBlink();
            }
        });
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

    @Override // com.narvii.widget.TagRoundView
    protected String getName() {
        StoryTopic storyTopic = this.topic;
        if (storyTopic == null) {
            return null;
        }
        return storyTopic.getDisplayName();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.isPreview) {
            NVToast.makeText(getContext(), R.string.this_is_preview, 0).show();
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
        safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(getContext(), intent);
    }

    public void setTextMaxWidth(int i10) {
        TextView textView = this.topicText;
        if (textView != null) {
            textView.setMaxWidth(i10);
        }
    }

    public void setTextSize(float f) {
        this.textSize = f;
        TextView textView = this.topicText;
        if (textView != null) {
            textView.setTextSize(0, f);
        }
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
        if (style == null || (str = style.backgroundImage) == null) {
            nVImageView.setImageUrl(null);
            this.imgOverlay.setBackgroundDrawable(null);
            return;
        }
        nVImageView.setImageUrl(str);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(Utils.dpToPx(getContext(), 18.0f));
        gradientDrawable.setColor(storyTopic.style.backgroundColor);
        gradientDrawable.setAlpha(180);
        this.imgOverlay.setBackgroundDrawable(gradientDrawable);
    }

    public StoryTopicView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        int i10;
        super(context, attributeSet);
        this.isPreview = false;
        this.blinkEnabled = false;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.narvii.amino.R.styleable.StoryTopicView);
        boolean z6 = typedArrayObtainStyledAttributes.getBoolean(0, false);
        this.textSize = typedArrayObtainStyledAttributes.getDimension(2, Utils.dpToPx(context, 11.0f));
        this.textPadding = typedArrayObtainStyledAttributes.getDimensionPixelOffset(1, 0);
        typedArrayObtainStyledAttributes.recycle();
        if (z6) {
            i10 = R.layout.story_topic_view_with_background;
        } else {
            i10 = R.layout.story_topic_view_no_background;
        }
        View.inflate(context, i10, this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startBlink$0(GradientDrawable gradientDrawable, float f, ImageView imageView, ValueAnimator valueAnimator) {
        gradientDrawable.setStroke((int) (f * ((Float) valueAnimator.getAnimatedValue()).floatValue()), getBackgroundDrawableColor());
        imageView.setImageDrawable(gradientDrawable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startBlink() {
        float f;
        final ImageView imageView = (ImageView) findViewById(R.id.blink_background);
        if (this.blinkEnabled) {
            if (imageView == null) {
                imageView = new ImageView(getContext());
                imageView.setId(R.id.blink_background);
                addView(imageView, 0, new FrameLayout.LayoutParams(-1, -1));
            }
            AnimatorSet animatorSet = this.blinkAnimatorSet;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            final GradientDrawable backgroundDrawable = getBackgroundDrawable();
            backgroundDrawable.setColor(0);
            imageView.setImageDrawable(backgroundDrawable);
            float dimenPixelSize = Utils.getDimenPixelSize(getContext(), R.dimen.histogramTextSizeSmall);
            int width = getWidth();
            float f6 = 0.1f;
            if (width > 0) {
                f = dimenPixelSize / width;
            } else {
                f = 0.1f;
            }
            float f7 = (f / 70.0f) + 1.0f;
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(imageView, (Property<ImageView, Float>) View.SCALE_X, f7, f + 1.0f);
            objectAnimatorOfFloat.setDuration(600L);
            int height = getHeight();
            if (height > 0) {
                f6 = dimenPixelSize / height;
            }
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(imageView, (Property<ImageView, Float>) View.SCALE_Y, f7, f6 + 1.0f);
            objectAnimatorOfFloat2.setDuration(600L);
            final float f10 = dimenPixelSize / 7.0f;
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f, 1.0f, 1.33f, 1.66f, 2.0f, 1.6f, 1.2f, 0.8f, 0.4f, 0.0f);
            valueAnimatorOfFloat.setDuration(600L);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.story.widgets.a
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f2737a.lambda$startBlink$0(backgroundDrawable, f10, imageView, valueAnimator);
                }
            });
            AnimatorSet animatorSet2 = new AnimatorSet();
            animatorSet2.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2, valueAnimatorOfFloat);
            animatorSet2.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.story.widgets.StoryTopicView.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    animator.setStartDelay(1200L);
                    animator.start();
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    animator.removeAllListeners();
                }
            });
            animatorSet2.setStartDelay(1200L);
            animatorSet2.start();
            this.blinkAnimatorSet = animatorSet2;
            return;
        }
        if (imageView != null) {
            AnimatorSet animatorSet3 = this.blinkAnimatorSet;
            if (animatorSet3 != null) {
                animatorSet3.cancel();
            }
            removeView(imageView);
        }
    }

    @Override // com.narvii.widget.TagRoundView, android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.imgBg = (NVImageView) findViewById(R.id.background);
        this.imgOverlay = (NVImageView) findViewById(R.id.overlay);
        TextView textView = this.topicText;
        if (textView != null) {
            int i10 = this.textPadding;
            textView.setPadding(i10, 0, i10, 0);
            setTextSize(this.textSize);
        }
        setOnClickListener(this);
        setClickable(false);
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
}
