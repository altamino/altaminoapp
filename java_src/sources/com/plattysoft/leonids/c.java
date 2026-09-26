package com.plattysoft.leonids;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.safedk.android.analytics.brandsafety.DetectTouchUtils;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
class c extends View {
    private ArrayList<b> mParticles;

    public c(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }

    public void a(ArrayList<b> arrayList) {
        this.mParticles = arrayList;
    }

    @Override // android.view.View
    public boolean dispatchTouchEvent(MotionEvent me) {
        DetectTouchUtils.viewOnTouch("com.plattysoft.leonids", this, me);
        return super.dispatchTouchEvent(me);
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        if (1 == 0) {
            setMeasuredDimension(0, 0);
        } else {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        }
    }

    public c(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public c(Context context) {
        super(context);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        synchronized (this.mParticles) {
            for (int i10 = 0; i10 < this.mParticles.size(); i10++) {
                try {
                    this.mParticles.get(i10).c(canvas);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
