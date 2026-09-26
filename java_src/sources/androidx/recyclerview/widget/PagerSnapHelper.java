package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public class PagerSnapHelper extends SnapHelper {
    private static final int MAX_SCROLL_ON_FLING_DURATION = 100;

    @Nullable
    private OrientationHelper mHorizontalHelper;

    @Nullable
    private OrientationHelper mVerticalHelper;

    @Override // androidx.recyclerview.widget.SnapHelper
    @Nullable
    public int[] c(@NonNull RecyclerView.LayoutManager layoutManager, @NonNull View view) {
        int[] iArr = new int[2];
        if (layoutManager.canScrollHorizontally()) {
            iArr[0] = m(view, o(layoutManager));
        } else {
            iArr[0] = 0;
        }
        if (layoutManager.canScrollVertically()) {
            iArr[1] = m(view, q(layoutManager));
        } else {
            iArr[1] = 0;
        }
        return iArr;
    }

    @NonNull
    private OrientationHelper o(@NonNull RecyclerView.LayoutManager layoutManager) {
        OrientationHelper orientationHelper = this.mHorizontalHelper;
        if (orientationHelper == null || orientationHelper.mLayoutManager != layoutManager) {
            this.mHorizontalHelper = OrientationHelper.a(layoutManager);
        }
        return this.mHorizontalHelper;
    }

    @NonNull
    private OrientationHelper q(@NonNull RecyclerView.LayoutManager layoutManager) {
        OrientationHelper orientationHelper = this.mVerticalHelper;
        if (orientationHelper == null || orientationHelper.mLayoutManager != layoutManager) {
            this.mVerticalHelper = OrientationHelper.c(layoutManager);
        }
        return this.mVerticalHelper;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    @Nullable
    protected RecyclerView.SmoothScroller e(@NonNull RecyclerView.LayoutManager layoutManager) {
        if (layoutManager instanceof RecyclerView.SmoothScroller.ScrollVectorProvider) {
            return new LinearSmoothScroller(this.mRecyclerView.getContext()) { // from class: androidx.recyclerview.widget.PagerSnapHelper.1
                @Override // androidx.recyclerview.widget.LinearSmoothScroller
                protected float calculateSpeedPerPixel(@NonNull DisplayMetrics displayMetrics) {
                    return 100.0f / displayMetrics.densityDpi;
                }

                @Override // androidx.recyclerview.widget.LinearSmoothScroller
                protected int calculateTimeForScrolling(int i10) {
                    return Math.min(100, super.calculateTimeForScrolling(i10));
                }

                @Override // androidx.recyclerview.widget.LinearSmoothScroller, androidx.recyclerview.widget.RecyclerView.SmoothScroller
                protected void onTargetFound(@NonNull View view, @NonNull RecyclerView.State state, @NonNull RecyclerView.SmoothScroller.Action action) {
                    PagerSnapHelper pagerSnapHelper = PagerSnapHelper.this;
                    int[] iArrC = pagerSnapHelper.c(pagerSnapHelper.mRecyclerView.getLayoutManager(), view);
                    int i10 = iArrC[0];
                    int i11 = iArrC[1];
                    int iCalculateTimeForDeceleration = calculateTimeForDeceleration(Math.max(Math.abs(i10), Math.abs(i11)));
                    if (iCalculateTimeForDeceleration > 0) {
                        action.d(i10, i11, iCalculateTimeForDeceleration, this.mDecelerateInterpolator);
                    }
                }
            };
        }
        return null;
    }

    private int m(@NonNull View view, OrientationHelper orientationHelper) {
        return (orientationHelper.g(view) + (orientationHelper.e(view) / 2)) - (orientationHelper.m() + (orientationHelper.n() / 2));
    }

    @Nullable
    private View n(RecyclerView.LayoutManager layoutManager, OrientationHelper orientationHelper) {
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

    @Nullable
    private OrientationHelper p(RecyclerView.LayoutManager layoutManager) {
        if (layoutManager.canScrollVertically()) {
            return q(layoutManager);
        }
        if (layoutManager.canScrollHorizontally()) {
            return o(layoutManager);
        }
        return null;
    }

    private boolean r(RecyclerView.LayoutManager layoutManager, int i10, int i11) {
        if (layoutManager.canScrollHorizontally()) {
            if (i10 <= 0) {
                return false;
            }
            return true;
        }
        if (i11 <= 0) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean s(RecyclerView.LayoutManager layoutManager) {
        PointF pointFComputeScrollVectorForPosition;
        int itemCount = layoutManager.getItemCount();
        if (!(layoutManager instanceof RecyclerView.SmoothScroller.ScrollVectorProvider) || (pointFComputeScrollVectorForPosition = ((RecyclerView.SmoothScroller.ScrollVectorProvider) layoutManager).computeScrollVectorForPosition(itemCount - 1)) == null) {
            return false;
        }
        if (pointFComputeScrollVectorForPosition.x >= 0.0f && pointFComputeScrollVectorForPosition.y >= 0.0f) {
            return false;
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    @Nullable
    @SuppressLint({"UnknownNullness"})
    public View h(RecyclerView.LayoutManager layoutManager) {
        if (layoutManager.canScrollVertically()) {
            return n(layoutManager, q(layoutManager));
        }
        if (layoutManager.canScrollHorizontally()) {
            return n(layoutManager, o(layoutManager));
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    @SuppressLint({"UnknownNullness"})
    public int i(RecyclerView.LayoutManager layoutManager, int i10, int i11) {
        OrientationHelper orientationHelperP;
        int i12;
        int itemCount = layoutManager.getItemCount();
        if (itemCount == 0 || (orientationHelperP = p(layoutManager)) == null) {
            return -1;
        }
        int childCount = layoutManager.getChildCount();
        View view = null;
        int i13 = Integer.MAX_VALUE;
        int i14 = Integer.MIN_VALUE;
        View view2 = null;
        for (int i15 = 0; i15 < childCount; i15++) {
            View childAt = layoutManager.getChildAt(i15);
            if (childAt != null) {
                int iM = m(childAt, orientationHelperP);
                if (iM <= 0 && iM > i14) {
                    view2 = childAt;
                    i14 = iM;
                }
                if (iM >= 0 && iM < i13) {
                    view = childAt;
                    i13 = iM;
                }
            }
        }
        boolean zR = r(layoutManager, i10, i11);
        if (zR && view != null) {
            return layoutManager.getPosition(view);
        }
        if (!zR && view2 != null) {
            return layoutManager.getPosition(view2);
        }
        if (zR) {
            view = view2;
        }
        if (view == null) {
            return -1;
        }
        int position = layoutManager.getPosition(view);
        if (s(layoutManager) == zR) {
            i12 = -1;
        } else {
            i12 = 1;
        }
        int i16 = position + i12;
        if (i16 < 0 || i16 >= itemCount) {
            return -1;
        }
        return i16;
    }
}
