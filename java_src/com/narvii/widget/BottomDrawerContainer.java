package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.EdgeEffectCompat;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import com.facebook.rebound.SimpleSpringListener;
import com.facebook.rebound.Spring;
import com.facebook.rebound.SpringSystem;
import com.narvii.lib.R;

/* loaded from: classes3.dex */
public class BottomDrawerContainer extends FrameLayout {
    private static final int MODE_HORIZONTAL = 2;
    private static final int MODE_VERTICAL = 1;
    private boolean beginToDismiss;
    private DismissListener dismissListener;
    private int dismissThreshold;
    private boolean isEdgeDrawing;
    private int mActiveInterCeptPointerId;
    private int mActivePointerId;
    private Rect mContentRect;
    private float mCurPosX;
    private float mCurPosY;
    private EdgeEffectCompat mEdgeEffectBottom;
    private float mLastInterceptX;
    private float mLastInterceptY;
    private float mLastTouchX;
    private float mLastTouchY;
    private float mTrackX;
    private float mTrackY;
    private float mUpX;
    private float mUpY;
    private float mViewHeight;
    private float mViewWidth;
    private boolean readyShowBottomEdge;
    private boolean shouldAdjust;
    SpringSystem springSystem;
    private int topFreezeThreshold;
    private int touchEventThreshold;
    private int translateMode;

    public interface DismissListener {
        void onDismiss();
    }

    public BottomDrawerContainer(Context context) {
        this(context, null);
    }

