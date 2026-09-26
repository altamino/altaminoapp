package com.narvii.chat.video.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes7.dex */
public class BreathView extends ImageView {
    public final Animation animation;

    public BreathView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(getContext(), R.anim.face_detect_bounce);
        this.animation = animationLoadAnimation;
        animationLoadAnimation.setFillAfter(true);
        animationLoadAnimation.setRepeatCount(-1);
        animationLoadAnimation.setRepeatMode(2);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Animation animation = this.animation;
        if (animation != null) {
            startAnimation(animation);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        clearAnimation();
    }
}
