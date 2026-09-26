package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.EdgeEffectCompat;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes5.dex */
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
    com.facebook.rebound.i springSystem;
    private int topFreezeThreshold;
    private int touchEventThreshold;
    private int translateMode;

    public interface DismissListener {
        void onDismiss();
    }

    public BottomDrawerContainer(Context context) {
        this(context, null);
    }

    public void setDismissListener(DismissListener dismissListener) {
        this.dismissListener = dismissListener;
    }

    public void setDismissThreshold(int i10) {
        this.dismissThreshold = i10;
    }

    public BottomDrawerContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.springSystem = com.facebook.rebound.i.g();
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

    private void drawEdgeEffects(Canvas canvas) {
        if (this.mEdgeEffectBottom.e() || this.isEdgeDrawing) {
            return;
        }
        int iSave = canvas.save();
        Rect rect = this.mContentRect;
        canvas.translate((rect.left * 2) - rect.right, rect.bottom);
        canvas.rotate(180.0f, this.mContentRect.width(), 0.0f);
        this.mEdgeEffectBottom.k(this.mContentRect.width(), this.mContentRect.height());
        int i10 = this.translateMode;
        boolean z6 = true;
        canvas.translate((i10 & 2) != 0 ? this.mCurPosX : 0.0f, (i10 & 1) != 0 ? this.mCurPosY : 0.0f);
        this.mEdgeEffectBottom.f(100);
        if (this.mEdgeEffectBottom.b(canvas)) {
            this.isEdgeDrawing = true;
        } else {
            z6 = false;
        }
        canvas.restoreToCount(iSave);
        if (!z6 || this.isEdgeDrawing) {
            return;
        }
        ViewCompat.k0(this);
    }

    private void onActionMove(MotionEvent motionEvent) {
        int iA = MotionEventCompat.a(motionEvent, this.mActivePointerId);
        if (iA != -1) {
            boolean z6 = true;
            if (iA > MotionEventCompat.d(motionEvent) - 1) {
                return;
            }
            float f = MotionEventCompat.f(motionEvent, iA);
            float fG = MotionEventCompat.g(motionEvent, iA);
            float f6 = f - this.mLastTouchX;
            float f7 = fG - this.mLastTouchY;
            float f10 = this.mCurPosX + f6;
            float f11 = this.mCurPosY + f7;
            if ((f11 <= this.dismissThreshold || this.beginToDismiss) && f11 * (-1.0f) >= this.topFreezeThreshold - 5) {
                boolean z10 = true ^ this.readyShowBottomEdge;
                this.readyShowBottomEdge = z10;
                if (z10 && !this.isEdgeDrawing) {
                    this.mEdgeEffectBottom.h(f7);
                    ViewCompat.k0(this);
                }
                z6 = false;
            }
            if ((fG - this.mTrackY) * (-1.0f) < this.topFreezeThreshold - 5 && z6) {
                this.mCurPosX = f10;
                this.mCurPosY = f11;
                ViewCompat.k0(this);
            }
            this.mLastTouchX = f;
            this.mLastTouchY = fG;
        }
    }

    private void onActionUp(MotionEvent motionEvent) {
        int iA = MotionEventCompat.a(motionEvent, this.mActivePointerId);
        if (iA == -1 || iA > MotionEventCompat.d(motionEvent) - 1) {
            this.shouldAdjust = true;
            ViewCompat.k0(this);
            return;
        }
        this.mUpX = MotionEventCompat.f(motionEvent, iA);
        this.mUpY = MotionEventCompat.g(motionEvent, iA);
        if (this.mCurPosY > this.dismissThreshold) {
            dismissView();
        } else {
            this.shouldAdjust = true;
            ViewCompat.k0(this);
        }
    }

    private void releaseEdgeEffects() {
        this.mEdgeEffectBottom.j();
        this.readyShowBottomEdge = false;
    }

    public void dismissView() {
        final float f = this.mCurPosY;
        this.mCurPosX = 0.0f;
        this.mCurPosY = 0.0f;
        com.facebook.rebound.e eVarC = this.springSystem.c();
        eVarC.a(new com.facebook.rebound.d() { // from class: com.narvii.widget.BottomDrawerContainer.1
            @Override // com.facebook.rebound.d, com.facebook.rebound.g
            public void onSpringUpdate(com.facebook.rebound.e eVar) {
                float fC = (float) eVar.c();
                BottomDrawerContainer bottomDrawerContainer = BottomDrawerContainer.this;
                bottomDrawerContainer.setTranslationY(f + ((bottomDrawerContainer.mViewHeight - f) * fC));
                if (((int) fC) == 1 && BottomDrawerContainer.this.dismissListener != null) {
                    BottomDrawerContainer.this.dismissListener.onDismiss();
                }
            }
        });
        eVarC.o(1.0d);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (this.shouldAdjust) {
            this.mCurPosY = 0.0f;
            this.mCurPosX = 0.0f;
            canvas.translate(0.0f, 0.0f);
            this.shouldAdjust = false;
            EdgeEffectCompat edgeEffectCompat = this.mEdgeEffectBottom;
            if (edgeEffectCompat != null && !edgeEffectCompat.e()) {
                this.mEdgeEffectBottom.c();
            }
        } else {
            int i10 = this.translateMode;
            canvas.translate((i10 & 2) != 0 ? this.mCurPosX : 0.0f, (i10 & 1) != 0 ? this.mCurPosY : 0.0f);
        }
        super.dispatchDraw(canvas);
        if (this.readyShowBottomEdge) {
            drawEdgeEffects(canvas);
        }
    }

    private void onActionDown(MotionEvent motionEvent) {
        int iB = MotionEventCompat.b(motionEvent);
        this.mLastTouchX = MotionEventCompat.f(motionEvent, iB);
        this.mLastTouchY = MotionEventCompat.g(motionEvent, iB);
        this.mActivePointerId = iB;
        this.beginToDismiss = false;
        releaseEdgeEffects();
        if (this.mEdgeEffectBottom != null) {
            this.isEdgeDrawing = false;
        }
        this.mTrackX = this.mLastTouchX;
        this.mTrackY = this.mLastTouchY;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean zOnInterceptTouchEvent = super.onInterceptTouchEvent(motionEvent);
        int iC = MotionEventCompat.c(motionEvent);
        if (iC != 0) {
            if (iC == 2) {
                int iA = MotionEventCompat.a(motionEvent, this.mActiveInterCeptPointerId);
                if (iA == -1 || iA > MotionEventCompat.d(motionEvent) - 1) {
                    return false;
                }
                if (Math.abs(MotionEventCompat.g(motionEvent, iA) - this.mLastInterceptY) > Math.abs(MotionEventCompat.f(motionEvent, iA) - this.mLastInterceptX) + this.touchEventThreshold) {
                    if (getParent() != null) {
                        getParent().requestDisallowInterceptTouchEvent(false);
                    }
                    return true;
                }
                if (getParent() != null) {
                    getParent().requestDisallowInterceptTouchEvent(true);
                    return zOnInterceptTouchEvent;
                }
                return zOnInterceptTouchEvent;
            }
            return zOnInterceptTouchEvent;
        }
        int iB = MotionEventCompat.b(motionEvent);
        this.mLastInterceptX = MotionEventCompat.f(motionEvent, iB);
        float fG = MotionEventCompat.g(motionEvent, iB);
        this.mLastInterceptY = fG;
        this.mActiveInterCeptPointerId = iB;
        this.mActivePointerId = iB;
        this.mLastTouchX = this.mLastInterceptX;
        this.mLastTouchY = fG;
        return zOnInterceptTouchEvent;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        float f = i10;
        if (f != this.mViewWidth) {
            this.mViewWidth = f;
        }
        float f6 = i11;
        if (f6 != this.mViewHeight) {
            this.mViewHeight = f6;
        }
        this.mContentRect.set(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom());
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int iC = MotionEventCompat.c(motionEvent);
        if (iC != 0) {
            if (iC != 1) {
                if (iC == 2) {
                    onActionMove(motionEvent);
                }
            } else {
                onActionUp(motionEvent);
            }
        } else {
            onActionDown(motionEvent);
        }
        return true;
    }
}
