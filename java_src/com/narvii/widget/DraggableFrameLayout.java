package com.narvii.widget;

import android.content.Context;
import android.support.v4.widget.ViewDragHelper;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.narvii.amino.mastes.R;
import com.narvii.drawer.MyDrawerLayout;
import com.narvii.util.Utils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;

/* compiled from: DraggableFrameLayout.kt */
/* loaded from: classes3.dex */
public final class DraggableFrameLayout extends FrameLayout {
    private HashMap _$_findViewCache;
    private int endMargin;
    private boolean hasMovedOverTouchSlop;
    private int minViewVisibleWidth;
    private View.OnClickListener onTap;
    private final ViewDragHelper.Callback viewDragCallback;
    private ViewDragHelper viewDragHelper;

    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    public static final /* synthetic */ ViewDragHelper access$getViewDragHelper$p(DraggableFrameLayout draggableFrameLayout) {
        ViewDragHelper viewDragHelper = draggableFrameLayout.viewDragHelper;
        if (viewDragHelper != null) {
            return viewDragHelper;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewDragHelper");
        throw null;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DraggableFrameLayout(Context context) {
        super(context);
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.viewDragCallback = new ViewDragHelper.Callback() { // from class: com.narvii.widget.DraggableFrameLayout.1
            @Override // android.support.v4.widget.ViewDragHelper.Callback
            public boolean tryCaptureView(View child, int i) {
                Intrinsics.checkParameterIsNotNull(child, "child");
                return true;
            }

            @Override // android.support.v4.widget.ViewDragHelper.Callback
            public int clampViewPositionHorizontal(View child, int i, int i2) {
                Intrinsics.checkParameterIsNotNull(child, "child");
                if (Utils.isRtl()) {
                    return Math.min(Math.max((-DraggableFrameLayout.this.getWidth()) + DraggableFrameLayout.this.getMinViewVisibleWidth() + DraggableFrameLayout.this.getEndMargin(), i), DraggableFrameLayout.this.getEndMargin());
                }
                return Math.min(Math.max(0, i), DraggableFrameLayout.this.getWidth() - DraggableFrameLayout.this.getMinViewVisibleWidth());
            }

            @Override // android.support.v4.widget.ViewDragHelper.Callback
            public void onViewReleased(View releasedChild, float f, float f2) {
                Intrinsics.checkParameterIsNotNull(releasedChild, "releasedChild");
                int minViewVisibleWidth = Utils.isRtl() ? (-DraggableFrameLayout.this.getWidth()) + DraggableFrameLayout.this.getMinViewVisibleWidth() + DraggableFrameLayout.this.getEndMargin() : 0;
                int endMargin = Utils.isRtl() ? DraggableFrameLayout.this.getEndMargin() : DraggableFrameLayout.this.getWidth() - DraggableFrameLayout.this.getMinViewVisibleWidth();
                float f3 = 0;
                if (f < f3) {
                    DraggableFrameLayout.access$getViewDragHelper$p(DraggableFrameLayout.this).settleCapturedViewAt(minViewVisibleWidth, 0);
                } else if (f > f3 || Math.abs(releasedChild.getLeft() - minViewVisibleWidth) > (DraggableFrameLayout.this.getWidth() - DraggableFrameLayout.this.getMinViewVisibleWidth()) / 2) {
                    DraggableFrameLayout.access$getViewDragHelper$p(DraggableFrameLayout.this).settleCapturedViewAt(endMargin, 0);
                } else {
                    DraggableFrameLayout.access$getViewDragHelper$p(DraggableFrameLayout.this).settleCapturedViewAt(minViewVisibleWidth, 0);
                }
                DraggableFrameLayout.this.invalidate();
            }
        };
        ViewDragHelper viewDragHelperCreate = ViewDragHelper.create(this, this.viewDragCallback);
        Intrinsics.checkExpressionValueIsNotNull(viewDragHelperCreate, "ViewDragHelper.create(this, viewDragCallback)");
        this.viewDragHelper = viewDragHelperCreate;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DraggableFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.viewDragCallback = new ViewDragHelper.Callback() { // from class: com.narvii.widget.DraggableFrameLayout.1
            @Override // android.support.v4.widget.ViewDragHelper.Callback
            public boolean tryCaptureView(View child, int i) {
                Intrinsics.checkParameterIsNotNull(child, "child");
                return true;
            }

            @Override // android.support.v4.widget.ViewDragHelper.Callback
            public int clampViewPositionHorizontal(View child, int i, int i2) {
                Intrinsics.checkParameterIsNotNull(child, "child");
                if (Utils.isRtl()) {
                    return Math.min(Math.max((-DraggableFrameLayout.this.getWidth()) + DraggableFrameLayout.this.getMinViewVisibleWidth() + DraggableFrameLayout.this.getEndMargin(), i), DraggableFrameLayout.this.getEndMargin());
                }
                return Math.min(Math.max(0, i), DraggableFrameLayout.this.getWidth() - DraggableFrameLayout.this.getMinViewVisibleWidth());
            }

            @Override // android.support.v4.widget.ViewDragHelper.Callback
            public void onViewReleased(View releasedChild, float f, float f2) {
                Intrinsics.checkParameterIsNotNull(releasedChild, "releasedChild");
                int minViewVisibleWidth = Utils.isRtl() ? (-DraggableFrameLayout.this.getWidth()) + DraggableFrameLayout.this.getMinViewVisibleWidth() + DraggableFrameLayout.this.getEndMargin() : 0;
                int endMargin = Utils.isRtl() ? DraggableFrameLayout.this.getEndMargin() : DraggableFrameLayout.this.getWidth() - DraggableFrameLayout.this.getMinViewVisibleWidth();
                float f3 = 0;
                if (f < f3) {
                    DraggableFrameLayout.access$getViewDragHelper$p(DraggableFrameLayout.this).settleCapturedViewAt(minViewVisibleWidth, 0);
                } else if (f > f3 || Math.abs(releasedChild.getLeft() - minViewVisibleWidth) > (DraggableFrameLayout.this.getWidth() - DraggableFrameLayout.this.getMinViewVisibleWidth()) / 2) {
                    DraggableFrameLayout.access$getViewDragHelper$p(DraggableFrameLayout.this).settleCapturedViewAt(endMargin, 0);
                } else {
                    DraggableFrameLayout.access$getViewDragHelper$p(DraggableFrameLayout.this).settleCapturedViewAt(minViewVisibleWidth, 0);
                }
                DraggableFrameLayout.this.invalidate();
            }
        };
        ViewDragHelper viewDragHelperCreate = ViewDragHelper.create(this, this.viewDragCallback);
        Intrinsics.checkExpressionValueIsNotNull(viewDragHelperCreate, "ViewDragHelper.create(this, viewDragCallback)");
        this.viewDragHelper = viewDragHelperCreate;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DraggableFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.viewDragCallback = new ViewDragHelper.Callback() { // from class: com.narvii.widget.DraggableFrameLayout.1
            @Override // android.support.v4.widget.ViewDragHelper.Callback
            public boolean tryCaptureView(View child, int i2) {
                Intrinsics.checkParameterIsNotNull(child, "child");
                return true;
            }

            @Override // android.support.v4.widget.ViewDragHelper.Callback
            public int clampViewPositionHorizontal(View child, int i2, int i22) {
                Intrinsics.checkParameterIsNotNull(child, "child");
                if (Utils.isRtl()) {
                    return Math.min(Math.max((-DraggableFrameLayout.this.getWidth()) + DraggableFrameLayout.this.getMinViewVisibleWidth() + DraggableFrameLayout.this.getEndMargin(), i2), DraggableFrameLayout.this.getEndMargin());
                }
                return Math.min(Math.max(0, i2), DraggableFrameLayout.this.getWidth() - DraggableFrameLayout.this.getMinViewVisibleWidth());
            }

            @Override // android.support.v4.widget.ViewDragHelper.Callback
            public void onViewReleased(View releasedChild, float f, float f2) {
                Intrinsics.checkParameterIsNotNull(releasedChild, "releasedChild");
                int minViewVisibleWidth = Utils.isRtl() ? (-DraggableFrameLayout.this.getWidth()) + DraggableFrameLayout.this.getMinViewVisibleWidth() + DraggableFrameLayout.this.getEndMargin() : 0;
                int endMargin = Utils.isRtl() ? DraggableFrameLayout.this.getEndMargin() : DraggableFrameLayout.this.getWidth() - DraggableFrameLayout.this.getMinViewVisibleWidth();
                float f3 = 0;
                if (f < f3) {
                    DraggableFrameLayout.access$getViewDragHelper$p(DraggableFrameLayout.this).settleCapturedViewAt(minViewVisibleWidth, 0);
                } else if (f > f3 || Math.abs(releasedChild.getLeft() - minViewVisibleWidth) > (DraggableFrameLayout.this.getWidth() - DraggableFrameLayout.this.getMinViewVisibleWidth()) / 2) {
                    DraggableFrameLayout.access$getViewDragHelper$p(DraggableFrameLayout.this).settleCapturedViewAt(endMargin, 0);
                } else {
                    DraggableFrameLayout.access$getViewDragHelper$p(DraggableFrameLayout.this).settleCapturedViewAt(minViewVisibleWidth, 0);
                }
                DraggableFrameLayout.this.invalidate();
            }
        };
        ViewDragHelper viewDragHelperCreate = ViewDragHelper.create(this, this.viewDragCallback);
        Intrinsics.checkExpressionValueIsNotNull(viewDragHelperCreate, "ViewDragHelper.create(this, viewDragCallback)");
        this.viewDragHelper = viewDragHelperCreate;
    }

    public final int getMinViewVisibleWidth() {
        return this.minViewVisibleWidth;
    }

    public final void setMinViewVisibleWidth(int i) {
        this.minViewVisibleWidth = i;
    }

    public final View.OnClickListener getOnTap() {
        return this.onTap;
    }

    public final void setOnTap(View.OnClickListener onClickListener) {
        this.onTap = onClickListener;
    }

    public final int getEndMargin() {
        return this.endMargin;
    }

    public final void setEndMargin(int i) {
        this.endMargin = i;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        Intrinsics.checkParameterIsNotNull(ev, "ev");
        ViewDragHelper viewDragHelper = this.viewDragHelper;
        if (viewDragHelper != null) {
            return viewDragHelper.shouldInterceptTouchEvent(ev);
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewDragHelper");
        throw null;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        Intrinsics.checkParameterIsNotNull(event, "event");
        ViewDragHelper viewDragHelper = this.viewDragHelper;
        if (viewDragHelper == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewDragHelper");
            throw null;
        }
        viewDragHelper.processTouchEvent(event);
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
            ViewDragHelper viewDragHelper2 = this.viewDragHelper;
            if (viewDragHelper2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("viewDragHelper");
                throw null;
            }
            if (viewDragHelper2.checkTouchSlop(1)) {
                this.hasMovedOverTouchSlop = true;
            }
        } else if (action == 3) {
            this.hasMovedOverTouchSlop = false;
            requestDisallowInterceptTouchEventFromDrawer(false);
        }
        return true;
    }

    @Override // android.view.View
    public void computeScroll() {
        super.computeScroll();
        ViewDragHelper viewDragHelper = this.viewDragHelper;
        if (viewDragHelper == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewDragHelper");
            throw null;
        }
        if (viewDragHelper.continueSettling(true)) {
            invalidate();
        }
    }

    public final void hide() {
        smoothSlideViewTo(Utils.isRtl() ? (-getWidth()) + this.minViewVisibleWidth + this.endMargin : getWidth() - this.minViewVisibleWidth);
    }

    private final void smoothSlideViewTo(int i) {
        Object next;
        IntRange intRangeUntil = RangesKt___RangesKt.until(0, getChildCount());
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(intRangeUntil, 10));
        Iterator<Integer> it = intRangeUntil.iterator();
        while (it.hasNext()) {
            arrayList.add(getChildAt(((IntIterator) it).nextInt()));
        }
        Iterator it2 = arrayList.iterator();
        while (true) {
            if (!it2.hasNext()) {
                next = null;
                break;
            }
            next = it2.next();
            View it3 = (View) next;
            Intrinsics.checkExpressionValueIsNotNull(it3, "it");
            if (it3.getVisibility() == 0) {
                break;
            }
        }
        View view = (View) next;
        if (view != null) {
            ViewDragHelper viewDragHelper = this.viewDragHelper;
            if (viewDragHelper == null) {
                Intrinsics.throwUninitializedPropertyAccessException("viewDragHelper");
                throw null;
            }
            viewDragHelper.smoothSlideViewTo(view, i, 0);
            invalidate();
        }
    }

    private final void requestDisallowInterceptTouchEventFromDrawer(boolean z) {
        MyDrawerLayout myDrawerLayout;
        View rootView = getRootView();
        if (rootView == null || (myDrawerLayout = (MyDrawerLayout) rootView.findViewById(R.id.drawer_layout)) == null) {
            return;
        }
        myDrawerLayout.requestDisallowInterceptTouchEvent(z);
    }
}
