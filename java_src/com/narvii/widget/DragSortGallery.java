package com.narvii.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import com.narvii.lib.R;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public class DragSortGallery extends LinearLayout {
    int dX;
    int dY;
    int downX;
    int downY;
    boolean dragCanceled;
    View draging;
    WeakReference<View> drawTop;
    int end;
    final GestureDetector gd;
    private final GestureDetector.OnGestureListener gestureListener;
    int start;

    public DragSortGallery(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.start = 0;
        this.end = Integer.MAX_VALUE;
        this.gestureListener = new GestureDetector.SimpleOnGestureListener() { // from class: com.narvii.widget.DragSortGallery.1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(MotionEvent motionEvent) {
                View view = DragSortGallery.this.draging;
                if (view != null) {
                    view.performClick();
                    return true;
                }
                return super.onSingleTapUp(motionEvent);
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public void onLongPress(MotionEvent motionEvent) {
                DragSortGallery dragSortGallery = DragSortGallery.this;
                View view = dragSortGallery.draging;
                if (view != null) {
                    if (!dragSortGallery.dragCanceled) {
                        MotionEvent motionEventObtain = MotionEvent.obtain(0L, 0L, 3, 0.0f, 0.0f, 0);
                        DragSortGallery.this.onTouchEvent(motionEventObtain);
                        motionEventObtain.recycle();
                        DragSortGallery.this.dragCanceled = true;
                    }
                    view.performLongClick();
                }
                super.onLongPress(motionEvent);
            }
        };
        this.gd = new GestureDetector(context, this.gestureListener);
        setChildrenDrawingOrderEnabled(true);
    }

    public void setDragRange(int i, int i2) {
        this.start = i;
        this.end = i2;
    }

    private ScrollView getParentScrollView() {
        View view = this;
        for (int i = 0; i < 8; i++) {
            if (view.getParent() instanceof View) {
                view = (View) view.getParent();
                if (view instanceof ScrollView) {
                    return (ScrollView) view;
                }
            }
        }
        return null;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            ScrollView parentScrollView = getParentScrollView();
            if (parentScrollView != null) {
                parentScrollView.requestDisallowInterceptTouchEvent(true);
            }
            this.draging = null;
            int x = (int) motionEvent.getX();
            int iMax = Math.max(0, this.start);
            int iMin = Math.min(getChildCount(), this.end);
            while (true) {
                if (iMax >= iMin) {
                    break;
                }
                View childAt = getChildAt(iMax);
                if (childAt.getLeft() < x && childAt.getRight() > x) {
                    this.draging = childAt;
                    this.drawTop = new WeakReference<>(childAt);
                    break;
                }
                iMax++;
            }
            invalidate();
            View view = this.draging;
            if (view != null) {
                view.setAlpha(0.5f);
            }
            this.downX = (int) motionEvent.getX();
            this.downY = (int) motionEvent.getY();
            this.dX = 0;
            this.dY = 0;
            return this.draging != null;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int width;
        this.gd.onTouchEvent(motionEvent);
        if (motionEvent.getAction() == 0) {
            this.dragCanceled = false;
            return true;
        }
        if (this.dragCanceled) {
            return true;
        }
        if (motionEvent.getAction() == 2) {
            Rect rect = new Rect();
            int x = (int) motionEvent.getX();
            rect.right = x;
            rect.left = x;
            int y = (int) motionEvent.getY();
            rect.bottom = y;
            rect.top = y;
            requestRectangleOnScreen(rect);
            this.dX = ((int) motionEvent.getX()) - this.downX;
            this.dY = ((int) motionEvent.getY()) - this.downY;
            int height = getHeight() / 4;
            int i = this.dY;
            int i2 = -height;
            if (i < i2) {
                this.dY = i2;
            } else if (i > height) {
                this.dY = height;
            }
            invalidate();
            return true;
        }
        if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            if (this.draging != null && motionEvent.getAction() == 3) {
                this.draging.setTranslationX(this.dX);
                this.draging.setTranslationY(this.dY);
                this.draging.animate().translationX(0.0f).translationY(0.0f).alpha(1.0f).setDuration(200L);
            }
            if (this.draging != null && motionEvent.getAction() == 1) {
                int childCount = getChildCount();
                int i3 = 0;
                int i4 = -1;
                int i5 = -1;
                for (int i6 = 0; i6 < childCount; i6++) {
                    View childAt = getChildAt(i6);
                    int dx = getDx(childAt, Long.MAX_VALUE);
                    if (childAt == this.draging) {
                        width = 0;
                    } else {
                        if (dx > 0 && i5 == -1) {
                            i5 = i6;
                        } else if (dx < 0) {
                            i4 = i6;
                        }
                        if (dx > 0) {
                            width = childAt.getWidth();
                        } else {
                            width = dx < 0 ? -childAt.getWidth() : dx;
                        }
                    }
                    i3 += width;
                }
                if (i3 != 0) {
                    if (i4 >= 0) {
                        removeView(this.draging);
                        addView(this.draging, i4);
                    } else if (i5 >= 0) {
                        removeView(this.draging);
                        addView(this.draging, i5);
                    }
                }
                this.draging.setTranslationX(this.dX + i3);
                this.draging.setTranslationY(this.dY);
                this.draging.animate().translationX(0.0f).translationY(0.0f).alpha(1.0f).setDuration(200L);
            }
            this.draging = null;
            int childCount2 = getChildCount();
            for (int i7 = 0; i7 < childCount2; i7++) {
                clearDx(getChildAt(i7));
            }
            invalidate();
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i, int i2) {
        View view;
        WeakReference<View> weakReference = this.drawTop;
        if (weakReference != null && (view = weakReference.get()) != null) {
            int i3 = 0;
            while (i3 < i) {
                if (getChildAt(i3) == view) {
                    return i2 < i3 ? i2 : i2 == i + (-1) ? i3 : i2 + 1;
                }
                i3++;
            }
        }
        return super.getChildDrawingOrder(i, i2);
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        if (this.draging != null) {
            canvas.save();
            View view2 = this.draging;
            if (view == view2) {
                canvas.translate(this.dX, this.dY);
            } else {
                int width = view2.getWidth();
                float f = width / 120.0f;
                boolean z = false;
                int iMin = Math.min(getChildCount(), this.end);
                for (int iMax = Math.max(0, this.start); iMax < iMin; iMax++) {
                    View childAt = getChildAt(iMax);
                    if (childAt == view) {
                        int left = ((childAt.getLeft() + childAt.getRight()) / 2) + getDx(childAt, Long.MAX_VALUE);
                        if (!z && left > this.downX + this.dX) {
                            setDx(childAt, width, f, j);
                        } else if (z && left < this.downX + this.dX) {
                            setDx(childAt, -width, f, j);
                        } else {
                            setDx(childAt, 0, f, j);
                        }
                        canvas.translate(getDx(childAt, j), 0.0f);
                        super.drawChild(canvas, view, j);
                        canvas.restore();
                        invalidate();
                        return true;
                    }
                    if (childAt == this.draging) {
                        z = true;
                    }
                }
            }
            super.drawChild(canvas, view, j);
            canvas.restore();
            invalidate();
            return true;
        }
        return super.drawChild(canvas, view, j);
    }

    private static class Stub {
        long time;
        float v;
        int x1;
        int x2;

        private Stub() {
        }
    }

    private int getDx(View view, long j) {
        int i;
        int i2;
        Object tag = view.getTag(R.id.text);
        if (!(tag instanceof Stub)) {
            return 0;
        }
        Stub stub = (Stub) tag;
        if (j == Long.MAX_VALUE || (i = stub.x1) == (i2 = stub.x2)) {
            return stub.x2;
        }
        int i3 = ((int) (stub.v * (j - stub.time))) + i;
        if (i2 > i) {
            return Math.min(i3, i2);
        }
        return Math.max(i3, i2);
    }

    private void setDx(View view, int i, float f, long j) {
        Stub stub;
        Object tag = view.getTag(R.id.text);
        if (tag instanceof Stub) {
            stub = (Stub) tag;
        } else {
            stub = new Stub();
            view.setTag(R.id.text, stub);
        }
        if (i != stub.x2) {
            stub.x1 = getDx(view, j);
            stub.x2 = i;
            if (stub.x1 > stub.x2) {
                stub.v = -Math.abs(f);
            } else {
                stub.v = Math.abs(f);
            }
            stub.time = j;
        }
    }

    private void clearDx(View view) {
        view.setTag(R.id.text, null);
    }
}
