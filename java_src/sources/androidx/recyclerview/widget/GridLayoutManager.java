package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import androidx.annotation.NonNull;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import java.util.Arrays;

/* JADX INFO: loaded from: classes9.dex */
public class GridLayoutManager extends LinearLayoutManager {
    private static final boolean DEBUG = false;
    public static final int DEFAULT_SPAN_COUNT = -1;
    private static final String TAG = "GridLayoutManager";
    int[] mCachedBorders;
    final Rect mDecorInsets;
    boolean mPendingSpanCountChange;
    final SparseIntArray mPreLayoutSpanIndexCache;
    final SparseIntArray mPreLayoutSpanSizeCache;
    View[] mSet;
    int mSpanCount;
    SpanSizeLookup mSpanSizeLookup;
    private boolean mUsingSpansToEstimateScrollBarDimensions;

    public static final class DefaultSpanSizeLookup extends SpanSizeLookup {
        @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
        public int e(int i10, int i11) {
            return i10 % i11;
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
        public int f(int i10) {
            return 1;
        }
    }

    public static class LayoutParams extends RecyclerView.LayoutParams {
        public static final int INVALID_SPAN_ID = -1;
        int mSpanIndex;
        int mSpanSize;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.mSpanIndex = -1;
            this.mSpanSize = 0;
        }

        public int f() {
            return this.mSpanIndex;
        }

        public int g() {
            return this.mSpanSize;
        }

        public LayoutParams(int i10, int i11) {
            super(i10, i11);
            this.mSpanIndex = -1;
            this.mSpanSize = 0;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.mSpanIndex = -1;
            this.mSpanSize = 0;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.mSpanIndex = -1;
            this.mSpanSize = 0;
        }

        public LayoutParams(RecyclerView.LayoutParams layoutParams) {
            super(layoutParams);
            this.mSpanIndex = -1;
            this.mSpanSize = 0;
        }
    }

    public static abstract class SpanSizeLookup {
        final SparseIntArray mSpanIndexCache = new SparseIntArray();
        final SparseIntArray mSpanGroupIndexCache = new SparseIntArray();
        private boolean mCacheSpanIndices = false;
        private boolean mCacheSpanGroupIndices = false;

        public abstract int f(int i10);

        int b(int i10, int i11) {
            if (!this.mCacheSpanGroupIndices) {
                return d(i10, i11);
            }
            int i12 = this.mSpanGroupIndexCache.get(i10, -1);
            if (i12 != -1) {
                return i12;
            }
            int iD = d(i10, i11);
            this.mSpanGroupIndexCache.put(i10, iD);
            return iD;
        }

        int c(int i10, int i11) {
            if (!this.mCacheSpanIndices) {
                return e(i10, i11);
            }
            int i12 = this.mSpanIndexCache.get(i10, -1);
            if (i12 != -1) {
                return i12;
            }
            int iE = e(i10, i11);
            this.mSpanIndexCache.put(i10, iE);
            return iE;
        }

        public int d(int i10, int i11) {
            int i12;
            int i13;
            int iC;
            int iA;
            if (!this.mCacheSpanGroupIndices || (iA = a(this.mSpanGroupIndexCache, i10)) == -1) {
                i12 = 0;
                i13 = 0;
                iC = 0;
            } else {
                i12 = this.mSpanGroupIndexCache.get(iA);
                i13 = iA + 1;
                iC = c(iA, i11) + f(iA);
                if (iC == i11) {
                    i12++;
                    iC = 0;
                }
            }
            int iF = f(i10);
            while (i13 < i10) {
                int iF2 = f(i13);
                iC += iF2;
                if (iC == i11) {
                    i12++;
                    iC = 0;
                } else if (iC > i11) {
                    i12++;
                    iC = iF2;
                }
                i13++;
            }
            return iC + iF > i11 ? i12 + 1 : i12;
        }

        public void g() {
            this.mSpanGroupIndexCache.clear();
        }

        public void h() {
            this.mSpanIndexCache.clear();
        }

        static int a(SparseIntArray sparseIntArray, int i10) {
            int size = sparseIntArray.size() - 1;
            int i11 = 0;
            while (i11 <= size) {
                int i12 = (i11 + size) >>> 1;
                if (sparseIntArray.keyAt(i12) < i10) {
                    i11 = i12 + 1;
                } else {
                    size = i12 - 1;
                }
            }
            int i13 = i11 - 1;
            if (i13 >= 0 && i13 < sparseIntArray.size()) {
                return sparseIntArray.keyAt(i13);
            }
            return -1;
        }

