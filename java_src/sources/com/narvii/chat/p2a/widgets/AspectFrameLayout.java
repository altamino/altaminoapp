package com.narvii.chat.p2a.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.FrameLayout;
import com.google.firebase.remoteconfig.a;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes2.dex */
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

    private float spaceTwoTouchEvent(MotionEvent motionEvent) {
        float x6 = motionEvent.getX(0) - motionEvent.getX(1);
        float y6 = motionEvent.getY(0) - motionEvent.getY(1);
        return (float) Math.sqrt((x6 * x6) + (y6 * y6));
    }

    public float getDeltaTwoTouchDistance() {
        float f = 0.0f;
        if (this.fingerMode != 2) {
            return 0.0f;
        }
        float f6 = this.lastTwoTouchDistance;
        if (f6 != 0.0f) {
            float f7 = this.currentTwoTouchDistance;
            if (f7 != 0.0f) {
                f = (f7 - f6) / f6;
            }
        }
        this.lastTwoTouchDistance = this.currentTwoTouchDistance;
        return f;
    }

    public float getHorizontalScrollDelta() {
        this.mLastX = this.nowX;
        return this.mHorizontalScrollDelta;
    }

    public void setMyOnTouchListener(View.OnTouchListener onTouchListener) {
        this.onTouchListener = onTouchListener;
    }

    public void setOnNotScrollTouchListener(OnNotScrollTouchListener onNotScrollTouchListener) {
        this.onNotScrollTouchListener = onNotScrollTouchListener;
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

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        int iMakeMeasureSpec;
        int iMakeMeasureSpec2;
        if (this.VERBOSE_LOG) {
            Log.d(TAG, "onMeasure target=" + this.mTargetAspect + " width=[" + View.MeasureSpec.toString(i10) + "] height=[" + View.MeasureSpec.toString(i11) + "]");
        }
        if (this.mTargetAspect > a.DEFAULT_VALUE_FOR_DOUBLE) {
            int size = View.MeasureSpec.getSize(i10);
            int size2 = View.MeasureSpec.getSize(i11);
            int paddingLeft = getPaddingLeft() + getPaddingRight();
            int paddingTop = getPaddingTop() + getPaddingBottom();
            int i12 = size - paddingLeft;
            int i13 = size2 - paddingTop;
            double d = i12;
            double d2 = i13;
            double d6 = (this.mTargetAspect / (d / d2)) - 1.0d;
            if (Math.abs(d6) < 0.01d) {
                Log.d(TAG, "aspect ratio is good (target=" + this.mTargetAspect + ", view=" + i12 + "x" + i13 + ")");
                iMakeMeasureSpec = i10;
                iMakeMeasureSpec2 = i11;
            } else {
                if (d6 > a.DEFAULT_VALUE_FOR_DOUBLE) {
                    i13 = (int) (d / this.mTargetAspect);
                } else {
                    i12 = (int) (d2 * this.mTargetAspect);
                }
                Log.d(TAG, "new size=" + i12 + "x" + i13 + " + padding " + paddingLeft + "x" + paddingTop);
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i12 + paddingLeft, 1073741824);
                iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i13 + paddingTop, 1073741824);
            }
        } else {
            iMakeMeasureSpec = i10;
            iMakeMeasureSpec2 = i11;
        }
        super.onMeasure(iMakeMeasureSpec, iMakeMeasureSpec2);
    }

    public void setAspectRatio(double d) {
        if (d < a.DEFAULT_VALUE_FOR_DOUBLE) {
            throw new IllegalArgumentException();
        }
        Log.d(TAG, "Setting aspect ratio to " + d + " (was " + this.mTargetAspect + ")");
        if (this.mTargetAspect != d) {
            this.mTargetAspect = d;
            requestLayout();
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        float x6 = motionEvent.getX();
        this.nowX = x6;
        if (this.mLastX == 0.0f) {
            this.mLastX = x6;
        }
        int action = motionEvent.getAction() & 255;
        if (action != 0) {
            if (action != 1) {
                if (action != 2) {
                    if (action != 5) {
                        if (action == 6) {
                            this.fingerMode = 3;
                            this.lastTwoTouchDistance = 0.0f;
                            this.currentTwoTouchDistance = 0.0f;
                            this.mHorizontalScrollDelta = 0.0f;
                        }
                    } else {
                        this.lastTwoTouchDistance = spaceTwoTouchEvent(motionEvent);
                        this.fingerMode = 2;
                        this.mHorizontalScrollDelta = 0.0f;
                    }
                } else {
                    int i10 = this.fingerMode;
                    if (i10 == 1) {
                        this.mHorizontalScrollDelta = (this.nowX - this.mLastX) / this.screenWidth;
                    } else if (i10 == 2) {
                        this.mHorizontalScrollDelta = 0.0f;
                        this.currentTwoTouchDistance = spaceTwoTouchEvent(motionEvent);
                    }
                }
            } else {
                OnNotScrollTouchListener onNotScrollTouchListener = this.onNotScrollTouchListener;
                if (onNotScrollTouchListener != null) {
                    onNotScrollTouchListener.onTouch(motionEvent);
                }
                this.mLastX = this.nowX;
                this.fingerMode = 3;
                this.lastTwoTouchDistance = 0.0f;
                this.currentTwoTouchDistance = 0.0f;
                this.mHorizontalScrollDelta = 0.0f;
            }
        } else {
            OnNotScrollTouchListener onNotScrollTouchListener2 = this.onNotScrollTouchListener;
            if (onNotScrollTouchListener2 != null) {
                onNotScrollTouchListener2.onTouch(motionEvent);
            }
            this.mHorizontalScrollDelta = 0.0f;
            this.mLastX = this.nowX;
            this.fingerMode = 1;
        }
        View.OnTouchListener onTouchListener = this.onTouchListener;
        if (onTouchListener != null) {
            onTouchListener.onTouch(this, motionEvent);
        }
        return true;
    }
}
