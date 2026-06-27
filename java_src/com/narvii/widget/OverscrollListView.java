package com.narvii.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.AbsListView;
import com.facebook.rebound.Spring;
import com.facebook.rebound.SpringConfig;
import com.facebook.rebound.SpringSystem;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes3.dex */
public class OverscrollListView extends NVListView {
    private boolean dInited;
    private boolean downTouch;
    private boolean fixDragEmpty;
    private boolean isInTouch;
    private OverscrollListener listener;
    private boolean overscrollLock;
    private int overscrollY;
    private boolean prevOSTouch;
    private Spring spring;
    private int springEndValue;
    private boolean springing;

    public interface OverscrollListener {
        void didSpringBack(OverscrollListView overscrollListView, int i);

        void onOverscrolled(OverscrollListView overscrollListView, int i, boolean z);

        void willSpringBack(OverscrollListView overscrollListView, int i, int i2);
    }

    public OverscrollListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.spring = createSpring(context);
    }

    public static Spring createSpring(Context context) {
        Spring springCreateSpring = SpringSystem.create().createSpring();
        springCreateSpring.setOvershootClampingEnabled(true);
        springCreateSpring.setSpringConfig(SpringConfig.fromOrigamiTensionAndFriction(context.getResources().getDisplayMetrics().density * 6.0f, 8.0d));
        return springCreateSpring;
    }

    public void setOverscrollListener(OverscrollListener overscrollListener) {
        this.listener = overscrollListener;
    }

    public int getOverscrollY() {
        return this.overscrollY / 2;
    }

    public void setOverscrollY(int i) {
        onOverScrolled(0, i * 2, false, false);
    }

    @Override // com.narvii.widget.NVListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        super.onLayout(z, i, i2, i3, i4);
        if (this.dInited || getHeight() <= 0) {
            return;
        }
        this.dInited = true;
        setOverflingDistance(getHeight());
        setOverscrollDistance(getHeight() * 2);
    }

    @Override // com.narvii.widget.NVListView, android.widget.AbsListView, android.view.View
    protected void onOverScrolled(int i, int i2, boolean z, boolean z2) {
        super.onOverScrolled(i, i2, z, z2);
        this.overscrollY = i2;
        OverscrollListener overscrollListener = this.listener;
        if (overscrollListener != null) {
            overscrollListener.onOverscrolled(this, i2 / 2, this.isInTouch);
        }
    }

    @Override // com.narvii.widget.NVListView, android.view.View
    protected boolean overScrollBy(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z) {
        if (this.springing || this.overscrollLock) {
            return true;
        }
        if (this.prevOSTouch && !z) {
            startOverscroll(i4, i2 * 60);
            this.prevOSTouch = z;
            OverscrollListener overscrollListener = this.listener;
            if (overscrollListener != null) {
                overscrollListener.willSpringBack(this, i4 / 2, i2);
            }
            return true;
        }
        this.prevOSTouch = z;
        this.isInTouch = z;
        boolean zOverScrollBy = super.overScrollBy(i, i2, i3, i4, i5, i6, i7, i8, z);
        this.isInTouch = false;
        return zOverScrollBy;
    }

    @Override // com.narvii.widget.NVListView, android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (this.springing) {
            int currentValue = (int) this.spring.getCurrentValue();
            if (this.overscrollY != currentValue) {
                onOverScrolled(0, currentValue, false, false);
            }
            if (Math.abs(this.spring.getVelocity()) < 30.0d && Math.abs(this.overscrollY - this.springEndValue) < 4) {
                int i = this.overscrollY;
                int i2 = this.springEndValue;
                if (i != i2) {
                    onOverScrolled(0, i2, false, false);
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
        if (this.overscrollY != 0) {
            canvas.translate(0.0f, r1 / 2);
        }
        super.dispatchDraw(canvas);
        canvas.restoreToCount(iSave);
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

    private void startOverscroll(float f, float f2) {
        this.springing = true;
        this.spring.setCurrentValue(f);
        this.spring.setEndValue(0.0d);
        this.springEndValue = 0;
        this.spring.setVelocity(f2 * 1.5f);
        invalidate();
    }

    public void setOverscrollLock(int i) {
        this.springing = true;
        this.overscrollLock = i != 0;
        this.spring.setCurrentValue(this.overscrollY);
        int i2 = i * 2;
        this.spring.setEndValue(i2);
        this.springEndValue = i2;
        invalidate();
    }

    public boolean hasOverscrollLock() {
        return this.overscrollLock;
    }

    public void releaseOverscrollLock(boolean z) {
        if (this.overscrollLock) {
            this.overscrollLock = false;
            if (z) {
                this.springing = true;
                this.spring.setEndValue(0.0d);
                this.springEndValue = 0;
            }
            invalidate();
        }
    }

    public void setFixDragEmptyIssue(boolean z) {
        this.fixDragEmpty = z;
    }

    @Override // android.widget.AbsListView
    public int pointToPosition(int i, int i2) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        int iPointToPosition = super.pointToPosition(i, i2);
        if (!this.fixDragEmpty || !this.downTouch || iPointToPosition >= 0) {
            return iPointToPosition;
        }
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

    @Override // com.narvii.widget.NVListView, android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.downTouch = true;
        }
        boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
        this.downTouch = false;
        return zOnTouchEvent;
    }
}
