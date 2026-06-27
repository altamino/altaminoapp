package com.narvii.widget.recycleview.layoutmanager;

import android.graphics.Rect;
import android.support.v4.util.Pools$SimplePool;
import android.support.v7.widget.RecyclerView;
import android.util.SparseArray;
import android.view.View;
import com.narvii.util.Utils;
import com.narvii.widget.recycleview.layoutmanager.FlowLayoutManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class LayoutHelperImpl implements ILayoutHelper {
    private Pools$SimplePool<LineItemPosRecord> rectSimplePool;
    private SparseArray<LineItemPosRecord> preLayoutedViews = new SparseArray<>();
    private List<View> pendingRecycleView = new ArrayList();
    private int maxLineNumbser = Integer.MIN_VALUE;

    @Override // com.narvii.widget.recycleview.layoutmanager.ILayoutHelper
    public void layoutARow(List<View> list, RecyclerView.Recycler recycler, FlowLayoutManager flowLayoutManager, boolean z) {
        int i = flowLayoutManager.getLayoutInfo().alignMode;
        if (i == 0) {
            alignTwoSideLayout(list, flowLayoutManager, z, recycler);
        } else if (i == 1) {
            alignLeftLayout(list, flowLayoutManager, recycler);
        } else if (i == 2) {
            alignRightLayout(list, flowLayoutManager, recycler);
        } else if (i == 3) {
            alignCenterLayout(list, flowLayoutManager, recycler);
        }
        if (flowLayoutManager.getLayoutInfo().layoutByScroll || (!flowLayoutManager.getLayoutInfo().layoutByScroll && !flowLayoutManager.getLayoutInfo().justCalculate)) {
            View view = list.get(list.size() - 1);
            flowLayoutManager.getLayoutInfo().layoutAnchor = flowLayoutManager.getViewBottomWithMargin(view);
        }
        if (list.size() > this.maxLineNumbser) {
            this.maxLineNumbser = list.size();
            recycler.setViewCacheSize(this.maxLineNumbser);
        }
        list.clear();
    }

    private void alignCenterLayout(List<View> list, FlowLayoutManager flowLayoutManager, RecyclerView.Recycler recycler) {
        View view;
        Iterator<View> it = list.iterator();
        int widthWithMargins = 0;
        while (it.hasNext()) {
            widthWithMargins += flowLayoutManager.getWidthWithMargins(it.next());
        }
        int paddingLeft = flowLayoutManager.getPaddingLeft() + ((flowLayoutManager.getContentHorizontalSpace() - widthWithMargins) / 2);
        int i = 0;
        while (i < list.size()) {
            if (Utils.isRtl()) {
                view = list.get((list.size() - i) - 1);
            } else {
                view = list.get(i);
            }
            View view2 = view;
            int widthWithMargins2 = flowLayoutManager.getWidthWithMargins(view2);
            int heightWithMargins = flowLayoutManager.getHeightWithMargins(view2);
            int i2 = flowLayoutManager.getLayoutInfo().layoutAnchor;
            int i3 = paddingLeft + widthWithMargins2;
            realLayoutItem(paddingLeft, i2, i3, i2 + heightWithMargins, view2, flowLayoutManager, recycler, i == 0);
            i++;
            paddingLeft = i3;
        }
    }

    private void alignRightLayout(List<View> list, FlowLayoutManager flowLayoutManager, RecyclerView.Recycler recycler) {
        int width = flowLayoutManager.getWidth() - flowLayoutManager.getPaddingRight();
        int size = list.size() - 1;
        while (true) {
            int i = width;
            if (size < 0) {
                return;
            }
            View view = list.get(size);
            int widthWithMargins = flowLayoutManager.getWidthWithMargins(view);
            int heightWithMargins = flowLayoutManager.getHeightWithMargins(view);
            width = i - widthWithMargins;
            int i2 = flowLayoutManager.getLayoutInfo().layoutAnchor;
            realLayoutItem(width, i2, i, i2 + heightWithMargins, view, flowLayoutManager, recycler, size == 0);
            size--;
        }
    }

    private void alignTwoSideLayout(List<View> list, FlowLayoutManager flowLayoutManager, boolean z, RecyclerView.Recycler recycler) {
        int contentHorizontalSpace;
        flowLayoutManager.getLayoutInfo();
        if (list.size() <= 1 || z) {
            contentHorizontalSpace = 0;
        } else {
            Iterator<View> it = list.iterator();
            int widthWithMargins = 0;
            while (it.hasNext()) {
                widthWithMargins += flowLayoutManager.getWidthWithMargins(it.next());
            }
            contentHorizontalSpace = (flowLayoutManager.getContentHorizontalSpace() - widthWithMargins) / (list.size() - 1);
        }
        int paddingLeft = flowLayoutManager.getPaddingLeft();
        int i = 0;
        while (i < list.size()) {
            View view = list.get(i);
            int widthWithMargins2 = flowLayoutManager.getWidthWithMargins(view);
            int heightWithMargins = flowLayoutManager.getHeightWithMargins(view);
            int i2 = flowLayoutManager.getLayoutInfo().layoutAnchor;
            int i3 = paddingLeft + widthWithMargins2;
            realLayoutItem(paddingLeft, i2, i3, i2 + heightWithMargins, view, flowLayoutManager, recycler, i == 0);
            paddingLeft = i3 + contentHorizontalSpace;
            i++;
        }
    }

    private void alignLeftLayout(List<View> list, FlowLayoutManager flowLayoutManager, RecyclerView.Recycler recycler) {
        int paddingLeft = flowLayoutManager.getPaddingLeft();
        int i = 0;
        while (i < list.size()) {
            View view = list.get(i);
            int widthWithMargins = flowLayoutManager.getWidthWithMargins(view);
            int heightWithMargins = flowLayoutManager.getHeightWithMargins(view);
            int i2 = flowLayoutManager.getLayoutInfo().layoutAnchor;
            int i3 = paddingLeft + widthWithMargins;
            realLayoutItem(paddingLeft, i2, i3, i2 + heightWithMargins, view, flowLayoutManager, recycler, i == 0);
            i++;
            paddingLeft = i3;
        }
    }

    @Override // com.narvii.widget.recycleview.layoutmanager.ILayoutHelper
    public void layoutReverse(RecyclerView.Recycler recycler, RecyclerView.State state, FlowLayoutManager flowLayoutManager) {
        FlowLayoutManager.LayoutInfo layoutInfo = flowLayoutManager.getLayoutInfo();
        for (int i = layoutInfo.startLayoutPos; i >= 0; i--) {
            LineItemPosRecord lineItemPosRecord = this.preLayoutedViews.get(i);
            Rect rect = lineItemPosRecord.rect;
            int i2 = rect.bottom - rect.top;
            if (layoutInfo.layoutAnchor + layoutInfo.pendingScrollDistance <= flowLayoutManager.getPaddingTop()) {
                return;
            }
            View viewForPosition = recycler.getViewForPosition(i);
            flowLayoutManager.addView(viewForPosition, 0);
            flowLayoutManager.measureChildWithMargins(viewForPosition, 0, 0);
            int i3 = rect.left;
            int i4 = layoutInfo.layoutAnchor;
            flowLayoutManager.layoutDecoratedWithMargins(viewForPosition, i3, i4 - i2, rect.right, i4);
            if (lineItemPosRecord.isFirstItemInLine) {
                layoutInfo.layoutAnchor -= i2;
            }
            releaseItemLayoutInfo(lineItemPosRecord);
            this.preLayoutedViews.remove(i);
        }
    }

    private void realLayoutItem(int i, int i2, int i3, int i4, View view, FlowLayoutManager flowLayoutManager, RecyclerView.Recycler recycler, boolean z) {
        FlowLayoutManager.LayoutInfo layoutInfo = flowLayoutManager.getLayoutInfo();
        if (layoutInfo.layoutByScroll) {
            flowLayoutManager.layoutDecoratedWithMargins(view, i, i2, i3, i4);
            return;
        }
        if (layoutInfo.justCalculate) {
            LineItemPosRecord lineItemPosRecordGenerateALineItem = generateALineItem(flowLayoutManager);
            lineItemPosRecordGenerateALineItem.setFirstItemInLine(z);
            lineItemPosRecordGenerateALineItem.rect.set(i, i2, i3, i4);
            this.preLayoutedViews.put(flowLayoutManager.getPosition(view), lineItemPosRecordGenerateALineItem);
            flowLayoutManager.removeAndRecycleView(view, recycler);
            return;
        }
        flowLayoutManager.layoutDecoratedWithMargins(view, i, i2, i3, i4);
    }

    private void releaseItemLayoutInfo(LineItemPosRecord lineItemPosRecord) {
        try {
            this.rectSimplePool.release(lineItemPosRecord);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.narvii.widget.recycleview.layoutmanager.ILayoutHelper
    public void recycleUnvisibleViews(RecyclerView.Recycler recycler, RecyclerView.State state, FlowLayoutManager flowLayoutManager) {
        if (flowLayoutManager.getChildCount() == 0) {
            return;
        }
        FlowLayoutManager.LayoutInfo layoutInfo = flowLayoutManager.getLayoutInfo();
        if (layoutInfo.pendingScrollDistance < 0) {
            return;
        }
        int i = layoutInfo.layoutFrom;
        if (i == -1) {
            for (int childCount = flowLayoutManager.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = flowLayoutManager.getChildAt(childCount);
                if (flowLayoutManager.getViewTopWithMargin(childAt) + layoutInfo.pendingScrollDistance < flowLayoutManager.getHeight() - flowLayoutManager.getPaddingBottom()) {
                    break;
                }
                this.pendingRecycleView.add(childAt);
            }
        } else if (i == 1) {
            int i2 = Integer.MAX_VALUE;
            for (int i3 = 0; i3 < flowLayoutManager.getChildCount(); i3++) {
                View childAt2 = flowLayoutManager.getChildAt(i3);
                if (flowLayoutManager.getViewBottomWithMargin(childAt2) - layoutInfo.pendingScrollDistance > flowLayoutManager.getPaddingTop()) {
                    break;
                }
                int viewTopWithMargin = flowLayoutManager.getViewTopWithMargin(childAt2);
                if (viewTopWithMargin != i2) {
                    saveLayoutInfo(childAt2, flowLayoutManager, true);
                    i2 = viewTopWithMargin;
                } else {
                    saveLayoutInfo(childAt2, flowLayoutManager, false);
                }
                this.pendingRecycleView.add(childAt2);
            }
        }
        Iterator<View> it = this.pendingRecycleView.iterator();
        while (it.hasNext()) {
            flowLayoutManager.removeAndRecycleView(it.next(), recycler);
        }
        this.pendingRecycleView.clear();
    }

    @Override // com.narvii.widget.recycleview.layoutmanager.ILayoutHelper
    public void willCalculateUnVisibleViews() {
        for (int i = 0; i < this.preLayoutedViews.size(); i++) {
            LineItemPosRecord lineItemPosRecord = this.preLayoutedViews.get(i, null);
            if (lineItemPosRecord != null) {
                releaseItemLayoutInfo(lineItemPosRecord);
            }
        }
        this.preLayoutedViews.clear();
    }

    private void saveLayoutInfo(View view, FlowLayoutManager flowLayoutManager, boolean z) {
        LineItemPosRecord lineItemPosRecordGenerateALineItem = generateALineItem(flowLayoutManager);
        lineItemPosRecordGenerateALineItem.setFirstItemInLine(z);
        flowLayoutManager.getDecoratedBoundsWithMargins(view, lineItemPosRecordGenerateALineItem.rect);
        this.preLayoutedViews.put(flowLayoutManager.getPosition(view), lineItemPosRecordGenerateALineItem);
    }

    private LineItemPosRecord generateALineItem(FlowLayoutManager flowLayoutManager) {
        if (this.rectSimplePool == null) {
            this.rectSimplePool = new Pools$SimplePool<>(flowLayoutManager.getChildCount());
        }
        LineItemPosRecord lineItemPosRecordAcquire = this.rectSimplePool.acquire();
        return lineItemPosRecordAcquire == null ? new LineItemPosRecord() : lineItemPosRecordAcquire;
    }

    private static final class LineItemPosRecord {
        boolean isFirstItemInLine;
        Rect rect = new Rect();

        LineItemPosRecord() {
        }

        void setFirstItemInLine(boolean z) {
            this.isFirstItemInLine = z;
        }
    }
}
