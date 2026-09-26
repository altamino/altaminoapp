package com.narvii.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import androidx.core.view.MotionEventCompat;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes5.dex */
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
        T getNextItem(T t5);

        T getPreviousItem(T t5);

        View getView(T t5, View view);

        void onMoved(T t5, T t10);

        void onMoving(T t5, T t10);

        void onTap(T t5);

        void recycleView(View view);
    }

    public interface OnFlipperScrollListener {
        void onScroll(int i10);
    }

    public Flipper(Context context) {
        this(context, null);
    }

    public float flipDistance() {
        return this.flipDistance;
    }

    public T getCurrentItem() {
        return this.currentItem;
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

    public void setAdapter(FlipperAdapter<T> flipperAdapter) {
        this.adapter = flipperAdapter;
    }

    public void setBindFlipper(Flipper flipper) {
        this.bind = flipper;
    }

    public void setIsallowInterceptTouchEvent(boolean z6) {
        this.isallowInterceptTouchEvent = z6;
    }

    public void setItemSpaceSpanAdjust(int i10) {
        this.mItemSpaceAdjust = i10;
    }

    public void setOnFlipperScrollListener(OnFlipperScrollListener onFlipperScrollListener) {
        this.scrollListener = onFlipperScrollListener;
    }

    public void startAutoFlip(int i10) {
        this.autoFilp = true;
        this.autoFlipDuration = i10;
        Handler handler = HANDLER;
        handler.removeCallbacks(this);
        handler.postDelayed(this, i10);
    }

    public void stopAutoFlip() {
        this.autoFilp = false;
        this.autoFlipDuration = 0;
        HANDLER.removeCallbacks(this);
    }

    public Flipper(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.animationMode = 0;
        this.gestureListener = new GestureDetector.SimpleOnGestureListener() { // from class: com.narvii.widget.Flipper.1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f6) {
                Flipper.this.onFling(f);
                return true;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f6) {
                Flipper flipper = Flipper.this;
                if (flipper.previousItem == null && flipper.nextItem == null) {
                    flipper.isScrolling = false;
                    return true;
                }
                flipper.isScrolling = true;
                flipper.onScrollX(motionEvent, motionEvent2, f);
                Flipper.this.requestDisallowInterceptTouchEvent(true);
                return true;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public void onShowPress(MotionEvent motionEvent) {
                Flipper.this.animationMode = 0;
                super.onShowPress(motionEvent);
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(MotionEvent motionEvent) {
                Flipper.this.onTap();
                return true;
            }
        };
        this.flipDistance = 0.0f;
        this.isallowInterceptTouchEvent = true;
        this.gestureDetector = new GestureDetector(context, this.gestureListener);
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

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        int i10 = this.animationMode;
        if (i10 == 2 || i10 == -1 || i10 == 1) {
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            long j6 = this.animationStartMs;
            int i11 = this.animationDuration;
            if (((long) i11) + j6 < jCurrentAnimationTimeMillis) {
                int i12 = this.animationMode;
                if (i12 == -1) {
                    this.adapter.onMoved(this.nextItem, this.currentItem);
                } else if (i12 == 1) {
                    this.adapter.onMoved(this.previousItem, this.currentItem);
                }
                this.animationMode = 0;
                this.flipDistance = 0.0f;
                OnFlipperScrollListener onFlipperScrollListener = this.scrollListener;
                if (onFlipperScrollListener != null) {
                    onFlipperScrollListener.onScroll((int) 0.0f);
                }
                if (this.autoFlipDuration > 0) {
                    Handler handler = HANDLER;
                    handler.removeCallbacks(this);
                    handler.postDelayed(this, this.autoFlipDuration);
                }
            } else {
                int i13 = this.animationX1;
                float f = i13 + ((int) (((jCurrentAnimationTimeMillis - j6) / i11) * (this.animationX2 - i13)));
                this.flipDistance = f;
                OnFlipperScrollListener onFlipperScrollListener2 = this.scrollListener;
                if (onFlipperScrollListener2 != null) {
                    onFlipperScrollListener2.onScroll((int) f);
                }
                invalidate();
            }
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j6) {
        boolean zDrawChild;
        if (view == this.previousView) {
            canvas.save();
            canvas.translate(((-getWidth()) + this.mItemSpaceAdjust) - this.flipDistance, 0.0f);
            zDrawChild = super.drawChild(canvas, view, j6);
            canvas.restore();
        } else {
            zDrawChild = true;
        }
        if (view == this.nextView) {
            canvas.save();
            canvas.translate((getWidth() - this.mItemSpaceAdjust) - this.flipDistance, 0.0f);
            zDrawChild = super.drawChild(canvas, view, j6);
            canvas.restore();
        }
        if (view != this.currentView) {
            return zDrawChild;
        }
        canvas.save();
        canvas.translate(-this.flipDistance, 0.0f);
        boolean zDrawChild2 = super.drawChild(canvas, view, j6);
        canvas.restore();
        return zDrawChild2;
    }

    public boolean moveToNext(boolean z6) {
        Flipper flipper = this.bind;
        if (flipper != null) {
            flipper.moveToNext(z6);
        }
        if (this.nextItem == null) {
            restorePosition(z6);
            return false;
        }
        View view = this.previousView;
        if (view != null) {
            removeView(view);
        }
        this.previousItem = this.currentItem;
        this.previousView = this.currentView;
        this.currentItem = this.nextItem;
        this.currentView = this.nextView;
        T previousItem = Utils.isRtl() ? this.adapter.getPreviousItem(this.currentItem) : this.adapter.getNextItem(this.currentItem);
        this.nextItem = previousItem;
        if (previousItem != null) {
            this.nextView = this.adapter.getView(previousItem, view);
        } else {
            recycle(view);
            this.nextView = null;
        }
        View view2 = this.nextView;
        if (view2 != null) {
            addView(view2);
        }
        if (z6) {
            float width = getWidth();
            float f = this.flipDistance - width;
            this.flipDistance = f;
            this.animationMode = 1;
            this.animationX1 = (int) f;
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

    public boolean moveToPrevious(boolean z6) {
        Flipper flipper = this.bind;
        if (flipper != null) {
            flipper.moveToPrevious(z6);
        }
        if (this.previousItem == null) {
            restorePosition(z6);
            return false;
        }
        View view = this.nextView;
        if (view != null) {
            removeView(view);
        }
        this.nextItem = this.currentItem;
        this.nextView = this.currentView;
        this.currentItem = this.previousItem;
        this.currentView = this.previousView;
        T nextItem = Utils.isRtl() ? this.adapter.getNextItem(this.currentItem) : this.adapter.getPreviousItem(this.currentItem);
        this.previousItem = nextItem;
        if (nextItem != null) {
            this.previousView = this.adapter.getView(nextItem, view);
        } else {
            recycle(view);
            this.previousView = null;
        }
        View view2 = this.previousView;
        if (view2 != null) {
            addView(view2);
        }
        if (z6) {
            float width = getWidth();
            float f = this.flipDistance + width;
            this.flipDistance = f;
            this.animationMode = -1;
            this.animationX1 = (int) f;
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

    protected void onScrollX(MotionEvent motionEvent, MotionEvent motionEvent2, float f) {
        Flipper flipper = this.bind;
        if (flipper != null) {
            flipper.onScrollX(motionEvent, motionEvent2, f);
        }
        float f6 = this.flipDistance + f;
        this.flipDistance = f6;
        OnFlipperScrollListener onFlipperScrollListener = this.scrollListener;
        if (onFlipperScrollListener != null) {
            onFlipperScrollListener.onScroll((int) f6);
        }
        invalidate();
    }

    protected void onTap() {
        this.adapter.onTap(this.currentItem);
    }

    public void restorePosition(boolean z6) {
        Flipper flipper = this.bind;
        if (flipper != null) {
            flipper.restorePosition(z6);
        }
        if (this.flipDistance == 0.0f) {
            return;
        }
        if (!z6) {
            this.flipDistance = 0.0f;
            this.animationMode = 0;
            OnFlipperScrollListener onFlipperScrollListener = this.scrollListener;
            if (onFlipperScrollListener != null) {
                onFlipperScrollListener.onScroll((int) 0.0f);
            }
            invalidate();
            return;
        }
        int width = getWidth();
        this.animationMode = 2;
        this.animationX1 = (int) this.flipDistance;
        this.animationX2 = 0;
        this.animationStartMs = AnimationUtils.currentAnimationTimeMillis();
        this.animationDuration = ((int) ((Math.abs(this.flipDistance) / width) * 120.0f)) + 30;
        invalidate();
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.autoFlipDuration == 0) {
            return;
        }
        if (!this.isTouching && !this.isScrolling) {
            moveToNext(true);
            return;
        }
        Handler handler = HANDLER;
        handler.removeCallbacks(this);
        handler.postDelayed(this, this.autoFlipDuration);
    }

    public void setCurrentItem(T t5) {
        T t10 = this.currentItem;
        T t11 = this.previousItem;
        T t12 = this.nextItem;
        this.currentItem = t5;
        this.previousItem = Utils.isRtl() ? this.adapter.getNextItem(t5) : this.adapter.getPreviousItem(t5);
        this.nextItem = Utils.isRtl() ? this.adapter.getPreviousItem(t5) : this.adapter.getNextItem(t5);
        if (!isEquals(this.currentItem, t10)) {
            View view = this.currentView;
            if (view != null) {
                removeView(view);
            }
            T t13 = this.currentItem;
            if (t13 != null) {
                this.currentView = this.adapter.getView(t13, this.currentView);
            } else {
                recycle(this.currentView);
                this.currentView = null;
            }
            View view2 = this.currentView;
            if (view2 != null) {
                addView(view2);
            }
        }
        if (!isEquals(this.previousItem, t11)) {
            View view3 = this.previousView;
            if (view3 != null) {
                removeView(view3);
            }
            T t14 = this.previousItem;
            if (t14 != null) {
                this.previousView = this.adapter.getView(t14, this.previousView);
            } else {
                recycle(this.previousView);
                this.previousView = null;
            }
            View view4 = this.previousView;
            if (view4 != null) {
                addView(view4);
            }
        }
        if (!isEquals(this.nextItem, t12)) {
            View view5 = this.nextView;
            if (view5 != null) {
                removeView(view5);
            }
            T t15 = this.nextItem;
            if (t15 != null) {
                this.nextView = this.adapter.getView(t15, this.nextView);
            } else {
                recycle(this.nextView);
                this.nextView = null;
            }
            View view6 = this.nextView;
            if (view6 != null) {
                addView(view6);
            }
        }
        if (isEquals(t10, this.currentItem)) {
            return;
        }
        this.adapter.onMoved(t10, this.currentItem);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int visibility;
        int visibility2 = 0;
        if (motionEvent.getAction() == 0) {
            int iB = MotionEventCompat.b(motionEvent);
            this.startX = MotionEventCompat.f(motionEvent, iB);
            this.startY = MotionEventCompat.g(motionEvent, iB);
            this.activePointId = MotionEventCompat.e(motionEvent, 0);
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
                boolean zDispatchTouchEvent = super.dispatchTouchEvent(motionEvent);
                if (this.previousView != null) {
                }
                return zDispatchTouchEvent;
            } finally {
                if (this.previousView != null) {
                    this.previousView.setVisibility(visibility);
                }
                View view3 = this.nextView;
                if (view3 != null) {
                    view3.setVisibility(visibility2);
                }
            }
        }
        if (motionEvent.getAction() == 2) {
            int iA = MotionEventCompat.a(motionEvent, this.activePointId);
            if (iA != -1 && iA <= MotionEventCompat.d(motionEvent) - 1) {
                if (Math.abs(MotionEventCompat.f(motionEvent, iA) - this.startX) >= Math.abs(MotionEventCompat.g(motionEvent, iA) - this.startY)) {
                    if (getParent() != null && !this.isallowInterceptTouchEvent) {
                        getParent().requestDisallowInterceptTouchEvent(true);
                    }
                } else if (getParent() != null) {
                    getParent().requestDisallowInterceptTouchEvent(false);
                }
            } else {
                return super.dispatchTouchEvent(motionEvent);
            }
        } else if (motionEvent.getAction() == 3 || motionEvent.getAction() == 1) {
            this.startY = 0.0f;
            this.startX = 0.0f;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public void onFling(float f) {
        int width = getWidth();
        if (f >= -500.0f) {
            float f6 = this.flipDistance;
            if (f6 <= width / 2.0f) {
                if (f <= 500.0f && f6 >= (-width) / 2.0f) {
                    restorePosition(true);
                    return;
                } else {
                    moveToPrevious(true);
                    return;
                }
            }
        }
        moveToNext(true);
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
        if (action != 0) {
            if (action == 1 || action == 3) {
                requestDisallowInterceptTouchEvent(false);
                if (this.autoFlipDuration > 0) {
                    Handler handler = HANDLER;
                    handler.removeCallbacks(this);
                    handler.postDelayed(this, this.autoFlipDuration);
                }
                this.isScrolling = false;
                this.isTouching = false;
            }
        } else {
            HANDLER.removeCallbacks(this);
            this.isTouching = true;
        }
        return true;
    }

    public void update() {
        T previousItem;
        T nextItem;
        if (Utils.isRtl()) {
            previousItem = this.adapter.getNextItem(this.currentItem);
        } else {
            previousItem = this.adapter.getPreviousItem(this.currentItem);
        }
        this.previousItem = previousItem;
        if (Utils.isRtl()) {
            nextItem = this.adapter.getPreviousItem(this.currentItem);
        } else {
            nextItem = this.adapter.getNextItem(this.currentItem);
        }
        this.nextItem = nextItem;
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
        View view3 = this.previousView;
        if (view3 != null) {
            removeView(view3);
        }
        T t10 = this.previousItem;
        if (t10 != null) {
            this.previousView = this.adapter.getView(t10, this.previousView);
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
        T t11 = this.nextItem;
        if (t11 != null) {
            this.nextView = this.adapter.getView(t11, this.nextView);
        } else {
            recycle(this.nextView);
            this.nextView = null;
        }
        View view6 = this.nextView;
        if (view6 != null) {
            addView(view6);
        }
    }
}
