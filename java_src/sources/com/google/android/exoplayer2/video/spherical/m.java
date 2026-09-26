package com.google.android.exoplayer2.video.spherical;

import android.content.Context;
import android.graphics.PointF;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.BinderThread;

/* JADX INFO: loaded from: classes4.dex */
final class m extends GestureDetector.SimpleOnGestureListener implements View.OnTouchListener, d.a {
    static final float MAX_PITCH_DEGREES = 45.0f;
    private final GestureDetector gestureDetector;
    private final a listener;
    private final float pxPerDegrees;
    private final PointF previousTouchPointPx = new PointF();
    private final PointF accumulatedTouchOffsetDegrees = new PointF();
    private volatile float roll = 3.1415927f;

    public interface a {
        void b(PointF pointF);

        boolean onSingleTapUp(MotionEvent motionEvent);
    }

    @Override // com.google.android.exoplayer2.video.spherical.d.a
    @BinderThread
    public void a(float[] fArr, float f) {
        this.roll = -f;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        this.previousTouchPointPx.set(motionEvent.getX(), motionEvent.getY());
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        return this.listener.onSingleTapUp(motionEvent);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        return this.gestureDetector.onTouchEvent(motionEvent);
    }

    public m(Context context, a aVar, float f) {
        this.listener = aVar;
        this.pxPerDegrees = f;
        this.gestureDetector = new GestureDetector(context, this);
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f6) {
        float x6 = (motionEvent2.getX() - this.previousTouchPointPx.x) / this.pxPerDegrees;
        float y6 = motionEvent2.getY();
        PointF pointF = this.previousTouchPointPx;
        float f7 = (y6 - pointF.y) / this.pxPerDegrees;
        pointF.set(motionEvent2.getX(), motionEvent2.getY());
        double d = this.roll;
        float fCos = (float) Math.cos(d);
        float fSin = (float) Math.sin(d);
        PointF pointF2 = this.accumulatedTouchOffsetDegrees;
        pointF2.x -= (fCos * x6) - (fSin * f7);
        float f10 = pointF2.y + (fSin * x6) + (fCos * f7);
        pointF2.y = f10;
        pointF2.y = Math.max(-45.0f, Math.min(MAX_PITCH_DEGREES, f10));
        this.listener.b(this.accumulatedTouchOffsetDegrees);
        return true;
    }
}