    public BottomDrawerContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.springSystem = SpringSystem.create();
        this.mContentRect = new Rect();
        this.mActivePointerId = -1;
        this.mActiveInterCeptPointerId = -1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.BottomDrawerContainer);
        this.dismissThreshold = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.BottomDrawerContainer_dismiss_threshold, 300);
        this.topFreezeThreshold = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.BottomDrawerContainer_top_threshold, 0);
        this.touchEventThreshold = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.BottomDrawerContainer_touch_event_threshold, 0);
        this.translateMode = typedArrayObtainStyledAttributes.getInt(R.styleable.BottomDrawerContainer_translate_mode, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.mEdgeEffectBottom = new EdgeEffectCompat(context);
        setWillNotDraw(false);
    }

    public void setDismissListener(DismissListener dismissListener) {
        this.dismissListener = dismissListener;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        float f = i;
        if (f != this.mViewWidth) {
            this.mViewWidth = f;
        }
        float f2 = i2;
        if (f2 != this.mViewHeight) {
            this.mViewHeight = f2;
        }
        this.mContentRect.set(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom());
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
    }

    public void setDismissThreshold(int i) {
        this.dismissThreshold = i;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
        if (actionMasked == 0) {
            onActionDown(motionEvent);
        } else if (actionMasked == 1) {
            onActionUp(motionEvent);
        } else if (actionMasked == 2) {
            onActionMove(motionEvent);
        }
        return true;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean zOnInterceptTouchEvent = super.onInterceptTouchEvent(motionEvent);
        int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
        if (actionMasked == 0) {
            int actionIndex = MotionEventCompat.getActionIndex(motionEvent);
            this.mLastInterceptX = MotionEventCompat.getX(motionEvent, actionIndex);
            this.mLastInterceptY = MotionEventCompat.getY(motionEvent, actionIndex);
            this.mActiveInterCeptPointerId = actionIndex;
            this.mActivePointerId = actionIndex;
            this.mLastTouchX = this.mLastInterceptX;
            this.mLastTouchY = this.mLastInterceptY;
            return zOnInterceptTouchEvent;
        }
        if (actionMasked == 1 || actionMasked != 2) {
            return zOnInterceptTouchEvent;
        }
        int iFindPointerIndex = MotionEventCompat.findPointerIndex(motionEvent, this.mActiveInterCeptPointerId);
        if (iFindPointerIndex == -1 || iFindPointerIndex > MotionEventCompat.getPointerCount(motionEvent) - 1) {
            return false;
        }
        if (Math.abs(MotionEventCompat.getY(motionEvent, iFindPointerIndex) - this.mLastInterceptY) > Math.abs(MotionEventCompat.getX(motionEvent, iFindPointerIndex) - this.mLastInterceptX) + this.touchEventThreshold) {
            if (getParent() != null) {
                getParent().requestDisallowInterceptTouchEvent(false);
            }
            return true;
        }
        if (getParent() == null) {
            return zOnInterceptTouchEvent;
        }
        getParent().requestDisallowInterceptTouchEvent(true);
        return zOnInterceptTouchEvent;
    }

    private void onActionDown(MotionEvent motionEvent) {
        int actionIndex = MotionEventCompat.getActionIndex(motionEvent);
        this.mLastTouchX = MotionEventCompat.getX(motionEvent, actionIndex);
        this.mLastTouchY = MotionEventCompat.getY(motionEvent, actionIndex);
        this.mActivePointerId = actionIndex;
        this.beginToDismiss = false;
        releaseEdgeEffects();
        if (this.mEdgeEffectBottom != null) {
            this.isEdgeDrawing = false;
        }
        this.mTrackX = this.mLastTouchX;
        this.mTrackY = this.mLastTouchY;
    }

    private void onActionUp(MotionEvent motionEvent) {
        int iFindPointerIndex = MotionEventCompat.findPointerIndex(motionEvent, this.mActivePointerId);
        if (iFindPointerIndex == -1 || iFindPointerIndex > MotionEventCompat.getPointerCount(motionEvent) - 1) {
            this.shouldAdjust = true;
            ViewCompat.postInvalidateOnAnimation(this);
            return;
        }
        this.mUpX = MotionEventCompat.getX(motionEvent, iFindPointerIndex);
        this.mUpY = MotionEventCompat.getY(motionEvent, iFindPointerIndex);
        if (this.mCurPosY > this.dismissThreshold) {
            dismissView();
        } else {
            this.shouldAdjust = true;
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    private void onActionMove(MotionEvent motionEvent) {
        int iFindPointerIndex = MotionEventCompat.findPointerIndex(motionEvent, this.mActivePointerId);
        if (iFindPointerIndex != -1) {
            boolean z = true;
            if (iFindPointerIndex > MotionEventCompat.getPointerCount(motionEvent) - 1) {
                return;
            }
            float x = MotionEventCompat.getX(motionEvent, iFindPointerIndex);
            float y = MotionEventCompat.getY(motionEvent, iFindPointerIndex);
            float f = x - this.mLastTouchX;
            float f2 = y - this.mLastTouchY;
            float f3 = this.mCurPosX + f;
            float f4 = this.mCurPosY + f2;
            if ((f4 <= this.dismissThreshold || this.beginToDismiss) && f4 * (-1.0f) >= this.topFreezeThreshold - 5) {
                this.readyShowBottomEdge = true ^ this.readyShowBottomEdge;
                if (this.readyShowBottomEdge && !this.isEdgeDrawing) {
                    this.mEdgeEffectBottom.onPull(f2);
                    ViewCompat.postInvalidateOnAnimation(this);
                }
                z = false;
            }
            if ((y - this.mTrackY) * (-1.0f) >= this.topFreezeThreshold - 5) {
                z = false;
            }
            if (z) {
                this.mCurPosX = f3;
                this.mCurPosY = f4;
                ViewCompat.postInvalidateOnAnimation(this);
            }
            this.mLastTouchX = x;
            this.mLastTouchY = y;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (this.shouldAdjust) {
            this.mCurPosY = 0.0f;
            this.mCurPosX = 0.0f;
            canvas.translate(0.0f, 0.0f);
            this.shouldAdjust = false;
            EdgeEffectCompat edgeEffectCompat = this.mEdgeEffectBottom;
            if (edgeEffectCompat != null && !edgeEffectCompat.isFinished()) {
                this.mEdgeEffectBottom.finish();
            }
        } else {
            canvas.translate((this.translateMode & 2) != 0 ? this.mCurPosX : 0.0f, (this.translateMode & 1) != 0 ? this.mCurPosY : 0.0f);
        }
        super.dispatchDraw(canvas);
        if (this.readyShowBottomEdge) {
            drawEdgeEffects(canvas);
        }
    }

    public void dismissView() {
        final float f = this.mCurPosY;
        this.mCurPosX = 0.0f;
        this.mCurPosY = 0.0f;
        Spring springCreateSpring = this.springSystem.createSpring();
        springCreateSpring.addListener(new SimpleSpringListener() { // from class: com.narvii.widget.BottomDrawerContainer.1
            @Override // com.facebook.rebound.SimpleSpringListener, com.facebook.rebound.SpringListener
            public void onSpringUpdate(Spring spring) {
                float currentValue = (float) spring.getCurrentValue();
                BottomDrawerContainer bottomDrawerContainer = BottomDrawerContainer.this;
                bottomDrawerContainer.setTranslationY(f + ((bottomDrawerContainer.mViewHeight - f) * currentValue));
                if (((int) currentValue) != 1 || BottomDrawerContainer.this.dismissListener == null) {
                    return;
                }
                BottomDrawerContainer.this.dismissListener.onDismiss();
            }
        });
        springCreateSpring.setEndValue(1.0d);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    private void drawEdgeEffects(Canvas canvas) {
        boolean z = false;
        if (!this.mEdgeEffectBottom.isFinished() && !this.isEdgeDrawing) {
            int iSave = canvas.save();
            Rect rect = this.mContentRect;
            canvas.translate((rect.left * 2) - rect.right, rect.bottom);
            canvas.rotate(180.0f, this.mContentRect.width(), 0.0f);
            this.mEdgeEffectBottom.setSize(this.mContentRect.width(), this.mContentRect.height());
            canvas.translate((this.translateMode & 2) != 0 ? this.mCurPosX : 0.0f, (this.translateMode & 1) != 0 ? this.mCurPosY : 0.0f);
            this.mEdgeEffectBottom.onAbsorb(100);
            if (this.mEdgeEffectBottom.draw(canvas)) {
                this.isEdgeDrawing = true;
                z = true;
            }
            canvas.restoreToCount(iSave);
        }
        if (!z || this.isEdgeDrawing) {
            return;
        }
        ViewCompat.postInvalidateOnAnimation(this);
    }

    private void releaseEdgeEffects() {
        this.mEdgeEffectBottom.onRelease();
        this.readyShowBottomEdge = false;
    }
}