        /* JADX WARN: Code duplicated, block: B:12:0x0024  */
        /* JADX WARN: Code duplicated, block: B:14:0x002b  */
        /* JADX WARN: Code duplicated, block: B:15:0x002d A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:16:0x002f  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x002b -> B:17:0x0030). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x002d -> B:17:0x0030). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x002f -> B:17:0x0030). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        public int e(int r6, int r7) {
            /*
                r5 = this;
                int r0 = r5.f(r6)
                r1 = 0
                if (r0 != r7) goto L8
                return r1
            L8:
                boolean r2 = r5.mCacheSpanIndices
                if (r2 == 0) goto L20
                android.util.SparseIntArray r2 = r5.mSpanIndexCache
                int r2 = a(r2, r6)
                if (r2 < 0) goto L20
                android.util.SparseIntArray r3 = r5.mSpanIndexCache
                int r3 = r3.get(r2)
                int r4 = r5.f(r2)
                int r3 = r3 + r4
                goto L30
            L20:
                r2 = r1
                r3 = r2
            L22:
                if (r2 >= r6) goto L33
                int r4 = r5.f(r2)
                int r3 = r3 + r4
                if (r3 != r7) goto L2d
                r3 = r1
                goto L30
            L2d:
                if (r3 <= r7) goto L30
                r3 = r4
            L30:
                int r2 = r2 + 1
                goto L22
            L33:
                int r0 = r0 + r3
                if (r0 > r7) goto L37
                return r3
            L37:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup.e(int, int):int");
        }
    }

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.mPendingSpanCountChange = false;
        this.mSpanCount = -1;
        this.mPreLayoutSpanSizeCache = new SparseIntArray();
        this.mPreLayoutSpanIndexCache = new SparseIntArray();
        this.mSpanSizeLookup = new DefaultSpanSizeLookup();
        this.mDecorInsets = new Rect();
        s(RecyclerView.LayoutManager.getProperties(context, attributeSet, i10, i11).spanCount);
    }

    private void a(RecyclerView.Recycler recycler, RecyclerView.State state, int i10, boolean z6) {
        int i11;
        int i12;
        int i13;
        int i14 = 0;
        if (z6) {
            i13 = 1;
            i12 = i10;
            i11 = 0;
        } else {
            i11 = i10 - 1;
            i12 = -1;
            i13 = -1;
        }
        while (i11 != i12) {
            View view = this.mSet[i11];
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            int iN = n(recycler, state, getPosition(view));
            layoutParams.mSpanSize = iN;
            layoutParams.mSpanIndex = i14;
            i14 += iN;
            i11 += i13;
        }
    }

    static int[] d(int[] iArr, int i10, int i11) {
        int i12;
        if (iArr == null || iArr.length != i10 + 1 || iArr[iArr.length - 1] != i11) {
            iArr = new int[i10 + 1];
        }
        int i13 = 0;
        iArr[0] = 0;
        int i14 = i11 / i10;
        int i15 = i11 % i10;
        int i16 = 0;
        for (int i17 = 1; i17 <= i10; i17++) {
            i13 += i15;
            if (i13 <= 0 || i10 - i13 >= i15) {
                i12 = i14;
            } else {
                i12 = i14 + 1;
                i13 -= i10;
            }
            i16 += i12;
            iArr[i17] = i16;
        }
        return iArr;
    }

    private void h(RecyclerView.Recycler recycler, RecyclerView.State state, LinearLayoutManager.AnchorInfo anchorInfo, int i10) {
        boolean z6 = i10 == 1;
        int iM = m(recycler, state, anchorInfo.mPosition);
        if (z6) {
            while (iM > 0) {
                int i11 = anchorInfo.mPosition;
                if (i11 <= 0) {
                    return;
                }
                int i12 = i11 - 1;
                anchorInfo.mPosition = i12;
                iM = m(recycler, state, i12);
            }
            return;
        }
        int iB = state.b() - 1;
        int i13 = anchorInfo.mPosition;
        while (i13 < iB) {
            int i14 = i13 + 1;
            int iM2 = m(recycler, state, i14);
            if (iM2 <= iM) {
                break;
            }
            i13 = i14;
            iM = iM2;
        }
        anchorInfo.mPosition = i13;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new LayoutParams(context, attributeSet);
    }

    public int k() {
        return this.mSpanCount;
    }

    public SpanSizeLookup o() {
        return this.mSpanSizeLookup;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean supportsPredictiveItemAnimations() {
        return this.mPendingSavedState == null && !this.mPendingSpanCountChange;
    }

    private void c(int i10) {
        this.mCachedBorders = d(this.mCachedBorders, this.mSpanCount, i10);
    }

    private void e() {
        this.mPreLayoutSpanSizeCache.clear();
        this.mPreLayoutSpanIndexCache.clear();
    }

    private void i() {
        View[] viewArr = this.mSet;
        if (viewArr == null || viewArr.length != this.mSpanCount) {
            this.mSet = new View[this.mSpanCount];
        }
    }

    private void p(float f, int i10) {
        c(Math.max(Math.round(f * this.mSpanCount), i10));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean checkLayoutParams(RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    void collectPrefetchPositionsForLayoutState(RecyclerView.State state, LinearLayoutManager.LayoutState layoutState, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        int iF = this.mSpanCount;
        for (int i10 = 0; i10 < this.mSpanCount && layoutState.c(state) && iF > 0; i10++) {
            int i11 = layoutState.mCurrentPosition;
            layoutPrefetchRegistry.a(i11, Math.max(0, layoutState.mScrollingOffset));
            iF -= this.mSpanSizeLookup.f(i11);
            layoutState.mCurrentPosition += layoutState.mItemDirection;
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollOffset(RecyclerView.State state) {
        return this.mUsingSpansToEstimateScrollBarDimensions ? f(state) : super.computeHorizontalScrollOffset(state);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollRange(RecyclerView.State state) {
        return this.mUsingSpansToEstimateScrollBarDimensions ? g(state) : super.computeHorizontalScrollRange(state);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollOffset(RecyclerView.State state) {
        return this.mUsingSpansToEstimateScrollBarDimensions ? f(state) : super.computeVerticalScrollOffset(state);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollRange(RecyclerView.State state) {
        return this.mUsingSpansToEstimateScrollBarDimensions ? g(state) : super.computeVerticalScrollRange(state);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return this.mOrientation == 0 ? new LayoutParams(-2, -1) : new LayoutParams(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int getColumnCountForAccessibility(RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.mOrientation == 1) {
            return this.mSpanCount;
        }
        if (state.b() < 1) {
            return 0;
        }
        return l(recycler, state, state.b() - 1) + 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int getRowCountForAccessibility(RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.mOrientation == 0) {
            return this.mSpanCount;
        }
        if (state.b() < 1) {
            return 0;
        }
        return l(recycler, state, state.b() - 1) + 1;
    }

    int j(int i10, int i11) {
        if (this.mOrientation != 1 || !isLayoutRTL()) {
            int[] iArr = this.mCachedBorders;
            return iArr[i11 + i10] - iArr[i10];
        }
        int[] iArr2 = this.mCachedBorders;
        int i12 = this.mSpanCount;
        return iArr2[i12 - i10] - iArr2[(i12 - i10) - i11];
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    void layoutChunk(RecyclerView.Recycler recycler, RecyclerView.State state, LinearLayoutManager.LayoutState layoutState, LinearLayoutManager.LayoutChunkResult layoutChunkResult) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int iF;
        int i15;
        int iF2;
        int iF3;
        int i16;
        int childMeasureSpec;
        int childMeasureSpec2;
        View viewD;
        int iL = this.mOrientationHelper.l();
        boolean z6 = iL != 1073741824;
        int i17 = getChildCount() > 0 ? this.mCachedBorders[this.mSpanCount] : 0;
        if (z6) {
            t();
        }
        boolean z10 = layoutState.mItemDirection == 1;
        int iM = this.mSpanCount;
        if (!z10) {
            iM = m(recycler, state, layoutState.mCurrentPosition) + n(recycler, state, layoutState.mCurrentPosition);
        }
        int i18 = 0;
        while (i18 < this.mSpanCount && layoutState.c(state) && iM > 0) {
            int i19 = layoutState.mCurrentPosition;
            int iN = n(recycler, state, i19);
            if (iN > this.mSpanCount) {
                throw new IllegalArgumentException("Item at position " + i19 + " requires " + iN + " spans but GridLayoutManager has only " + this.mSpanCount + " spans.");
            }
            iM -= iN;
            if (iM < 0 || (viewD = layoutState.d(recycler)) == null) {
                break;
            }
            this.mSet[i18] = viewD;
            i18++;
        }
        if (i18 == 0) {
            layoutChunkResult.mFinished = true;
            return;
        }
        a(recycler, state, i18, z10);
        float f = 0.0f;
        int i20 = 0;
        for (int i21 = 0; i21 < i18; i21++) {
            View view = this.mSet[i21];
            if (layoutState.mScrapList == null) {
                if (z10) {
                    addView(view);
                } else {
                    addView(view, 0);
                }
            } else if (z10) {
                addDisappearingView(view);
            } else {
                addDisappearingView(view, 0);
            }
            calculateItemDecorationsForChild(view, this.mDecorInsets);
            q(view, iL, false);
            int iE = this.mOrientationHelper.e(view);
            if (iE > i20) {
                i20 = iE;
            }
            float f6 = (this.mOrientationHelper.f(view) * 1.0f) / ((LayoutParams) view.getLayoutParams()).mSpanSize;
            if (f6 > f) {
                f = f6;
            }
        }
        if (z6) {
            p(f, i17);
            i20 = 0;
            for (int i22 = 0; i22 < i18; i22++) {
                View view2 = this.mSet[i22];
                q(view2, 1073741824, true);
                int iE2 = this.mOrientationHelper.e(view2);
                if (iE2 > i20) {
                    i20 = iE2;
                }
            }
        }
        for (int i23 = 0; i23 < i18; i23++) {
            View view3 = this.mSet[i23];
            if (this.mOrientationHelper.e(view3) != i20) {
                LayoutParams layoutParams = (LayoutParams) view3.getLayoutParams();
                Rect rect = layoutParams.mDecorInsets;
                int i24 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                int i25 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                int iJ = j(layoutParams.mSpanIndex, layoutParams.mSpanSize);
                if (this.mOrientation == 1) {
                    childMeasureSpec2 = RecyclerView.LayoutManager.getChildMeasureSpec(iJ, 1073741824, i25, ((ViewGroup.MarginLayoutParams) layoutParams).width, false);
                    childMeasureSpec = View.MeasureSpec.makeMeasureSpec(i20 - i24, 1073741824);
                } else {
                    int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i20 - i25, 1073741824);
                    childMeasureSpec = RecyclerView.LayoutManager.getChildMeasureSpec(iJ, 1073741824, i24, ((ViewGroup.MarginLayoutParams) layoutParams).height, false);
                    childMeasureSpec2 = iMakeMeasureSpec;
                }
                r(view3, childMeasureSpec2, childMeasureSpec, true);
            }
        }
        layoutChunkResult.mConsumed = i20;
        if (this.mOrientation == 1) {
            if (layoutState.mLayoutDirection == -1) {
                iF = layoutState.mOffset;
                i16 = iF - i20;
            } else {
                i16 = layoutState.mOffset;
                iF = i16 + i20;
            }
            i13 = i16;
            i14 = 0;
            i12 = 0;
        } else {
            if (layoutState.mLayoutDirection == -1) {
                i11 = layoutState.mOffset;
                i10 = i11 - i20;
            } else {
                i10 = layoutState.mOffset;
                i11 = i10 + i20;
            }
            i12 = i10;
            i13 = 0;
            i14 = i11;
            iF = 0;
        }
        int i26 = 0;
        while (i26 < i18) {
            View view4 = this.mSet[i26];
            LayoutParams layoutParams2 = (LayoutParams) view4.getLayoutParams();
            if (this.mOrientation == 1) {
                if (isLayoutRTL()) {
                    int paddingLeft = getPaddingLeft() + this.mCachedBorders[this.mSpanCount - layoutParams2.mSpanIndex];
                    iF2 = paddingLeft;
                    iF3 = paddingLeft - this.mOrientationHelper.f(view4);
                } else {
                    int paddingLeft2 = getPaddingLeft() + this.mCachedBorders[layoutParams2.mSpanIndex];
                    iF3 = paddingLeft2;
                    iF2 = this.mOrientationHelper.f(view4) + paddingLeft2;
                }
                i15 = i13;
            } else {
                int paddingTop = getPaddingTop() + this.mCachedBorders[layoutParams2.mSpanIndex];
                i15 = paddingTop;
                iF2 = i14;
                iF3 = i12;
                iF = this.mOrientationHelper.f(view4) + paddingTop;
            }
            layoutDecoratedWithMargins(view4, iF3, i15, iF2, iF);
            if (layoutParams2.d() || layoutParams2.c()) {
                layoutChunkResult.mIgnoreConsumed = true;
            }
            layoutChunkResult.mFocusable |= view4.hasFocusable();
            i26++;
            iF = iF;
            i14 = iF2;
            i12 = iF3;
            i13 = i15;
        }
        Arrays.fill(this.mSet, (Object) null);
    }

    /* JADX WARN: Code duplicated, block: B:72:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:73:0x010f  */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00d1, code lost:
    
