package com.narvii.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.view.MotionEventCompat;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public class Flipper<T> extends FrameLayout implements Runnable {
    protected static final int ANIM_NONE = 0;
    private static final int ANIM_TRANS = 2;
    private static final int ANIM_TRANS_DURATION1 = 30;
    private static final int ANIM_TRANS_DURATION2 = 150;
    private static final int ANIM_TRANS_TO_NEXT = 1;
    private static final int ANIM_TRANS_TO_PREVIOUS = -1;
    private static final int FLING_VELOCITY = 500;
    private static final Handler HANDLER = new Handler(Looper.getMainLooper());
    private int activePointId;
    protected FlipperAdapter<T> adapter;
    private int animationDuration;
    protected int animationMode;
    private long animationStartMs;
    private int animationX1;
    private int animationX2;
    public boolean autoFilp;
    private int autoFlipDuration;
    private Flipper bind;
    protected T currentItem;
    protected View currentView;
    private float flipDistance;
    protected GestureDetector gestureDetector;
    protected GestureDetector.OnGestureListener gestureListener;
    protected boolean isScrolling;
    private boolean isTouching;
    boolean isallowInterceptTouchEvent;
    private int mItemSpaceAdjust;
    protected T nextItem;
    protected View nextView;
    protected T previousItem;
    protected View previousView;
    private OnFlipperScrollListener scrollListener;
    private float startX;
    private float startY;

    public interface FlipperAdapter<T> {
        T getNextItem(T t);

        T getPreviousItem(T t);

        View getView(T t, View view);

        void onMoved(T t, T t2);

        void onMoving(T t, T t2);

        void onTap(T t);

        void recycleView(View view);
    }

    public interface OnFlipperScrollListener {
        void onScroll(int i);
    }

    public Flipper(Context context) {
        this(context, null);
    }

    public Flipper(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.animationMode = 0;
        this.gestureListener = new GestureDetector.SimpleOnGestureListener() { // from class: com.narvii.widget.Flipper.1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                Flipper.this.onFling(f);
                return true;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                Flipper flipper = Flipper.this;
                if (flipper.previousItem == null && flipper.nextItem == null) {
                    flipper.isScrolling = false;
                    return true;
                }
                Flipper flipper2 = Flipper.this;
                flipper2.isScrolling = true;
                flipper2.onScrollX(motionEvent, motionEvent2, f);
                Flipper.this.requestDisallowInterceptTouchEvent(true);
                return true;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(MotionEvent motionEvent) {
                Flipper.this.onTap();
                return true;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public void onShowPress(MotionEvent motionEvent) {
                Flipper.this.animationMode = 0;
                super.onShowPress(motionEvent);
            }
        };
        this.flipDistance = 0.0f;
        this.isallowInterceptTouchEvent = true;
        this.gestureDetector = new GestureDetector(context, this.gestureListener);
    }

    public void setItemSpaceSpanAdjust(int i) {
        this.mItemSpaceAdjust = i;
    }

    public void setAdapter(FlipperAdapter<T> flipperAdapter) {
        this.adapter = flipperAdapter;
    }

    public void setOnFlipperScrollListener(OnFlipperScrollListener onFlipperScrollListener) {
        this.scrollListener = onFlipperScrollListener;
    }

    public void setBindFlipper(Flipper flipper) {
        this.bind = flipper;
    }

    public void startAutoFlip(int i) {
        this.autoFilp = true;
        this.autoFlipDuration = i;
        HANDLER.removeCallbacks(this);
        HANDLER.postDelayed(this, i);
    }

    public void stopAutoFlip() {
        this.autoFilp = false;
        this.autoFlipDuration = 0;
        HANDLER.removeCallbacks(this);
    }

    public T getCurrentItem() {
        return this.currentItem;
    }

    public void setCurrentItem(T t) {
        T t2 = this.currentItem;
        T t3 = this.previousItem;
        T t4 = this.nextItem;
        this.currentItem = t;
        this.previousItem = Utils.isRtl() ? this.adapter.getNextItem(t) : this.adapter.getPreviousItem(t);
        this.nextItem = Utils.isRtl() ? this.adapter.getPreviousItem(t) : this.adapter.getNextItem(t);
        if (!isEquals(this.currentItem, t2)) {
            View view = this.currentView;
            if (view != null) {
                removeView(view);
            }
            T t5 = this.currentItem;
            if (t5 != null) {
                this.currentView = this.adapter.getView(t5, this.currentView);
            } else {
                recycle(this.currentView);
                this.currentView = null;
            }
            View view2 = this.currentView;
            if (view2 != null) {
                addView(view2);
            }
        }
        if (!isEquals(this.previousItem, t3)) {
            View view3 = this.previousView;
            if (view3 != null) {
                removeView(view3);
            }
            T t6 = this.previousItem;
            if (t6 != null) {
                this.previousView = this.adapter.getView(t6, this.previousView);
            } else {
                recycle(this.previousView);
                this.previousView = null;
            }
            View view4 = this.previousView;
            if (view4 != null) {
                addView(view4);
            }
        }
        if (!isEquals(this.nextItem, t4)) {
            View view5 = this.nextView;
            if (view5 != null) {
                removeView(view5);
            }
            T t7 = this.nextItem;
            if (t7 != null) {
                this.nextView = this.adapter.getView(t7, this.nextView);
            } else {
                recycle(this.nextView);
                this.nextView = null;
            }
            View view6 = this.nextView;
            if (view6 != null) {
                addView(view6);
            }
        }
        if (isEquals(t2, this.currentItem)) {
            return;
        }
        this.adapter.onMoved(t2, this.currentItem);
    }

    public View getCurrentView() {
        return this.currentView;
    }

    public View getNextView() {
        return this.nextView;
    }

    public View getPreviousView() {
        return this.previousView;
    }

    public void update() {
        this.previousItem = Utils.isRtl() ? this.adapter.getNextItem(this.currentItem) : this.adapter.getPreviousItem(this.currentItem);
        this.nextItem = Utils.isRtl() ? this.adapter.getPreviousItem(this.currentItem) : this.adapter.getNextItem(this.currentItem);
        View view = this.currentView;
        if (view != null) {
            removeView(view);
        }
        T t = this.currentItem;
        if (t != null) {
            this.currentView = this.adapter.getView(t, this.currentView);
        } else {
            recycle(this.currentView);
            this.currentView = null;
        }
        View view2 = this.currentView;
        if (view2 != null) {
            addView(view2);
        }
        View view3 = this.previousView;
        if (view3 != null) {
            removeView(view3);
        }
        T t2 = this.previousItem;
        if (t2 != null) {
            this.previousView = this.adapter.getView(t2, this.previousView);
        } else {
            recycle(this.previousView);
            this.previousView = null;
        }
        View view4 = this.previousView;
        if (view4 != null) {
            addView(view4);
        }
        View view5 = this.nextView;
        if (view5 != null) {
            removeView(view5);
        }
        T t3 = this.nextItem;
        if (t3 != null) {
            this.nextView = this.adapter.getView(t3, this.nextView);
        } else {
            recycle(this.nextView);
            this.nextView = null;
        }
        View view6 = this.nextView;
        if (view6 != null) {
            addView(view6);
        }
    }

    private boolean isEquals(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    private void recycle(View view) {
        FlipperAdapter<T> flipperAdapter;
        if (view == null || (flipperAdapter = this.adapter) == null) {
            return;
        }
        flipperAdapter.recycleView(view);
    }

    public void setIsallowInterceptTouchEvent(boolean z) {
        this.isallowInterceptTouchEvent = z;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int visibility;
        int visibility2 = 0;
        if (motionEvent.getAction() == 0) {
            int actionIndex = MotionEventCompat.getActionIndex(motionEvent);
            this.startX = MotionEventCompat.getX(motionEvent, actionIndex);
            this.startY = MotionEventCompat.getY(motionEvent, actionIndex);
            this.activePointId = MotionEventCompat.getPointerId(motionEvent, 0);
            View view = this.previousView;
            if (view != null) {
                visibility = view.getVisibility();
                this.previousView.setVisibility(4);
            } else {
                visibility = 0;
            }
            View view2 = this.nextView;
            if (view2 != null) {
                visibility2 = view2.getVisibility();
                this.nextView.setVisibility(4);
            }
            try {
                return super.dispatchTouchEvent(motionEvent);
            } finally {
                View view3 = this.previousView;
                if (view3 != null) {
                    view3.setVisibility(visibility);
                }
                View view4 = this.nextView;
                if (view4 != null) {
                    view4.setVisibility(visibility2);
                }
            }
        }
        if (motionEvent.getAction() == 2) {
            int iFindPointerIndex = MotionEventCompat.findPointerIndex(motionEvent, this.activePointId);
            if (iFindPointerIndex == -1 || iFindPointerIndex > MotionEventCompat.getPointerCount(motionEvent) - 1) {
                return super.dispatchTouchEvent(motionEvent);
            }
            float x = MotionEventCompat.getX(motionEvent, iFindPointerIndex);
            float y = MotionEventCompat.getY(motionEvent, iFindPointerIndex);
            if (Math.abs(x - this.startX) >= Math.abs(y - this.startY)) {
                if (getParent() != null && !this.isallowInterceptTouchEvent) {
                    getParent().requestDisallowInterceptTouchEvent(true);
                }
            } else if (getParent() != null) {
                getParent().requestDisallowInterceptTouchEvent(false);
            }
        } else if (motionEvent.getAction() == 3 || motionEvent.getAction() == 1) {
            this.startY = 0.0f;
            this.startX = 0.0f;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled()) {
            return super.onTouchEvent(motionEvent);
        }
        if (!this.gestureDetector.onTouchEvent(motionEvent)) {
            if (motionEvent.getAction() == 1 && this.isScrolling) {
                onScrollXEnd();
                this.isScrolling = false;
            }
            if (motionEvent.getAction() == 3) {
                onScrollXEnd();
                this.isScrolling = false;
            }
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            HANDLER.removeCallbacks(this);
            this.isTouching = true;
        } else if (action == 1 || action == 3) {
            requestDisallowInterceptTouchEvent(false);
            if (this.autoFlipDuration > 0) {
                HANDLER.removeCallbacks(this);
                HANDLER.postDelayed(this, this.autoFlipDuration);
            }
            this.isScrolling = false;
            this.isTouching = false;
        }
        return true;
    }

    protected void onScrollX(MotionEvent motionEvent, MotionEvent motionEvent2, float f) {
        Flipper flipper = this.bind;
        if (flipper != null) {
            flipper.onScrollX(motionEvent, motionEvent2, f);
        }
        this.flipDistance += f;
        OnFlipperScrollListener onFlipperScrollListener = this.scrollListener;
        if (onFlipperScrollListener != null) {
            onFlipperScrollListener.onScroll((int) this.flipDistance);
        }
        invalidate();
    }

    public float flipDistance() {
        return this.flipDistance;
    }

    public void onScrollXEnd() {
        int width = getWidth();
        float f = this.flipDistance;
        if (f < (-width) / 2.0f) {
            moveToPrevious(true);
        } else if (f > width / 2.0f) {
            moveToNext(true);
        } else {
            restorePosition(true);
        }
    }

    public void onFling(float f) {
        int width = getWidth();
        if (f >= -500.0f) {
            float f2 = this.flipDistance;
            if (f2 <= width / 2.0f) {
                if (f > 500.0f || f2 < (-width) / 2.0f) {
                    moveToPrevious(true);
                    return;
                } else {
                    restorePosition(true);
                    return;
                }
            }
        }
        moveToNext(true);
    }

    protected void onTap() {
        this.adapter.onTap(this.currentItem);
    }

    public void restorePosition(boolean z) {
        Flipper flipper = this.bind;
        if (flipper != null) {
            flipper.restorePosition(z);
        }
        if (this.flipDistance == 0.0f) {
            return;
        }
        if (z) {
            int width = getWidth();
            this.animationMode = 2;
            this.animationX1 = (int) this.flipDistance;
            this.animationX2 = 0;
            this.animationStartMs = AnimationUtils.currentAnimationTimeMillis();
            this.animationDuration = ((int) ((Math.abs(this.flipDistance) / width) * 120.0f)) + 30;
            invalidate();
            return;
        }
        this.flipDistance = 0.0f;
        this.animationMode = 0;
        OnFlipperScrollListener onFlipperScrollListener = this.scrollListener;
        if (onFlipperScrollListener != null) {
            onFlipperScrollListener.onScroll((int) this.flipDistance);
        }
        invalidate();
    }

    public boolean moveToPrevious(boolean z) {
        Flipper flipper = this.bind;
        if (flipper != null) {
            flipper.moveToPrevious(z);
        }
        if (this.previousItem != null) {
            View view = this.nextView;
            if (view != null) {
                removeView(view);
            }
            this.nextItem = this.currentItem;
            this.nextView = this.currentView;
            this.currentItem = this.previousItem;
            this.currentView = this.previousView;
            this.previousItem = Utils.isRtl() ? this.adapter.getNextItem(this.currentItem) : this.adapter.getPreviousItem(this.currentItem);
            T t = this.previousItem;
            if (t != null) {
                this.previousView = this.adapter.getView(t, view);
            } else {
                recycle(view);
                this.previousView = null;
            }
            View view2 = this.previousView;
            if (view2 != null) {
                addView(view2);
            }
            if (z) {
                float width = getWidth();
                this.flipDistance += width;
                this.animationMode = -1;
                this.animationX1 = (int) this.flipDistance;
                this.animationX2 = 0;
                this.animationStartMs = AnimationUtils.currentAnimationTimeMillis();
                this.animationDuration = ((int) ((Math.abs(this.flipDistance) / width) * 120.0f)) + 30;
                invalidate();
                this.adapter.onMoving(this.nextItem, this.currentItem);
            } else {
                this.flipDistance = 0.0f;
                this.animationMode = 0;
                this.adapter.onMoved(this.nextItem, this.currentItem);
                invalidate();
            }
            OnFlipperScrollListener onFlipperScrollListener = this.scrollListener;
            if (onFlipperScrollListener == null) {
                return true;
            }
            onFlipperScrollListener.onScroll((int) this.flipDistance);
            return true;
        }
        restorePosition(z);
        return false;
    }

    public boolean moveToNext(boolean z) {
        Flipper flipper = this.bind;
        if (flipper != null) {
            flipper.moveToNext(z);
        }
        if (this.nextItem != null) {
            View view = this.previousView;
            if (view != null) {
                removeView(view);
            }
            this.previousItem = this.currentItem;
            this.previousView = this.currentView;
            this.currentItem = this.nextItem;
            this.currentView = this.nextView;
            this.nextItem = Utils.isRtl() ? this.adapter.getPreviousItem(this.currentItem) : this.adapter.getNextItem(this.currentItem);
            T t = this.nextItem;
            if (t != null) {
                this.nextView = this.adapter.getView(t, view);
            } else {
                recycle(view);
                this.nextView = null;
            }
            View view2 = this.nextView;
            if (view2 != null) {
                addView(view2);
            }
            if (z) {
                float width = getWidth();
                this.flipDistance -= width;
                this.animationMode = 1;
                this.animationX1 = (int) this.flipDistance;
                this.animationX2 = 0;
                this.animationStartMs = AnimationUtils.currentAnimationTimeMillis();
                this.animationDuration = ((int) ((Math.abs(this.flipDistance) / width) * 120.0f)) + 30;
                invalidate();
                this.adapter.onMoving(this.previousItem, this.currentItem);
            } else {
                this.flipDistance = 0.0f;
                this.animationMode = 0;
                this.adapter.onMoved(this.previousItem, this.currentItem);
                invalidate();
            }
            OnFlipperScrollListener onFlipperScrollListener = this.scrollListener;
            if (onFlipperScrollListener != null) {
                onFlipperScrollListener.onScroll((int) this.flipDistance);
            }
            return true;
        }
        restorePosition(z);
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        int i = this.animationMode;
        if (i == 2 || i == -1 || i == 1) {
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            long j = this.animationStartMs;
            int i2 = this.animationDuration;
            if (i2 + j < jCurrentAnimationTimeMillis) {
                int i3 = this.animationMode;
                if (i3 == -1) {
                    this.adapter.onMoved(this.nextItem, this.currentItem);
                } else if (i3 == 1) {
                    this.adapter.onMoved(this.previousItem, this.currentItem);
                }
                this.animationMode = 0;
                this.flipDistance = 0.0f;
                OnFlipperScrollListener onFlipperScrollListener = this.scrollListener;
                if (onFlipperScrollListener != null) {
                    onFlipperScrollListener.onScroll((int) this.flipDistance);
                }
                if (this.autoFlipDuration > 0) {
                    HANDLER.removeCallbacks(this);
                    HANDLER.postDelayed(this, this.autoFlipDuration);
                }
            } else {
                float f = (jCurrentAnimationTimeMillis - j) / i2;
                int i4 = this.animationX1;
                this.flipDistance = i4 + ((int) (f * (this.animationX2 - i4)));
                OnFlipperScrollListener onFlipperScrollListener2 = this.scrollListener;
                if (onFlipperScrollListener2 != null) {
                    onFlipperScrollListener2.onScroll((int) this.flipDistance);
                }
                invalidate();
            }
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        boolean zDrawChild;
        if (view == this.previousView) {
            canvas.save();
            canvas.translate(((-getWidth()) + this.mItemSpaceAdjust) - this.flipDistance, 0.0f);
            zDrawChild = super.drawChild(canvas, view, j);
            canvas.restore();
        } else {
            zDrawChild = true;
        }
        if (view == this.nextView) {
            canvas.save();
            canvas.translate((getWidth() - this.mItemSpaceAdjust) - this.flipDistance, 0.0f);
            zDrawChild = super.drawChild(canvas, view, j);
            canvas.restore();
        }
        if (view != this.currentView) {
            return zDrawChild;
        }
        canvas.save();
        canvas.translate(-this.flipDistance, 0.0f);
        boolean zDrawChild2 = super.drawChild(canvas, view, j);
        canvas.restore();
        return zDrawChild2;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.autoFlipDuration == 0) {
            return;
        }
        if (this.isTouching || this.isScrolling) {
            HANDLER.removeCallbacks(this);
            HANDLER.postDelayed(this, this.autoFlipDuration);
        } else {
            moveToNext(true);
        }
    }
}
