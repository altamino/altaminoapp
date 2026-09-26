package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.fragment.app.FragmentTransaction;
import com.narvii.monetization.bubble.BubbleService;
import java.util.List;
import kotlinx.serialization.json.internal.b;

/* JADX INFO: loaded from: classes4.dex */
public class LinearLayoutManager extends RecyclerView.LayoutManager implements ItemTouchHelper.ViewDropHandler, RecyclerView.SmoothScroller.ScrollVectorProvider {
    static final boolean DEBUG = false;
    public static final int HORIZONTAL = 0;
    public static final int INVALID_OFFSET = Integer.MIN_VALUE;
    private static final float MAX_SCROLL_FACTOR = 0.33333334f;
    private static final String TAG = "LinearLayoutManager";
    public static final int VERTICAL = 1;
    final AnchorInfo mAnchorInfo;
    private int mInitialPrefetchItemCount;
    private boolean mLastStackFromEnd;
    private final LayoutChunkResult mLayoutChunkResult;
    private LayoutState mLayoutState;
    int mOrientation;
    OrientationHelper mOrientationHelper;
    SavedState mPendingSavedState;
    int mPendingScrollPosition;
    int mPendingScrollPositionOffset;
    private boolean mRecycleChildrenOnDetach;
    private int[] mReusableIntPair;
    private boolean mReverseLayout;
    boolean mShouldReverseLayout;
    private boolean mSmoothScrollbarEnabled;
    private boolean mStackFromEnd;

    static class AnchorInfo {
        int mCoordinate;
        boolean mLayoutFromEnd;
        OrientationHelper mOrientationHelper;
        int mPosition;
        boolean mValid;

        void e() {
            this.mPosition = -1;
            this.mCoordinate = Integer.MIN_VALUE;
            this.mLayoutFromEnd = false;
            this.mValid = false;
        }

        void a() {
            this.mCoordinate = this.mLayoutFromEnd ? this.mOrientationHelper.i() : this.mOrientationHelper.m();
        }

        public void b(View view, int i10) {
            if (this.mLayoutFromEnd) {
                this.mCoordinate = this.mOrientationHelper.d(view) + this.mOrientationHelper.o();
            } else {
                this.mCoordinate = this.mOrientationHelper.g(view);
            }
            this.mPosition = i10;
        }

        public void c(View view, int i10) {
            int iO = this.mOrientationHelper.o();
            if (iO >= 0) {
                b(view, i10);
                return;
            }
            this.mPosition = i10;
            if (this.mLayoutFromEnd) {
                int i11 = (this.mOrientationHelper.i() - iO) - this.mOrientationHelper.d(view);
                this.mCoordinate = this.mOrientationHelper.i() - i11;
                if (i11 > 0) {
                    int iE = this.mCoordinate - this.mOrientationHelper.e(view);
                    int iM = this.mOrientationHelper.m();
                    int iMin = iE - (iM + Math.min(this.mOrientationHelper.g(view) - iM, 0));
                    if (iMin < 0) {
                        this.mCoordinate += Math.min(i11, -iMin);
                        return;
                    }
                    return;
                }
                return;
            }
            int iG = this.mOrientationHelper.g(view);
            int iM2 = iG - this.mOrientationHelper.m();
            this.mCoordinate = iG;
            if (iM2 > 0) {
                int i12 = (this.mOrientationHelper.i() - Math.min(0, (this.mOrientationHelper.i() - iO) - this.mOrientationHelper.d(view))) - (iG + this.mOrientationHelper.e(view));
                if (i12 < 0) {
                    this.mCoordinate -= Math.min(iM2, -i12);
                }
            }
        }

        public String toString() {
            return "AnchorInfo{mPosition=" + this.mPosition + ", mCoordinate=" + this.mCoordinate + ", mLayoutFromEnd=" + this.mLayoutFromEnd + ", mValid=" + this.mValid + b.END_OBJ;
        }

        AnchorInfo() {
            e();
        }

