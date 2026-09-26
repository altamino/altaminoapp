package com.narvii.chat.audio;

import android.content.Context;
import android.util.AttributeSet;
import android.view.animation.Animation;
import android.view.animation.LinearInterpolator;
import android.view.animation.ScaleAnimation;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.narvii.chat.video.view.CircleView;

/* JADX INFO: loaded from: classes8.dex */
public class AudioVolumeRippleView extends FrameLayout {
    boolean animating;
    boolean canceled;
    public CircleView circleView;
    int currentLevel;
    int nextLevel;
    private ScaleAnimation scaleAnimation;

    /* JADX INFO: Access modifiers changed from: private */
    public void reset() {
        this.currentLevel = 0;
        this.nextLevel = 0;
        this.circleView.clearAnimation();
        this.animating = false;
    }

    public void setVolume(int i10) {
        this.canceled = false;
        this.nextLevel = Math.min(10, i10 / 600);
        ScaleAnimation scaleAnimation = this.scaleAnimation;
        if (scaleAnimation == null || !(scaleAnimation == null || this.animating)) {
            prepareAnimation();
        }
    }

    public void stopAnimation() {
        this.canceled = true;
        reset();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void prepareAnimation() {
        final int i10 = this.nextLevel;
        if (this.currentLevel == i10) {
            return;
        }
        int i11 = this.currentLevel;
        float f = (i10 * 0.08f) + 1.0f;
        ScaleAnimation scaleAnimation = new ScaleAnimation((i11 * 0.08f) + 1.0f, f, 1.0f + (i11 * 0.08f), f, 1, 0.5f, 1, 0.5f);
        this.scaleAnimation = scaleAnimation;
        scaleAnimation.setDuration((Math.abs(this.nextLevel - this.currentLevel) * 5) + 30);
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
                    audioVolumeRippleView.currentLevel = i10;
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
        CircleView circleView = new CircleView(getContext());
        this.circleView = circleView;
        addView(circleView, layoutParams);
    }

    public void setCircleViewColor(int i10) {
        CircleView circleView = this.circleView;
        if (circleView != null) {
            circleView.setColor(i10);
        }
    }

    public AudioVolumeRippleView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.canceled = false;
        this.animating = false;
        prepareChildViews();
    }
}
