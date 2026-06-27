package com.narvii.chat.audio;

import android.content.Context;
import android.util.AttributeSet;
import android.view.animation.Animation;
import android.view.animation.LinearInterpolator;
import android.view.animation.ScaleAnimation;
import android.widget.FrameLayout;
import com.narvii.chat.video.view.CircleView;

/* loaded from: classes2.dex */
public class AudioVolumeRippleView extends FrameLayout {
    boolean animating;
    boolean canceled;
    public CircleView circleView;
    int currentLevel;
    int nextLevel;
    private ScaleAnimation scaleAnimation;

    public AudioVolumeRippleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.canceled = false;
        this.animating = false;
        prepareChildViews();
    }

    public void setVolume(int i) {
        this.canceled = false;
        this.nextLevel = Math.min(10, i / 600);
        ScaleAnimation scaleAnimation = this.scaleAnimation;
        if (scaleAnimation == null || !(scaleAnimation == null || this.animating)) {
            prepareAnimation();
        }
    }

    public void stopAnimation() {
        this.canceled = true;
        reset();
    }

    public void setCircleViewColor(int i) {
        CircleView circleView = this.circleView;
        if (circleView != null) {
            circleView.setColor(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reset() {
        this.currentLevel = 0;
        this.nextLevel = 0;
        this.circleView.clearAnimation();
        this.animating = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void prepareAnimation() {
        final int i = this.nextLevel;
        int i2 = this.currentLevel;
        if (i2 == i) {
            return;
        }
        float f = (i * 0.08f) + 1.0f;
        this.scaleAnimation = new ScaleAnimation((i2 * 0.08f) + 1.0f, f, (i2 * 0.08f) + 1.0f, f, 1, 0.5f, 1, 0.5f);
        this.scaleAnimation.setDuration((Math.abs(this.nextLevel - this.currentLevel) * 5) + 30);
        this.scaleAnimation.setInterpolator(new LinearInterpolator());
        this.scaleAnimation.setFillAfter(true);
        this.scaleAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.narvii.chat.audio.AudioVolumeRippleView.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                AudioVolumeRippleView audioVolumeRippleView = AudioVolumeRippleView.this;
                audioVolumeRippleView.animating = false;
                if (audioVolumeRippleView.canceled) {
                    audioVolumeRippleView.reset();
                } else {
                    audioVolumeRippleView.currentLevel = i;
                    audioVolumeRippleView.prepareAnimation();
                }
            }
        });
        this.circleView.startAnimation(this.scaleAnimation);
        this.animating = true;
    }

    private void prepareChildViews() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        this.circleView = new CircleView(getContext());
        addView(this.circleView, layoutParams);
    }
}
