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

/* JADX INFO: loaded from: classes8.dex */
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

    private static class Stub {
        long time;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        float f3066v;
        int x1;

        /* JADX INFO: renamed from: x2, reason: collision with root package name */
        int f3067x2;

        private Stub() {
        }
    }

    private ScrollView getParentScrollView() {
        View view = this;
        for (int i10 = 0; i10 < 8; i10++) {
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
    protected boolean drawChild(Canvas canvas, View view, long j6) {
        if (this.draging == null) {
            return super.drawChild(canvas, view, j6);
        }
        canvas.save();
        View view2 = this.draging;
        if (view == view2) {
            canvas.translate(this.dX, this.dY);
        } else {
            int width = view2.getWidth();
            float f = width / 120.0f;
            boolean z6 = false;
            int iMin = Math.min(getChildCount(), this.end);
            for (int iMax = Math.max(0, this.start); iMax < iMin; iMax++) {
                View childAt = getChildAt(iMax);
                if (childAt == view) {
                    int left = ((childAt.getLeft() + childAt.getRight()) / 2) + getDx(childAt, Long.MAX_VALUE);
                    if (!z6 && left > this.downX + this.dX) {
                        setDx(childAt, width, f, j6);
                    } else if (!z6 || left >= this.downX + this.dX) {
                        setDx(childAt, 0, f, j6);
                    } else {
                        setDx(childAt, -width, f, j6);
                    }
                    canvas.translate(getDx(childAt, j6), 0.0f);
                    super.drawChild(canvas, view, j6);
                    canvas.restore();
                    invalidate();
                    return true;
                }
                if (childAt == this.draging) {
                    z6 = true;
                }
            }
        }
        super.drawChild(canvas, view, j6);
        canvas.restore();
        invalidate();
        return true;
    }

    public void setDragRange(int i10, int i11) {
        this.start = i10;
        this.end = i11;
    }

    private void clearDx(View view) {
        view.setTag(R.id.text, null);
    }

    private int getDx(View view, long j6) {
        int i10;
        int i11;
        Object tag = view.getTag(R.id.text);
        if (!(tag instanceof Stub)) {
            return 0;
        }
        Stub stub = (Stub) tag;
        if (j6 == Long.MAX_VALUE || (i10 = stub.x1) == (i11 = stub.f3067x2)) {
            return stub.f3067x2;
        }
        int i12 = ((int) (stub.f3066v * (j6 - stub.time))) + i10;
        return i11 > i10 ? Math.min(i12, i11) : Math.max(i12, i11);
    }

    private void setDx(View view, int i10, float f, long j6) {
        Stub stub;
        int i11 = R.id.text;
        Object tag = view.getTag(i11);
        if (tag instanceof Stub) {
            stub = (Stub) tag;
        } else {
            stub = new Stub();
            view.setTag(i11, stub);
        }
        if (i10 != stub.f3067x2) {
            int dx = getDx(view, j6);
            stub.x1 = dx;
            stub.f3067x2 = i10;
            if (dx > i10) {
                stub.f3066v = -Math.abs(f);
            } else {
                stub.f3066v = Math.abs(f);
            }
            stub.time = j6;
        }
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i10, int i11) {
        View view;
        WeakReference<View> weakReference = this.drawTop;
        if (weakReference != null && (view = weakReference.get()) != null) {
            for (int i12 = 0; i12 < i10; i12++) {
                if (getChildAt(i12) == view) {
                    if (i11 < i12) {
                        return i11;
                    }
                    return i11 == i10 + (-1) ? i12 : i11 + 1;
                }
            }
        }
        return super.getChildDrawingOrder(i10, i11);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
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
            int x6 = (int) motionEvent.getX();
            rect.right = x6;
            rect.left = x6;
            int y6 = (int) motionEvent.getY();
            rect.bottom = y6;
            rect.top = y6;
            requestRectangleOnScreen(rect);
            this.dX = ((int) motionEvent.getX()) - this.downX;
            this.dY = ((int) motionEvent.getY()) - this.downY;
            int height = getHeight() / 4;
            int i10 = this.dY;
            int i11 = -height;
            if (i10 < i11) {
                this.dY = i11;
            } else if (i10 > height) {
                this.dY = height;
            }
            invalidate();
            return true;
        }
        if (motionEvent.getAction() != 1 && motionEvent.getAction() != 3) {
            return super.onTouchEvent(motionEvent);
        }
        if (this.draging != null && motionEvent.getAction() == 3) {
            this.draging.setTranslationX(this.dX);
            this.draging.setTranslationY(this.dY);
            this.draging.animate().translationX(0.0f).translationY(0.0f).alpha(1.0f).setDuration(200L);
        }
        if (this.draging != null && motionEvent.getAction() == 1) {
            int childCount = getChildCount();
            int i12 = -1;
            int i13 = -1;
            int i14 = 0;
            for (int i15 = 0; i15 < childCount; i15++) {
                View childAt = getChildAt(i15);
                int dx = getDx(childAt, Long.MAX_VALUE);
                if (childAt == this.draging) {
                    dx = 0;
                } else {
                    if (dx > 0 && i13 == -1) {
                        i13 = i15;
                    } else if (dx < 0) {
                        i12 = i15;
                    }
                    if (dx > 0) {
                        dx = childAt.getWidth();
                    } else if (dx < 0) {
                        dx = -childAt.getWidth();
                    }
                }
                i14 += dx;
            }
            if (i14 != 0) {
                if (i12 >= 0) {
                    removeView(this.draging);
                    addView(this.draging, i12);
                } else if (i13 >= 0) {
                    removeView(this.draging);
                    addView(this.draging, i13);
                }
            }
            this.draging.setTranslationX(this.dX + i14);
            this.draging.setTranslationY(this.dY);
            this.draging.animate().translationX(0.0f).translationY(0.0f).alpha(1.0f).setDuration(200L);
        }
        this.draging = null;
        int childCount2 = getChildCount();
        for (int i16 = 0; i16 < childCount2; i16++) {
            clearDx(getChildAt(i16));
        }
        invalidate();
        return true;
    }

    public DragSortGallery(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.start = 0;
        this.end = Integer.MAX_VALUE;
        GestureDetector.SimpleOnGestureListener simpleOnGestureListener = new GestureDetector.SimpleOnGestureListener() { // from class: com.narvii.widget.DragSortGallery.1
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

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(MotionEvent motionEvent) {
                View view = DragSortGallery.this.draging;
                if (view == null) {
                    return super.onSingleTapUp(motionEvent);
                }
                view.performClick();
                return true;
            }
        };
        this.gestureListener = simpleOnGestureListener;
        this.gd = new GestureDetector(context, simpleOnGestureListener);
        setChildrenDrawingOrderEnabled(true);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            ScrollView parentScrollView = getParentScrollView();
            if (parentScrollView != null) {
                parentScrollView.requestDisallowInterceptTouchEvent(true);
            }
            this.draging = null;
            int x6 = (int) motionEvent.getX();
            int iMin = Math.min(getChildCount(), this.end);
            for (int iMax = Math.max(0, this.start); iMax < iMin; iMax++) {
                View childAt = getChildAt(iMax);
                if (childAt.getLeft() < x6 && childAt.getRight() > x6) {
                    this.draging = childAt;
                    this.drawTop = new WeakReference<>(childAt);
                    break;
                }
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
            if (this.draging != null) {
                return true;
            }
            return false;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }
}
