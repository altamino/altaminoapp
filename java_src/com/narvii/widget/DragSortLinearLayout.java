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

/* loaded from: classes3.dex */
public class DragSortLinearLayout extends LinearLayout {
    int childFocusViewId;
    int dX;
    int dY;
    int downX;
    int downY;
    View draging;
    WeakReference<View> drawTop;
    int rightPadding;

    public DragSortLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setChildrenDrawingOrderEnabled(true);
        this.rightPadding = context.getResources().getDimensionPixelSize(R.dimen.drag_sort_width);
    }

    public void setChildFocusViewId(int i) {
        this.childFocusViewId = i;
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

    public void setRightPadding(int i) {
        this.rightPadding = i;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z = !Utils.isRtl() ? motionEvent.getX() <= ((float) (getWidth() - this.rightPadding)) : motionEvent.getX() >= ((float) this.rightPadding);
        if (motionEvent.getAction() == 0 && z) {
            ScrollView parentScrollView = getParentScrollView();
            if (parentScrollView != null) {
                parentScrollView.requestDisallowInterceptTouchEvent(true);
            }
            this.draging = null;
            int y = (int) motionEvent.getY();
            int childCount = getChildCount();
            int i = 0;
            while (true) {
                if (i >= childCount) {
                    break;
                }
                View childAt = getChildAt(i);
                if (childAt.getTop() < y && childAt.getBottom() > y) {
                    this.draging = childAt;
                    this.drawTop = new WeakReference<>(childAt);
                    break;
                }
                i++;
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
        int height;
        if (motionEvent.getAction() == 0) {
            return true;
        }
        if (motionEvent.getAction() == 2) {
            Rect rect = new Rect();
            int x = (int) motionEvent.getX();
            rect.right = x;
            rect.left = x;
            rect.top = ((int) motionEvent.getY()) - this.rightPadding;
            rect.bottom = ((int) motionEvent.getY()) + this.rightPadding;
            requestRectangleOnScreen(rect);
            this.dX = ((int) motionEvent.getX()) - this.downX;
            this.dY = ((int) motionEvent.getY()) - this.downY;
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
                int i = 0;
                int i2 = -1;
                int i3 = -1;
                for (int i4 = 0; i4 < childCount; i4++) {
                    View childAt = getChildAt(i4);
                    int dy = getDy(childAt, Long.MAX_VALUE);
                    if (childAt == this.draging) {
                        height = 0;
                    } else {
                        if (dy > 0 && i3 == -1) {
                            i3 = i4;
                        } else if (dy < 0) {
                            i2 = i4;
                        }
                        if (dy > 0) {
                            height = childAt.getHeight();
                        } else {
                            height = dy < 0 ? -childAt.getHeight() : dy;
                        }
                    }
                    i += height;
                }
                if (i != 0) {
                    if (i2 >= 0) {
                        changeDragingPosition(i2);
                    } else if (i3 >= 0) {
                        changeDragingPosition(i3);
                    }
                }
                this.draging.setTranslationX(this.dX);
                this.draging.setTranslationY(this.dY + i);
                this.draging.animate().translationX(0.0f).translationY(0.0f).alpha(1.0f).setDuration(200L);
            }
            this.draging = null;
            int childCount2 = getChildCount();
            for (int i5 = 0; i5 < childCount2; i5++) {
                clearDy(getChildAt(i5));
            }
            invalidate();
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    private void changeDragingPosition(int i) {
        View view = this.draging;
        if (view == null) {
            return;
        }
        View viewFindViewById = null;
        int i2 = this.childFocusViewId;
        boolean z = false;
        if (i2 != 0 && (viewFindViewById = view.findViewById(i2)) != null && viewFindViewById.isFocused()) {
            z = true;
        }
        removeView(this.draging);
        addView(this.draging, i);
        if (viewFindViewById == null || !z) {
            return;
        }
        viewFindViewById.requestFocus();
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
                int height = view2.getHeight();
                float f = height / 160.0f;
                int childCount = getChildCount();
                boolean z = false;
                for (int i = 0; i < childCount; i++) {
                    View childAt = getChildAt(i);
                    if (childAt == view) {
                        int top = ((childAt.getTop() + childAt.getBottom()) / 2) + getDy(childAt, Long.MAX_VALUE);
                        if (!z && top > this.downY + this.dY) {
                            setDy(childAt, height, f, j);
                        } else if (z && top < this.downY + this.dY) {
                            setDy(childAt, -height, f, j);
                        } else {
                            setDy(childAt, 0, f, j);
                        }
                        canvas.translate(0.0f, getDy(childAt, j));
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
        int y1;
        int y2;

        private Stub() {
        }
    }

    private int getDy(View view, long j) {
        int i;
        int i2;
        Object tag = view.getTag(R.id.text);
        if (!(tag instanceof Stub)) {
            return 0;
        }
        Stub stub = (Stub) tag;
        if (j == Long.MAX_VALUE || (i = stub.y1) == (i2 = stub.y2)) {
            return stub.y2;
        }
        int i3 = ((int) (stub.v * (j - stub.time))) + i;
        if (i2 > i) {
            return Math.min(i3, i2);
        }
        return Math.max(i3, i2);
    }

    private void setDy(View view, int i, float f, long j) {
        Stub stub;
        Object tag = view.getTag(R.id.text);
        if (tag instanceof Stub) {
            stub = (Stub) tag;
        } else {
            stub = new Stub();
            view.setTag(R.id.text, stub);
        }
        if (i != stub.y2) {
            stub.y1 = getDy(view, j);
            stub.y2 = i;
            if (stub.y1 > stub.y2) {
                stub.v = -Math.abs(f);
            } else {
                stub.v = Math.abs(f);
            }
            stub.time = j;
        }
    }

    private void clearDy(View view) {
        view.setTag(R.id.text, null);
    }
}
