package com.narvii.widget.recycleview.layoutmanager;

import android.graphics.Rect;
import android.util.SparseArray;
import android.view.View;
import androidx.core.util.Pools;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.util.Utils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class LayoutHelperImpl implements ILayoutHelper {
    private Pools.SimplePool<LineItemPosRecord> rectSimplePool;
    private SparseArray<LineItemPosRecord> preLayoutedViews = new SparseArray<>();
    private List<View> pendingRecycleView = new ArrayList();
    private int maxLineNumbser = Integer.MIN_VALUE;

    @Override // com.narvii.widget.recycleview.layoutmanager.ILayoutHelper
    public void willCalculateUnVisibleViews() {
        for (int i10 = 0; i10 < this.preLayoutedViews.size(); i10++) {
            LineItemPosRecord lineItemPosRecord = this.preLayoutedViews.get(i10, null);
            if (lineItemPosRecord != null) {
                releaseItemLayoutInfo(lineItemPosRecord);
            }
        }
        this.preLayoutedViews.clear();
    }

    private static final class LineItemPosRecord {
        boolean isFirstItemInLine;
        Rect rect = new Rect();

        void setFirstItemInLine(boolean z6) {
            this.isFirstItemInLine = z6;
        }

        LineItemPosRecord() {
        }
    }

    private void alignTwoSideLayout(List<View> list, FlowLayoutManager flowLayoutManager, boolean z6, RecyclerView.Recycler recycler) {
        int contentHorizontalSpace;
        flowLayoutManager.getLayoutInfo();
        if (list.size() <= 1 || z6) {
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
        int i10 = 0;
        while (i10 < list.size()) {
            View view = list.get(i10);
            int widthWithMargins2 = flowLayoutManager.getWidthWithMargins(view);
            int heightWithMargins = flowLayoutManager.getHeightWithMargins(view);
            int i11 = flowLayoutManager.getLayoutInfo().layoutAnchor;
            int i12 = paddingLeft + widthWithMargins2;
            realLayoutItem(paddingLeft, i11, i12, i11 + heightWithMargins, view, flowLayoutManager, recycler, i10 == 0);
            paddingLeft = i12 + contentHorizontalSpace;
            i10++;
        }
    }

    private LineItemPosRecord generateALineItem(FlowLayoutManager flowLayoutManager) {
        if (this.rectSimplePool == null) {
            this.rectSimplePool = new Pools.SimplePool<>(flowLayoutManager.getChildCount());
        }
        LineItemPosRecord lineItemPosRecordA = this.rectSimplePool.a();
        return lineItemPosRecordA == null ? new LineItemPosRecord() : lineItemPosRecordA;
    }

    private void releaseItemLayoutInfo(LineItemPosRecord lineItemPosRecord) {
        try {
            this.rectSimplePool.b(lineItemPosRecord);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void alignCenterLayout(List<View> list, FlowLayoutManager flowLayoutManager, RecyclerView.Recycler recycler) {
        View view;
        boolean z6;
        Iterator<View> it = list.iterator();
        int widthWithMargins = 0;
        while (it.hasNext()) {
            widthWithMargins += flowLayoutManager.getWidthWithMargins(it.next());
        }
        int paddingLeft = flowLayoutManager.getPaddingLeft() + ((flowLayoutManager.getContentHorizontalSpace() - widthWithMargins) / 2);
        int i10 = 0;
        while (true) {
            int i11 = paddingLeft;
            if (i10 < list.size()) {
                if (Utils.isRtl()) {
                    view = list.get((list.size() - i10) - 1);
                } else {
                    view = list.get(i10);
                }
                View view2 = view;
                int widthWithMargins2 = flowLayoutManager.getWidthWithMargins(view2);
                int heightWithMargins = flowLayoutManager.getHeightWithMargins(view2);
                int i12 = flowLayoutManager.getLayoutInfo().layoutAnchor;
                paddingLeft = widthWithMargins2 + i11;
                int i13 = i12 + heightWithMargins;
                if (i10 == 0) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                realLayoutItem(i11, i12, paddingLeft, i13, view2, flowLayoutManager, recycler, z6);
                i10++;
            } else {
                return;
            }
        }
    }

    private void alignLeftLayout(List<View> list, FlowLayoutManager flowLayoutManager, RecyclerView.Recycler recycler) {
        boolean z6;
        int paddingLeft = flowLayoutManager.getPaddingLeft();
        int i10 = 0;
        while (i10 < list.size()) {
            View view = list.get(i10);
            int widthWithMargins = flowLayoutManager.getWidthWithMargins(view);
            int heightWithMargins = flowLayoutManager.getHeightWithMargins(view);
            int i11 = flowLayoutManager.getLayoutInfo().layoutAnchor;
            int i12 = paddingLeft + widthWithMargins;
            int i13 = i11 + heightWithMargins;
            if (i10 == 0) {
                z6 = true;
            } else {
                z6 = false;
            }
            realLayoutItem(paddingLeft, i11, i12, i13, view, flowLayoutManager, recycler, z6);
            i10++;
            paddingLeft = i12;
        }
    }

    private void alignRightLayout(List<View> list, FlowLayoutManager flowLayoutManager, RecyclerView.Recycler recycler) {
        boolean z6;
        int width = flowLayoutManager.getWidth() - flowLayoutManager.getPaddingRight();
        int size = list.size() - 1;
        while (true) {
            int i10 = width;
            if (size >= 0) {
                View view = list.get(size);
                int widthWithMargins = flowLayoutManager.getWidthWithMargins(view);
                int heightWithMargins = flowLayoutManager.getHeightWithMargins(view);
                width = i10 - widthWithMargins;
                int i11 = flowLayoutManager.getLayoutInfo().layoutAnchor;
                int i12 = i11 + heightWithMargins;
                if (size == 0) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                realLayoutItem(width, i11, i10, i12, view, flowLayoutManager, recycler, z6);
                size--;
            } else {
                return;
            }
        }
    }

    private void realLayoutItem(int i10, int i11, int i12, int i13, View view, FlowLayoutManager flowLayoutManager, RecyclerView.Recycler recycler, boolean z6) {
        FlowLayoutManager.LayoutInfo layoutInfo = flowLayoutManager.getLayoutInfo();
        if (layoutInfo.layoutByScroll) {
            flowLayoutManager.layoutDecoratedWithMargins(view, i10, i11, i12, i13);
            return;
        }
        if (layoutInfo.justCalculate) {
            LineItemPosRecord lineItemPosRecordGenerateALineItem = generateALineItem(flowLayoutManager);
            lineItemPosRecordGenerateALineItem.setFirstItemInLine(z6);
            lineItemPosRecordGenerateALineItem.rect.set(i10, i11, i12, i13);
            this.preLayoutedViews.put(flowLayoutManager.getPosition(view), lineItemPosRecordGenerateALineItem);
            flowLayoutManager.removeAndRecycleView(view, recycler);
            return;
        }
        flowLayoutManager.layoutDecoratedWithMargins(view, i10, i11, i12, i13);
    }

    private void saveLayoutInfo(View view, FlowLayoutManager flowLayoutManager, boolean z6) {
        LineItemPosRecord lineItemPosRecordGenerateALineItem = generateALineItem(flowLayoutManager);
        lineItemPosRecordGenerateALineItem.setFirstItemInLine(z6);
        flowLayoutManager.getDecoratedBoundsWithMargins(view, lineItemPosRecordGenerateALineItem.rect);
        this.preLayoutedViews.put(flowLayoutManager.getPosition(view), lineItemPosRecordGenerateALineItem);
    }

    @Override // com.narvii.widget.recycleview.layoutmanager.ILayoutHelper
    public void layoutARow(List<View> list, RecyclerView.Recycler recycler, FlowLayoutManager flowLayoutManager, boolean z6) {
        int i10 = flowLayoutManager.getLayoutInfo().alignMode;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 == 3) {
                        alignCenterLayout(list, flowLayoutManager, recycler);
                    }
                } else {
                    alignRightLayout(list, flowLayoutManager, recycler);
                }
            } else {
                alignLeftLayout(list, flowLayoutManager, recycler);
            }
        } else {
            alignTwoSideLayout(list, flowLayoutManager, z6, recycler);
        }
        if ((!list.isEmpty() && flowLayoutManager.getLayoutInfo().layoutByScroll) || (!flowLayoutManager.getLayoutInfo().layoutByScroll && !flowLayoutManager.getLayoutInfo().justCalculate)) {
            View view = list.get(list.size() - 1);
            flowLayoutManager.getLayoutInfo().layoutAnchor = flowLayoutManager.getViewBottomWithMargin(view);
        }
        if (list.size() > this.maxLineNumbser) {
            int size = list.size();
            this.maxLineNumbser = size;
            recycler.L(size);
        }
        list.clear();
    }

    @Override // com.narvii.widget.recycleview.layoutmanager.ILayoutHelper
    public void layoutReverse(RecyclerView.Recycler recycler, RecyclerView.State state, FlowLayoutManager flowLayoutManager) {
        FlowLayoutManager.LayoutInfo layoutInfo = flowLayoutManager.getLayoutInfo();
        for (int i10 = layoutInfo.startLayoutPos; i10 >= 0; i10--) {
            LineItemPosRecord lineItemPosRecord = this.preLayoutedViews.get(i10);
            Rect rect = lineItemPosRecord.rect;
            int i11 = rect.bottom - rect.top;
            if (layoutInfo.layoutAnchor + layoutInfo.pendingScrollDistance > flowLayoutManager.getPaddingTop()) {
                View viewO = recycler.o(i10);
                flowLayoutManager.addView(viewO, 0);
                flowLayoutManager.measureChildWithMargins(viewO, 0, 0);
                int i12 = rect.left;
                int i13 = layoutInfo.layoutAnchor;
                flowLayoutManager.layoutDecoratedWithMargins(viewO, i12, i13 - i11, rect.right, i13);
                if (lineItemPosRecord.isFirstItemInLine) {
                    layoutInfo.layoutAnchor -= i11;
                }
                releaseItemLayoutInfo(lineItemPosRecord);
                this.preLayoutedViews.remove(i10);
            } else {
                return;
            }
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
        int i10 = layoutInfo.layoutFrom;
        if (i10 == -1) {
            for (int childCount = flowLayoutManager.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = flowLayoutManager.getChildAt(childCount);
                if (flowLayoutManager.getViewTopWithMargin(childAt) + layoutInfo.pendingScrollDistance < flowLayoutManager.getHeight() - flowLayoutManager.getPaddingBottom()) {
                    break;
                }
                this.pendingRecycleView.add(childAt);
            }
        } else if (i10 == 1) {
            int i11 = Integer.MAX_VALUE;
            for (int i12 = 0; i12 < flowLayoutManager.getChildCount(); i12++) {
                View childAt2 = flowLayoutManager.getChildAt(i12);
                if (flowLayoutManager.getViewBottomWithMargin(childAt2) - layoutInfo.pendingScrollDistance > flowLayoutManager.getPaddingTop()) {
                    break;
                }
                int viewTopWithMargin = flowLayoutManager.getViewTopWithMargin(childAt2);
                if (viewTopWithMargin != i11) {
                    saveLayoutInfo(childAt2, flowLayoutManager, true);
                    i11 = viewTopWithMargin;
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
}
