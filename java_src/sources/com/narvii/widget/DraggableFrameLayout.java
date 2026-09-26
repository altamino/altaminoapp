package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.customview.widget.ViewDragHelper;
import com.narvii.amino.master.R;
import com.narvii.drawer.MyDrawerLayout;
import com.narvii.util.Utils;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.collections.m0;
import kotlin.collections.w;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class DraggableFrameLayout extends FrameLayout {
    private int endMargin;
    private boolean hasMovedOverTouchSlop;
    private int minViewVisibleWidth;

    @Nullable
    private View.OnClickListener onTap;

    @NotNull
    private final ViewDragHelper.Callback viewDragCallback;
    private ViewDragHelper viewDragHelper;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DraggableFrameLayout(@NotNull Context context) {
        super(context);
        t.j(context, "context");
        ViewDragHelper.Callback callback = new ViewDragHelper.Callback() { // from class: com.narvii.widget.DraggableFrameLayout.1
            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public boolean tryCaptureView(@NotNull View child, int i10) {
                t.j(child, "child");
                return true;
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public int clampViewPositionHorizontal(@NotNull View child, int i10, int i11) {
                t.j(child, "child");
                return Utils.isRtl() ? Math.min(Math.max((-DraggableFrameLayout.this.getWidth()) + DraggableFrameLayout.this.getMinViewVisibleWidth() + DraggableFrameLayout.this.getEndMargin(), i10), DraggableFrameLayout.this.getEndMargin()) : Math.min(Math.max(0, i10), DraggableFrameLayout.this.getWidth() - DraggableFrameLayout.this.getMinViewVisibleWidth());
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public void onViewReleased(@NotNull View releasedChild, float f, float f6) {
                t.j(releasedChild, "releasedChild");
                int minViewVisibleWidth = Utils.isRtl() ? (-DraggableFrameLayout.this.getWidth()) + DraggableFrameLayout.this.getMinViewVisibleWidth() + DraggableFrameLayout.this.getEndMargin() : 0;
                int endMargin = Utils.isRtl() ? DraggableFrameLayout.this.getEndMargin() : DraggableFrameLayout.this.getWidth() - DraggableFrameLayout.this.getMinViewVisibleWidth();
                ViewDragHelper viewDragHelper = null;
                if (f < 0.0f) {
                    ViewDragHelper viewDragHelper2 = DraggableFrameLayout.this.viewDragHelper;
                    if (viewDragHelper2 == null) {
                        t.B("viewDragHelper");
                    } else {
                        viewDragHelper = viewDragHelper2;
                    }
                    viewDragHelper.P(minViewVisibleWidth, 0);
                } else if (f > 0.0f) {
                    ViewDragHelper viewDragHelper3 = DraggableFrameLayout.this.viewDragHelper;
                    if (viewDragHelper3 == null) {
                        t.B("viewDragHelper");
                    } else {
                        viewDragHelper = viewDragHelper3;
                    }
                    viewDragHelper.P(endMargin, 0);
                } else if (Math.abs(releasedChild.getLeft() - minViewVisibleWidth) > (DraggableFrameLayout.this.getWidth() - DraggableFrameLayout.this.getMinViewVisibleWidth()) / 2) {
                    ViewDragHelper viewDragHelper4 = DraggableFrameLayout.this.viewDragHelper;
                    if (viewDragHelper4 == null) {
                        t.B("viewDragHelper");
                    } else {
                        viewDragHelper = viewDragHelper4;
                    }
                    viewDragHelper.P(endMargin, 0);
                } else {
                    ViewDragHelper viewDragHelper5 = DraggableFrameLayout.this.viewDragHelper;
                    if (viewDragHelper5 == null) {
                        t.B("viewDragHelper");
                    } else {
                        viewDragHelper = viewDragHelper5;
                    }
                    viewDragHelper.P(minViewVisibleWidth, 0);
                }
                DraggableFrameLayout.this.invalidate();
            }
        };
        this.viewDragCallback = callback;
        ViewDragHelper viewDragHelperP = ViewDragHelper.p(this, callback);
        t.i(viewDragHelperP, "create(...)");
        this.viewDragHelper = viewDragHelperP;
    }

    public final int getEndMargin() {
        return this.endMargin;
    }

    public final int getMinViewVisibleWidth() {
        return this.minViewVisibleWidth;
    }

    @Nullable
    public final View.OnClickListener getOnTap() {
        return this.onTap;
    }

    public final void setEndMargin(int i10) {
        this.endMargin = i10;
    }

    public final void setMinViewVisibleWidth(int i10) {
        this.minViewVisibleWidth = i10;
    }

    public final void setOnTap(@Nullable View.OnClickListener onClickListener) {
        this.onTap = onClickListener;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(@NotNull MotionEvent ev) {
        t.j(ev, "ev");
        ViewDragHelper viewDragHelper = this.viewDragHelper;
        if (viewDragHelper == null) {
            t.B("viewDragHelper");
            viewDragHelper = null;
        }
        return viewDragHelper.Q(ev);
    }

    @Override // android.view.View
    public boolean onTouchEvent(@NotNull MotionEvent event) {
        t.j(event, "event");
        ViewDragHelper viewDragHelper = this.viewDragHelper;
        ViewDragHelper viewDragHelper2 = null;
        if (viewDragHelper == null) {
            t.B("viewDragHelper");
            viewDragHelper = null;
        }
        viewDragHelper.G(event);
        int action = event.getAction();
        if (action == 0) {
            requestDisallowInterceptTouchEventFromDrawer(true);
            this.hasMovedOverTouchSlop = false;
        } else if (action == 1) {
            if (!this.hasMovedOverTouchSlop) {
                View.OnClickListener onClickListener = this.onTap;
                if (onClickListener != null) {
                    onClickListener.onClick(this);
                }
                this.hasMovedOverTouchSlop = false;
            }
            requestDisallowInterceptTouchEventFromDrawer(false);
        } else if (action == 2) {
            ViewDragHelper viewDragHelper3 = this.viewDragHelper;
            if (viewDragHelper3 == null) {
                t.B("viewDragHelper");
            } else {
                viewDragHelper2 = viewDragHelper3;
            }
            if (viewDragHelper2.e(1)) {
                this.hasMovedOverTouchSlop = true;
            }
        } else if (action == 3) {
            this.hasMovedOverTouchSlop = false;
            requestDisallowInterceptTouchEventFromDrawer(false);
        }
        return true;
    }

    private final void requestDisallowInterceptTouchEventFromDrawer(boolean z6) {
        MyDrawerLayout myDrawerLayout;
        View rootView = getRootView();
        if (rootView != null) {
            myDrawerLayout = (MyDrawerLayout) rootView.findViewById(R.id.drawer_layout);
        } else {
            myDrawerLayout = null;
        }
        if (myDrawerLayout == null) {
            return;
        }
        myDrawerLayout.requestDisallowInterceptTouchEvent(z6);
    }

    private final void smoothSlideViewTo(int i10) {
        ViewDragHelper viewDragHelper;
        Object next;
        j8.i iVarV = j8.o.v(0, getChildCount());
        ArrayList arrayList = new ArrayList(w.x(iVarV, 10));
        Iterator<Integer> it = iVarV.iterator();
        while (it.hasNext()) {
            arrayList.add(getChildAt(((m0) it).nextInt()));
        }
        Iterator it2 = arrayList.iterator();
        do {
            viewDragHelper = null;
            if (it2.hasNext()) {
                next = it2.next();
            } else {
                next = null;
                break;
            }
        } while (((View) next).getVisibility() != 0);
        View view = (View) next;
        if (view == null) {
            return;
        }
        ViewDragHelper viewDragHelper2 = this.viewDragHelper;
        if (viewDragHelper2 == null) {
            t.B("viewDragHelper");
        } else {
            viewDragHelper = viewDragHelper2;
        }
        viewDragHelper.R(view, i10, 0);
        invalidate();
    }

    @Override // android.view.View
    public void computeScroll() {
        super.computeScroll();
        ViewDragHelper viewDragHelper = this.viewDragHelper;
        if (viewDragHelper == null) {
            t.B("viewDragHelper");
            viewDragHelper = null;
        }
        if (viewDragHelper.n(true)) {
            invalidate();
        }
    }

    public final void hide() {
        int width;
        if (Utils.isRtl()) {
            width = (-getWidth()) + this.minViewVisibleWidth + this.endMargin;
        } else {
            width = getWidth() - this.minViewVisibleWidth;
        }
        smoothSlideViewTo(width);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DraggableFrameLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        t.j(context, "context");
        ViewDragHelper.Callback callback = new ViewDragHelper.Callback() { // from class: com.narvii.widget.DraggableFrameLayout.1
            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public boolean tryCaptureView(@NotNull View child, int i10) {
                t.j(child, "child");
                return true;
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public int clampViewPositionHorizontal(@NotNull View child, int i10, int i11) {
                t.j(child, "child");
                return Utils.isRtl() ? Math.min(Math.max((-DraggableFrameLayout.this.getWidth()) + DraggableFrameLayout.this.getMinViewVisibleWidth() + DraggableFrameLayout.this.getEndMargin(), i10), DraggableFrameLayout.this.getEndMargin()) : Math.min(Math.max(0, i10), DraggableFrameLayout.this.getWidth() - DraggableFrameLayout.this.getMinViewVisibleWidth());
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public void onViewReleased(@NotNull View releasedChild, float f, float f6) {
                t.j(releasedChild, "releasedChild");
                int minViewVisibleWidth = Utils.isRtl() ? (-DraggableFrameLayout.this.getWidth()) + DraggableFrameLayout.this.getMinViewVisibleWidth() + DraggableFrameLayout.this.getEndMargin() : 0;
                int endMargin = Utils.isRtl() ? DraggableFrameLayout.this.getEndMargin() : DraggableFrameLayout.this.getWidth() - DraggableFrameLayout.this.getMinViewVisibleWidth();
                ViewDragHelper viewDragHelper = null;
                if (f < 0.0f) {
                    ViewDragHelper viewDragHelper2 = DraggableFrameLayout.this.viewDragHelper;
                    if (viewDragHelper2 == null) {
                        t.B("viewDragHelper");
                    } else {
                        viewDragHelper = viewDragHelper2;
                    }
                    viewDragHelper.P(minViewVisibleWidth, 0);
                } else if (f > 0.0f) {
                    ViewDragHelper viewDragHelper3 = DraggableFrameLayout.this.viewDragHelper;
                    if (viewDragHelper3 == null) {
                        t.B("viewDragHelper");
                    } else {
                        viewDragHelper = viewDragHelper3;
                    }
                    viewDragHelper.P(endMargin, 0);
                } else if (Math.abs(releasedChild.getLeft() - minViewVisibleWidth) > (DraggableFrameLayout.this.getWidth() - DraggableFrameLayout.this.getMinViewVisibleWidth()) / 2) {
                    ViewDragHelper viewDragHelper4 = DraggableFrameLayout.this.viewDragHelper;
                    if (viewDragHelper4 == null) {
                        t.B("viewDragHelper");
                    } else {
                        viewDragHelper = viewDragHelper4;
                    }
                    viewDragHelper.P(endMargin, 0);
                } else {
                    ViewDragHelper viewDragHelper5 = DraggableFrameLayout.this.viewDragHelper;
                    if (viewDragHelper5 == null) {
                        t.B("viewDragHelper");
                    } else {
                        viewDragHelper = viewDragHelper5;
                    }
                    viewDragHelper.P(minViewVisibleWidth, 0);
                }
                DraggableFrameLayout.this.invalidate();
            }
        };
        this.viewDragCallback = callback;
        ViewDragHelper viewDragHelperP = ViewDragHelper.p(this, callback);
        t.i(viewDragHelperP, "create(...)");
        this.viewDragHelper = viewDragHelperP;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DraggableFrameLayout(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        t.j(context, "context");
        ViewDragHelper.Callback callback = new ViewDragHelper.Callback() { // from class: com.narvii.widget.DraggableFrameLayout.1
            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public boolean tryCaptureView(@NotNull View child, int i11) {
                t.j(child, "child");
                return true;
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public int clampViewPositionHorizontal(@NotNull View child, int i11, int i12) {
                t.j(child, "child");
                return Utils.isRtl() ? Math.min(Math.max((-DraggableFrameLayout.this.getWidth()) + DraggableFrameLayout.this.getMinViewVisibleWidth() + DraggableFrameLayout.this.getEndMargin(), i11), DraggableFrameLayout.this.getEndMargin()) : Math.min(Math.max(0, i11), DraggableFrameLayout.this.getWidth() - DraggableFrameLayout.this.getMinViewVisibleWidth());
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public void onViewReleased(@NotNull View releasedChild, float f, float f6) {
                t.j(releasedChild, "releasedChild");
                int minViewVisibleWidth = Utils.isRtl() ? (-DraggableFrameLayout.this.getWidth()) + DraggableFrameLayout.this.getMinViewVisibleWidth() + DraggableFrameLayout.this.getEndMargin() : 0;
                int endMargin = Utils.isRtl() ? DraggableFrameLayout.this.getEndMargin() : DraggableFrameLayout.this.getWidth() - DraggableFrameLayout.this.getMinViewVisibleWidth();
                ViewDragHelper viewDragHelper = null;
                if (f < 0.0f) {
                    ViewDragHelper viewDragHelper2 = DraggableFrameLayout.this.viewDragHelper;
                    if (viewDragHelper2 == null) {
                        t.B("viewDragHelper");
                    } else {
                        viewDragHelper = viewDragHelper2;
                    }
                    viewDragHelper.P(minViewVisibleWidth, 0);
                } else if (f > 0.0f) {
                    ViewDragHelper viewDragHelper3 = DraggableFrameLayout.this.viewDragHelper;
                    if (viewDragHelper3 == null) {
                        t.B("viewDragHelper");
                    } else {
                        viewDragHelper = viewDragHelper3;
                    }
                    viewDragHelper.P(endMargin, 0);
                } else if (Math.abs(releasedChild.getLeft() - minViewVisibleWidth) > (DraggableFrameLayout.this.getWidth() - DraggableFrameLayout.this.getMinViewVisibleWidth()) / 2) {
                    ViewDragHelper viewDragHelper4 = DraggableFrameLayout.this.viewDragHelper;
                    if (viewDragHelper4 == null) {
                        t.B("viewDragHelper");
                    } else {
                        viewDragHelper = viewDragHelper4;
                    }
                    viewDragHelper.P(endMargin, 0);
                } else {
                    ViewDragHelper viewDragHelper5 = DraggableFrameLayout.this.viewDragHelper;
                    if (viewDragHelper5 == null) {
                        t.B("viewDragHelper");
                    } else {
                        viewDragHelper = viewDragHelper5;
                    }
                    viewDragHelper.P(minViewVisibleWidth, 0);
                }
                DraggableFrameLayout.this.invalidate();
            }
        };
        this.viewDragCallback = callback;
        ViewDragHelper viewDragHelperP = ViewDragHelper.p(this, callback);
        t.i(viewDragHelperP, "create(...)");
        this.viewDragHelper = viewDragHelperP;
    }
}