        if (r13 == (r2 > r15)) goto L47;
     */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public View onFocusSearchFailed(View view, int i10, RecyclerView.Recycler recycler, RecyclerView.State state) {
        int childCount;
        int i11;
        int childCount2;
        View view2;
        View view3;
        int i12;
        int i13;
        int i14;
        int i15;
        RecyclerView.Recycler recycler2 = recycler;
        RecyclerView.State state2 = state;
        View viewFindContainingItemView = findContainingItemView(view);
        View view4 = null;
        if (viewFindContainingItemView == null) {
            return null;
        }
        LayoutParams layoutParams = (LayoutParams) viewFindContainingItemView.getLayoutParams();
        int i16 = layoutParams.mSpanIndex;
        int i17 = layoutParams.mSpanSize + i16;
        if (super.onFocusSearchFailed(view, i10, recycler, state) == null) {
            return null;
        }
        if ((convertFocusDirectionToLayoutDirection(i10) == 1) != this.mShouldReverseLayout) {
            childCount2 = getChildCount() - 1;
            childCount = -1;
            i11 = -1;
        } else {
            childCount = getChildCount();
            i11 = 1;
            childCount2 = 0;
        }
        boolean z6 = this.mOrientation == 1 && isLayoutRTL();
        int iL = l(recycler2, state2, childCount2);
        int i18 = -1;
        int i19 = -1;
        int iMin = 0;
        int iMin2 = 0;
        int i20 = childCount2;
        View view5 = null;
        while (i20 != childCount) {
            int iL2 = l(recycler2, state2, i20);
            View childAt = getChildAt(i20);
            if (childAt == viewFindContainingItemView) {
                break;
            }
            if (!childAt.hasFocusable() || iL2 == iL) {
                LayoutParams layoutParams2 = (LayoutParams) childAt.getLayoutParams();
                int i21 = layoutParams2.mSpanIndex;
                view2 = viewFindContainingItemView;
                int i22 = layoutParams2.mSpanSize + i21;
                if (childAt.hasFocusable() && i21 == i16 && i22 == i17) {
                    return childAt;
                }
                if (!(childAt.hasFocusable() && view4 == null) && (childAt.hasFocusable() || view5 != null)) {
                    view3 = view5;
                    int iMin3 = Math.min(i22, i17) - Math.max(i21, i16);
                    if (!childAt.hasFocusable()) {
                        if (view4 == null) {
                            i12 = iMin;
                            i13 = childCount;
                            if (isViewPartiallyVisible(childAt, false, true)) {
                                i14 = iMin2;
                                if (iMin3 > i14) {
                                    i15 = i19;
                                } else if (iMin3 == i14) {
                                    i15 = i19;
                                    if (z6 == (i21 > i15)) {
                                    }
                                    i20 += i11;
                                    recycler2 = recycler;
                                    state2 = state;
                                    viewFindContainingItemView = view2;
                                    childCount = i13;
                                } else {
                                    i15 = i19;
                                }
                                if (childAt.hasFocusable()) {
                                    i18 = layoutParams2.mSpanIndex;
                                    i19 = i15;
                                    iMin2 = i14;
                                    view5 = view3;
                                    view4 = childAt;
                                    iMin = Math.min(i22, i17) - Math.max(i21, i16);
                                } else {
                                    int i23 = layoutParams2.mSpanIndex;
                                    iMin2 = Math.min(i22, i17) - Math.max(i21, i16);
                                    i19 = i23;
                                    iMin = i12;
                                    view5 = childAt;
                                }
                                i20 += i11;
                                recycler2 = recycler;
                                state2 = state;
                                viewFindContainingItemView = view2;
                                childCount = i13;
                            }
                            i19 = i15;
                            iMin2 = i14;
                            iMin = i12;
                            view5 = view3;
                            i20 += i11;
                            recycler2 = recycler;
                            state2 = state;
                            viewFindContainingItemView = view2;
                            childCount = i13;
                        }
                        i15 = i19;
                        i14 = iMin2;
                        i19 = i15;
                        iMin2 = i14;
                        iMin = i12;
                        view5 = view3;
                        i20 += i11;
                        recycler2 = recycler;
                        state2 = state;
                        viewFindContainingItemView = view2;
                        childCount = i13;
                    } else if (iMin3 <= iMin) {
                        if (iMin3 == iMin) {
                        }
                    }
                } else {
                    view3 = view5;
                }
                i12 = iMin;
                i13 = childCount;
                i15 = i19;
                i14 = iMin2;
                if (childAt.hasFocusable()) {
                    i18 = layoutParams2.mSpanIndex;
                    i19 = i15;
                    iMin2 = i14;
                    view5 = view3;
                    view4 = childAt;
                    iMin = Math.min(i22, i17) - Math.max(i21, i16);
                } else {
                    int i24 = layoutParams2.mSpanIndex;
                    iMin2 = Math.min(i22, i17) - Math.max(i21, i16);
                    i19 = i24;
                    iMin = i12;
                    view5 = childAt;
                }
                i20 += i11;
                recycler2 = recycler;
                state2 = state;
                viewFindContainingItemView = view2;
                childCount = i13;
            } else {
                if (view4 != null) {
                    break;
                }
                view2 = viewFindContainingItemView;
                view3 = view5;
            }
            i12 = iMin;
            i13 = childCount;
            i15 = i19;
            i14 = iMin2;
            i19 = i15;
            iMin2 = i14;
            iMin = i12;
            view5 = view3;
            i20 += i11;
            recycler2 = recycler;
            state2 = state;
            viewFindContainingItemView = view2;
            childCount = i13;
        }
        return view4 != null ? view4 : view5;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsAdded(RecyclerView recyclerView, int i10, int i11) {
        this.mSpanSizeLookup.h();
        this.mSpanSizeLookup.g();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsChanged(RecyclerView recyclerView) {
        this.mSpanSizeLookup.h();
        this.mSpanSizeLookup.g();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsMoved(RecyclerView recyclerView, int i10, int i11, int i12) {
        this.mSpanSizeLookup.h();
        this.mSpanSizeLookup.g();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsRemoved(RecyclerView recyclerView, int i10, int i11) {
        this.mSpanSizeLookup.h();
        this.mSpanSizeLookup.g();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsUpdated(RecyclerView recyclerView, int i10, int i11, Object obj) {
        this.mSpanSizeLookup.h();
        this.mSpanSizeLookup.g();
    }

    public void s(int i10) {
        if (i10 == this.mSpanCount) {
            return;
        }
        this.mPendingSpanCountChange = true;
        if (i10 >= 1) {
            this.mSpanCount = i10;
            this.mSpanSizeLookup.h();
            requestLayout();
        } else {
            throw new IllegalArgumentException("Span count should be at least 1. Provided " + i10);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void setMeasuredDimension(Rect rect, int i10, int i11) {
        int iChooseSize;
        int iChooseSize2;
        if (this.mCachedBorders == null) {
            super.setMeasuredDimension(rect, i10, i11);
        }
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        if (this.mOrientation == 1) {
            iChooseSize2 = RecyclerView.LayoutManager.chooseSize(i11, rect.height() + paddingTop, getMinimumHeight());
            int[] iArr = this.mCachedBorders;
            iChooseSize = RecyclerView.LayoutManager.chooseSize(i10, iArr[iArr.length - 1] + paddingLeft, getMinimumWidth());
        } else {
            iChooseSize = RecyclerView.LayoutManager.chooseSize(i10, rect.width() + paddingLeft, getMinimumWidth());
            int[] iArr2 = this.mCachedBorders;
            iChooseSize2 = RecyclerView.LayoutManager.chooseSize(i11, iArr2[iArr2.length - 1] + paddingTop, getMinimumHeight());
        }
        setMeasuredDimension(iChooseSize, iChooseSize2);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void setStackFromEnd(boolean z6) {
        if (z6) {
            throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
        }
        super.setStackFromEnd(false);
    }

    private void b() {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            LayoutParams layoutParams = (LayoutParams) getChildAt(i10).getLayoutParams();
            int iB = layoutParams.b();
            this.mPreLayoutSpanSizeCache.put(iB, layoutParams.g());
            this.mPreLayoutSpanIndexCache.put(iB, layoutParams.f());
        }
    }

    private int f(RecyclerView.State state) {
        int iMax;
        if (getChildCount() != 0 && state.b() != 0) {
            ensureLayoutState();
            boolean zIsSmoothScrollbarEnabled = isSmoothScrollbarEnabled();
            View viewFindFirstVisibleChildClosestToStart = findFirstVisibleChildClosestToStart(!zIsSmoothScrollbarEnabled, true);
            View viewFindFirstVisibleChildClosestToEnd = findFirstVisibleChildClosestToEnd(!zIsSmoothScrollbarEnabled, true);
            if (viewFindFirstVisibleChildClosestToStart != null && viewFindFirstVisibleChildClosestToEnd != null) {
                int iB = this.mSpanSizeLookup.b(getPosition(viewFindFirstVisibleChildClosestToStart), this.mSpanCount);
                int iB2 = this.mSpanSizeLookup.b(getPosition(viewFindFirstVisibleChildClosestToEnd), this.mSpanCount);
                int iMin = Math.min(iB, iB2);
                int iMax2 = Math.max(iB, iB2);
                int iB3 = this.mSpanSizeLookup.b(state.b() - 1, this.mSpanCount) + 1;
                if (this.mShouldReverseLayout) {
                    iMax = Math.max(0, (iB3 - iMax2) - 1);
                } else {
                    iMax = Math.max(0, iMin);
                }
                if (!zIsSmoothScrollbarEnabled) {
                    return iMax;
                }
                return Math.round((iMax * (Math.abs(this.mOrientationHelper.d(viewFindFirstVisibleChildClosestToEnd) - this.mOrientationHelper.g(viewFindFirstVisibleChildClosestToStart)) / ((this.mSpanSizeLookup.b(getPosition(viewFindFirstVisibleChildClosestToEnd), this.mSpanCount) - this.mSpanSizeLookup.b(getPosition(viewFindFirstVisibleChildClosestToStart), this.mSpanCount)) + 1))) + (this.mOrientationHelper.m() - this.mOrientationHelper.g(viewFindFirstVisibleChildClosestToStart)));
            }
        }
        return 0;
    }

    private int g(RecyclerView.State state) {
        if (getChildCount() != 0 && state.b() != 0) {
            ensureLayoutState();
            View viewFindFirstVisibleChildClosestToStart = findFirstVisibleChildClosestToStart(!isSmoothScrollbarEnabled(), true);
            View viewFindFirstVisibleChildClosestToEnd = findFirstVisibleChildClosestToEnd(!isSmoothScrollbarEnabled(), true);
            if (viewFindFirstVisibleChildClosestToStart != null && viewFindFirstVisibleChildClosestToEnd != null) {
                if (!isSmoothScrollbarEnabled()) {
                    return this.mSpanSizeLookup.b(state.b() - 1, this.mSpanCount) + 1;
                }
                return (int) (((this.mOrientationHelper.d(viewFindFirstVisibleChildClosestToEnd) - this.mOrientationHelper.g(viewFindFirstVisibleChildClosestToStart)) / ((this.mSpanSizeLookup.b(getPosition(viewFindFirstVisibleChildClosestToEnd), this.mSpanCount) - this.mSpanSizeLookup.b(getPosition(viewFindFirstVisibleChildClosestToStart), this.mSpanCount)) + 1)) * (this.mSpanSizeLookup.b(state.b() - 1, this.mSpanCount) + 1));
            }
        }
        return 0;
    }

    private int l(RecyclerView.Recycler recycler, RecyclerView.State state, int i10) {
        if (!state.e()) {
            return this.mSpanSizeLookup.b(i10, this.mSpanCount);
        }
        int iF = recycler.f(i10);
        if (iF == -1) {
            Log.w(TAG, "Cannot find span size for pre layout position. " + i10);
            return 0;
        }
        return this.mSpanSizeLookup.b(iF, this.mSpanCount);
    }

    private int m(RecyclerView.Recycler recycler, RecyclerView.State state, int i10) {
        if (!state.e()) {
            return this.mSpanSizeLookup.c(i10, this.mSpanCount);
        }
        int i11 = this.mPreLayoutSpanIndexCache.get(i10, -1);
        if (i11 != -1) {
            return i11;
        }
        int iF = recycler.f(i10);
        if (iF == -1) {
            Log.w(TAG, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i10);
            return 0;
        }
        return this.mSpanSizeLookup.c(iF, this.mSpanCount);
    }

    private int n(RecyclerView.Recycler recycler, RecyclerView.State state, int i10) {
        if (!state.e()) {
            return this.mSpanSizeLookup.f(i10);
        }
        int i11 = this.mPreLayoutSpanSizeCache.get(i10, -1);
        if (i11 != -1) {
            return i11;
        }
        int iF = recycler.f(i10);
        if (iF == -1) {
            Log.w(TAG, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i10);
            return 1;
        }
        return this.mSpanSizeLookup.f(iF);
    }

    private void q(View view, int i10, boolean z6) {
        int childMeasureSpec;
        int childMeasureSpec2;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        Rect rect = layoutParams.mDecorInsets;
        int i11 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        int i12 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
        int iJ = j(layoutParams.mSpanIndex, layoutParams.mSpanSize);
        if (this.mOrientation == 1) {
            childMeasureSpec2 = RecyclerView.LayoutManager.getChildMeasureSpec(iJ, i10, i12, ((ViewGroup.MarginLayoutParams) layoutParams).width, false);
            childMeasureSpec = RecyclerView.LayoutManager.getChildMeasureSpec(this.mOrientationHelper.n(), getHeightMode(), i11, ((ViewGroup.MarginLayoutParams) layoutParams).height, true);
        } else {
            int childMeasureSpec3 = RecyclerView.LayoutManager.getChildMeasureSpec(iJ, i10, i11, ((ViewGroup.MarginLayoutParams) layoutParams).height, false);
            int childMeasureSpec4 = RecyclerView.LayoutManager.getChildMeasureSpec(this.mOrientationHelper.n(), getWidthMode(), i12, ((ViewGroup.MarginLayoutParams) layoutParams).width, true);
            childMeasureSpec = childMeasureSpec3;
            childMeasureSpec2 = childMeasureSpec4;
        }
        r(view, childMeasureSpec2, childMeasureSpec, z6);
    }

    private void r(View view, int i10, int i11, boolean z6) {
        boolean zShouldMeasureChild;
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        if (z6) {
            zShouldMeasureChild = shouldReMeasureChild(view, i10, i11, layoutParams);
        } else {
            zShouldMeasureChild = shouldMeasureChild(view, i10, i11, layoutParams);
        }
        if (zShouldMeasureChild) {
            view.measure(i10, i11);
        }
    }

    private void t() {
        int height;
        int paddingTop;
        if (getOrientation() == 1) {
            height = getWidth() - getPaddingRight();
            paddingTop = getPaddingLeft();
        } else {
            height = getHeight() - getPaddingBottom();
            paddingTop = getPaddingTop();
        }
        c(height - paddingTop);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    View findReferenceChild(RecyclerView.Recycler recycler, RecyclerView.State state, boolean z6, boolean z10) {
        int i10;
        int childCount;
        int childCount2 = getChildCount();
        int i11 = 1;
        if (z10) {
            childCount = getChildCount() - 1;
            i10 = -1;
            i11 = -1;
        } else {
            i10 = childCount2;
            childCount = 0;
        }
        int iB = state.b();
        ensureLayoutState();
        int iM = this.mOrientationHelper.m();
        int i12 = this.mOrientationHelper.i();
        View view = null;
        View view2 = null;
        while (childCount != i10) {
            View childAt = getChildAt(childCount);
            int position = getPosition(childAt);
            if (position >= 0 && position < iB && m(recycler, state, position) == 0) {
                if (((RecyclerView.LayoutParams) childAt.getLayoutParams()).d()) {
                    if (view2 == null) {
                        view2 = childAt;
                    }
                } else {
                    if (this.mOrientationHelper.g(childAt) < i12 && this.mOrientationHelper.d(childAt) >= iM) {
                        return childAt;
                    }
                    if (view == null) {
                        view = childAt;
                    }
                }
            }
            childCount += i11;
        }
        if (view == null) {
            return view2;
        }
        return view;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    void onAnchorReady(RecyclerView.Recycler recycler, RecyclerView.State state, LinearLayoutManager.AnchorInfo anchorInfo, int i10) {
        super.onAnchorReady(recycler, state, anchorInfo, i10);
        t();
        if (state.b() > 0 && !state.e()) {
            h(recycler, state, anchorInfo, i10);
        }
        i();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onInitializeAccessibilityNodeInfo(@NonNull RecyclerView.Recycler recycler, @NonNull RecyclerView.State state, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.onInitializeAccessibilityNodeInfo(recycler, state, accessibilityNodeInfoCompat);
        accessibilityNodeInfoCompat.e0(GridView.class.getName());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onInitializeAccessibilityNodeInfoForItem(RecyclerView.Recycler recycler, RecyclerView.State state, View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof LayoutParams)) {
            super.onInitializeAccessibilityNodeInfoForItem(view, accessibilityNodeInfoCompat);
            return;
        }
        LayoutParams layoutParams2 = (LayoutParams) layoutParams;
        int iL = l(recycler, state, layoutParams2.b());
        if (this.mOrientation == 0) {
            accessibilityNodeInfoCompat.h0(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.a(layoutParams2.f(), layoutParams2.g(), iL, 1, false, false));
        } else {
            accessibilityNodeInfoCompat.h0(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.a(iL, 1, layoutParams2.f(), layoutParams2.g(), false, false));
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (state.e()) {
            b();
        }
        super.onLayoutChildren(recycler, state);
        e();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutCompleted(RecyclerView.State state) {
        super.onLayoutCompleted(state);
        this.mPendingSpanCountChange = false;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollHorizontallyBy(int i10, RecyclerView.Recycler recycler, RecyclerView.State state) {
        t();
        i();
        return super.scrollHorizontallyBy(i10, recycler, state);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollVerticallyBy(int i10, RecyclerView.Recycler recycler, RecyclerView.State state) {
        t();
        i();
        return super.scrollVerticallyBy(i10, recycler, state);
    }

    public GridLayoutManager(Context context, int i10) {
        super(context);
        this.mPendingSpanCountChange = false;
        this.mSpanCount = -1;
        this.mPreLayoutSpanSizeCache = new SparseIntArray();
        this.mPreLayoutSpanIndexCache = new SparseIntArray();
        this.mSpanSizeLookup = new DefaultSpanSizeLookup();
        this.mDecorInsets = new Rect();
        s(i10);
    }

    public GridLayoutManager(Context context, int i10, int i11, boolean z6) {
        super(context, i11, z6);
        this.mPendingSpanCountChange = false;
        this.mSpanCount = -1;
        this.mPreLayoutSpanSizeCache = new SparseIntArray();
        this.mPreLayoutSpanIndexCache = new SparseIntArray();
        this.mSpanSizeLookup = new DefaultSpanSizeLookup();
        this.mDecorInsets = new Rect();
        s(i10);
    }
}
