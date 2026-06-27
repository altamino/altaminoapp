package com.narvii.story.widgets;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.narvii.amino.mastes.R;
import com.narvii.util.Utils;
import java.util.Random;

/* loaded from: classes3.dex */
public class StoryVoteView extends FrameLayout {
    private Context context;
    float[] num;

    public StoryVoteView(Context context) {
        this(context, null);
    }

    public StoryVoteView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    public StoryVoteView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.num = new float[]{-45.0f, -30.0f, -20.0f, 0.0f, 20.0f, 30.0f, 45.0f};
        this.context = context;
    }

    public void prepareAnimation(MotionEvent motionEvent) throws Resources.NotFoundException {
        final ImageView imageView = new ImageView(this.context);
        int iDpToPxInt = Utils.dpToPxInt(this.context, 130.0f);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iDpToPxInt, iDpToPxInt);
        layoutParams.topMargin = ((int) motionEvent.getRawY()) - iDpToPxInt;
        if (Utils.isRtl()) {
            layoutParams.rightMargin = (int) ((getWidth() - motionEvent.getRawX()) - (iDpToPxInt / 2.0f));
        } else {
            layoutParams.leftMargin = ((int) motionEvent.getRawX()) - (iDpToPxInt / 2);
        }
        Drawable drawable = getResources().getDrawable(R.drawable.ic_double_click_vote);
        drawable.setAlpha(200);
        imageView.setImageDrawable(drawable);
        imageView.setLayoutParams(layoutParams);
        addView(imageView);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(scale(imageView, "scaleX", 2.0f, 0.9f, 100L, 0L)).with(scale(imageView, "scaleY", 2.0f, 0.9f, 100L, 0L)).with(rotation(imageView, 0L, 0L, this.num[new Random().nextInt(6)])).with(alpha(imageView, 0.0f, 1.0f, 100L, 0L)).with(scale(imageView, "scaleX", 0.9f, 1.0f, 50L, 150L)).with(scale(imageView, "scaleY", 0.9f, 1.0f, 50L, 150L)).with(translationY(imageView, 0.0f, (-iDpToPxInt) * 2, 800L, 400L)).with(alpha(imageView, 1.0f, 0.0f, 300L, 400L)).with(scale(imageView, "scaleX", 1.0f, 1.5f, 700L, 400L)).with(scale(imageView, "scaleY", 1.0f, 1.5f, 700L, 400L));
        animatorSet.start();
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.story.widgets.StoryVoteView.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                StoryVoteView.this.removeViewInLayout(imageView);
            }
        });
    }

    public static ObjectAnimator scale(View view, String str, float f, float f2, long j, long j2) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, str, f, f2);
        objectAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        objectAnimatorOfFloat.setStartDelay(j2);
        objectAnimatorOfFloat.setDuration(j);
        return objectAnimatorOfFloat;
    }

    public static ObjectAnimator translationX(View view, float f, float f2, long j, long j2) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "translationX", f, f2);
        objectAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        objectAnimatorOfFloat.setStartDelay(j2);
        objectAnimatorOfFloat.setDuration(j);
        return objectAnimatorOfFloat;
    }

    public static ObjectAnimator translationY(View view, float f, float f2, long j, long j2) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "translationY", f, f2);
        objectAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        objectAnimatorOfFloat.setStartDelay(j2);
        objectAnimatorOfFloat.setDuration(j);
        return objectAnimatorOfFloat;
    }

    public static ObjectAnimator alpha(View view, float f, float f2, long j, long j2) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "alpha", f, f2);
        objectAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        objectAnimatorOfFloat.setStartDelay(j2);
        objectAnimatorOfFloat.setDuration(j);
        return objectAnimatorOfFloat;
    }

    public static ObjectAnimator rotation(View view, long j, long j2, float... fArr) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "rotation", fArr);
        objectAnimatorOfFloat.setDuration(j);
        objectAnimatorOfFloat.setStartDelay(j2);
        objectAnimatorOfFloat.setInterpolator(new TimeInterpolator() { // from class: com.narvii.story.widgets.StoryVoteView.2
            @Override // android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                return f;
            }
        });
        return objectAnimatorOfFloat;
    }
}
