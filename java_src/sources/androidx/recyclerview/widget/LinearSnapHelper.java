package androidx.recyclerview.widget;

import android.graphics.PointF;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public class LinearSnapHelper extends SnapHelper {
    private static final float INVALID_DISTANCE = 1.0f;

    @Nullable
    private OrientationHelper mHorizontalHelper;

    @Nullable
    private OrientationHelper mVerticalHelper;

    @Override // androidx.recyclerview.widget.SnapHelper
    public int[] c(@NonNull RecyclerView.LayoutManager layoutManager, @NonNull View view) {
        int[] iArr = new int[2];
        if (layoutManager.canScrollHorizontally()) {
            iArr[0] = n(view, q(layoutManager));
        } else {
            iArr[0] = 0;
        }
        if (layoutManager.canScrollVertically()) {
            iArr[1] = n(view, r(layoutManager));
        } else {
            iArr[1] = 0;
        }
        return iArr;
    }

    @NonNull
    private OrientationHelper q(@NonNull RecyclerView.LayoutManager layoutManager) {
        OrientationHelper orientationHelper = this.mHorizontalHelper;
        if (orientationHelper == null || orientationHelper.mLayoutManager != layoutManager) {
            this.mHorizontalHelper = OrientationHelper.a(layoutManager);
        }
        return this.mHorizontalHelper;
    }

    @NonNull
    private OrientationHelper r(@NonNull RecyclerView.LayoutManager layoutManager) {
        OrientationHelper orientationHelper = this.mVerticalHelper;
        if (orientationHelper == null || orientationHelper.mLayoutManager != layoutManager) {
            this.mVerticalHelper = OrientationHelper.c(layoutManager);
        }
        return this.mVerticalHelper;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.SnapHelper
    public int i(RecyclerView.LayoutManager layoutManager, int i10, int i11) {
        int itemCount;
        View viewH;
        int position;
        int i12;
        PointF pointFComputeScrollVectorForPosition;
        int iO;
        int iO2;
        if (!(layoutManager instanceof RecyclerView.SmoothScroller.ScrollVectorProvider) || (itemCount = layoutManager.getItemCount()) == 0 || (viewH = h(layoutManager)) == null || (position = layoutManager.getPosition(viewH)) == -1 || (pointFComputeScrollVectorForPosition = ((RecyclerView.SmoothScroller.ScrollVectorProvider) layoutManager).computeScrollVectorForPosition((i12 = itemCount - 1))) == null) {
            return -1;
        }
        if (layoutManager.canScrollHorizontally()) {
            iO = o(layoutManager, q(layoutManager), i10, 0);
            if (pointFComputeScrollVectorForPosition.x < 0.0f) {
                iO = -iO;
            }
        } else {
            iO = 0;
        }
        if (layoutManager.canScrollVertically()) {
            iO2 = o(layoutManager, r(layoutManager), 0, i11);
            if (pointFComputeScrollVectorForPosition.y < 0.0f) {
                iO2 = -iO2;
            }
        } else {
            iO2 = 0;
        }
        if (layoutManager.canScrollVertically()) {
            iO = iO2;
        }
        if (iO == 0) {
            return -1;
        }
        int i13 = position + iO;
        int i14 = i13 >= 0 ? i13 : 0;
        return i14 >= itemCount ? i12 : i14;
    }

    private float m(RecyclerView.LayoutManager layoutManager, OrientationHelper orientationHelper) {
        int childCount = layoutManager.getChildCount();
        if (childCount == 0) {
            return 1.0f;
        }
        View view = null;
        int i10 = Integer.MIN_VALUE;
        int i11 = Integer.MAX_VALUE;
        View view2 = null;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = layoutManager.getChildAt(i12);
            int position = layoutManager.getPosition(childAt);
            if (position != -1) {
                if (position < i11) {
                    view = childAt;
                    i11 = position;
                }
                if (position > i10) {
                    view2 = childAt;
                    i10 = position;
                }
            }
        }
        if (view == null || view2 == null) {
            return 1.0f;
        }
        int iMax = Math.max(orientationHelper.d(view), orientationHelper.d(view2)) - Math.min(orientationHelper.g(view), orientationHelper.g(view2));
        if (iMax == 0) {
            return 1.0f;
        }
        return (iMax * 1.0f) / ((i10 - i11) + 1);
    }

    private int n(@NonNull View view, OrientationHelper orientationHelper) {
        return (orientationHelper.g(view) + (orientationHelper.e(view) / 2)) - (orientationHelper.m() + (orientationHelper.n() / 2));
    }

    private int o(RecyclerView.LayoutManager layoutManager, OrientationHelper orientationHelper, int i10, int i11) {
        int i12;
        int[] iArrD = d(i10, i11);
        float fM = m(layoutManager, orientationHelper);
        if (fM <= 0.0f) {
            return 0;
        }
        if (Math.abs(iArrD[0]) > Math.abs(iArrD[1])) {
            i12 = iArrD[0];
        } else {
            i12 = iArrD[1];
        }
        return Math.round(i12 / fM);
    }

    @Nullable
    private View p(RecyclerView.LayoutManager layoutManager, OrientationHelper orientationHelper) {
        int childCount = layoutManager.getChildCount();
        View view = null;
        if (childCount == 0) {
            return null;
        }
        int iM = orientationHelper.m() + (orientationHelper.n() / 2);
        int i10 = Integer.MAX_VALUE;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = layoutManager.getChildAt(i11);
            int iAbs = Math.abs((orientationHelper.g(childAt) + (orientationHelper.e(childAt) / 2)) - iM);
            if (iAbs < i10) {
                view = childAt;
                i10 = iAbs;
            }
        }
        return view;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    public View h(RecyclerView.LayoutManager layoutManager) {
        if (layoutManager.canScrollVertically()) {
            return p(layoutManager, r(layoutManager));
        }
        if (layoutManager.canScrollHorizontally()) {
            return p(layoutManager, q(layoutManager));
        }
        return null;
    }
}
