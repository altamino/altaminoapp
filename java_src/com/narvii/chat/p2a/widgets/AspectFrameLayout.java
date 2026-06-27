package com.narvii.chat.p2a.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.FrameLayout;
import com.narvii.util.Utils;

/* loaded from: classes2.dex */
public class AspectFrameLayout extends FrameLayout {
    private static final String TAG = "AFL";
    private final int MODE_DRAG;
    private final int MODE_NONE;
    private final int MODE_ZOOM;
    boolean VERBOSE_LOG;
    private float currentTwoTouchDistance;
    private float deltaTwoTouchDistance;
    private int fingerMode;
    private float lastTwoTouchDistance;
    private float mHorizontalScrollDelta;
    private float mLastX;
    private float mLastY;
    private double mTargetAspect;
    private int mTouchSlop;
    private float nowX;
    private OnNotScrollTouchListener onNotScrollTouchListener;
    View.OnTouchListener onTouchListener;
    int screenWidth;

    public interface OnNotScrollTouchListener {
        void onTouch(MotionEvent motionEvent);
    }

    public AspectFrameLayout(Context context) {
        this(context, null);
    }

    public AspectFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.VERBOSE_LOG = false;
        this.mTargetAspect = -1.0d;
        this.MODE_DRAG = 1;
        this.MODE_ZOOM = 2;
        this.MODE_NONE = 3;
        this.lastTwoTouchDistance = 0.0f;
        this.currentTwoTouchDistance = 0.0f;
        this.deltaTwoTouchDistance = 0.0f;
        this.mTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        this.screenWidth = Utils.getScreenWidth(context);
    }

    public void setAspectRatio(double d) {
        if (d < 0.0d) {
            throw new IllegalArgumentException();
        }
        Log.d(TAG, "Setting aspect ratio to " + d + " (was " + this.mTargetAspect + ")");
        if (this.mTargetAspect != d) {
            this.mTargetAspect = d;
            requestLayout();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int iMakeMeasureSpec;
        int iMakeMeasureSpec2;
        if (this.VERBOSE_LOG) {
            Log.d(TAG, "onMeasure target=" + this.mTargetAspect + " width=[" + View.MeasureSpec.toString(i) + "] height=[" + View.MeasureSpec.toString(i2) + "]");
        }
        if (this.mTargetAspect > 0.0d) {
            int size = View.MeasureSpec.getSize(i);
            int size2 = View.MeasureSpec.getSize(i2);
            int paddingLeft = getPaddingLeft() + getPaddingRight();
            int paddingTop = getPaddingTop() + getPaddingBottom();
            int i3 = size - paddingLeft;
            int i4 = size2 - paddingTop;
            double d = i3;
            double d2 = i4;
            Double.isNaN(d);
            Double.isNaN(d2);
            double d3 = (this.mTargetAspect / (d / d2)) - 1.0d;
            if (Math.abs(d3) < 0.01d) {
                Log.d(TAG, "aspect ratio is good (target=" + this.mTargetAspect + ", view=" + i3 + "x" + i4 + ")");
                iMakeMeasureSpec = i;
                iMakeMeasureSpec2 = i2;
            } else {
                if (d3 > 0.0d) {
                    double d4 = this.mTargetAspect;
                    Double.isNaN(d);
                    i4 = (int) (d / d4);
                } else {
                    double d5 = this.mTargetAspect;
                    Double.isNaN(d2);
                    i3 = (int) (d2 * d5);
                }
                Log.d(TAG, "new size=" + i3 + "x" + i4 + " + padding " + paddingLeft + "x" + paddingTop);
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i3 + paddingLeft, 1073741824);
                iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i4 + paddingTop, 1073741824);
            }
        } else {
            iMakeMeasureSpec = i;
            iMakeMeasureSpec2 = i2;
        }
        super.onMeasure(iMakeMeasureSpec, iMakeMeasureSpec2);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        this.nowX = motionEvent.getX();
        if (this.mLastX == 0.0f) {
            this.mLastX = this.nowX;
        }
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            OnNotScrollTouchListener onNotScrollTouchListener = this.onNotScrollTouchListener;
            if (onNotScrollTouchListener != null) {
                onNotScrollTouchListener.onTouch(motionEvent);
            }
            this.mHorizontalScrollDelta = 0.0f;
            this.mLastX = this.nowX;
            this.fingerMode = 1;
        } else if (action == 1) {
            OnNotScrollTouchListener onNotScrollTouchListener2 = this.onNotScrollTouchListener;
            if (onNotScrollTouchListener2 != null) {
                onNotScrollTouchListener2.onTouch(motionEvent);
            }
            this.mHorizontalScrollDelta = 0.0f;
            this.mLastX = this.nowX;
            this.fingerMode = 3;
            this.lastTwoTouchDistance = 0.0f;
            this.currentTwoTouchDistance = 0.0f;
            this.mHorizontalScrollDelta = 0.0f;
        } else if (action == 2) {
            int i = this.fingerMode;
            if (i == 1) {
                this.mHorizontalScrollDelta = (this.nowX - this.mLastX) / this.screenWidth;
            } else if (i == 2) {
                this.mHorizontalScrollDelta = 0.0f;
                this.currentTwoTouchDistance = spaceTwoTouchEvent(motionEvent);
            }
        } else if (action == 5) {
            this.lastTwoTouchDistance = spaceTwoTouchEvent(motionEvent);
            this.fingerMode = 2;
            this.mHorizontalScrollDelta = 0.0f;
        } else if (action == 6) {
            this.fingerMode = 3;
            this.lastTwoTouchDistance = 0.0f;
            this.currentTwoTouchDistance = 0.0f;
            this.mHorizontalScrollDelta = 0.0f;
        }
        View.OnTouchListener onTouchListener = this.onTouchListener;
        if (onTouchListener != null) {
            onTouchListener.onTouch(this, motionEvent);
        }
        return true;
    }

    public float getHorizontalScrollDelta() {
        this.mLastX = this.nowX;
        return this.mHorizontalScrollDelta;
    }

    public void setOnNotScrollTouchListener(OnNotScrollTouchListener onNotScrollTouchListener) {
        this.onNotScrollTouchListener = onNotScrollTouchListener;
    }

    public void setMyOnTouchListener(View.OnTouchListener onTouchListener) {
        this.onTouchListener = onTouchListener;
    }

    private float spaceTwoTouchEvent(MotionEvent motionEvent) {
        float x = motionEvent.getX(0) - motionEvent.getX(1);
        float y = motionEvent.getY(0) - motionEvent.getY(1);
        return (float) Math.sqrt((x * x) + (y * y));
    }

    public float getDeltaTwoTouchDistance() {
        float f = 0.0f;
        if (this.fingerMode != 2) {
            return 0.0f;
        }
        float f2 = this.lastTwoTouchDistance;
        if (f2 != 0.0f) {
            float f3 = this.currentTwoTouchDistance;
            if (f3 != 0.0f) {
                f = (f3 - f2) / f2;
            }
        }
        this.lastTwoTouchDistance = this.currentTwoTouchDistance;
        return f;
    }
}
