package com.narvii.widget.recycleview.layoutmanager;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class FlowLayoutManager extends RecyclerView.LayoutManager {
    public static final int CENTER = 3;
    public static final int LEFT = 1;
    public static final int RIGHT = 2;
    public static final int TWO_SIDE = 0;
    private ILayoutHelper layoutHelper;
    private LayoutInfo layoutInfo;
    private List<View> rowViews;

    @Retention(RetentionPolicy.SOURCE)
    @interface AlignMode {
    }

    protected interface LayoutFrom {
        public static final int DOWN_TO_UP = -1;
        public static final int UP_TO_DOWN = 1;
    }

    public FlowLayoutManager() {
        this(3);
    }

    private void checkoutBottomOutofRange(RecyclerView.State state) {
        View viewFindCloestVisibleView = findCloestVisibleView(false);
        if (getPosition(viewFindCloestVisibleView) == state.b() - 1) {
            int height = getHeight() - getPaddingBottom();
            int viewBottomWithMargin = getViewBottomWithMargin(viewFindCloestVisibleView);
            LayoutInfo layoutInfo = this.layoutInfo;
            if (height - (viewBottomWithMargin - layoutInfo.pendingScrollDistance) > 0) {
                layoutInfo.pendingScrollDistance = getViewBottomWithMargin(viewFindCloestVisibleView) - (getHeight() - getPaddingBottom());
            }
        }
    }

    private void checkoutTopOutofRange(RecyclerView.State state) {
        View viewFindCloestVisibleView = findCloestVisibleView(true);
        if (getPosition(viewFindCloestVisibleView) == 0) {
            int paddingTop = getPaddingTop();
            int viewTopWithMargin = getViewTopWithMargin(viewFindCloestVisibleView);
            LayoutInfo layoutInfo = this.layoutInfo;
            if (paddingTop - (viewTopWithMargin + layoutInfo.pendingScrollDistance) < 0) {
                layoutInfo.pendingScrollDistance = Math.abs(getViewTopWithMargin(viewFindCloestVisibleView) - getPaddingTop());
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollVertically() {
        return true;
    }

    protected LayoutInfo getLayoutInfo() {
        return this.layoutInfo;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsUpdated(RecyclerView recyclerView, int i10, int i11) {
        this.layoutInfo.haveReseted = true;
        resetLayoutInfo();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollVerticallyBy(int i10, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (i10 == 0 || getChildCount() == 0) {
            return 0;
        }
        if (i10 > 0) {
            View viewFindCloestVisibleView = findCloestVisibleView(false);
            if (getPosition(viewFindCloestVisibleView) == state.b() - 1) {
                int height = (getHeight() - getPaddingBottom()) - getViewBottomWithMargin(viewFindCloestVisibleView);
                if (height == 0 || height >= 0) {
                    return 0;
                }
                i10 = Math.min(-height, i10);
            }
        } else {
            View viewFindCloestVisibleView2 = findCloestVisibleView(true);
            if (getPosition(viewFindCloestVisibleView2) == 0) {
                int paddingTop = getPaddingTop() - getViewTopWithMargin(viewFindCloestVisibleView2);
                if (paddingTop == 0 || paddingTop <= 0) {
                    return 0;
                }
                i10 = Math.max(-paddingTop, i10);
            }
        }
        if (i10 > 0) {
            this.layoutInfo.pendingScrollDistance = Math.min(getViewBottomWithMargin(findCloestVisibleView(false)) - (getHeight() - getPaddingBottom()), i10);
            this.layoutInfo.layoutFrom = 1;
        } else {
            this.layoutInfo.pendingScrollDistance = Math.min(Math.abs(getPaddingTop() - getViewTopWithMargin(findCloestVisibleView(true))), -i10);
            this.layoutInfo.layoutFrom = -1;
        }
        this.layoutHelper.recycleUnvisibleViews(recycler, state, this);
        this.layoutInfo.pendingScrollDistance = Math.abs(i10);
        if (i10 > 0) {
            View viewFindCloestVisibleView3 = findCloestVisibleView(false);
            this.layoutInfo.layoutAnchor = getViewBottomWithMargin(viewFindCloestVisibleView3);
            this.layoutInfo.startLayoutPos = getPosition(viewFindCloestVisibleView3) + 1;
        } else {
            View viewFindCloestVisibleView4 = findCloestVisibleView(true);
            this.layoutInfo.layoutAnchor = getViewTopWithMargin(viewFindCloestVisibleView4);
            this.layoutInfo.startLayoutPos = getPosition(viewFindCloestVisibleView4) - 1;
        }
        this.layoutInfo.layoutByScroll = true;
        startLayout(recycler, state);
        int i11 = i10 > 0 ? this.layoutInfo.pendingScrollDistance : -this.layoutInfo.pendingScrollDistance;
        offsetChildrenVertical(-i11);
        return i11;
    }

    protected static final class LayoutInfo {
        int alignMode;
        int firstVisibleViewTop;
        int layoutAnchor;
        int layoutFrom;
        int pendingScrollDistance;
        int startLayoutPos;
        boolean haveReseted = false;
        boolean layoutByScroll = false;
        boolean justCalculate = false;

        protected LayoutInfo() {
        }
    }

    public FlowLayoutManager(int i10) {
        this.layoutInfo = new LayoutInfo();
        this.layoutHelper = new LayoutHelperImpl();
        this.rowViews = new ArrayList();
        this.layoutInfo.alignMode = i10;
    }

    private void layoutFromDownToUp(RecyclerView.Recycler recycler, RecyclerView.State state) {
        LayoutInfo layoutInfo = this.layoutInfo;
        if (layoutInfo.layoutAnchor + layoutInfo.pendingScrollDistance <= getPaddingTop()) {
            return;
        }
        this.layoutHelper.layoutReverse(recycler, state, this);
        checkoutTopOutofRange(state);
    }

    private void startLayout(RecyclerView.Recycler recycler, RecyclerView.State state) {
        int i10 = this.layoutInfo.layoutFrom;
        if (i10 == -1) {
            layoutFromDownToUp(recycler, state);
        } else {
            if (i10 != 1) {
                return;
            }
            layoutFromUpToDown(recycler, state);
        }
    }

    protected View findCloestVisibleView(boolean z6) {
        return getChildAt(z6 ? 0 : getChildCount() - 1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsAdded(RecyclerView recyclerView, int i10, int i11) {
        this.layoutInfo.haveReseted = true;
        resetLayoutInfo();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsChanged(RecyclerView recyclerView) {
        this.layoutInfo.haveReseted = true;
        resetLayoutInfo();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsMoved(RecyclerView recyclerView, int i10, int i11, int i12) {
        this.layoutInfo.haveReseted = true;
        resetLayoutInfo();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsRemoved(RecyclerView recyclerView, int i10, int i11) {
        this.layoutInfo.haveReseted = true;
        resetLayoutInfo();
    }

    public void setAlignMode(int i10) {
        LayoutInfo layoutInfo = this.layoutInfo;
        if (i10 == layoutInfo.alignMode) {
            return;
        }
        layoutInfo.alignMode = i10;
        requestLayout();
    }

    private void layoutFromUpToDown(RecyclerView.Recycler recycler, RecyclerView.State state) {
        int i10;
        boolean z6;
        boolean z10;
        boolean z11;
        if (getChildCount() > 0) {
            LayoutInfo layoutInfo = this.layoutInfo;
            if (layoutInfo.layoutAnchor - layoutInfo.pendingScrollDistance >= getHeight() - getPaddingBottom()) {
                return;
            }
        }
        int paddingLeft = getPaddingLeft();
        LayoutInfo layoutInfo2 = this.layoutInfo;
        boolean z12 = layoutInfo2.layoutByScroll;
        if (z12) {
            i10 = layoutInfo2.startLayoutPos;
        } else {
            i10 = 0;
        }
        if (!z12) {
            this.layoutHelper.willCalculateUnVisibleViews();
        }
        while (i10 < state.b()) {
            View viewO = recycler.o(i10);
            addView(viewO);
            measureChildWithMargins(viewO, 0, 0);
            int widthWithMargins = getWidthWithMargins(viewO);
            paddingLeft += widthWithMargins;
            if (paddingLeft <= getContentHorizontalSpace()) {
                this.rowViews.add(viewO);
                if (i10 == state.b() - 1) {
                    LayoutInfo layoutInfo3 = this.layoutInfo;
                    if (!layoutInfo3.layoutByScroll) {
                        if (i10 < layoutInfo3.startLayoutPos) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        layoutInfo3.justCalculate = z11;
                    }
                    this.layoutHelper.layoutARow(this.rowViews, recycler, this, true);
                }
            } else {
                LayoutInfo layoutInfo4 = this.layoutInfo;
                if (!layoutInfo4.layoutByScroll) {
                    if (i10 - 1 < layoutInfo4.startLayoutPos) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    layoutInfo4.justCalculate = z10;
                }
                this.layoutHelper.layoutARow(this.rowViews, recycler, this, false);
                LayoutInfo layoutInfo5 = this.layoutInfo;
                if (layoutInfo5.layoutAnchor - layoutInfo5.pendingScrollDistance >= getHeight() - getPaddingBottom()) {
                    removeAndRecycleView(viewO, recycler);
                    break;
                }
                int paddingLeft2 = getPaddingLeft();
                this.rowViews.add(viewO);
                paddingLeft = paddingLeft2 + widthWithMargins;
                if (i10 == state.b() - 1) {
                    LayoutInfo layoutInfo6 = this.layoutInfo;
                    if (!layoutInfo6.layoutByScroll) {
                        if (i10 < layoutInfo6.startLayoutPos) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        layoutInfo6.justCalculate = z6;
                    }
                    this.layoutHelper.layoutARow(this.rowViews, recycler, this, true);
                }
            }
            i10++;
        }
        if (this.layoutInfo.pendingScrollDistance != 0) {
            checkoutBottomOutofRange(state);
        }
    }

    private void resetLayoutInfo() {
        if (getChildCount() != 0) {
            View viewFindCloestVisibleView = findCloestVisibleView(true);
            this.layoutInfo.firstVisibleViewTop = getViewTopWithMargin(viewFindCloestVisibleView);
            this.layoutInfo.startLayoutPos = getPosition(viewFindCloestVisibleView);
            if (this.layoutInfo.startLayoutPos >= getItemCount()) {
                this.layoutInfo.startLayoutPos = 0;
            }
        } else {
            this.layoutInfo.firstVisibleViewTop = getPaddingTop();
            this.layoutInfo.startLayoutPos = 0;
        }
        LayoutInfo layoutInfo = this.layoutInfo;
        layoutInfo.layoutAnchor = layoutInfo.firstVisibleViewTop;
        layoutInfo.pendingScrollDistance = 0;
        layoutInfo.layoutFrom = 1;
        layoutInfo.layoutByScroll = false;
        layoutInfo.justCalculate = false;
    }

    protected int getContentHorizontalSpace() {
        return (getWidth() - getPaddingLeft()) - getPaddingRight();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void getDecoratedBoundsWithMargins(View view, Rect rect) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        rect.set((view.getLeft() - getLeftDecorationWidth(view)) - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, (view.getTop() - getTopDecorationHeight(view)) - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, view.getRight() + getRightDecorationWidth(view) + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, view.getBottom() + getBottomDecorationHeight(view) + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
    }

    protected int getHeightWithMargins(View view) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        return getDecoratedMeasuredHeight(view) + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
    }

    protected int getViewBottomWithMargin(View view) {
        return getDecoratedBottom(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).bottomMargin;
    }

    protected int getViewTopWithMargin(View view) {
        return getDecoratedTop(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).topMargin;
    }

    protected int getWidthWithMargins(View view) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        return getDecoratedMeasuredWidth(view) + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void layoutDecoratedWithMargins(View view, int i10, int i11, int i12, int i13) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        view.layout(i10 + getLeftDecorationWidth(view) + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, i11 + getTopDecorationHeight(view) + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, (i12 - getRightDecorationWidth(view)) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, (i13 - getBottomDecorationHeight(view)) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsUpdated(RecyclerView recyclerView, int i10, int i11, Object obj) {
        this.layoutInfo.haveReseted = true;
        resetLayoutInfo();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (state.b() == 0) {
            removeAndRecycleAllViews(recycler);
            return;
        }
        LayoutInfo layoutInfo = this.layoutInfo;
        if (layoutInfo.haveReseted) {
            layoutInfo.haveReseted = false;
        } else {
            resetLayoutInfo();
        }
        detachAndScrapAttachedViews(recycler);
        startLayout(recycler, state);
    }
}
