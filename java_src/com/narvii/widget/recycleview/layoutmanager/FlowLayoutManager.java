package com.narvii.widget.recycleview.layoutmanager;

import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewGroup;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class FlowLayoutManager extends RecyclerView.LayoutManager {
    public static final int CENTER = 3;
    public static final int LEFT = 1;
    public static final int RIGHT = 2;
    public static final int TWO_SIDE = 0;
    private ILayoutHelper layoutHelper;
    private LayoutInfo layoutInfo;
    private List<View> rowViews;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    @interface AlignMode {
    }

    protected interface LayoutFrom {
        public static final int DOWN_TO_UP = -1;
        public static final int UP_TO_DOWN = 1;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public boolean canScrollVertically() {
        return true;
    }

    public FlowLayoutManager() {
        this(3);
    }

    public FlowLayoutManager(int i) {
        this.layoutInfo = new LayoutInfo();
        this.layoutHelper = new LayoutHelperImpl();
        this.rowViews = new ArrayList();
        this.layoutInfo.alignMode = i;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (state.getItemCount() == 0) {
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

    private void startLayout(RecyclerView.Recycler recycler, RecyclerView.State state) {
        int i = this.layoutInfo.layoutFrom;
        if (i == -1) {
            layoutFromDownToUp(recycler, state);
        } else {
            if (i != 1) {
                return;
            }
            layoutFromUpToDown(recycler, state);
        }
    }

    private void layoutFromDownToUp(RecyclerView.Recycler recycler, RecyclerView.State state) {
        LayoutInfo layoutInfo = this.layoutInfo;
        if (layoutInfo.layoutAnchor + layoutInfo.pendingScrollDistance <= getPaddingTop()) {
            return;
        }
        this.layoutHelper.layoutReverse(recycler, state, this);
        checkoutTopOutofRange(state);
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

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void layoutDecoratedWithMargins(View view, int i, int i2, int i3, int i4) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        view.layout(i + getLeftDecorationWidth(view) + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, i2 + getTopDecorationHeight(view) + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, (i3 - getRightDecorationWidth(view)) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, (i4 - getBottomDecorationHeight(view)) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void getDecoratedBoundsWithMargins(View view, Rect rect) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        rect.set((view.getLeft() - getLeftDecorationWidth(view)) - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, (view.getTop() - getTopDecorationHeight(view)) - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, view.getRight() + getRightDecorationWidth(view) + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, view.getBottom() + getBottomDecorationHeight(view) + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
    }

    private void layoutFromUpToDown(RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (getChildCount() > 0) {
            LayoutInfo layoutInfo = this.layoutInfo;
            if (layoutInfo.layoutAnchor - layoutInfo.pendingScrollDistance >= getHeight() - getPaddingBottom()) {
                return;
            }
        }
        int paddingLeft = getPaddingLeft();
        LayoutInfo layoutInfo2 = this.layoutInfo;
        int i = layoutInfo2.layoutByScroll ? layoutInfo2.startLayoutPos : 0;
        if (!this.layoutInfo.layoutByScroll) {
            this.layoutHelper.willCalculateUnVisibleViews();
        }
        while (true) {
            if (i >= state.getItemCount()) {
                break;
            }
            View viewForPosition = recycler.getViewForPosition(i);
            addView(viewForPosition);
            measureChildWithMargins(viewForPosition, 0, 0);
            int widthWithMargins = getWidthWithMargins(viewForPosition);
            paddingLeft += widthWithMargins;
            if (paddingLeft <= getContentHorizontalSpace()) {
                this.rowViews.add(viewForPosition);
                if (i == state.getItemCount() - 1) {
                    LayoutInfo layoutInfo3 = this.layoutInfo;
                    if (!layoutInfo3.layoutByScroll) {
                        layoutInfo3.justCalculate = i < layoutInfo3.startLayoutPos;
                    }
                    this.layoutHelper.layoutARow(this.rowViews, recycler, this, true);
                }
            } else {
                LayoutInfo layoutInfo4 = this.layoutInfo;
                if (!layoutInfo4.layoutByScroll) {
                    layoutInfo4.justCalculate = i + (-1) < layoutInfo4.startLayoutPos;
                }
                this.layoutHelper.layoutARow(this.rowViews, recycler, this, false);
                LayoutInfo layoutInfo5 = this.layoutInfo;
                if (layoutInfo5.layoutAnchor - layoutInfo5.pendingScrollDistance >= getHeight() - getPaddingBottom()) {
                    removeAndRecycleView(viewForPosition, recycler);
                    break;
                }
                int paddingLeft2 = getPaddingLeft();
                this.rowViews.add(viewForPosition);
                paddingLeft = paddingLeft2 + widthWithMargins;
                if (i == state.getItemCount() - 1) {
                    LayoutInfo layoutInfo6 = this.layoutInfo;
                    if (!layoutInfo6.layoutByScroll) {
                        layoutInfo6.justCalculate = i < layoutInfo6.startLayoutPos;
                    }
                    this.layoutHelper.layoutARow(this.rowViews, recycler, this, true);
                }
            }
            i++;
        }
        if (this.layoutInfo.pendingScrollDistance != 0) {
            checkoutBottomOutofRange(state);
        }
    }

    private void checkoutBottomOutofRange(RecyclerView.State state) {
        View viewFindCloestVisibleView = findCloestVisibleView(false);
        if (getPosition(viewFindCloestVisibleView) == state.getItemCount() - 1) {
            int height = getHeight() - getPaddingBottom();
            int viewBottomWithMargin = getViewBottomWithMargin(viewFindCloestVisibleView);
            LayoutInfo layoutInfo = this.layoutInfo;
            if (height - (viewBottomWithMargin - layoutInfo.pendingScrollDistance) > 0) {
                layoutInfo.pendingScrollDistance = getViewBottomWithMargin(viewFindCloestVisibleView) - (getHeight() - getPaddingBottom());
            }
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

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int scrollVerticallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (i == 0 || getChildCount() == 0) {
            return 0;
        }
        if (i > 0) {
            View viewFindCloestVisibleView = findCloestVisibleView(false);
            if (getPosition(viewFindCloestVisibleView) == state.getItemCount() - 1) {
                int height = (getHeight() - getPaddingBottom()) - getViewBottomWithMargin(viewFindCloestVisibleView);
                if (height == 0 || height >= 0) {
                    return 0;
                }
                i = Math.min(-height, i);
            }
        } else {
            View viewFindCloestVisibleView2 = findCloestVisibleView(true);
            if (getPosition(viewFindCloestVisibleView2) == 0) {
                int paddingTop = getPaddingTop() - getViewTopWithMargin(viewFindCloestVisibleView2);
                if (paddingTop == 0 || paddingTop <= 0) {
                    return 0;
                }
                i = Math.max(-paddingTop, i);
            }
        }
        if (i > 0) {
            this.layoutInfo.pendingScrollDistance = Math.min(getViewBottomWithMargin(findCloestVisibleView(false)) - (getHeight() - getPaddingBottom()), i);
            this.layoutInfo.layoutFrom = 1;
        } else {
            this.layoutInfo.pendingScrollDistance = Math.min(Math.abs(getPaddingTop() - getViewTopWithMargin(findCloestVisibleView(true))), -i);
            this.layoutInfo.layoutFrom = -1;
        }
        this.layoutHelper.recycleUnvisibleViews(recycler, state, this);
        this.layoutInfo.pendingScrollDistance = Math.abs(i);
        if (i > 0) {
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
        int i2 = i > 0 ? this.layoutInfo.pendingScrollDistance : -this.layoutInfo.pendingScrollDistance;
        offsetChildrenVertical(-i2);
        return i2;
    }

    protected int getViewTopWithMargin(View view) {
        return getDecoratedTop(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).topMargin;
    }

    protected View findCloestVisibleView(boolean z) {
        return getChildAt(z ? 0 : getChildCount() - 1);
    }

    protected int getViewBottomWithMargin(View view) {
        return getDecoratedBottom(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).bottomMargin;
    }

    protected int getContentHorizontalSpace() {
        return (getWidth() - getPaddingLeft()) - getPaddingRight();
    }

    protected int getWidthWithMargins(View view) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        return getDecoratedMeasuredWidth(view) + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
    }

    protected int getHeightWithMargins(View view) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        return getDecoratedMeasuredHeight(view) + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
    }

    protected LayoutInfo getLayoutInfo() {
        return this.layoutInfo;
    }

    public void setAlignMode(int i) {
        LayoutInfo layoutInfo = this.layoutInfo;
        if (i == layoutInfo.alignMode) {
            return;
        }
        layoutInfo.alignMode = i;
        requestLayout();
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

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onItemsMoved(RecyclerView recyclerView, int i, int i2, int i3) {
        this.layoutInfo.haveReseted = true;
        resetLayoutInfo();
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onItemsRemoved(RecyclerView recyclerView, int i, int i2) {
        this.layoutInfo.haveReseted = true;
        resetLayoutInfo();
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onItemsAdded(RecyclerView recyclerView, int i, int i2) {
        this.layoutInfo.haveReseted = true;
        resetLayoutInfo();
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onItemsUpdated(RecyclerView recyclerView, int i, int i2) {
        this.layoutInfo.haveReseted = true;
        resetLayoutInfo();
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onItemsUpdated(RecyclerView recyclerView, int i, int i2, Object obj) {
        this.layoutInfo.haveReseted = true;
        resetLayoutInfo();
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onItemsChanged(RecyclerView recyclerView) {
        this.layoutInfo.haveReseted = true;
        resetLayoutInfo();
    }
}
