package com.narvii.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.AbsListView;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes7.dex */
public class OverscrollListView extends NVListView {
    private boolean dInited;
    private boolean downTouch;
    private boolean fixDragEmpty;
    private boolean isInTouch;
    private OverscrollListener listener;
    private boolean overscrollLock;
    private int overscrollY;
    private boolean prevOSTouch;
    private com.facebook.rebound.e spring;
    private int springEndValue;
    private boolean springing;

    public interface OverscrollListener {
        void didSpringBack(OverscrollListView overscrollListView, int i10);

        void onOverscrolled(OverscrollListView overscrollListView, int i10, boolean z6);

        void willSpringBack(OverscrollListView overscrollListView, int i10, int i11);
    }

    private void startOverscroll(float f, float f6) {
        this.springing = true;
        this.spring.m(f);
        this.spring.o(com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE);
        this.springEndValue = 0;
        this.spring.s(f6 * 1.5f);
        invalidate();
    }

    public boolean hasOverscrollLock() {
        return this.overscrollLock;
    }

    public void setFixDragEmptyIssue(boolean z6) {
        this.fixDragEmpty = z6;
    }

    public void setOverscrollListener(OverscrollListener overscrollListener) {
        this.listener = overscrollListener;
    }

    public void setOverscrollLock(int i10) {
        this.springing = true;
        this.overscrollLock = i10 != 0;
        this.spring.m(this.overscrollY);
        int i11 = i10 * 2;
        this.spring.o(i11);
        this.springEndValue = i11;
        invalidate();
    }

    @Override // com.narvii.widget.NVListView, android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (this.springing) {
            int iC = (int) this.spring.c();
            if (this.overscrollY != iC) {
                onOverScrolled(0, iC, false, false);
            }
            if (Math.abs(this.spring.g()) < 30.0d && Math.abs(this.overscrollY - this.springEndValue) < 4) {
                int i10 = this.overscrollY;
                int i11 = this.springEndValue;
                if (i10 != i11) {
                    onOverScrolled(0, i11, false, false);
                }
                this.springing = false;
                OverscrollListener overscrollListener = this.listener;
                if (overscrollListener != null) {
                    overscrollListener.didSpringBack(this, this.overscrollY);
                }
            }
            invalidate();
        }
        int iSave = canvas.save();
        int i12 = this.overscrollY;
        if (i12 != 0) {
            canvas.translate(0.0f, i12 / 2);
        }
        super.dispatchDraw(canvas);
        canvas.restoreToCount(iSave);
    }

    public int getOverscrollY() {
        return this.overscrollY / 2;
    }

    @Override // com.narvii.widget.NVListView, android.view.View
    protected boolean overScrollBy(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, boolean z6) {
        if (this.springing || this.overscrollLock) {
            return true;
        }
        if (!this.prevOSTouch || z6) {
            this.prevOSTouch = z6;
            this.isInTouch = z6;
            boolean zOverScrollBy = super.overScrollBy(i10, i11, i12, i13, i14, i15, i16, i17, z6);
            this.isInTouch = false;
            return zOverScrollBy;
        }
        startOverscroll(i13, i11 * 60);
        this.prevOSTouch = z6;
        OverscrollListener overscrollListener = this.listener;
        if (overscrollListener != null) {
            overscrollListener.willSpringBack(this, i13 / 2, i11);
        }
        return true;
    }

    public void releaseOverscrollLock(boolean z6) {
        if (this.overscrollLock) {
            this.overscrollLock = false;
            if (z6) {
                this.springing = true;
                this.spring.o(com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE);
                this.springEndValue = 0;
            }
            invalidate();
        }
    }

    public void setOverscrollY(int i10) {
        onOverScrolled(0, i10 * 2, false, false);
    }

    public OverscrollListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.spring = createSpring(context);
    }

    public static com.facebook.rebound.e createSpring(Context context) {
        com.facebook.rebound.e eVarC = com.facebook.rebound.i.g().c();
        eVarC.p(true);
        eVarC.r(com.facebook.rebound.f.a(context.getResources().getDisplayMetrics().density * 6.0f, 8.0d));
        return eVarC;
    }

    @Override // com.narvii.widget.NVListView, android.widget.AbsListView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.springing = false;
            this.prevOSTouch = true;
            if (this.overscrollLock) {
                releaseOverscrollLock(false);
            }
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // com.narvii.widget.NVListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        super.onLayout(z6, i10, i11, i12, i13);
        if (!this.dInited && getHeight() > 0) {
            this.dInited = true;
            setOverflingDistance(getHeight());
            setOverscrollDistance(getHeight() * 2);
        }
    }

    @Override // com.narvii.widget.NVListView, android.widget.AbsListView, android.view.View
    protected void onOverScrolled(int i10, int i11, boolean z6, boolean z10) {
        super.onOverScrolled(i10, i11, z6, z10);
        this.overscrollY = i11;
        OverscrollListener overscrollListener = this.listener;
        if (overscrollListener != null) {
            overscrollListener.onOverscrolled(this, i11 / 2, this.isInTouch);
        }
    }

    @Override // com.narvii.widget.NVListView, android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.downTouch = true;
        }
        boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
        this.downTouch = false;
        return zOnTouchEvent;
    }

    @Override // android.widget.AbsListView
    public int pointToPosition(int i10, int i11) {
        int iPointToPosition = super.pointToPosition(i10, i11);
        if (this.fixDragEmpty && this.downTouch && iPointToPosition < 0) {
            try {
                Field declaredField = AbsListView.class.getDeclaredField("mTouchMode");
                declaredField.setAccessible(true);
                if (declaredField.getInt(this) < 0) {
                    declaredField.setInt(this, 0);
                }
            } catch (Exception unused) {
            }
            return (getFirstVisiblePosition() + getChildCount()) - 1;
        }
        return iPointToPosition;
    }
}
