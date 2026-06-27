package com.narvii.chat.video.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import com.narvii.amino.mastes.R;

/* loaded from: classes2.dex */
public class BreathView extends ImageView {
    public final Animation animation;

    public BreathView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.animation = AnimationUtils.loadAnimation(getContext(), R.anim.face_detect_bounce);
        this.animation.setFillAfter(true);
        this.animation.setRepeatCount(-1);
        this.animation.setRepeatMode(2);
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
