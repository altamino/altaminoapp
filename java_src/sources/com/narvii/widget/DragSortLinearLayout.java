package com.narvii.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import com.narvii.lib.R;
import com.narvii.util.Utils;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes5.dex */
public class DragSortLinearLayout extends LinearLayout {
    int childFocusViewId;
    int dX;
    int dY;
    int downX;
    int downY;
    View draging;
    WeakReference<View> drawTop;
    int rightPadding;

    private static class Stub {
        long time;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        float f3068v;
        int y1;

        /* JADX INFO: renamed from: y2, reason: collision with root package name */
        int f3069y2;

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
            int height = view2.getHeight();
            float f = height / 160.0f;
            int childCount = getChildCount();
            boolean z6 = false;
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = getChildAt(i10);
                if (childAt == view) {
                    int top = ((childAt.getTop() + childAt.getBottom()) / 2) + getDy(childAt, Long.MAX_VALUE);
                    if (!z6 && top > this.downY + this.dY) {
                        setDy(childAt, height, f, j6);
                    } else if (!z6 || top >= this.downY + this.dY) {
                        setDy(childAt, 0, f, j6);
                    } else {
                        setDy(childAt, -height, f, j6);
                    }
                    canvas.translate(0.0f, getDy(childAt, j6));
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

    public void setChildFocusViewId(int i10) {
        this.childFocusViewId = i10;
    }

    public void setRightPadding(int i10) {
        this.rightPadding = i10;
    }

    private void changeDragingPosition(int i10) {
        View viewFindViewById;
        View view = this.draging;
        if (view == null) {
            return;
        }
        int i11 = this.childFocusViewId;
        boolean z6 = false;
        if (i11 != 0) {
            viewFindViewById = view.findViewById(i11);
            if (viewFindViewById != null && viewFindViewById.isFocused()) {
                z6 = true;
            }
        } else {
            viewFindViewById = null;
        }
        removeView(this.draging);
        addView(this.draging, i10);
        if (viewFindViewById == null || !z6) {
            return;
        }
        viewFindViewById.requestFocus();
    }

    private void clearDy(View view) {
        view.setTag(R.id.text, null);
    }

    private int getDy(View view, long j6) {
        int i10;
        int i11;
        Object tag = view.getTag(R.id.text);
        if (!(tag instanceof Stub)) {
            return 0;
        }
        Stub stub = (Stub) tag;
        if (j6 == Long.MAX_VALUE || (i10 = stub.y1) == (i11 = stub.f3069y2)) {
            return stub.f3069y2;
        }
        int i12 = ((int) (stub.f3068v * (j6 - stub.time))) + i10;
        return i11 > i10 ? Math.min(i12, i11) : Math.max(i12, i11);
    }

    private void setDy(View view, int i10, float f, long j6) {
        Stub stub;
        int i11 = R.id.text;
        Object tag = view.getTag(i11);
        if (tag instanceof Stub) {
            stub = (Stub) tag;
        } else {
            stub = new Stub();
            view.setTag(i11, stub);
        }
        if (i10 != stub.f3069y2) {
            int dy = getDy(view, j6);
            stub.y1 = dy;
            stub.f3069y2 = i10;
            if (dy > i10) {
                stub.f3068v = -Math.abs(f);
            } else {
                stub.f3068v = Math.abs(f);
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

    public DragSortLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setChildrenDrawingOrderEnabled(true);
        this.rightPadding = context.getResources().getDimensionPixelSize(R.dimen.drag_sort_width);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z6;
        if (!Utils.isRtl() ? motionEvent.getX() > getWidth() - this.rightPadding : motionEvent.getX() < this.rightPadding) {
            z6 = true;
        } else {
            z6 = false;
        }
        if (motionEvent.getAction() == 0 && z6) {
            ScrollView parentScrollView = getParentScrollView();
            if (parentScrollView != null) {
                parentScrollView.requestDisallowInterceptTouchEvent(true);
            }
            this.draging = null;
            int y6 = (int) motionEvent.getY();
            int childCount = getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = getChildAt(i10);
                if (childAt.getTop() < y6 && childAt.getBottom() > y6) {
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
            return true;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            return true;
        }
        if (motionEvent.getAction() == 2) {
            Rect rect = new Rect();
            int x6 = (int) motionEvent.getX();
            rect.right = x6;
            rect.left = x6;
            rect.top = ((int) motionEvent.getY()) - this.rightPadding;
            rect.bottom = ((int) motionEvent.getY()) + this.rightPadding;
            requestRectangleOnScreen(rect);
            this.dX = ((int) motionEvent.getX()) - this.downX;
            this.dY = ((int) motionEvent.getY()) - this.downY;
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
            int i10 = -1;
            int i11 = -1;
            int i12 = 0;
            for (int i13 = 0; i13 < childCount; i13++) {
                View childAt = getChildAt(i13);
                int dy = getDy(childAt, Long.MAX_VALUE);
                if (childAt == this.draging) {
                    dy = 0;
                } else {
                    if (dy > 0 && i11 == -1) {
                        i11 = i13;
                    } else if (dy < 0) {
                        i10 = i13;
                    }
                    if (dy > 0) {
                        dy = childAt.getHeight();
                    } else if (dy < 0) {
                        dy = -childAt.getHeight();
                    }
                }
                i12 += dy;
            }
            if (i12 != 0) {
                if (i10 >= 0) {
                    changeDragingPosition(i10);
                } else if (i11 >= 0) {
                    changeDragingPosition(i11);
                }
            }
            this.draging.setTranslationX(this.dX);
            this.draging.setTranslationY(this.dY + i12);
            this.draging.animate().translationX(0.0f).translationY(0.0f).alpha(1.0f).setDuration(200L);
        }
        this.draging = null;
        int childCount2 = getChildCount();
        for (int i14 = 0; i14 < childCount2; i14++) {
            clearDy(getChildAt(i14));
        }
        invalidate();
        return true;
    }
}