        boolean d(View view, RecyclerView.State state) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            if (!layoutParams.d() && layoutParams.b() >= 0 && layoutParams.b() < state.b()) {
                return true;
            }
            return false;
        }
    }

    static class LayoutState {
        static final int INVALID_LAYOUT = Integer.MIN_VALUE;
        static final int ITEM_DIRECTION_HEAD = -1;
        static final int ITEM_DIRECTION_TAIL = 1;
        static final int LAYOUT_END = 1;
        static final int LAYOUT_START = -1;
        static final int SCROLLING_OFFSET_NaN = Integer.MIN_VALUE;
        static final String TAG = "LLM#LayoutState";
        int mAvailable;
        int mCurrentPosition;
        boolean mInfinite;
        int mItemDirection;
        int mLastScrollDelta;
        int mLayoutDirection;
        int mOffset;
        int mScrollingOffset;
        boolean mRecycle = true;
        int mExtraFillSpace = 0;
        int mNoRecycleSpace = 0;
        boolean mIsPreLayout = false;
        List<RecyclerView.ViewHolder> mScrapList = null;

        public void a() {
            b(null);
        }

        private View e() {
            int size = this.mScrapList.size();
            for (int i10 = 0; i10 < size; i10++) {
                View view = this.mScrapList.get(i10).itemView;
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                if (!layoutParams.d() && this.mCurrentPosition == layoutParams.b()) {
                    b(view);
                    return view;
                }
            }
            return null;
        }

        boolean c(RecyclerView.State state) {
            int i10 = this.mCurrentPosition;
            return i10 >= 0 && i10 < state.b();
        }

        View d(RecyclerView.Recycler recycler) {
            if (this.mScrapList != null) {
                return e();
            }
            View viewO = recycler.o(this.mCurrentPosition);
            this.mCurrentPosition += this.mItemDirection;
            return viewO;
        }

        public View f(View view) {
            int iB;
            int size = this.mScrapList.size();
            View view2 = null;
            int i10 = Integer.MAX_VALUE;
            for (int i11 = 0; i11 < size; i11++) {
                View view3 = this.mScrapList.get(i11).itemView;
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view3.getLayoutParams();
                if (view3 != view && !layoutParams.d() && (iB = (layoutParams.b() - this.mCurrentPosition) * this.mItemDirection) >= 0 && iB < i10) {
                    view2 = view3;
                    if (iB == 0) {
                        break;
                    }
                    i10 = iB;
                }
            }
            return view2;
        }

        LayoutState() {
        }

        public void b(View view) {
            View viewF = f(view);
            if (viewF == null) {
                this.mCurrentPosition = -1;
            } else {
                this.mCurrentPosition = ((RecyclerView.LayoutParams) viewF.getLayoutParams()).b();
            }
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    @RestrictTo
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: androidx.recyclerview.widget.LinearLayoutManager.SavedState.1
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        };
        boolean mAnchorLayoutFromEnd;
        int mAnchorOffset;
        int mAnchorPosition;

        public SavedState() {
        }

        boolean c() {
            return this.mAnchorPosition >= 0;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        void e() {
            this.mAnchorPosition = -1;
        }

        SavedState(Parcel parcel) {
            this.mAnchorPosition = parcel.readInt();
            this.mAnchorOffset = parcel.readInt();
            this.mAnchorLayoutFromEnd = parcel.readInt() == 1;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeInt(this.mAnchorPosition);
            parcel.writeInt(this.mAnchorOffset);
            parcel.writeInt(this.mAnchorLayoutFromEnd ? 1 : 0);
        }

        @SuppressLint({"UnknownNullness"})
        public SavedState(SavedState savedState) {
            this.mAnchorPosition = savedState.mAnchorPosition;
            this.mAnchorOffset = savedState.mAnchorOffset;
            this.mAnchorLayoutFromEnd = savedState.mAnchorLayoutFromEnd;
        }
    }

    public LinearLayoutManager(@SuppressLint({"UnknownNullness"}) Context context) {
        this(context, 1, false);
    }

    private View findFirstPartiallyOrCompletelyInvisibleChild() {
        return findOnePartiallyOrCompletelyInvisibleChild(0, getChildCount());
    }

    private void updateLayoutStateToFillEnd(AnchorInfo anchorInfo) {
        updateLayoutStateToFillEnd(anchorInfo.mPosition, anchorInfo.mCoordinate);
    }

    private void updateLayoutStateToFillStart(AnchorInfo anchorInfo) {
        updateLayoutStateToFillStart(anchorInfo.mPosition, anchorInfo.mCoordinate);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollHorizontally() {
        return this.mOrientation == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollVertically() {
        return this.mOrientation == 1;
    }

    int convertFocusDirectionToLayoutDirection(int i10) {
        if (i10 == 1) {
            return (this.mOrientation != 1 && isLayoutRTL()) ? 1 : -1;
        }
        if (i10 == 2) {
            return (this.mOrientation != 1 && isLayoutRTL()) ? -1 : 1;
        }
        if (i10 == 17) {
            return this.mOrientation == 0 ? -1 : Integer.MIN_VALUE;
        }
        if (i10 == 33) {
            return this.mOrientation == 1 ? -1 : Integer.MIN_VALUE;
        }
        if (i10 != 66) {
            return (i10 == 130 && this.mOrientation == 1) ? 1 : Integer.MIN_VALUE;
        }
        return this.mOrientation == 0 ? 1 : Integer.MIN_VALUE;
    }

    public int getInitialPrefetchItemCount() {
        return this.mInitialPrefetchItemCount;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public boolean getRecycleChildrenOnDetach() {
        return this.mRecycleChildrenOnDetach;
    }

    public boolean getReverseLayout() {
        return this.mReverseLayout;
    }

    public boolean getStackFromEnd() {
        return this.mStackFromEnd;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean isAutoMeasureEnabled() {
        return true;
    }

    public boolean isSmoothScrollbarEnabled() {
        return this.mSmoothScrollbarEnabled;
    }

    void onAnchorReady(RecyclerView.Recycler recycler, RecyclerView.State state, AnchorInfo anchorInfo, int i10) {
    }

    public void setInitialPrefetchItemCount(int i10) {
        this.mInitialPrefetchItemCount = i10;
    }

    public void setRecycleChildrenOnDetach(boolean z6) {
        this.mRecycleChildrenOnDetach = z6;
    }

    public void setReverseLayout(boolean z6) {
        assertNotInLayoutOrScroll(null);
        if (z6 == this.mReverseLayout) {
            return;
        }
        this.mReverseLayout = z6;
        requestLayout();
    }

    public void setSmoothScrollbarEnabled(boolean z6) {
        this.mSmoothScrollbarEnabled = z6;
    }

    public void setStackFromEnd(boolean z6) {
        assertNotInLayoutOrScroll(null);
        if (this.mStackFromEnd == z6) {
            return;
        }
        this.mStackFromEnd = z6;
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean supportsPredictiveItemAnimations() {
        return this.mPendingSavedState == null && this.mLastStackFromEnd == this.mStackFromEnd;
    }

    protected static class LayoutChunkResult {
        public int mConsumed;
        public boolean mFinished;
        public boolean mFocusable;
        public boolean mIgnoreConsumed;

        void a() {
            this.mConsumed = 0;
            this.mFinished = false;
            this.mIgnoreConsumed = false;
            this.mFocusable = false;
        }

        protected LayoutChunkResult() {
        }
    }

    public LinearLayoutManager(@SuppressLint({"UnknownNullness"}) Context context, int i10, boolean z6) {
        this.mOrientation = 1;
        this.mReverseLayout = false;
        this.mShouldReverseLayout = false;
        this.mStackFromEnd = false;
        this.mSmoothScrollbarEnabled = true;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mPendingSavedState = null;
        this.mAnchorInfo = new AnchorInfo();
        this.mLayoutChunkResult = new LayoutChunkResult();
        this.mInitialPrefetchItemCount = 2;
        this.mReusableIntPair = new int[2];
        setOrientation(i10);
        setReverseLayout(z6);
    }

    private View findPartiallyOrCompletelyInvisibleChildClosestToEnd() {
        return this.mShouldReverseLayout ? findFirstPartiallyOrCompletelyInvisibleChild() : findLastPartiallyOrCompletelyInvisibleChild();
    }

    private View findPartiallyOrCompletelyInvisibleChildClosestToStart() {
        return this.mShouldReverseLayout ? findLastPartiallyOrCompletelyInvisibleChild() : findFirstPartiallyOrCompletelyInvisibleChild();
    }

    private int fixLayoutEndGap(int i10, RecyclerView.Recycler recycler, RecyclerView.State state, boolean z6) {
        int i11;
        int i12 = this.mOrientationHelper.i() - i10;
        if (i12 <= 0) {
            return 0;
        }
        int i13 = -scrollBy(-i12, recycler, state);
        int i14 = i10 + i13;
        if (!z6 || (i11 = this.mOrientationHelper.i() - i14) <= 0) {
            return i13;
        }
        this.mOrientationHelper.r(i11);
        return i11 + i13;
    }

    private int fixLayoutStartGap(int i10, RecyclerView.Recycler recycler, RecyclerView.State state, boolean z6) {
        int iM;
        int iM2 = i10 - this.mOrientationHelper.m();
        if (iM2 <= 0) {
            return 0;
        }
        int i11 = -scrollBy(iM2, recycler, state);
        int i12 = i10 + i11;
        if (!z6 || (iM = i12 - this.mOrientationHelper.m()) <= 0) {
            return i11;
        }
        this.mOrientationHelper.r(-iM);
        return i11 - iM;
    }

    private View getChildClosestToEnd() {
        return getChildAt(this.mShouldReverseLayout ? 0 : getChildCount() - 1);
    }

    private View getChildClosestToStart() {
        return getChildAt(this.mShouldReverseLayout ? getChildCount() - 1 : 0);
    }

    private void logChildren() {
        Log.d(TAG, "internal representation of views on the screen");
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            Log.d(TAG, "item " + getPosition(childAt) + ", coord:" + this.mOrientationHelper.g(childAt));
        }
        Log.d(TAG, "==============");
    }

    private void recycleByLayoutState(RecyclerView.Recycler recycler, LayoutState layoutState) {
        if (!layoutState.mRecycle || layoutState.mInfinite) {
            return;
        }
        int i10 = layoutState.mScrollingOffset;
        int i11 = layoutState.mNoRecycleSpace;
        if (layoutState.mLayoutDirection == -1) {
            recycleViewsFromEnd(recycler, i10, i11);
        } else {
            recycleViewsFromStart(recycler, i10, i11);
        }
    }

    private void recycleChildren(RecyclerView.Recycler recycler, int i10, int i11) {
        if (i10 == i11) {
            return;
        }
        if (i11 <= i10) {
            while (i10 > i11) {
                removeAndRecycleViewAt(i10, recycler);
                i10--;
            }
        } else {
            for (int i12 = i11 - 1; i12 >= i10; i12--) {
                removeAndRecycleViewAt(i12, recycler);
            }
        }
    }

    private void recycleViewsFromStart(RecyclerView.Recycler recycler, int i10, int i11) {
        if (i10 < 0) {
            return;
        }
        int i12 = i10 - i11;
        int childCount = getChildCount();
        if (!this.mShouldReverseLayout) {
            for (int i13 = 0; i13 < childCount; i13++) {
                View childAt = getChildAt(i13);
                if (this.mOrientationHelper.d(childAt) > i12 || this.mOrientationHelper.p(childAt) > i12) {
                    recycleChildren(recycler, 0, i13);
                    return;
                }
            }
            return;
        }
        int i14 = childCount - 1;
        for (int i15 = i14; i15 >= 0; i15--) {
            View childAt2 = getChildAt(i15);
            if (this.mOrientationHelper.d(childAt2) > i12 || this.mOrientationHelper.p(childAt2) > i12) {
                recycleChildren(recycler, i14, i15);
                return;
            }
        }
    }

    private void resolveShouldLayoutReverse() {
        if (this.mOrientation == 1 || !isLayoutRTL()) {
            this.mShouldReverseLayout = this.mReverseLayout;
        } else {
            this.mShouldReverseLayout = !this.mReverseLayout;
        }
    }

    private void updateLayoutState(int i10, int i11, boolean z6, RecyclerView.State state) {
        int iM;
        this.mLayoutState.mInfinite = resolveIsInfinite();
        this.mLayoutState.mLayoutDirection = i10;
        int[] iArr = this.mReusableIntPair;
        iArr[0] = 0;
        iArr[1] = 0;
        calculateExtraLayoutSpace(state, iArr);
        int iMax = Math.max(0, this.mReusableIntPair[0]);
        int iMax2 = Math.max(0, this.mReusableIntPair[1]);
        boolean z10 = i10 == 1;
        LayoutState layoutState = this.mLayoutState;
        int i12 = z10 ? iMax2 : iMax;
        layoutState.mExtraFillSpace = i12;
        if (!z10) {
            iMax = iMax2;
        }
        layoutState.mNoRecycleSpace = iMax;
        if (z10) {
            layoutState.mExtraFillSpace = i12 + this.mOrientationHelper.j();
            View childClosestToEnd = getChildClosestToEnd();
            LayoutState layoutState2 = this.mLayoutState;
            layoutState2.mItemDirection = this.mShouldReverseLayout ? -1 : 1;
            int position = getPosition(childClosestToEnd);
            LayoutState layoutState3 = this.mLayoutState;
            layoutState2.mCurrentPosition = position + layoutState3.mItemDirection;
            layoutState3.mOffset = this.mOrientationHelper.d(childClosestToEnd);
            iM = this.mOrientationHelper.d(childClosestToEnd) - this.mOrientationHelper.i();
        } else {
            View childClosestToStart = getChildClosestToStart();
            this.mLayoutState.mExtraFillSpace += this.mOrientationHelper.m();
            LayoutState layoutState4 = this.mLayoutState;
            layoutState4.mItemDirection = this.mShouldReverseLayout ? 1 : -1;
            int position2 = getPosition(childClosestToStart);
            LayoutState layoutState5 = this.mLayoutState;
            layoutState4.mCurrentPosition = position2 + layoutState5.mItemDirection;
            layoutState5.mOffset = this.mOrientationHelper.g(childClosestToStart);
            iM = (-this.mOrientationHelper.g(childClosestToStart)) + this.mOrientationHelper.m();
        }
        LayoutState layoutState6 = this.mLayoutState;
        layoutState6.mAvailable = i11;
        if (z6) {
            layoutState6.mAvailable = i11 - iM;
        }
        layoutState6.mScrollingOffset = iM;
    }

    private void updateLayoutStateToFillEnd(int i10, int i11) {
        this.mLayoutState.mAvailable = this.mOrientationHelper.i() - i11;
        LayoutState layoutState = this.mLayoutState;
        layoutState.mItemDirection = this.mShouldReverseLayout ? -1 : 1;
        layoutState.mCurrentPosition = i10;
        layoutState.mLayoutDirection = 1;
        layoutState.mOffset = i11;
        layoutState.mScrollingOffset = Integer.MIN_VALUE;
    }

    private void updateLayoutStateToFillStart(int i10, int i11) {
        this.mLayoutState.mAvailable = i11 - this.mOrientationHelper.m();
        LayoutState layoutState = this.mLayoutState;
        layoutState.mCurrentPosition = i10;
        layoutState.mItemDirection = this.mShouldReverseLayout ? 1 : -1;
        layoutState.mLayoutDirection = -1;
        layoutState.mOffset = i11;
        layoutState.mScrollingOffset = Integer.MIN_VALUE;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public void assertNotInLayoutOrScroll(String str) {
        if (this.mPendingSavedState == null) {
            super.assertNotInLayoutOrScroll(str);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public void collectAdjacentPrefetchPositions(int i10, int i11, RecyclerView.State state, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        if (this.mOrientation != 0) {
            i10 = i11;
        }
        if (getChildCount() == 0 || i10 == 0) {
            return;
        }
        ensureLayoutState();
        updateLayoutState(i10 > 0 ? 1 : -1, Math.abs(i10), true, state);
        collectPrefetchPositionsForLayoutState(state, this.mLayoutState, layoutPrefetchRegistry);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public void collectInitialPrefetchPositions(int i10, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        boolean z6;
        int i11;
        SavedState savedState = this.mPendingSavedState;
        if (savedState == null || !savedState.c()) {
            resolveShouldLayoutReverse();
            z6 = this.mShouldReverseLayout;
            i11 = this.mPendingScrollPosition;
            if (i11 == -1) {
                i11 = z6 ? i10 - 1 : 0;
            }
        } else {
            SavedState savedState2 = this.mPendingSavedState;
            z6 = savedState2.mAnchorLayoutFromEnd;
            i11 = savedState2.mAnchorPosition;
        }
        int i12 = z6 ? -1 : 1;
        for (int i13 = 0; i13 < this.mInitialPrefetchItemCount && i11 >= 0 && i11 < i10; i13++) {
            layoutPrefetchRegistry.a(i11, 0);
            i11 += i12;
        }
    }

    void collectPrefetchPositionsForLayoutState(RecyclerView.State state, LayoutState layoutState, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        int i10 = layoutState.mCurrentPosition;
        if (i10 < 0 || i10 >= state.b()) {
            return;
        }
        layoutPrefetchRegistry.a(i10, Math.max(0, layoutState.mScrollingOffset));
    }

    LayoutState createLayoutState() {
        return new LayoutState();
    }

    void ensureLayoutState() {
        if (this.mLayoutState == null) {
            this.mLayoutState = createLayoutState();
        }
    }

    int fill(RecyclerView.Recycler recycler, LayoutState layoutState, RecyclerView.State state, boolean z6) {
        int i10 = layoutState.mAvailable;
        int i11 = layoutState.mScrollingOffset;
        if (i11 != Integer.MIN_VALUE) {
            if (i10 < 0) {
                layoutState.mScrollingOffset = i11 + i10;
            }
            recycleByLayoutState(recycler, layoutState);
        }
        int i12 = layoutState.mAvailable + layoutState.mExtraFillSpace;
        LayoutChunkResult layoutChunkResult = this.mLayoutChunkResult;
        while (true) {
            if ((!layoutState.mInfinite && i12 <= 0) || !layoutState.c(state)) {
                break;
            }
            layoutChunkResult.a();
            layoutChunk(recycler, state, layoutState, layoutChunkResult);
            if (!layoutChunkResult.mFinished) {
                layoutState.mOffset += layoutChunkResult.mConsumed * layoutState.mLayoutDirection;
                if (!layoutChunkResult.mIgnoreConsumed || layoutState.mScrapList != null || !state.e()) {
                    int i13 = layoutState.mAvailable;
                    int i14 = layoutChunkResult.mConsumed;
                    layoutState.mAvailable = i13 - i14;
                    i12 -= i14;
                }
                int i15 = layoutState.mScrollingOffset;
                if (i15 != Integer.MIN_VALUE) {
                    int i16 = i15 + layoutChunkResult.mConsumed;
                    layoutState.mScrollingOffset = i16;
                    int i17 = layoutState.mAvailable;
                    if (i17 < 0) {
                        layoutState.mScrollingOffset = i16 + i17;
                    }
                    recycleByLayoutState(recycler, layoutState);
                }
                if (z6 && layoutChunkResult.mFocusable) {
                    break;
                }
            } else {
                break;
            }
        }
        return i10 - layoutState.mAvailable;
    }

    View findFirstVisibleChildClosestToEnd(boolean z6, boolean z10) {
        return this.mShouldReverseLayout ? findOneVisibleChild(0, getChildCount(), z6, z10) : findOneVisibleChild(getChildCount() - 1, -1, z6, z10);
    }

    View findFirstVisibleChildClosestToStart(boolean z6, boolean z10) {
        return this.mShouldReverseLayout ? findOneVisibleChild(getChildCount() - 1, -1, z6, z10) : findOneVisibleChild(0, getChildCount(), z6, z10);
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0073  */
    /* JADX WARN: Code duplicated, block: B:35:0x0077  */
    View findReferenceChild(RecyclerView.Recycler recycler, RecyclerView.State state, boolean z6, boolean z10) {
        int i10;
        int childCount;
        int i11;
        ensureLayoutState();
        int childCount2 = getChildCount();
        if (z10) {
            childCount = getChildCount() - 1;
            i10 = -1;
            i11 = -1;
        } else {
            i10 = childCount2;
            childCount = 0;
            i11 = 1;
        }
        int iB = state.b();
        int iM = this.mOrientationHelper.m();
        int i12 = this.mOrientationHelper.i();
        View view = null;
        View view2 = null;
        View view3 = null;
        while (childCount != i10) {
            View childAt = getChildAt(childCount);
            int position = getPosition(childAt);
            int iG = this.mOrientationHelper.g(childAt);
            int iD = this.mOrientationHelper.d(childAt);
            if (position >= 0 && position < iB) {
                if (!((RecyclerView.LayoutParams) childAt.getLayoutParams()).d()) {
                    boolean z11 = iD <= iM && iG < iM;
                    boolean z12 = iG >= i12 && iD > i12;
                    if (!z11 && !z12) {
                        return childAt;
                    }
                    if (z6) {
                        if (z12) {
                            view2 = childAt;
                        } else if (view == null) {
                            view = childAt;
                        }
                    } else if (z11) {
                        view2 = childAt;
                    } else if (view == null) {
                        view = childAt;
                    }
                } else if (view3 == null) {
                    view3 = childAt;
                }
            }
            childCount += i11;
        }
        if (view != null) {
            return view;
        }
        return view2 != null ? view2 : view3;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        int i10;
        int i11;
        int i12;
        int i13;
        int iFixLayoutEndGap;
        int i14;
        View viewFindViewByPosition;
        int iG;
        int i15;
        int i16 = -1;
        if (!(this.mPendingSavedState == null && this.mPendingScrollPosition == -1) && state.b() == 0) {
            removeAndRecycleAllViews(recycler);
            return;
        }
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null && savedState.c()) {
            this.mPendingScrollPosition = this.mPendingSavedState.mAnchorPosition;
        }
        ensureLayoutState();
        this.mLayoutState.mRecycle = false;
        resolveShouldLayoutReverse();
        View focusedChild = getFocusedChild();
        AnchorInfo anchorInfo = this.mAnchorInfo;
        if (!anchorInfo.mValid || this.mPendingScrollPosition != -1 || this.mPendingSavedState != null) {
            anchorInfo.e();
            AnchorInfo anchorInfo2 = this.mAnchorInfo;
            anchorInfo2.mLayoutFromEnd = this.mShouldReverseLayout ^ this.mStackFromEnd;
            updateAnchorInfoForLayout(recycler, state, anchorInfo2);
            this.mAnchorInfo.mValid = true;
        } else if (focusedChild != null && (this.mOrientationHelper.g(focusedChild) >= this.mOrientationHelper.i() || this.mOrientationHelper.d(focusedChild) <= this.mOrientationHelper.m())) {
            this.mAnchorInfo.c(focusedChild, getPosition(focusedChild));
        }
        LayoutState layoutState = this.mLayoutState;
        layoutState.mLayoutDirection = layoutState.mLastScrollDelta >= 0 ? 1 : -1;
        int[] iArr = this.mReusableIntPair;
        iArr[0] = 0;
        iArr[1] = 0;
        calculateExtraLayoutSpace(state, iArr);
        int iMax = Math.max(0, this.mReusableIntPair[0]) + this.mOrientationHelper.m();
        int iMax2 = Math.max(0, this.mReusableIntPair[1]) + this.mOrientationHelper.j();
        if (state.e() && (i14 = this.mPendingScrollPosition) != -1 && this.mPendingScrollPositionOffset != Integer.MIN_VALUE && (viewFindViewByPosition = findViewByPosition(i14)) != null) {
            if (this.mShouldReverseLayout) {
                i15 = this.mOrientationHelper.i() - this.mOrientationHelper.d(viewFindViewByPosition);
                iG = this.mPendingScrollPositionOffset;
            } else {
                iG = this.mOrientationHelper.g(viewFindViewByPosition) - this.mOrientationHelper.m();
                i15 = this.mPendingScrollPositionOffset;
            }
            int i17 = i15 - iG;
            if (i17 > 0) {
                iMax += i17;
            } else {
                iMax2 -= i17;
            }
        }
        AnchorInfo anchorInfo3 = this.mAnchorInfo;
        if (!anchorInfo3.mLayoutFromEnd ? !this.mShouldReverseLayout : this.mShouldReverseLayout) {
            i16 = 1;
        }
        onAnchorReady(recycler, state, anchorInfo3, i16);
        detachAndScrapAttachedViews(recycler);
        this.mLayoutState.mInfinite = resolveIsInfinite();
        this.mLayoutState.mIsPreLayout = state.e();
        this.mLayoutState.mNoRecycleSpace = 0;
        AnchorInfo anchorInfo4 = this.mAnchorInfo;
        if (anchorInfo4.mLayoutFromEnd) {
            updateLayoutStateToFillStart(anchorInfo4);
            LayoutState layoutState2 = this.mLayoutState;
            layoutState2.mExtraFillSpace = iMax;
            fill(recycler, layoutState2, state, false);
            LayoutState layoutState3 = this.mLayoutState;
            i11 = layoutState3.mOffset;
            int i18 = layoutState3.mCurrentPosition;
            int i19 = layoutState3.mAvailable;
            if (i19 > 0) {
                iMax2 += i19;
            }
            updateLayoutStateToFillEnd(this.mAnchorInfo);
            LayoutState layoutState4 = this.mLayoutState;
            layoutState4.mExtraFillSpace = iMax2;
            layoutState4.mCurrentPosition += layoutState4.mItemDirection;
            fill(recycler, layoutState4, state, false);
            LayoutState layoutState5 = this.mLayoutState;
            i10 = layoutState5.mOffset;
            int i20 = layoutState5.mAvailable;
            if (i20 > 0) {
                updateLayoutStateToFillStart(i18, i11);
                LayoutState layoutState6 = this.mLayoutState;
                layoutState6.mExtraFillSpace = i20;
                fill(recycler, layoutState6, state, false);
                i11 = this.mLayoutState.mOffset;
            }
        } else {
            updateLayoutStateToFillEnd(anchorInfo4);
            LayoutState layoutState7 = this.mLayoutState;
            layoutState7.mExtraFillSpace = iMax2;
            fill(recycler, layoutState7, state, false);
            LayoutState layoutState8 = this.mLayoutState;
            i10 = layoutState8.mOffset;
            int i21 = layoutState8.mCurrentPosition;
            int i22 = layoutState8.mAvailable;
            if (i22 > 0) {
                iMax += i22;
            }
            updateLayoutStateToFillStart(this.mAnchorInfo);
            LayoutState layoutState9 = this.mLayoutState;
            layoutState9.mExtraFillSpace = iMax;
            layoutState9.mCurrentPosition += layoutState9.mItemDirection;
            fill(recycler, layoutState9, state, false);
            LayoutState layoutState10 = this.mLayoutState;
            i11 = layoutState10.mOffset;
            int i23 = layoutState10.mAvailable;
            if (i23 > 0) {
                updateLayoutStateToFillEnd(i21, i10);
                LayoutState layoutState11 = this.mLayoutState;
                layoutState11.mExtraFillSpace = i23;
                fill(recycler, layoutState11, state, false);
                i10 = this.mLayoutState.mOffset;
            }
        }
        if (getChildCount() > 0) {
            if (this.mShouldReverseLayout ^ this.mStackFromEnd) {
                int iFixLayoutEndGap2 = fixLayoutEndGap(i10, recycler, state, true);
                i12 = i11 + iFixLayoutEndGap2;
                i13 = i10 + iFixLayoutEndGap2;
                iFixLayoutEndGap = fixLayoutStartGap(i12, recycler, state, false);
            } else {
                int iFixLayoutStartGap = fixLayoutStartGap(i11, recycler, state, true);
                i12 = i11 + iFixLayoutStartGap;
                i13 = i10 + iFixLayoutStartGap;
                iFixLayoutEndGap = fixLayoutEndGap(i13, recycler, state, false);
            }
            i11 = i12 + iFixLayoutEndGap;
            i10 = i13 + iFixLayoutEndGap;
        }
        layoutForPredictiveAnimations(recycler, state, i11, i10);
        if (state.e()) {
            this.mAnchorInfo.e();
        } else {
            this.mOrientationHelper.s();
        }
        this.mLastStackFromEnd = this.mStackFromEnd;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.mPendingSavedState = savedState;
            if (this.mPendingScrollPosition != -1) {
                savedState.e();
            }
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public Parcelable onSaveInstanceState() {
        if (this.mPendingSavedState != null) {
            return new SavedState(this.mPendingSavedState);
        }
        SavedState savedState = new SavedState();
        if (getChildCount() > 0) {
            ensureLayoutState();
            boolean z6 = this.mLastStackFromEnd ^ this.mShouldReverseLayout;
            savedState.mAnchorLayoutFromEnd = z6;
            if (z6) {
                View childClosestToEnd = getChildClosestToEnd();
                savedState.mAnchorOffset = this.mOrientationHelper.i() - this.mOrientationHelper.d(childClosestToEnd);
                savedState.mAnchorPosition = getPosition(childClosestToEnd);
            } else {
                View childClosestToStart = getChildClosestToStart();
                savedState.mAnchorPosition = getPosition(childClosestToStart);
                savedState.mAnchorOffset = this.mOrientationHelper.g(childClosestToStart) - this.mOrientationHelper.m();
            }
        } else {
            savedState.e();
        }
        return savedState;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.ViewDropHandler
    public void prepareForDrop(@NonNull View view, @NonNull View view2, int i10, int i11) {
        assertNotInLayoutOrScroll("Cannot drop a view during a scroll or layout calculation");
        ensureLayoutState();
        resolveShouldLayoutReverse();
        int position = getPosition(view);
        int position2 = getPosition(view2);
        byte b7 = position < position2 ? (byte) 1 : (byte) -1;
        if (this.mShouldReverseLayout) {
            if (b7 == 1) {
                scrollToPositionWithOffset(position2, this.mOrientationHelper.i() - (this.mOrientationHelper.g(view2) + this.mOrientationHelper.e(view)));
                return;
            } else {
                scrollToPositionWithOffset(position2, this.mOrientationHelper.i() - this.mOrientationHelper.d(view2));
                return;
            }
        }
        if (b7 == -1) {
            scrollToPositionWithOffset(position2, this.mOrientationHelper.g(view2));
        } else {
            scrollToPositionWithOffset(position2, this.mOrientationHelper.d(view2) - this.mOrientationHelper.e(view));
        }
    }

    boolean resolveIsInfinite() {
        return this.mOrientationHelper.k() == 0 && this.mOrientationHelper.h() == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public int scrollHorizontallyBy(int i10, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.mOrientation == 1) {
            return 0;
        }
        return scrollBy(i10, recycler, state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void scrollToPosition(int i10) {
        this.mPendingScrollPosition = i10;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null) {
            savedState.e();
        }
        requestLayout();
    }

    public void scrollToPositionWithOffset(int i10, int i11) {
        this.mPendingScrollPosition = i10;
        this.mPendingScrollPositionOffset = i11;
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null) {
            savedState.e();
        }
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public int scrollVerticallyBy(int i10, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.mOrientation == 0) {
            return 0;
        }
        return scrollBy(i10, recycler, state);
    }

    public void setOrientation(int i10) {
        if (i10 != 0 && i10 != 1) {
            throw new IllegalArgumentException("invalid orientation:" + i10);
        }
        assertNotInLayoutOrScroll(null);
        if (i10 != this.mOrientation || this.mOrientationHelper == null) {
            OrientationHelper orientationHelperB = OrientationHelper.b(this, i10);
            this.mOrientationHelper = orientationHelperB;
            this.mAnchorInfo.mOrientationHelper = orientationHelperB;
            this.mOrientation = i10;
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i10) {
        LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext());
        linearSmoothScroller.setTargetPosition(i10);
        startSmoothScroll(linearSmoothScroller);
    }

    void validateChildOrder() {
        Log.d(TAG, "validating child count " + getChildCount());
        if (getChildCount() < 1) {
            return;
        }
        int position = getPosition(getChildAt(0));
        int iG = this.mOrientationHelper.g(getChildAt(0));
        if (this.mShouldReverseLayout) {
            for (int i10 = 1; i10 < getChildCount(); i10++) {
                View childAt = getChildAt(i10);
                int position2 = getPosition(childAt);
                int iG2 = this.mOrientationHelper.g(childAt);
                if (position2 < position) {
                    logChildren();
                    StringBuilder sb = new StringBuilder();
                    sb.append("detected invalid position. loc invalid? ");
                    sb.append(iG2 < iG);
                    throw new RuntimeException(sb.toString());
                }
                if (iG2 > iG) {
                    logChildren();
                    throw new RuntimeException("detected invalid location");
                }
            }
            return;
        }
        for (int i11 = 1; i11 < getChildCount(); i11++) {
            View childAt2 = getChildAt(i11);
            int position3 = getPosition(childAt2);
            int iG3 = this.mOrientationHelper.g(childAt2);
            if (position3 < position) {
                logChildren();
                StringBuilder sb2 = new StringBuilder();
                sb2.append("detected invalid position. loc invalid? ");
                sb2.append(iG3 < iG);
                throw new RuntimeException(sb2.toString());
            }
            if (iG3 < iG) {
                logChildren();
                throw new RuntimeException("detected invalid location");
            }
        }
    }

    private int computeScrollExtent(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        return ScrollbarHelper.a(state, this.mOrientationHelper, findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true), findFirstVisibleChildClosestToEnd(!this.mSmoothScrollbarEnabled, true), this, this.mSmoothScrollbarEnabled);
    }

    private int computeScrollOffset(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        return ScrollbarHelper.b(state, this.mOrientationHelper, findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true), findFirstVisibleChildClosestToEnd(!this.mSmoothScrollbarEnabled, true), this, this.mSmoothScrollbarEnabled, this.mShouldReverseLayout);
    }

    private int computeScrollRange(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        return ScrollbarHelper.c(state, this.mOrientationHelper, findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true), findFirstVisibleChildClosestToEnd(!this.mSmoothScrollbarEnabled, true), this, this.mSmoothScrollbarEnabled);
    }

    private View findLastPartiallyOrCompletelyInvisibleChild() {
        return findOnePartiallyOrCompletelyInvisibleChild(getChildCount() - 1, -1);
    }

    private void layoutForPredictiveAnimations(RecyclerView.Recycler recycler, RecyclerView.State state, int i10, int i11) {
        boolean z6;
        if (state.g() && getChildCount() != 0 && !state.e() && supportsPredictiveItemAnimations()) {
            List<RecyclerView.ViewHolder> listK = recycler.k();
            int size = listK.size();
            int position = getPosition(getChildAt(0));
            int iE = 0;
            int iE2 = 0;
            for (int i12 = 0; i12 < size; i12++) {
                RecyclerView.ViewHolder viewHolder = listK.get(i12);
                if (!viewHolder.isRemoved()) {
                    if (viewHolder.getLayoutPosition() < position) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (z6 != this.mShouldReverseLayout) {
                        iE += this.mOrientationHelper.e(viewHolder.itemView);
                    } else {
                        iE2 += this.mOrientationHelper.e(viewHolder.itemView);
                    }
                }
            }
            this.mLayoutState.mScrapList = listK;
            if (iE > 0) {
                updateLayoutStateToFillStart(getPosition(getChildClosestToStart()), i10);
                LayoutState layoutState = this.mLayoutState;
                layoutState.mExtraFillSpace = iE;
                layoutState.mAvailable = 0;
                layoutState.a();
                fill(recycler, this.mLayoutState, state, false);
            }
            if (iE2 > 0) {
                updateLayoutStateToFillEnd(getPosition(getChildClosestToEnd()), i11);
                LayoutState layoutState2 = this.mLayoutState;
                layoutState2.mExtraFillSpace = iE2;
                layoutState2.mAvailable = 0;
                layoutState2.a();
                fill(recycler, this.mLayoutState, state, false);
            }
            this.mLayoutState.mScrapList = null;
        }
    }

    private void recycleViewsFromEnd(RecyclerView.Recycler recycler, int i10, int i11) {
        int childCount = getChildCount();
        if (i10 < 0) {
            return;
        }
        int iH = (this.mOrientationHelper.h() - i10) + i11;
        if (this.mShouldReverseLayout) {
            for (int i12 = 0; i12 < childCount; i12++) {
                View childAt = getChildAt(i12);
                if (this.mOrientationHelper.g(childAt) < iH || this.mOrientationHelper.q(childAt) < iH) {
                    recycleChildren(recycler, 0, i12);
                    return;
                }
            }
            return;
        }
        int i13 = childCount - 1;
        for (int i14 = i13; i14 >= 0; i14--) {
            View childAt2 = getChildAt(i14);
            if (this.mOrientationHelper.g(childAt2) < iH || this.mOrientationHelper.q(childAt2) < iH) {
                recycleChildren(recycler, i13, i14);
                return;
            }
        }
    }

    private boolean updateAnchorFromChildren(RecyclerView.Recycler recycler, RecyclerView.State state, AnchorInfo anchorInfo) {
        View viewFindReferenceChild;
        boolean z6;
        boolean z10 = false;
        if (getChildCount() == 0) {
            return false;
        }
        View focusedChild = getFocusedChild();
        if (focusedChild != null && anchorInfo.d(focusedChild, state)) {
            anchorInfo.c(focusedChild, getPosition(focusedChild));
            return true;
        }
        boolean z11 = this.mLastStackFromEnd;
        boolean z12 = this.mStackFromEnd;
        if (z11 != z12 || (viewFindReferenceChild = findReferenceChild(recycler, state, anchorInfo.mLayoutFromEnd, z12)) == null) {
            return false;
        }
        anchorInfo.b(viewFindReferenceChild, getPosition(viewFindReferenceChild));
        if (!state.e() && supportsPredictiveItemAnimations()) {
            int iG = this.mOrientationHelper.g(viewFindReferenceChild);
            int iD = this.mOrientationHelper.d(viewFindReferenceChild);
            int iM = this.mOrientationHelper.m();
            int i10 = this.mOrientationHelper.i();
            if (iD <= iM && iG < iM) {
                z6 = true;
            } else {
                z6 = false;
            }
            if (iG >= i10 && iD > i10) {
                z10 = true;
            }
            if (z6 || z10) {
                if (anchorInfo.mLayoutFromEnd) {
                    iM = i10;
                }
                anchorInfo.mCoordinate = iM;
            }
        }
        return true;
    }

    private boolean updateAnchorFromPendingData(RecyclerView.State state, AnchorInfo anchorInfo) {
        int i10;
        boolean z6;
        int iG;
        boolean z10 = false;
        if (!state.e() && (i10 = this.mPendingScrollPosition) != -1) {
            if (i10 >= 0 && i10 < state.b()) {
                anchorInfo.mPosition = this.mPendingScrollPosition;
                SavedState savedState = this.mPendingSavedState;
                if (savedState != null && savedState.c()) {
                    boolean z11 = this.mPendingSavedState.mAnchorLayoutFromEnd;
                    anchorInfo.mLayoutFromEnd = z11;
                    if (z11) {
                        anchorInfo.mCoordinate = this.mOrientationHelper.i() - this.mPendingSavedState.mAnchorOffset;
                    } else {
                        anchorInfo.mCoordinate = this.mOrientationHelper.m() + this.mPendingSavedState.mAnchorOffset;
                    }
                    return true;
                }
                if (this.mPendingScrollPositionOffset == Integer.MIN_VALUE) {
                    View viewFindViewByPosition = findViewByPosition(this.mPendingScrollPosition);
                    if (viewFindViewByPosition != null) {
                        if (this.mOrientationHelper.e(viewFindViewByPosition) > this.mOrientationHelper.n()) {
                            anchorInfo.a();
                            return true;
                        }
                        if (this.mOrientationHelper.g(viewFindViewByPosition) - this.mOrientationHelper.m() < 0) {
                            anchorInfo.mCoordinate = this.mOrientationHelper.m();
                            anchorInfo.mLayoutFromEnd = false;
                            return true;
                        }
                        if (this.mOrientationHelper.i() - this.mOrientationHelper.d(viewFindViewByPosition) < 0) {
                            anchorInfo.mCoordinate = this.mOrientationHelper.i();
                            anchorInfo.mLayoutFromEnd = true;
                            return true;
                        }
                        if (anchorInfo.mLayoutFromEnd) {
                            iG = this.mOrientationHelper.d(viewFindViewByPosition) + this.mOrientationHelper.o();
                        } else {
                            iG = this.mOrientationHelper.g(viewFindViewByPosition);
                        }
                        anchorInfo.mCoordinate = iG;
                    } else {
                        if (getChildCount() > 0) {
                            if (this.mPendingScrollPosition < getPosition(getChildAt(0))) {
                                z6 = true;
                            } else {
                                z6 = false;
                            }
                            if (z6 == this.mShouldReverseLayout) {
                                z10 = true;
                            }
                            anchorInfo.mLayoutFromEnd = z10;
                        }
                        anchorInfo.a();
                    }
                    return true;
                }
                boolean z12 = this.mShouldReverseLayout;
                anchorInfo.mLayoutFromEnd = z12;
                if (z12) {
                    anchorInfo.mCoordinate = this.mOrientationHelper.i() - this.mPendingScrollPositionOffset;
                } else {
                    anchorInfo.mCoordinate = this.mOrientationHelper.m() + this.mPendingScrollPositionOffset;
                }
                return true;
            }
            this.mPendingScrollPosition = -1;
            this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        }
        return false;
    }

    private void updateAnchorInfoForLayout(RecyclerView.Recycler recycler, RecyclerView.State state, AnchorInfo anchorInfo) {
        int iB;
        if (updateAnchorFromPendingData(state, anchorInfo) || updateAnchorFromChildren(recycler, state, anchorInfo)) {
            return;
        }
        anchorInfo.a();
        if (this.mStackFromEnd) {
            iB = state.b() - 1;
        } else {
            iB = 0;
        }
        anchorInfo.mPosition = iB;
    }

    protected void calculateExtraLayoutSpace(@NonNull RecyclerView.State state, @NonNull int[] iArr) {
        int i10;
        int extraLayoutSpace = getExtraLayoutSpace(state);
        if (this.mLayoutState.mLayoutDirection == -1) {
            i10 = 0;
        } else {
            i10 = extraLayoutSpace;
            extraLayoutSpace = 0;
        }
        iArr[0] = extraLayoutSpace;
        iArr[1] = i10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public int computeHorizontalScrollExtent(RecyclerView.State state) {
        return computeScrollExtent(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public int computeHorizontalScrollOffset(RecyclerView.State state) {
        return computeScrollOffset(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public int computeHorizontalScrollRange(RecyclerView.State state) {
        return computeScrollRange(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller.ScrollVectorProvider
    @SuppressLint({"UnknownNullness"})
    public PointF computeScrollVectorForPosition(int i10) {
        if (getChildCount() == 0) {
            return null;
        }
        boolean z6 = false;
        int i11 = 1;
        if (i10 < getPosition(getChildAt(0))) {
            z6 = true;
        }
        if (z6 != this.mShouldReverseLayout) {
            i11 = -1;
        }
        if (this.mOrientation == 0) {
            return new PointF(i11, 0.0f);
        }
        return new PointF(0.0f, i11);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public int computeVerticalScrollExtent(RecyclerView.State state) {
        return computeScrollExtent(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public int computeVerticalScrollOffset(RecyclerView.State state) {
        return computeScrollOffset(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public int computeVerticalScrollRange(RecyclerView.State state) {
        return computeScrollRange(state);
    }

    public int findFirstCompletelyVisibleItemPosition() {
        View viewFindOneVisibleChild = findOneVisibleChild(0, getChildCount(), true, false);
        if (viewFindOneVisibleChild == null) {
            return -1;
        }
        return getPosition(viewFindOneVisibleChild);
    }

    public int findFirstVisibleItemPosition() {
        View viewFindOneVisibleChild = findOneVisibleChild(0, getChildCount(), false, true);
        if (viewFindOneVisibleChild == null) {
            return -1;
        }
        return getPosition(viewFindOneVisibleChild);
    }

    public int findLastCompletelyVisibleItemPosition() {
        View viewFindOneVisibleChild = findOneVisibleChild(getChildCount() - 1, -1, true, false);
        if (viewFindOneVisibleChild == null) {
            return -1;
        }
        return getPosition(viewFindOneVisibleChild);
    }

    public int findLastVisibleItemPosition() {
        View viewFindOneVisibleChild = findOneVisibleChild(getChildCount() - 1, -1, false, true);
        if (viewFindOneVisibleChild == null) {
            return -1;
        }
        return getPosition(viewFindOneVisibleChild);
    }

    View findOnePartiallyOrCompletelyInvisibleChild(int i10, int i11) {
        int i12;
        int i13;
        ensureLayoutState();
        if (i11 > i10 || i11 < i10) {
            if (this.mOrientationHelper.g(getChildAt(i10)) < this.mOrientationHelper.m()) {
                i12 = 16644;
                i13 = 16388;
            } else {
                i12 = 4161;
                i13 = FragmentTransaction.TRANSIT_FRAGMENT_OPEN;
            }
            if (this.mOrientation == 0) {
                return this.mHorizontalBoundCheck.a(i10, i11, i12, i13);
            }
            return this.mVerticalBoundCheck.a(i10, i11, i12, i13);
        }
        return getChildAt(i10);
    }

    View findOneVisibleChild(int i10, int i11, boolean z6, boolean z10) {
        int i12;
        ensureLayoutState();
        int i13 = BubbleService.DEFAULT_DENSITY;
        if (z6) {
            i12 = 24579;
        } else {
            i12 = 320;
        }
        if (!z10) {
            i13 = 0;
        }
        if (this.mOrientation == 0) {
            return this.mHorizontalBoundCheck.a(i10, i11, i12, i13);
        }
        return this.mVerticalBoundCheck.a(i10, i11, i12, i13);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public View findViewByPosition(int i10) {
        int childCount = getChildCount();
        if (childCount == 0) {
            return null;
        }
        int position = i10 - getPosition(getChildAt(0));
        if (position >= 0 && position < childCount) {
            View childAt = getChildAt(position);
            if (getPosition(childAt) == i10) {
                return childAt;
            }
        }
        return super.findViewByPosition(i10);
    }

    @Deprecated
    protected int getExtraLayoutSpace(RecyclerView.State state) {
        if (state.d()) {
            return this.mOrientationHelper.n();
        }
        return 0;
    }

    protected boolean isLayoutRTL() {
        if (getLayoutDirection() == 1) {
            return true;
        }
        return false;
    }

    void layoutChunk(RecyclerView.Recycler recycler, RecyclerView.State state, LayoutState layoutState, LayoutChunkResult layoutChunkResult) {
        boolean z6;
        int i10;
        int i11;
        int i12;
        int paddingLeft;
        int iF;
        boolean z10;
        View viewD = layoutState.d(recycler);
        if (viewD == null) {
            layoutChunkResult.mFinished = true;
            return;
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) viewD.getLayoutParams();
        if (layoutState.mScrapList == null) {
            boolean z11 = this.mShouldReverseLayout;
            if (layoutState.mLayoutDirection == -1) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z11 == z10) {
                addView(viewD);
            } else {
                addView(viewD, 0);
            }
        } else {
            boolean z12 = this.mShouldReverseLayout;
            if (layoutState.mLayoutDirection == -1) {
                z6 = true;
            } else {
                z6 = false;
            }
            if (z12 == z6) {
                addDisappearingView(viewD);
            } else {
                addDisappearingView(viewD, 0);
            }
        }
        measureChildWithMargins(viewD, 0, 0);
        layoutChunkResult.mConsumed = this.mOrientationHelper.e(viewD);
        if (this.mOrientation == 1) {
            if (isLayoutRTL()) {
                iF = getWidth() - getPaddingRight();
                paddingLeft = iF - this.mOrientationHelper.f(viewD);
            } else {
                paddingLeft = getPaddingLeft();
                iF = this.mOrientationHelper.f(viewD) + paddingLeft;
            }
            if (layoutState.mLayoutDirection == -1) {
                int i13 = layoutState.mOffset;
                i12 = i13;
                i11 = iF;
                i10 = i13 - layoutChunkResult.mConsumed;
            } else {
                int i14 = layoutState.mOffset;
                i10 = i14;
                i11 = iF;
                i12 = layoutChunkResult.mConsumed + i14;
            }
        } else {
            int paddingTop = getPaddingTop();
            int iF2 = this.mOrientationHelper.f(viewD) + paddingTop;
            if (layoutState.mLayoutDirection == -1) {
                int i15 = layoutState.mOffset;
                i11 = i15;
                i10 = paddingTop;
                i12 = iF2;
                paddingLeft = i15 - layoutChunkResult.mConsumed;
            } else {
                int i16 = layoutState.mOffset;
                i10 = paddingTop;
                i11 = layoutChunkResult.mConsumed + i16;
                i12 = iF2;
                paddingLeft = i16;
            }
        }
        layoutDecoratedWithMargins(viewD, paddingLeft, i10, i11, i12);
        if (layoutParams.d() || layoutParams.c()) {
            layoutChunkResult.mIgnoreConsumed = true;
        }
        layoutChunkResult.mFocusable = viewD.hasFocusable();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.Recycler recycler) {
        super.onDetachedFromWindow(recyclerView, recycler);
        if (this.mRecycleChildrenOnDetach) {
            removeAndRecycleAllViews(recycler);
            recycler.c();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public View onFocusSearchFailed(View view, int i10, RecyclerView.Recycler recycler, RecyclerView.State state) {
        int iConvertFocusDirectionToLayoutDirection;
        View viewFindPartiallyOrCompletelyInvisibleChildClosestToEnd;
        View childClosestToEnd;
        resolveShouldLayoutReverse();
        if (getChildCount() == 0 || (iConvertFocusDirectionToLayoutDirection = convertFocusDirectionToLayoutDirection(i10)) == Integer.MIN_VALUE) {
            return null;
        }
        ensureLayoutState();
        updateLayoutState(iConvertFocusDirectionToLayoutDirection, (int) (this.mOrientationHelper.n() * MAX_SCROLL_FACTOR), false, state);
        LayoutState layoutState = this.mLayoutState;
        layoutState.mScrollingOffset = Integer.MIN_VALUE;
        layoutState.mRecycle = false;
        fill(recycler, layoutState, state, true);
        if (iConvertFocusDirectionToLayoutDirection == -1) {
            viewFindPartiallyOrCompletelyInvisibleChildClosestToEnd = findPartiallyOrCompletelyInvisibleChildClosestToStart();
        } else {
            viewFindPartiallyOrCompletelyInvisibleChildClosestToEnd = findPartiallyOrCompletelyInvisibleChildClosestToEnd();
        }
        if (iConvertFocusDirectionToLayoutDirection == -1) {
            childClosestToEnd = getChildClosestToStart();
        } else {
            childClosestToEnd = getChildClosestToEnd();
        }
        if (childClosestToEnd.hasFocusable()) {
            if (viewFindPartiallyOrCompletelyInvisibleChildClosestToEnd == null) {
                return null;
            }
            return childClosestToEnd;
        }
        return viewFindPartiallyOrCompletelyInvisibleChildClosestToEnd;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            accessibilityEvent.setFromIndex(findFirstVisibleItemPosition());
            accessibilityEvent.setToIndex(findLastVisibleItemPosition());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public void onLayoutCompleted(RecyclerView.State state) {
        super.onLayoutCompleted(state);
        this.mPendingSavedState = null;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mAnchorInfo.e();
    }

    int scrollBy(int i10, RecyclerView.Recycler recycler, RecyclerView.State state) {
        int i11;
        if (getChildCount() == 0 || i10 == 0) {
            return 0;
        }
        ensureLayoutState();
        this.mLayoutState.mRecycle = true;
        if (i10 > 0) {
            i11 = 1;
        } else {
            i11 = -1;
        }
        int iAbs = Math.abs(i10);
        updateLayoutState(i11, iAbs, true, state);
        LayoutState layoutState = this.mLayoutState;
        int iFill = layoutState.mScrollingOffset + fill(recycler, layoutState, state, false);
        if (iFill < 0) {
            return 0;
        }
        if (iAbs > iFill) {
            i10 = i11 * iFill;
        }
        this.mOrientationHelper.r(-i10);
        this.mLayoutState.mLastScrollDelta = i10;
        return i10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    boolean shouldMeasureTwice() {
        if (getHeightMode() != 1073741824 && getWidthMode() != 1073741824 && hasFlexibleChildInBothOrientations()) {
            return true;
        }
        return false;
    }

    @SuppressLint({"UnknownNullness"})
    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i10, int i11) {
        this.mOrientation = 1;
        this.mReverseLayout = false;
        this.mShouldReverseLayout = false;
        this.mStackFromEnd = false;
        this.mSmoothScrollbarEnabled = true;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mPendingSavedState = null;
        this.mAnchorInfo = new AnchorInfo();
        this.mLayoutChunkResult = new LayoutChunkResult();
        this.mInitialPrefetchItemCount = 2;
        this.mReusableIntPair = new int[2];
        RecyclerView.LayoutManager.Properties properties = RecyclerView.LayoutManager.getProperties(context, attributeSet, i10, i11);
        setOrientation(properties.orientation);
        setReverseLayout(properties.reverseLayout);
        setStackFromEnd(properties.stackFromEnd);
    }
}
