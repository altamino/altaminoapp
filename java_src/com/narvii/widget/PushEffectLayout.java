package com.narvii.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;

/* loaded from: classes3.dex */
public class PushEffectLayout extends LinearLayout {
    public PushEffectLayout(Context context) {
        super(context);
    }

    public PushEffectLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchSetPressed(boolean z) {
        super.dispatchSetPressed(z);
        invalidate();
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        int iSave;
        if (isPressed()) {
            iSave = canvas.save();
            canvas.translate(0.0f, getHeight() / 10.0f);
        } else {
            iSave = -1;
        }
        boolean zDrawChild = super.drawChild(canvas, view, j);
        if (iSave != -1) {
            canvas.restoreToCount(iSave);
        }
        return zDrawChild;
    }
}
