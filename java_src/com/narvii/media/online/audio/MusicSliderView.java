package com.narvii.media.online.audio;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.widget.SeekBar;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public class MusicSliderView extends SeekBar {
    private float deltaX;
    private float mScaledTouchSlop;
    private float mTouchDownX;

    public MusicSliderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mScaledTouchSlop = 0.0f;
        this.mScaledTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        setPadding(0, 0, 0, 0);
    }

    @Override // android.widget.AbsSeekBar, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.mTouchDownX = motionEvent.getX();
            int progress = (getProgress() * getWidth()) / getMax();
            if (Utils.isRtl()) {
                progress = getWidth() - progress;
            }
            this.deltaX = progress - this.mTouchDownX;
            callSuper(motionEvent);
            return true;
        }
        if (motionEvent.getAction() != 1) {
            if (motionEvent.getAction() == 2) {
                return callSuper(motionEvent);
            }
            return callSuper(motionEvent);
        }
        if (Math.abs(motionEvent.getX() - this.mTouchDownX) > this.mScaledTouchSlop) {
            return callSuper(motionEvent);
        }
        callOnClick();
        return true;
    }

    private boolean callSuper(MotionEvent motionEvent) {
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        motionEventObtain.setLocation(motionEvent.getX() + this.deltaX, motionEvent.getY());
        return super.onTouchEvent(motionEventObtain);
    }
}
