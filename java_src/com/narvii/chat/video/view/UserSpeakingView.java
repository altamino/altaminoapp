package com.narvii.chat.video.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.narvii.amino.mastes.R;

/* loaded from: classes2.dex */
public class UserSpeakingView extends FrameLayout {
    private static final int LEVEL_LIMIT = 4;
    CircleRippleView circleRippleView;
    private int curLevel;
    CircleView holderView;
    public float rippleScale;

    public UserSpeakingView(Context context) {
        this(context, null);
    }

    public UserSpeakingView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.curLevel = -1;
        FrameLayout.inflate(context, R.layout.user_speaking_layout, this);
        setClipChildren(false);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.narvii.amino.R.styleable.UserSpeakingView);
            this.rippleScale = typedArrayObtainStyledAttributes.getFloat(0, 0.0f);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.circleRippleView = (CircleRippleView) findViewById(R.id.speaking_ripple_bg);
        float f = this.rippleScale;
        if (f != 0.0f) {
            this.circleRippleView.setRippleScale(f);
        }
        this.holderView = (CircleView) findViewById(R.id.speaking_ripple_holder);
    }

    public void setVolumeLevel(int i) {
        if (this.curLevel == i) {
            return;
        }
        if (i == 0) {
            this.curLevel = i;
            this.circleRippleView.setLevel(i);
            setVisibility(8);
        } else {
            setVisibility(0);
            if (i > 4) {
                this.curLevel = 4;
            }
            this.curLevel = i;
            this.circleRippleView.setLevel(this.curLevel);
        }
    }

    public void setPendingSpeakingMode(boolean z) {
        this.circleRippleView.setVisibility(z ? 8 : 0);
    }

    public void hideRipple(boolean z) {
        this.circleRippleView.setVisibility(z ? 8 : 0);
    }
}
