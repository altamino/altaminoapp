package com.narvii.chat.video.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes10.dex */
public class UserSpeakingView extends FrameLayout {
    private static final int LEVEL_LIMIT = 4;
    CircleRippleView circleRippleView;
    private int curLevel;
    CircleView holderView;
    public float rippleScale;

    public UserSpeakingView(@NonNull Context context) {
        this(context, null);
    }

    public UserSpeakingView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.curLevel = -1;
        View.inflate(context, R.layout.user_speaking_layout, this);
        setClipChildren(false);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.narvii.amino.R.styleable.UserSpeakingView);
            this.rippleScale = typedArrayObtainStyledAttributes.getFloat(0, 0.0f);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public void hideRipple(boolean z6) {
        this.circleRippleView.setVisibility(z6 ? 8 : 0);
    }

    public void setPendingSpeakingMode(boolean z6) {
        this.circleRippleView.setVisibility(z6 ? 8 : 0);
    }

    public void setVolumeLevel(int i10) {
        if (this.curLevel == i10) {
            return;
        }
        if (i10 == 0) {
            this.curLevel = i10;
            this.circleRippleView.setLevel(i10);
            setVisibility(8);
        } else {
            setVisibility(0);
            if (i10 > 4) {
                this.curLevel = 4;
            }
            this.curLevel = i10;
            this.circleRippleView.setLevel(i10);
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        CircleRippleView circleRippleView = (CircleRippleView) findViewById(R.id.speaking_ripple_bg);
        this.circleRippleView = circleRippleView;
        float f = this.rippleScale;
        if (f != 0.0f) {
            circleRippleView.setRippleScale(f);
        }
        this.holderView = (CircleView) findViewById(R.id.speaking_ripple_holder);
    }
}
