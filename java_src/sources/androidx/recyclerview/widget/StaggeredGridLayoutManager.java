package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;
import kotlinx.serialization.json.internal.b;

/* JADX INFO: loaded from: classes.dex */
public class StaggeredGridLayoutManager extends RecyclerView.LayoutManager implements RecyclerView.SmoothScroller.ScrollVectorProvider {
    static final boolean DEBUG = false;

    @Deprecated
    public static final int GAP_HANDLING_LAZY = 1;
    public static final int GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS = 2;
    public static final int GAP_HANDLING_NONE = 0;
    public static final int HORIZONTAL = 0;
    static final int INVALID_OFFSET = Integer.MIN_VALUE;
    private static final float MAX_SCROLL_FACTOR = 0.33333334f;
    private static final String TAG = "StaggeredGridLManager";
    public static final int VERTICAL = 1;
    private int mFullSizeSpec;
    private boolean mLastLayoutFromEnd;
    private boolean mLastLayoutRTL;

    @NonNull
    private final LayoutState mLayoutState;
    private int mOrientation;
    private SavedState mPendingSavedState;
    private int[] mPrefetchDistances;

    @NonNull
    OrientationHelper mPrimaryOrientation;
    private BitSet mRemainingSpans;

    @NonNull
    OrientationHelper mSecondaryOrientation;
    private int mSizePerSpan;
    Span[] mSpans;
    private int mSpanCount = -1;
    boolean mReverseLayout = false;
    boolean mShouldReverseLayout = false;
    int mPendingScrollPosition = -1;
    int mPendingScrollPositionOffset = Integer.MIN_VALUE;
    LazySpanLookup mLazySpanLookup = new LazySpanLookup();
    private int mGapStrategy = 2;
    private final Rect mTmpRect = new Rect();
    private final AnchorInfo mAnchorInfo = new AnchorInfo();
    private boolean mLaidOutInvalidFullSpan = false;
    private boolean mSmoothScrollbarEnabled = true;
    private final Runnable mCheckForGapsRunnable = new Runnable() { // from class: androidx.recyclerview.widget.StaggeredGridLayoutManager.1
        @Override // java.lang.Runnable
        public void run() {
            StaggeredGridLayoutManager.this.g();
        }
    };

    class AnchorInfo {
        boolean mInvalidateOffsets;
        boolean mLayoutFromEnd;
        int mOffset;
        int mPosition;
        int[] mSpanReferenceLines;
        boolean mValid;

        void c() {
            this.mPosition = -1;
            this.mOffset = Integer.MIN_VALUE;
            this.mLayoutFromEnd = false;
            this.mInvalidateOffsets = false;
            this.mValid = false;
            int[] iArr = this.mSpanReferenceLines;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
        }

        void d(Span[] spanArr) {
            int length = spanArr.length;
            int[] iArr = this.mSpanReferenceLines;
            if (iArr == null || iArr.length < length) {
                this.mSpanReferenceLines = new int[StaggeredGridLayoutManager.this.mSpans.length];
            }
            for (int i10 = 0; i10 < length; i10++) {
                this.mSpanReferenceLines[i10] = spanArr[i10].r(Integer.MIN_VALUE);
            }
        }

        AnchorInfo() {
            c();
        }

        void a() {
            this.mOffset = this.mLayoutFromEnd ? StaggeredGridLayoutManager.this.mPrimaryOrientation.i() : StaggeredGridLayoutManager.this.mPrimaryOrientation.m();
        }

        void b(int i10) {
            if (this.mLayoutFromEnd) {
                this.mOffset = StaggeredGridLayoutManager.this.mPrimaryOrientation.i() - i10;
            } else {
                this.mOffset = StaggeredGridLayoutManager.this.mPrimaryOrientation.m() + i10;
            }
        }
    }

    public static class LayoutParams extends RecyclerView.LayoutParams {
        public static final int INVALID_SPAN_ID = -1;
        boolean mFullSpan;
        Span mSpan;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public boolean f() {
            return this.mFullSpan;
        }

        public LayoutParams(int i10, int i11) {
            super(i10, i11);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(RecyclerView.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    static class LazySpanLookup {
        private static final int MIN_SIZE = 10;
        int[] mData;
        List<FullSpanItem> mFullSpanItems;

        @SuppressLint({"BanParcelableUsage"})
        static class FullSpanItem implements Parcelable {
            public static final Parcelable.Creator<FullSpanItem> CREATOR = new Parcelable.Creator<FullSpanItem>() { // from class: androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem.1
                @Override // android.os.Parcelable.Creator
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public FullSpanItem createFromParcel(Parcel parcel) {
                    return new FullSpanItem(parcel);
                }

                @Override // android.os.Parcelable.Creator
                /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
                public FullSpanItem[] newArray(int i10) {
                    return new FullSpanItem[i10];
                }
            };
            int mGapDir;
            int[] mGapPerSpan;
            boolean mHasUnwantedGapAfter;
            int mPosition;

            FullSpanItem(Parcel parcel) {
                this.mPosition = parcel.readInt();
                this.mGapDir = parcel.readInt();
                this.mHasUnwantedGapAfter = parcel.readInt() == 1;
                int i10 = parcel.readInt();
                if (i10 > 0) {
                    int[] iArr = new int[i10];
                    this.mGapPerSpan = iArr;
                    parcel.readIntArray(iArr);
                }
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            int a(int i10) {
                int[] iArr = this.mGapPerSpan;
                if (iArr == null) {
                    return 0;
                }
                return iArr[i10];
            }

            public String toString() {
                return "FullSpanItem{mPosition=" + this.mPosition + ", mGapDir=" + this.mGapDir + ", mHasUnwantedGapAfter=" + this.mHasUnwantedGapAfter + ", mGapPerSpan=" + Arrays.toString(this.mGapPerSpan) + b.END_OBJ;
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i10) {
                parcel.writeInt(this.mPosition);
                parcel.writeInt(this.mGapDir);
                parcel.writeInt(this.mHasUnwantedGapAfter ? 1 : 0);
                int[] iArr = this.mGapPerSpan;
                if (iArr == null || iArr.length <= 0) {
                    parcel.writeInt(0);
                } else {
                    parcel.writeInt(iArr.length);
                    parcel.writeIntArray(this.mGapPerSpan);
                }
            }

            FullSpanItem() {
            }
        }

        private int i(int i10) {
            if (this.mFullSpanItems == null) {
                return -1;
            }
            FullSpanItem fullSpanItemF = f(i10);
            if (fullSpanItemF != null) {
                this.mFullSpanItems.remove(fullSpanItemF);
            }
            int size = this.mFullSpanItems.size();
            int i11 = 0;
            while (true) {
                if (i11 >= size) {
                    i11 = -1;
                    break;
                }
                if (this.mFullSpanItems.get(i11).mPosition >= i10) {
                    break;
                }
                i11++;
            }
            if (i11 == -1) {
                return -1;
            }
            FullSpanItem fullSpanItem = this.mFullSpanItems.get(i11);
            this.mFullSpanItems.remove(i11);
            return fullSpanItem.mPosition;
        }

        private void l(int i10, int i11) {
            List<FullSpanItem> list = this.mFullSpanItems;
            if (list == null) {
                return;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = this.mFullSpanItems.get(size);
                int i12 = fullSpanItem.mPosition;
                if (i12 >= i10) {
                    fullSpanItem.mPosition = i12 + i11;
                }
            }
        }

        private void m(int i10, int i11) {
            List<FullSpanItem> list = this.mFullSpanItems;
            if (list == null) {
                return;
            }
            int i12 = i10 + i11;
            for (int size = list.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = this.mFullSpanItems.get(size);
                int i13 = fullSpanItem.mPosition;
                if (i13 >= i10) {
                    if (i13 < i12) {
                        this.mFullSpanItems.remove(size);
                    } else {
                        fullSpanItem.mPosition = i13 - i11;
                    }
                }
            }
        }

        public void a(FullSpanItem fullSpanItem) {
            if (this.mFullSpanItems == null) {
                this.mFullSpanItems = new ArrayList();
            }
            int size = this.mFullSpanItems.size();
            for (int i10 = 0; i10 < size; i10++) {
                FullSpanItem fullSpanItem2 = this.mFullSpanItems.get(i10);
                if (fullSpanItem2.mPosition == fullSpanItem.mPosition) {
                    this.mFullSpanItems.remove(i10);
                }
                if (fullSpanItem2.mPosition >= fullSpanItem.mPosition) {
                    this.mFullSpanItems.add(i10, fullSpanItem);
                    return;
                }
            }
            this.mFullSpanItems.add(fullSpanItem);
        }

        void b() {
            int[] iArr = this.mData;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.mFullSpanItems = null;
        }

        void c(int i10) {
            int[] iArr = this.mData;
            if (iArr == null) {
                int[] iArr2 = new int[Math.max(i10, 10) + 1];
                this.mData = iArr2;
                Arrays.fill(iArr2, -1);
            } else if (i10 >= iArr.length) {
                int[] iArr3 = new int[o(i10)];
                this.mData = iArr3;
                System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
                int[] iArr4 = this.mData;
                Arrays.fill(iArr4, iArr.length, iArr4.length, -1);
            }
        }

        int d(int i10) {
            List<FullSpanItem> list = this.mFullSpanItems;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    if (this.mFullSpanItems.get(size).mPosition >= i10) {
                        this.mFullSpanItems.remove(size);
                    }
                }
            }
            return h(i10);
        }

        public FullSpanItem e(int i10, int i11, int i12, boolean z6) {
            List<FullSpanItem> list = this.mFullSpanItems;
            if (list == null) {
                return null;
            }
            int size = list.size();
            for (int i13 = 0; i13 < size; i13++) {
                FullSpanItem fullSpanItem = this.mFullSpanItems.get(i13);
                int i14 = fullSpanItem.mPosition;
                if (i14 >= i11) {
                    return null;
                }
                if (i14 >= i10 && (i12 == 0 || fullSpanItem.mGapDir == i12 || (z6 && fullSpanItem.mHasUnwantedGapAfter))) {
                    return fullSpanItem;
                }
            }
            return null;
        }

        public FullSpanItem f(int i10) {
            List<FullSpanItem> list = this.mFullSpanItems;
            if (list == null) {
                return null;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = this.mFullSpanItems.get(size);
                if (fullSpanItem.mPosition == i10) {
                    return fullSpanItem;
                }
            }
            return null;
        }

        int g(int i10) {
            int[] iArr = this.mData;
            if (iArr == null || i10 >= iArr.length) {
                return -1;
            }
            return iArr[i10];
        }

        int h(int i10) {
            int[] iArr = this.mData;
            if (iArr == null || i10 >= iArr.length) {
                return -1;
            }
            int i11 = i(i10);
            if (i11 == -1) {
                int[] iArr2 = this.mData;
                Arrays.fill(iArr2, i10, iArr2.length, -1);
                return this.mData.length;
            }
            int iMin = Math.min(i11 + 1, this.mData.length);
            Arrays.fill(this.mData, i10, iMin, -1);
            return iMin;
        }

        void j(int i10, int i11) {
            int[] iArr = this.mData;
            if (iArr == null || i10 >= iArr.length) {
                return;
            }
            int i12 = i10 + i11;
            c(i12);
            int[] iArr2 = this.mData;
            System.arraycopy(iArr2, i10, iArr2, i12, (iArr2.length - i10) - i11);
            Arrays.fill(this.mData, i10, i12, -1);
            l(i10, i11);
        }

        void k(int i10, int i11) {
            int[] iArr = this.mData;
            if (iArr == null || i10 >= iArr.length) {
                return;
            }
            int i12 = i10 + i11;
            c(i12);
            int[] iArr2 = this.mData;
            System.arraycopy(iArr2, i12, iArr2, i10, (iArr2.length - i10) - i11);
            int[] iArr3 = this.mData;
            Arrays.fill(iArr3, iArr3.length - i11, iArr3.length, -1);
            m(i10, i11);
        }

        int o(int i10) {
            int length = this.mData.length;
            while (length <= i10) {
                length *= 2;
            }
            return length;
        }

        LazySpanLookup() {
        }

        void n(int i10, Span span) {
            c(i10);
            this.mData[i10] = span.mIndex;
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    @RestrictTo
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: androidx.recyclerview.widget.StaggeredGridLayoutManager.SavedState.1
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
        int mAnchorPosition;
        List<LazySpanLookup.FullSpanItem> mFullSpanItems;
        boolean mLastLayoutRTL;
        boolean mReverseLayout;
        int[] mSpanLookup;
        int mSpanLookupSize;
        int[] mSpanOffsets;
        int mSpanOffsetsSize;
        int mVisibleAnchorPosition;

        public SavedState() {
        }

        void c() {
            this.mSpanOffsets = null;
            this.mSpanOffsetsSize = 0;
            this.mAnchorPosition = -1;
            this.mVisibleAnchorPosition = -1;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        void e() {
            this.mSpanOffsets = null;
            this.mSpanOffsetsSize = 0;
            this.mSpanLookupSize = 0;
            this.mSpanLookup = null;
            this.mFullSpanItems = null;
        }

        SavedState(Parcel parcel) {
            this.mAnchorPosition = parcel.readInt();
            this.mVisibleAnchorPosition = parcel.readInt();
            int i10 = parcel.readInt();
            this.mSpanOffsetsSize = i10;
            if (i10 > 0) {
                int[] iArr = new int[i10];
                this.mSpanOffsets = iArr;
                parcel.readIntArray(iArr);
            }
            int i11 = parcel.readInt();
            this.mSpanLookupSize = i11;
            if (i11 > 0) {
                int[] iArr2 = new int[i11];
                this.mSpanLookup = iArr2;
                parcel.readIntArray(iArr2);
            }
            this.mReverseLayout = parcel.readInt() == 1;
            this.mAnchorLayoutFromEnd = parcel.readInt() == 1;
            this.mLastLayoutRTL = parcel.readInt() == 1;
            this.mFullSpanItems = parcel.readArrayList(LazySpanLookup.FullSpanItem.class.getClassLoader());
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeInt(this.mAnchorPosition);
            parcel.writeInt(this.mVisibleAnchorPosition);
            parcel.writeInt(this.mSpanOffsetsSize);
            if (this.mSpanOffsetsSize > 0) {
                parcel.writeIntArray(this.mSpanOffsets);
            }
            parcel.writeInt(this.mSpanLookupSize);
            if (this.mSpanLookupSize > 0) {
                parcel.writeIntArray(this.mSpanLookup);
            }
            parcel.writeInt(this.mReverseLayout ? 1 : 0);
            parcel.writeInt(this.mAnchorLayoutFromEnd ? 1 : 0);
            parcel.writeInt(this.mLastLayoutRTL ? 1 : 0);
            parcel.writeList(this.mFullSpanItems);
        }

        public SavedState(SavedState savedState) {
            this.mSpanOffsetsSize = savedState.mSpanOffsetsSize;
            this.mAnchorPosition = savedState.mAnchorPosition;
            this.mVisibleAnchorPosition = savedState.mVisibleAnchorPosition;
            this.mSpanOffsets = savedState.mSpanOffsets;
            this.mSpanLookupSize = savedState.mSpanLookupSize;
            this.mSpanLookup = savedState.mSpanLookup;
            this.mReverseLayout = savedState.mReverseLayout;
            this.mAnchorLayoutFromEnd = savedState.mAnchorLayoutFromEnd;
            this.mLastLayoutRTL = savedState.mLastLayoutRTL;
            this.mFullSpanItems = savedState.mFullSpanItems;
        }
    }

    class Span {
        static final int INVALID_LINE = Integer.MIN_VALUE;
        final int mIndex;
        ArrayList<View> mViews = new ArrayList<>();
        int mCachedStart = Integer.MIN_VALUE;
        int mCachedEnd = Integer.MIN_VALUE;
        int mDeletedSize = 0;

        int j(int i10, int i11, boolean z6) {
            return i(i10, i11, false, false, z6);
        }

        int k(int i10, int i11, boolean z6) {
            return i(i10, i11, z6, true, false);
        }

        public int l() {
            return this.mDeletedSize;
        }

        public View o(int i10, int i11) {
            View view = null;
            if (i11 != -1) {
                int size = this.mViews.size() - 1;
                while (size >= 0) {
                    View view2 = this.mViews.get(size);
                    StaggeredGridLayoutManager staggeredGridLayoutManager = StaggeredGridLayoutManager.this;
                    if (staggeredGridLayoutManager.mReverseLayout && staggeredGridLayoutManager.getPosition(view2) >= i10) {
                        break;
                    }
                    StaggeredGridLayoutManager staggeredGridLayoutManager2 = StaggeredGridLayoutManager.this;
                    if ((!staggeredGridLayoutManager2.mReverseLayout && staggeredGridLayoutManager2.getPosition(view2) <= i10) || !view2.hasFocusable()) {
                        break;
                    }
                    size--;
                    view = view2;
                }
            } else {
                int size2 = this.mViews.size();
                int i12 = 0;
                while (i12 < size2) {
                    View view3 = this.mViews.get(i12);
                    StaggeredGridLayoutManager staggeredGridLayoutManager3 = StaggeredGridLayoutManager.this;
                    if (staggeredGridLayoutManager3.mReverseLayout && staggeredGridLayoutManager3.getPosition(view3) <= i10) {
                        break;
                    }
                    StaggeredGridLayoutManager staggeredGridLayoutManager4 = StaggeredGridLayoutManager.this;
                    if ((!staggeredGridLayoutManager4.mReverseLayout && staggeredGridLayoutManager4.getPosition(view3) >= i10) || !view3.hasFocusable()) {
                        break;
                    }
                    i12++;
                    view = view3;
                }
            }
            return view;
        }

        void s() {
            this.mCachedStart = Integer.MIN_VALUE;
            this.mCachedEnd = Integer.MIN_VALUE;
        }

        void t(int i10) {
            int i11 = this.mCachedStart;
            if (i11 != Integer.MIN_VALUE) {
                this.mCachedStart = i11 + i10;
            }
            int i12 = this.mCachedEnd;
            if (i12 != Integer.MIN_VALUE) {
                this.mCachedEnd = i12 + i10;
            }
        }

        void x(int i10) {
            this.mCachedStart = i10;
            this.mCachedEnd = i10;
        }

        Span(int i10) {
            this.mIndex = i10;
        }

        void b(boolean z6, int i10) {
            int iN = z6 ? n(Integer.MIN_VALUE) : r(Integer.MIN_VALUE);
            e();
            if (iN == Integer.MIN_VALUE) {
                return;
            }
            if (!z6 || iN >= StaggeredGridLayoutManager.this.mPrimaryOrientation.i()) {
                if (z6 || iN <= StaggeredGridLayoutManager.this.mPrimaryOrientation.m()) {
                    if (i10 != Integer.MIN_VALUE) {
                        iN += i10;
                    }
                    this.mCachedEnd = iN;
                    this.mCachedStart = iN;
                }
            }
        }

        void c() {
            LazySpanLookup.FullSpanItem fullSpanItemF;
            ArrayList<View> arrayList = this.mViews;
            View view = arrayList.get(arrayList.size() - 1);
            LayoutParams layoutParamsP = p(view);
            this.mCachedEnd = StaggeredGridLayoutManager.this.mPrimaryOrientation.d(view);
            if (layoutParamsP.mFullSpan && (fullSpanItemF = StaggeredGridLayoutManager.this.mLazySpanLookup.f(layoutParamsP.b())) != null && fullSpanItemF.mGapDir == 1) {
                this.mCachedEnd += fullSpanItemF.a(this.mIndex);
            }
        }

        void d() {
            LazySpanLookup.FullSpanItem fullSpanItemF;
            View view = this.mViews.get(0);
            LayoutParams layoutParamsP = p(view);
            this.mCachedStart = StaggeredGridLayoutManager.this.mPrimaryOrientation.g(view);
            if (layoutParamsP.mFullSpan && (fullSpanItemF = StaggeredGridLayoutManager.this.mLazySpanLookup.f(layoutParamsP.b())) != null && fullSpanItemF.mGapDir == -1) {
                this.mCachedStart -= fullSpanItemF.a(this.mIndex);
            }
        }

        void e() {
            this.mViews.clear();
            s();
            this.mDeletedSize = 0;
        }

        public int f() {
            return StaggeredGridLayoutManager.this.mReverseLayout ? j(this.mViews.size() - 1, -1, true) : j(0, this.mViews.size(), true);
        }

        public int g() {
            return StaggeredGridLayoutManager.this.mReverseLayout ? j(0, this.mViews.size(), true) : j(this.mViews.size() - 1, -1, true);
        }

        public int h() {
            return StaggeredGridLayoutManager.this.mReverseLayout ? k(0, this.mViews.size(), false) : k(this.mViews.size() - 1, -1, false);
        }

        int i(int i10, int i11, boolean z6, boolean z10, boolean z11) {
            int iM = StaggeredGridLayoutManager.this.mPrimaryOrientation.m();
            int i12 = StaggeredGridLayoutManager.this.mPrimaryOrientation.i();
            int i13 = i11 > i10 ? 1 : -1;
            while (i10 != i11) {
                View view = this.mViews.get(i10);
                int iG = StaggeredGridLayoutManager.this.mPrimaryOrientation.g(view);
                int iD = StaggeredGridLayoutManager.this.mPrimaryOrientation.d(view);
                boolean z12 = false;
                boolean z13 = !z11 ? iG >= i12 : iG > i12;
                if (!z11 ? iD > iM : iD >= iM) {
                    z12 = true;
                }
                if (z13 && z12) {
                    if (z6 && z10) {
                        if (iG >= iM && iD <= i12) {
                            return StaggeredGridLayoutManager.this.getPosition(view);
                        }
                    } else {
                        if (z10) {
                            return StaggeredGridLayoutManager.this.getPosition(view);
                        }
                        if (iG < iM || iD > i12) {
                            return StaggeredGridLayoutManager.this.getPosition(view);
                        }
                    }
                }
                i10 += i13;
            }
            return -1;
        }

        int m() {
            int i10 = this.mCachedEnd;
            if (i10 != Integer.MIN_VALUE) {
                return i10;
            }
            c();
            return this.mCachedEnd;
        }

        int n(int i10) {
            int i11 = this.mCachedEnd;
            if (i11 != Integer.MIN_VALUE) {
                return i11;
            }
            if (this.mViews.size() == 0) {
                return i10;
            }
            c();
            return this.mCachedEnd;
        }

        int q() {
            int i10 = this.mCachedStart;
            if (i10 != Integer.MIN_VALUE) {
                return i10;
            }
            d();
            return this.mCachedStart;
        }

        int r(int i10) {
            int i11 = this.mCachedStart;
            if (i11 != Integer.MIN_VALUE) {
                return i11;
            }
            if (this.mViews.size() == 0) {
                return i10;
            }
            d();
            return this.mCachedStart;
        }

        void u() {
            int size = this.mViews.size();
            View viewRemove = this.mViews.remove(size - 1);
            LayoutParams layoutParamsP = p(viewRemove);
            layoutParamsP.mSpan = null;
            if (layoutParamsP.d() || layoutParamsP.c()) {
                this.mDeletedSize -= StaggeredGridLayoutManager.this.mPrimaryOrientation.e(viewRemove);
            }
            if (size == 1) {
                this.mCachedStart = Integer.MIN_VALUE;
            }
            this.mCachedEnd = Integer.MIN_VALUE;
        }

        void v() {
            View viewRemove = this.mViews.remove(0);
            LayoutParams layoutParamsP = p(viewRemove);
            layoutParamsP.mSpan = null;
            if (this.mViews.size() == 0) {
                this.mCachedEnd = Integer.MIN_VALUE;
            }
            if (layoutParamsP.d() || layoutParamsP.c()) {
                this.mDeletedSize -= StaggeredGridLayoutManager.this.mPrimaryOrientation.e(viewRemove);
            }
            this.mCachedStart = Integer.MIN_VALUE;
        }

        void a(View view) {
            LayoutParams layoutParamsP = p(view);
            layoutParamsP.mSpan = this;
            this.mViews.add(view);
            this.mCachedEnd = Integer.MIN_VALUE;
            if (this.mViews.size() == 1) {
                this.mCachedStart = Integer.MIN_VALUE;
            }
            if (layoutParamsP.d() || layoutParamsP.c()) {
                this.mDeletedSize += StaggeredGridLayoutManager.this.mPrimaryOrientation.e(view);
            }
        }

        LayoutParams p(View view) {
            return (LayoutParams) view.getLayoutParams();
        }

        void w(View view) {
            LayoutParams layoutParamsP = p(view);
            layoutParamsP.mSpan = this;
            this.mViews.add(0, view);
            this.mCachedStart = Integer.MIN_VALUE;
            if (this.mViews.size() == 1) {
                this.mCachedEnd = Integer.MIN_VALUE;
            }
            if (layoutParamsP.d() || layoutParamsP.c()) {
                this.mDeletedSize += StaggeredGridLayoutManager.this.mPrimaryOrientation.e(view);
            }
        }
    }

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i10, int i11) {
        RecyclerView.LayoutManager.Properties properties = RecyclerView.LayoutManager.getProperties(context, attributeSet, i10, i11);
        setOrientation(properties.orientation);
        Q(properties.spanCount);
        setReverseLayout(properties.reverseLayout);
        this.mLayoutState = new LayoutState();
        k();
    }

    private void R(int i10, int i11) {
        for (int i12 = 0; i12 < this.mSpanCount; i12++) {
            if (!this.mSpans[i12].mViews.isEmpty()) {
                X(this.mSpans[i12], i10, i11);
            }
        }
    }

    private int convertFocusDirectionToLayoutDirection(int i10) {
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

    public int B() {
        return this.mSpanCount;
    }

    void J(int i10, RecyclerView.State state) {
        int iU;
        int i11;
        if (i10 > 0) {
            iU = v();
            i11 = 1;
        } else {
            iU = u();
            i11 = -1;
        }
        this.mLayoutState.mRecycle = true;
        V(iU, state);
        P(i11);
        LayoutState layoutState = this.mLayoutState;
        layoutState.mCurrentPosition = iU + layoutState.mItemDirection;
        layoutState.mAvailable = Math.abs(i10);
    }

    public void Q(int i10) {
        assertNotInLayoutOrScroll(null);
        if (i10 != this.mSpanCount) {
            E();
            this.mSpanCount = i10;
            this.mRemainingSpans = new BitSet(this.mSpanCount);
            this.mSpans = new Span[this.mSpanCount];
            for (int i11 = 0; i11 < this.mSpanCount; i11++) {
                this.mSpans[i11] = new Span(i11);
            }
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollHorizontally() {
        return this.mOrientation == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollVertically() {
        return this.mOrientation == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new LayoutParams(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean isAutoMeasureEnabled() {
        return this.mGapStrategy != 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsAdded(RecyclerView recyclerView, int i10, int i11) {
        C(i10, i11, 1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsRemoved(RecyclerView recyclerView, int i10, int i11) {
        C(i10, i11, 2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsUpdated(RecyclerView recyclerView, int i10, int i11, Object obj) {
        C(i10, i11, 4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        H(recycler, state, true);
    }

    public void setReverseLayout(boolean z6) {
        assertNotInLayoutOrScroll(null);
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null && savedState.mReverseLayout != z6) {
            savedState.mReverseLayout = z6;
        }
        this.mReverseLayout = z6;
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean supportsPredictiveItemAnimations() {
        return this.mPendingSavedState == null;
    }

    private Span A(LayoutState layoutState) {
        int i10;
        int i11;
        int i12;
        if (I(layoutState.mLayoutDirection)) {
            i11 = this.mSpanCount - 1;
            i10 = -1;
            i12 = -1;
        } else {
            i10 = this.mSpanCount;
            i11 = 0;
            i12 = 1;
        }
        Span span = null;
        if (layoutState.mLayoutDirection == 1) {
            int iM = this.mPrimaryOrientation.m();
            int i13 = Integer.MAX_VALUE;
            while (i11 != i10) {
                Span span2 = this.mSpans[i11];
                int iN = span2.n(iM);
                if (iN < i13) {
                    span = span2;
                    i13 = iN;
                }
                i11 += i12;
            }
            return span;
        }
        int i14 = this.mPrimaryOrientation.i();
        int i15 = Integer.MIN_VALUE;
        while (i11 != i10) {
            Span span3 = this.mSpans[i11];
            int iR = span3.r(i14);
            if (iR > i15) {
                span = span3;
                i15 = iR;
            }
            i11 += i12;
        }
        return span;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0026  */
    /* JADX WARN: Code duplicated, block: B:17:0x0029 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:19:0x002c  */
    /* JADX WARN: Code duplicated, block: B:20:0x0037  */
    /* JADX WARN: Code duplicated, block: B:21:0x003d  */
    /* JADX WARN: Code duplicated, block: B:23:0x0044 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x0045  */
    /* JADX WARN: Code duplicated, block: B:26:0x0049  */
    /* JADX WARN: Code duplicated, block: B:27:0x004e  */
    /* JADX WARN: Code duplicated, block: B:29:0x0054  */
    /* JADX WARN: Code duplicated, block: B:31:? A[RETURN, SYNTHETIC] */
    private void C(int i10, int i11, int i12) {
        int i13;
        int i14;
        int iV;
        int iV2 = this.mShouldReverseLayout ? v() : u();
        if (i12 == 8) {
            if (i10 < i11) {
                i13 = i11 + 1;
            } else {
                i13 = i10 + 1;
                i14 = i11;
            }
            this.mLazySpanLookup.h(i14);
            if (i12 != 1) {
                this.mLazySpanLookup.j(i10, i11);
            } else if (i12 != 2) {
                this.mLazySpanLookup.k(i10, i11);
            } else if (i12 == 8) {
                this.mLazySpanLookup.k(i10, 1);
                this.mLazySpanLookup.j(i11, 1);
            }
            if (i13 <= iV2) {
                return;
            }
            if (this.mShouldReverseLayout) {
                iV = u();
            } else {
                iV = v();
            }
            if (i14 <= iV) {
                requestLayout();
            }
        }
        i13 = i10 + i11;
        i14 = i10;
        this.mLazySpanLookup.h(i14);
        if (i12 != 1) {
            this.mLazySpanLookup.j(i10, i11);
        } else if (i12 != 2) {
            this.mLazySpanLookup.k(i10, i11);
        } else if (i12 == 8) {
            this.mLazySpanLookup.k(i10, 1);
            this.mLazySpanLookup.j(i11, 1);
        }
        if (i13 <= iV2) {
            return;
        }
        if (this.mShouldReverseLayout) {
            iV = u();
        } else {
            iV = v();
        }
        if (i14 <= iV) {
            requestLayout();
        }
    }

    private void F(View view, int i10, int i11, boolean z6) {
        calculateItemDecorationsForChild(view, this.mTmpRect);
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i12 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
        Rect rect = this.mTmpRect;
        int iY = Y(i10, i12 + rect.left, ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + rect.right);
        int i13 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
        Rect rect2 = this.mTmpRect;
        int iY2 = Y(i11, i13 + rect2.top, ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + rect2.bottom);
        if (z6 ? shouldReMeasureChild(view, iY, iY2, layoutParams) : shouldMeasureChild(view, iY, iY2, layoutParams)) {
            view.measure(iY, iY2);
        }
    }

    private void G(View view, LayoutParams layoutParams, boolean z6) {
        if (layoutParams.mFullSpan) {
            if (this.mOrientation == 1) {
                F(view, this.mFullSizeSpec, RecyclerView.LayoutManager.getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom(), ((ViewGroup.MarginLayoutParams) layoutParams).height, true), z6);
                return;
            } else {
                F(view, RecyclerView.LayoutManager.getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight(), ((ViewGroup.MarginLayoutParams) layoutParams).width, true), this.mFullSizeSpec, z6);
                return;
            }
        }
        if (this.mOrientation == 1) {
            F(view, RecyclerView.LayoutManager.getChildMeasureSpec(this.mSizePerSpan, getWidthMode(), 0, ((ViewGroup.MarginLayoutParams) layoutParams).width, false), RecyclerView.LayoutManager.getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom(), ((ViewGroup.MarginLayoutParams) layoutParams).height, true), z6);
        } else {
            F(view, RecyclerView.LayoutManager.getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight(), ((ViewGroup.MarginLayoutParams) layoutParams).width, true), RecyclerView.LayoutManager.getChildMeasureSpec(this.mSizePerSpan, getHeightMode(), 0, ((ViewGroup.MarginLayoutParams) layoutParams).height, false), z6);
        }
    }

    /* JADX WARN: Code duplicated, block: B:86:0x0155  */
    private void H(RecyclerView.Recycler recycler, RecyclerView.State state, boolean z6) {
        boolean z10;
        SavedState savedState;
        AnchorInfo anchorInfo = this.mAnchorInfo;
        if (!(this.mPendingSavedState == null && this.mPendingScrollPosition == -1) && state.b() == 0) {
            removeAndRecycleAllViews(recycler);
            anchorInfo.c();
            return;
        }
        boolean z11 = (anchorInfo.mValid && this.mPendingScrollPosition == -1 && this.mPendingSavedState == null) ? false : true;
        if (z11) {
            anchorInfo.c();
            if (this.mPendingSavedState != null) {
                b(anchorInfo);
            } else {
                resolveShouldLayoutReverse();
                anchorInfo.mLayoutFromEnd = this.mShouldReverseLayout;
            }
            U(state, anchorInfo);
            anchorInfo.mValid = true;
        }
        if (this.mPendingSavedState == null && this.mPendingScrollPosition == -1 && (anchorInfo.mLayoutFromEnd != this.mLastLayoutFromEnd || isLayoutRTL() != this.mLastLayoutRTL)) {
            this.mLazySpanLookup.b();
            anchorInfo.mInvalidateOffsets = true;
        }
        if (getChildCount() > 0 && ((savedState = this.mPendingSavedState) == null || savedState.mSpanOffsetsSize < 1)) {
            if (anchorInfo.mInvalidateOffsets) {
                for (int i10 = 0; i10 < this.mSpanCount; i10++) {
                    this.mSpans[i10].e();
                    int i11 = anchorInfo.mOffset;
                    if (i11 != Integer.MIN_VALUE) {
                        this.mSpans[i10].x(i11);
                    }
                }
            } else if (z11 || this.mAnchorInfo.mSpanReferenceLines == null) {
                for (int i12 = 0; i12 < this.mSpanCount; i12++) {
                    this.mSpans[i12].b(this.mShouldReverseLayout, anchorInfo.mOffset);
                }
                this.mAnchorInfo.d(this.mSpans);
            } else {
                for (int i13 = 0; i13 < this.mSpanCount; i13++) {
                    Span span = this.mSpans[i13];
                    span.e();
                    span.x(this.mAnchorInfo.mSpanReferenceLines[i13]);
                }
            }
        }
        detachAndScrapAttachedViews(recycler);
        this.mLayoutState.mRecycle = false;
        this.mLaidOutInvalidFullSpan = false;
        W(this.mSecondaryOrientation.n());
        V(anchorInfo.mPosition, state);
        if (anchorInfo.mLayoutFromEnd) {
            P(-1);
            l(recycler, this.mLayoutState, state);
            P(1);
            LayoutState layoutState = this.mLayoutState;
            layoutState.mCurrentPosition = anchorInfo.mPosition + layoutState.mItemDirection;
            l(recycler, layoutState, state);
        } else {
            P(1);
            l(recycler, this.mLayoutState, state);
            P(-1);
            LayoutState layoutState2 = this.mLayoutState;
            layoutState2.mCurrentPosition = anchorInfo.mPosition + layoutState2.mItemDirection;
            l(recycler, layoutState2, state);
        }
        O();
        if (getChildCount() > 0) {
            if (this.mShouldReverseLayout) {
                s(recycler, state, true);
                t(recycler, state, false);
            } else {
                t(recycler, state, true);
                s(recycler, state, false);
            }
        }
        if (z6 && !state.e() && this.mGapStrategy != 0 && getChildCount() > 0 && (this.mLaidOutInvalidFullSpan || D() != null)) {
            removeCallbacks(this.mCheckForGapsRunnable);
            z10 = g();
        }
        if (state.e()) {
            this.mAnchorInfo.c();
        }
        this.mLastLayoutFromEnd = anchorInfo.mLayoutFromEnd;
        this.mLastLayoutRTL = isLayoutRTL();
        if (z10) {
            this.mAnchorInfo.c();
            H(recycler, state, false);
        }
    }

    private boolean I(int i10) {
        if (this.mOrientation == 0) {
            return (i10 == -1) != this.mShouldReverseLayout;
        }
        return ((i10 == -1) == this.mShouldReverseLayout) == isLayoutRTL();
    }

    private void K(View view) {
        for (int i10 = this.mSpanCount - 1; i10 >= 0; i10--) {
            this.mSpans[i10].w(view);
        }
    }

    private void L(RecyclerView.Recycler recycler, LayoutState layoutState) {
        int iMin;
        if (!layoutState.mRecycle || layoutState.mInfinite) {
            return;
        }
        if (layoutState.mAvailable == 0) {
            if (layoutState.mLayoutDirection == -1) {
                M(recycler, layoutState.mEndLine);
                return;
            } else {
                N(recycler, layoutState.mStartLine);
                return;
            }
        }
        if (layoutState.mLayoutDirection == -1) {
            int i10 = layoutState.mStartLine;
            int iX = i10 - x(i10);
            M(recycler, iX < 0 ? layoutState.mEndLine : layoutState.mEndLine - Math.min(iX, layoutState.mAvailable));
        } else {
            int iY = y(layoutState.mEndLine) - layoutState.mEndLine;
            if (iY < 0) {
                iMin = layoutState.mStartLine;
            } else {
                iMin = Math.min(iY, layoutState.mAvailable) + layoutState.mStartLine;
            }
            N(recycler, iMin);
        }
    }

    private void O() {
        if (this.mSecondaryOrientation.k() == 1073741824) {
            return;
        }
        int childCount = getChildCount();
        float fMax = 0.0f;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            float fE = this.mSecondaryOrientation.e(childAt);
            if (fE >= fMax) {
                if (((LayoutParams) childAt.getLayoutParams()).f()) {
                    fE = (fE * 1.0f) / this.mSpanCount;
                }
                fMax = Math.max(fMax, fE);
            }
        }
        int i11 = this.mSizePerSpan;
        int iRound = Math.round(fMax * this.mSpanCount);
        if (this.mSecondaryOrientation.k() == Integer.MIN_VALUE) {
            iRound = Math.min(iRound, this.mSecondaryOrientation.n());
        }
        W(iRound);
        if (this.mSizePerSpan == i11) {
            return;
        }
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt2 = getChildAt(i12);
            LayoutParams layoutParams = (LayoutParams) childAt2.getLayoutParams();
            if (!layoutParams.mFullSpan) {
                if (isLayoutRTL() && this.mOrientation == 1) {
                    int i13 = this.mSpanCount;
                    int i14 = layoutParams.mSpan.mIndex;
                    childAt2.offsetLeftAndRight(((-((i13 - 1) - i14)) * this.mSizePerSpan) - ((-((i13 - 1) - i14)) * i11));
                } else {
                    int i15 = layoutParams.mSpan.mIndex;
                    int i16 = this.mSizePerSpan * i15;
                    int i17 = i15 * i11;
                    if (this.mOrientation == 1) {
                        childAt2.offsetLeftAndRight(i16 - i17);
                    } else {
                        childAt2.offsetTopAndBottom(i16 - i17);
                    }
                }
            }
        }
    }

    private void P(int i10) {
        LayoutState layoutState = this.mLayoutState;
        layoutState.mLayoutDirection = i10;
        layoutState.mItemDirection = this.mShouldReverseLayout != (i10 == -1) ? -1 : 1;
    }

    private boolean S(RecyclerView.State state, AnchorInfo anchorInfo) {
        anchorInfo.mPosition = this.mLastLayoutFromEnd ? q(state.b()) : m(state.b());
        anchorInfo.mOffset = Integer.MIN_VALUE;
        return true;
    }

    private void V(int i10, RecyclerView.State state) {
        int iN;
        int iN2;
        int iC;
        LayoutState layoutState = this.mLayoutState;
        boolean z6 = false;
        layoutState.mAvailable = 0;
        layoutState.mCurrentPosition = i10;
        if (!isSmoothScrolling() || (iC = state.c()) == -1) {
            iN = 0;
            iN2 = 0;
        } else {
            if (this.mShouldReverseLayout == (iC < i10)) {
                iN = this.mPrimaryOrientation.n();
                iN2 = 0;
            } else {
                iN2 = this.mPrimaryOrientation.n();
                iN = 0;
            }
        }
        if (getClipToPadding()) {
            this.mLayoutState.mStartLine = this.mPrimaryOrientation.m() - iN2;
            this.mLayoutState.mEndLine = this.mPrimaryOrientation.i() + iN;
        } else {
            this.mLayoutState.mEndLine = this.mPrimaryOrientation.h() + iN;
            this.mLayoutState.mStartLine = -iN2;
        }
        LayoutState layoutState2 = this.mLayoutState;
        layoutState2.mStopInFocusable = false;
        layoutState2.mRecycle = true;
        if (this.mPrimaryOrientation.k() == 0 && this.mPrimaryOrientation.h() == 0) {
            z6 = true;
        }
        layoutState2.mInfinite = z6;
    }

    private int Y(int i10, int i11, int i12) {
        if (i11 == 0 && i12 == 0) {
            return i10;
        }
        int mode = View.MeasureSpec.getMode(i10);
        return (mode == Integer.MIN_VALUE || mode == 1073741824) ? View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i10) - i11) - i12), mode) : i10;
    }

    private void a(View view) {
        for (int i10 = this.mSpanCount - 1; i10 >= 0; i10--) {
            this.mSpans[i10].a(view);
        }
    }

    private void b(AnchorInfo anchorInfo) {
        SavedState savedState = this.mPendingSavedState;
        int i10 = savedState.mSpanOffsetsSize;
        if (i10 > 0) {
            if (i10 == this.mSpanCount) {
                for (int i11 = 0; i11 < this.mSpanCount; i11++) {
                    this.mSpans[i11].e();
                    SavedState savedState2 = this.mPendingSavedState;
                    int i12 = savedState2.mSpanOffsets[i11];
                    if (i12 != Integer.MIN_VALUE) {
                        i12 += savedState2.mAnchorLayoutFromEnd ? this.mPrimaryOrientation.i() : this.mPrimaryOrientation.m();
                    }
                    this.mSpans[i11].x(i12);
                }
            } else {
                savedState.e();
                SavedState savedState3 = this.mPendingSavedState;
                savedState3.mAnchorPosition = savedState3.mVisibleAnchorPosition;
            }
        }
        SavedState savedState4 = this.mPendingSavedState;
        this.mLastLayoutRTL = savedState4.mLastLayoutRTL;
        setReverseLayout(savedState4.mReverseLayout);
        resolveShouldLayoutReverse();
        SavedState savedState5 = this.mPendingSavedState;
        int i13 = savedState5.mAnchorPosition;
        if (i13 != -1) {
            this.mPendingScrollPosition = i13;
            anchorInfo.mLayoutFromEnd = savedState5.mAnchorLayoutFromEnd;
        } else {
            anchorInfo.mLayoutFromEnd = this.mShouldReverseLayout;
        }
        if (savedState5.mSpanLookupSize > 1) {
            LazySpanLookup lazySpanLookup = this.mLazySpanLookup;
            lazySpanLookup.mData = savedState5.mSpanLookup;
            lazySpanLookup.mFullSpanItems = savedState5.mFullSpanItems;
        }
    }

    private void e(View view, LayoutParams layoutParams, LayoutState layoutState) {
        if (layoutState.mLayoutDirection == 1) {
            if (layoutParams.mFullSpan) {
                a(view);
                return;
            } else {
                layoutParams.mSpan.a(view);
                return;
            }
        }
        if (layoutParams.mFullSpan) {
            K(view);
        } else {
            layoutParams.mSpan.w(view);
        }
    }

    private boolean h(Span span) {
        if (this.mShouldReverseLayout) {
            if (span.m() < this.mPrimaryOrientation.i()) {
                ArrayList<View> arrayList = span.mViews;
                return !span.p(arrayList.get(arrayList.size() - 1)).mFullSpan;
            }
        } else if (span.q() > this.mPrimaryOrientation.m()) {
            return !span.p(span.mViews.get(0)).mFullSpan;
        }
        return false;
    }

    private LazySpanLookup.FullSpanItem i(int i10) {
        LazySpanLookup.FullSpanItem fullSpanItem = new LazySpanLookup.FullSpanItem();
        fullSpanItem.mGapPerSpan = new int[this.mSpanCount];
        for (int i11 = 0; i11 < this.mSpanCount; i11++) {
            fullSpanItem.mGapPerSpan[i11] = i10 - this.mSpans[i11].n(i10);
        }
        return fullSpanItem;
    }

    private LazySpanLookup.FullSpanItem j(int i10) {
        LazySpanLookup.FullSpanItem fullSpanItem = new LazySpanLookup.FullSpanItem();
        fullSpanItem.mGapPerSpan = new int[this.mSpanCount];
        for (int i11 = 0; i11 < this.mSpanCount; i11++) {
            fullSpanItem.mGapPerSpan[i11] = this.mSpans[i11].r(i10) - i10;
        }
        return fullSpanItem;
    }

    private void k() {
        this.mPrimaryOrientation = OrientationHelper.b(this, this.mOrientation);
        this.mSecondaryOrientation = OrientationHelper.b(this, 1 - this.mOrientation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v44 */
    /* JADX WARN: Type inference failed for: r16v0, types: [androidx.recyclerview.widget.RecyclerView$LayoutManager, androidx.recyclerview.widget.StaggeredGridLayoutManager] */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r9v7 */
    private int l(RecyclerView.Recycler recycler, LayoutState layoutState, RecyclerView.State state) {
        int i10;
        int iW;
        Span spanA;
        int iE;
        int i11;
        int iE2;
        int iE3;
        boolean z6;
        ?? r10 = 0;
        this.mRemainingSpans.set(0, this.mSpanCount, true);
        if (this.mLayoutState.mInfinite) {
            i10 = layoutState.mLayoutDirection == 1 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
        } else {
            i10 = layoutState.mLayoutDirection == 1 ? layoutState.mEndLine + layoutState.mAvailable : layoutState.mStartLine - layoutState.mAvailable;
        }
        int i12 = i10;
        R(layoutState.mLayoutDirection, i12);
        int i13 = this.mShouldReverseLayout ? this.mPrimaryOrientation.i() : this.mPrimaryOrientation.m();
        ?? r1 = false;
        while (layoutState.a(state) && (this.mLayoutState.mInfinite || !this.mRemainingSpans.isEmpty())) {
            View viewB = layoutState.b(recycler);
            LayoutParams layoutParams = (LayoutParams) viewB.getLayoutParams();
            int iB = layoutParams.b();
            int iG = this.mLazySpanLookup.g(iB);
            ?? r5 = iG == -1 ? 1 : r10;
            if (r5 != 0) {
                spanA = layoutParams.mFullSpan ? this.mSpans[r10] : A(layoutState);
                this.mLazySpanLookup.n(iB, spanA);
            } else {
                spanA = this.mSpans[iG];
            }
            Span span = spanA;
            layoutParams.mSpan = span;
            if (layoutState.mLayoutDirection == 1) {
                addView(viewB);
            } else {
                addView(viewB, r10);
            }
            G(viewB, layoutParams, r10);
            if (layoutState.mLayoutDirection == 1) {
                int iW2 = layoutParams.mFullSpan ? w(i13) : span.n(i13);
                int iE4 = this.mPrimaryOrientation.e(viewB) + iW2;
                if (r5 != 0 && layoutParams.mFullSpan) {
                    LazySpanLookup.FullSpanItem fullSpanItemI = i(iW2);
                    fullSpanItemI.mGapDir = -1;
                    fullSpanItemI.mPosition = iB;
                    this.mLazySpanLookup.a(fullSpanItemI);
                }
                i11 = iE4;
                iE = iW2;
            } else {
                int iZ = layoutParams.mFullSpan ? z(i13) : span.r(i13);
                iE = iZ - this.mPrimaryOrientation.e(viewB);
                if (r5 != 0 && layoutParams.mFullSpan) {
                    LazySpanLookup.FullSpanItem fullSpanItemJ = j(iZ);
                    fullSpanItemJ.mGapDir = 1;
                    fullSpanItemJ.mPosition = iB;
                    this.mLazySpanLookup.a(fullSpanItemJ);
                }
                i11 = iZ;
            }
            if (layoutParams.mFullSpan && layoutState.mItemDirection == -1) {
                if (r5 != 0) {
                    this.mLaidOutInvalidFullSpan = true;
                } else {
                    if (!(layoutState.mLayoutDirection == 1 ? c() : d())) {
                        LazySpanLookup.FullSpanItem fullSpanItemF = this.mLazySpanLookup.f(iB);
                        if (fullSpanItemF != null) {
                            fullSpanItemF.mHasUnwantedGapAfter = true;
                        }
                        this.mLaidOutInvalidFullSpan = true;
                    }
                }
            }
            e(viewB, layoutParams, layoutState);
            if (isLayoutRTL() && this.mOrientation == 1) {
                int i14 = layoutParams.mFullSpan ? this.mSecondaryOrientation.i() : this.mSecondaryOrientation.i() - (((this.mSpanCount - 1) - span.mIndex) * this.mSizePerSpan);
                iE3 = i14;
                iE2 = i14 - this.mSecondaryOrientation.e(viewB);
            } else {
                int iM = layoutParams.mFullSpan ? this.mSecondaryOrientation.m() : (span.mIndex * this.mSizePerSpan) + this.mSecondaryOrientation.m();
                iE2 = iM;
                iE3 = this.mSecondaryOrientation.e(viewB) + iM;
            }
            if (this.mOrientation == 1) {
                layoutDecoratedWithMargins(viewB, iE2, iE, iE3, i11);
            } else {
                layoutDecoratedWithMargins(viewB, iE, iE2, i11, iE3);
            }
            if (layoutParams.mFullSpan) {
                R(this.mLayoutState.mLayoutDirection, i12);
            } else {
                X(span, this.mLayoutState.mLayoutDirection, i12);
            }
            L(recycler, this.mLayoutState);
            if (!this.mLayoutState.mStopInFocusable || !viewB.hasFocusable()) {
                z6 = false;
            } else if (layoutParams.mFullSpan) {
                this.mRemainingSpans.clear();
                z6 = false;
            } else {
                z6 = false;
                this.mRemainingSpans.set(span.mIndex, false);
            }
            r10 = z6;
            r1 = true;
        }
        ?? r11 = r10;
        if (r1 == false) {
            L(recycler, this.mLayoutState);
        }
        if (this.mLayoutState.mLayoutDirection == -1) {
            iW = this.mPrimaryOrientation.m() - z(this.mPrimaryOrientation.m());
        } else {
            iW = w(this.mPrimaryOrientation.i()) - this.mPrimaryOrientation.i();
        }
        return iW > 0 ? Math.min(layoutState.mAvailable, iW) : r11 == true ? 1 : 0;
    }

    private void resolveShouldLayoutReverse() {
        if (this.mOrientation == 1 || !isLayoutRTL()) {
            this.mShouldReverseLayout = this.mReverseLayout;
        } else {
            this.mShouldReverseLayout = !this.mReverseLayout;
        }
    }

    private void s(RecyclerView.Recycler recycler, RecyclerView.State state, boolean z6) {
        int i10;
        int iW = w(Integer.MIN_VALUE);
        if (iW != Integer.MIN_VALUE && (i10 = this.mPrimaryOrientation.i() - iW) > 0) {
            int i11 = i10 - (-scrollBy(-i10, recycler, state));
            if (!z6 || i11 <= 0) {
                return;
            }
            this.mPrimaryOrientation.r(i11);
        }
    }

    private int w(int i10) {
        int iN = this.mSpans[0].n(i10);
        for (int i11 = 1; i11 < this.mSpanCount; i11++) {
            int iN2 = this.mSpans[i11].n(i10);
            if (iN2 > iN) {
                iN = iN2;
            }
        }
        return iN;
    }

    private int x(int i10) {
        int iR = this.mSpans[0].r(i10);
        for (int i11 = 1; i11 < this.mSpanCount; i11++) {
            int iR2 = this.mSpans[i11].r(i10);
            if (iR2 > iR) {
                iR = iR2;
            }
        }
        return iR;
    }

    private int y(int i10) {
        int iN = this.mSpans[0].n(i10);
        for (int i11 = 1; i11 < this.mSpanCount; i11++) {
            int iN2 = this.mSpans[i11].n(i10);
            if (iN2 < iN) {
                iN = iN2;
            }
        }
        return iN;
    }

    private int z(int i10) {
        int iR = this.mSpans[0].r(i10);
        for (int i11 = 1; i11 < this.mSpanCount; i11++) {
            int iR2 = this.mSpans[i11].r(i10);
            if (iR2 < iR) {
                iR = iR2;
            }
        }
        return iR;
    }

    public void E() {
        this.mLazySpanLookup.b();
        requestLayout();
    }

    void W(int i10) {
        this.mSizePerSpan = i10 / this.mSpanCount;
        this.mFullSizeSpec = View.MeasureSpec.makeMeasureSpec(i10, this.mSecondaryOrientation.k());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void assertNotInLayoutOrScroll(String str) {
        if (this.mPendingSavedState == null) {
            super.assertNotInLayoutOrScroll(str);
        }
    }

    boolean c() {
        int iN = this.mSpans[0].n(Integer.MIN_VALUE);
        for (int i10 = 1; i10 < this.mSpanCount; i10++) {
            if (this.mSpans[i10].n(Integer.MIN_VALUE) != iN) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean checkLayoutParams(RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @RestrictTo
    public void collectAdjacentPrefetchPositions(int i10, int i11, RecyclerView.State state, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        int iN;
        int iR;
        if (this.mOrientation != 0) {
            i10 = i11;
        }
        if (getChildCount() == 0 || i10 == 0) {
            return;
        }
        J(i10, state);
        int[] iArr = this.mPrefetchDistances;
        if (iArr == null || iArr.length < this.mSpanCount) {
            this.mPrefetchDistances = new int[this.mSpanCount];
        }
        int i12 = 0;
        for (int i13 = 0; i13 < this.mSpanCount; i13++) {
            LayoutState layoutState = this.mLayoutState;
            if (layoutState.mItemDirection == -1) {
                iN = layoutState.mStartLine;
                iR = this.mSpans[i13].r(iN);
            } else {
                iN = this.mSpans[i13].n(layoutState.mEndLine);
                iR = this.mLayoutState.mEndLine;
            }
            int i14 = iN - iR;
            if (i14 >= 0) {
                this.mPrefetchDistances[i12] = i14;
                i12++;
            }
        }
        Arrays.sort(this.mPrefetchDistances, 0, i12);
        for (int i15 = 0; i15 < i12 && this.mLayoutState.a(state); i15++) {
            layoutPrefetchRegistry.a(this.mLayoutState.mCurrentPosition, this.mPrefetchDistances[i15]);
            LayoutState layoutState2 = this.mLayoutState;
            layoutState2.mCurrentPosition += layoutState2.mItemDirection;
        }
    }

    boolean d() {
        int iR = this.mSpans[0].r(Integer.MIN_VALUE);
        for (int i10 = 1; i10 < this.mSpanCount; i10++) {
            if (this.mSpans[i10].r(Integer.MIN_VALUE) != iR) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return this.mOrientation == 0 ? new LayoutParams(-2, -1) : new LayoutParams(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    View n(boolean z6) {
        int iM = this.mPrimaryOrientation.m();
        int i10 = this.mPrimaryOrientation.i();
        View view = null;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            int iG = this.mPrimaryOrientation.g(childAt);
            int iD = this.mPrimaryOrientation.d(childAt);
            if (iD > iM && iG < i10) {
                if (iD <= i10 || !z6) {
                    return childAt;
                }
                if (view == null) {
                    view = childAt;
                }
            }
        }
        return view;
    }

    View o(boolean z6) {
        int iM = this.mPrimaryOrientation.m();
        int i10 = this.mPrimaryOrientation.i();
        int childCount = getChildCount();
        View view = null;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            int iG = this.mPrimaryOrientation.g(childAt);
            if (this.mPrimaryOrientation.d(childAt) > iM && iG < i10) {
                if (iG >= iM || !z6) {
                    return childAt;
                }
                if (view == null) {
                    view = childAt;
                }
            }
        }
        return view;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onAdapterChanged(@Nullable RecyclerView.Adapter adapter, @Nullable RecyclerView.Adapter adapter2) {
        this.mLazySpanLookup.b();
        for (int i10 = 0; i10 < this.mSpanCount; i10++) {
            this.mSpans[i10].e();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsChanged(RecyclerView recyclerView) {
        this.mLazySpanLookup.b();
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsMoved(RecyclerView recyclerView, int i10, int i11, int i12) {
        C(i10, i11, 8);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.mPendingSavedState = savedState;
            if (this.mPendingScrollPosition != -1) {
                savedState.c();
                this.mPendingSavedState.e();
            }
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public Parcelable onSaveInstanceState() {
        int iR;
        int iM;
        int[] iArr;
        if (this.mPendingSavedState != null) {
            return new SavedState(this.mPendingSavedState);
        }
        SavedState savedState = new SavedState();
        savedState.mReverseLayout = this.mReverseLayout;
        savedState.mAnchorLayoutFromEnd = this.mLastLayoutFromEnd;
        savedState.mLastLayoutRTL = this.mLastLayoutRTL;
        LazySpanLookup lazySpanLookup = this.mLazySpanLookup;
        if (lazySpanLookup == null || (iArr = lazySpanLookup.mData) == null) {
            savedState.mSpanLookupSize = 0;
        } else {
            savedState.mSpanLookup = iArr;
            savedState.mSpanLookupSize = iArr.length;
            savedState.mFullSpanItems = lazySpanLookup.mFullSpanItems;
        }
        if (getChildCount() > 0) {
            savedState.mAnchorPosition = this.mLastLayoutFromEnd ? v() : u();
            savedState.mVisibleAnchorPosition = p();
            int i10 = this.mSpanCount;
            savedState.mSpanOffsetsSize = i10;
            savedState.mSpanOffsets = new int[i10];
            for (int i11 = 0; i11 < this.mSpanCount; i11++) {
                if (this.mLastLayoutFromEnd) {
                    iR = this.mSpans[i11].n(Integer.MIN_VALUE);
                    if (iR != Integer.MIN_VALUE) {
                        iM = this.mPrimaryOrientation.i();
                        iR -= iM;
                    }
                } else {
                    iR = this.mSpans[i11].r(Integer.MIN_VALUE);
                    if (iR != Integer.MIN_VALUE) {
                        iM = this.mPrimaryOrientation.m();
                        iR -= iM;
                    }
                }
                savedState.mSpanOffsets[i11] = iR;
            }
        } else {
            savedState.mAnchorPosition = -1;
            savedState.mVisibleAnchorPosition = -1;
            savedState.mSpanOffsetsSize = 0;
        }
        return savedState;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onScrollStateChanged(int i10) {
        if (i10 == 0) {
            g();
        }
    }

    int p() {
        View viewN = this.mShouldReverseLayout ? n(true) : o(true);
        if (viewN == null) {
            return -1;
        }
        return getPosition(viewN);
    }

    public int[] r(int[] iArr) {
        if (iArr == null) {
            iArr = new int[this.mSpanCount];
        } else if (iArr.length < this.mSpanCount) {
            throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.mSpanCount + ", array size:" + iArr.length);
        }
        for (int i10 = 0; i10 < this.mSpanCount; i10++) {
            iArr[i10] = this.mSpans[i10].h();
        }
        return iArr;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void scrollToPosition(int i10) {
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null && savedState.mAnchorPosition != i10) {
            savedState.c();
        }
        this.mPendingScrollPosition = i10;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        requestLayout();
    }

    public void setOrientation(int i10) {
        if (i10 != 0 && i10 != 1) {
            throw new IllegalArgumentException("invalid orientation.");
        }
        assertNotInLayoutOrScroll(null);
        if (i10 == this.mOrientation) {
            return;
        }
        this.mOrientation = i10;
        OrientationHelper orientationHelper = this.mPrimaryOrientation;
        this.mPrimaryOrientation = this.mSecondaryOrientation;
        this.mSecondaryOrientation = orientationHelper;
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i10) {
        LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext());
        linearSmoothScroller.setTargetPosition(i10);
        startSmoothScroll(linearSmoothScroller);
    }

    private void M(RecyclerView.Recycler recycler, int i10) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (this.mPrimaryOrientation.g(childAt) >= i10 && this.mPrimaryOrientation.q(childAt) >= i10) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.mFullSpan) {
                    for (int i11 = 0; i11 < this.mSpanCount; i11++) {
                        if (this.mSpans[i11].mViews.size() == 1) {
                            return;
                        }
                    }
                    for (int i12 = 0; i12 < this.mSpanCount; i12++) {
                        this.mSpans[i12].u();
                    }
                } else if (layoutParams.mSpan.mViews.size() == 1) {
                    return;
                } else {
                    layoutParams.mSpan.u();
                }
                removeAndRecycleView(childAt, recycler);
            } else {
                return;
            }
        }
    }

    private void N(RecyclerView.Recycler recycler, int i10) {
        while (getChildCount() > 0) {
            View childAt = getChildAt(0);
            if (this.mPrimaryOrientation.d(childAt) <= i10 && this.mPrimaryOrientation.p(childAt) <= i10) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.mFullSpan) {
                    for (int i11 = 0; i11 < this.mSpanCount; i11++) {
                        if (this.mSpans[i11].mViews.size() == 1) {
                            return;
                        }
                    }
                    for (int i12 = 0; i12 < this.mSpanCount; i12++) {
                        this.mSpans[i12].v();
                    }
                } else if (layoutParams.mSpan.mViews.size() == 1) {
                    return;
                } else {
                    layoutParams.mSpan.v();
                }
                removeAndRecycleView(childAt, recycler);
            } else {
                return;
            }
        }
    }

    private void X(Span span, int i10, int i11) {
        int iL = span.l();
        if (i10 == -1) {
            if (span.q() + iL <= i11) {
                this.mRemainingSpans.set(span.mIndex, false);
            }
        } else if (span.m() - iL >= i11) {
            this.mRemainingSpans.set(span.mIndex, false);
        }
    }

    private int computeScrollExtent(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        return ScrollbarHelper.a(state, this.mPrimaryOrientation, o(!this.mSmoothScrollbarEnabled), n(!this.mSmoothScrollbarEnabled), this, this.mSmoothScrollbarEnabled);
    }

    private int computeScrollOffset(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        return ScrollbarHelper.b(state, this.mPrimaryOrientation, o(!this.mSmoothScrollbarEnabled), n(!this.mSmoothScrollbarEnabled), this, this.mSmoothScrollbarEnabled, this.mShouldReverseLayout);
    }

    private int computeScrollRange(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        return ScrollbarHelper.c(state, this.mPrimaryOrientation, o(!this.mSmoothScrollbarEnabled), n(!this.mSmoothScrollbarEnabled), this, this.mSmoothScrollbarEnabled);
    }

    private int f(int i10) {
        boolean z6;
        if (getChildCount() == 0) {
            if (!this.mShouldReverseLayout) {
                return -1;
            }
            return 1;
        }
        if (i10 < u()) {
            z6 = true;
        } else {
            z6 = false;
        }
        if (z6 != this.mShouldReverseLayout) {
            return -1;
        }
        return 1;
    }

    private int m(int i10) {
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            int position = getPosition(getChildAt(i11));
            if (position >= 0 && position < i10) {
                return position;
            }
        }
        return 0;
    }

    private int q(int i10) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            int position = getPosition(getChildAt(childCount));
            if (position >= 0 && position < i10) {
                return position;
            }
        }
        return 0;
    }

    private void t(RecyclerView.Recycler recycler, RecyclerView.State state, boolean z6) {
        int iM;
        int iZ = z(Integer.MAX_VALUE);
        if (iZ != Integer.MAX_VALUE && (iM = iZ - this.mPrimaryOrientation.m()) > 0) {
            int iScrollBy = iM - scrollBy(iM, recycler, state);
            if (z6 && iScrollBy > 0) {
                this.mPrimaryOrientation.r(-iScrollBy);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:37:0x0086  */
    /* JADX WARN: Code duplicated, block: B:39:0x0097  */
    /* JADX WARN: Code duplicated, block: B:40:0x0099  */
    /* JADX WARN: Code duplicated, block: B:42:0x009c  */
    /* JADX WARN: Code duplicated, block: B:43:0x009e  */
    /* JADX WARN: Code duplicated, block: B:53:0x00a1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:57:0x00a2 A[SYNTHETIC] */
    View D() {
        byte b7;
        int i10;
        boolean z6;
        boolean z10;
        int childCount = getChildCount();
        int i11 = childCount - 1;
        BitSet bitSet = new BitSet(this.mSpanCount);
        bitSet.set(0, this.mSpanCount, true);
        int i12 = -1;
        if (this.mOrientation == 1 && isLayoutRTL()) {
            b7 = 1;
        } else {
            b7 = -1;
        }
        if (this.mShouldReverseLayout) {
            childCount = -1;
        } else {
            i11 = 0;
        }
        if (i11 < childCount) {
            i12 = 1;
        }
        while (i11 != childCount) {
            View childAt = getChildAt(i11);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (bitSet.get(layoutParams.mSpan.mIndex)) {
                if (h(layoutParams.mSpan)) {
                    return childAt;
                }
                bitSet.clear(layoutParams.mSpan.mIndex);
            }
            if (!layoutParams.mFullSpan && (i10 = i11 + i12) != childCount) {
                View childAt2 = getChildAt(i10);
                if (this.mShouldReverseLayout) {
                    int iD = this.mPrimaryOrientation.d(childAt);
                    int iD2 = this.mPrimaryOrientation.d(childAt2);
                    if (iD < iD2) {
                        return childAt;
                    }
                    if (iD == iD2) {
                        if (layoutParams.mSpan.mIndex - ((LayoutParams) childAt2.getLayoutParams()).mSpan.mIndex < 0) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        if (b7 < 0) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        if (z6 != z10) {
                            return childAt;
                        }
                    } else {
                        continue;
                    }
                } else {
                    int iG = this.mPrimaryOrientation.g(childAt);
                    int iG2 = this.mPrimaryOrientation.g(childAt2);
                    if (iG > iG2) {
                        return childAt;
                    }
                    if (iG == iG2) {
                        if (layoutParams.mSpan.mIndex - ((LayoutParams) childAt2.getLayoutParams()).mSpan.mIndex < 0) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        if (b7 < 0) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        if (z6 != z10) {
                            return childAt;
                        }
                    } else {
                        continue;
                    }
                }
            }
            i11 += i12;
        }
        return null;
    }

    boolean T(RecyclerView.State state, AnchorInfo anchorInfo) {
        int i10;
        int iU;
        int iM;
        boolean z6 = false;
        if (!state.e() && (i10 = this.mPendingScrollPosition) != -1) {
            if (i10 >= 0 && i10 < state.b()) {
                SavedState savedState = this.mPendingSavedState;
                if (savedState != null && savedState.mAnchorPosition != -1 && savedState.mSpanOffsetsSize >= 1) {
                    anchorInfo.mOffset = Integer.MIN_VALUE;
                    anchorInfo.mPosition = this.mPendingScrollPosition;
                } else {
                    View viewFindViewByPosition = findViewByPosition(this.mPendingScrollPosition);
                    if (viewFindViewByPosition != null) {
                        if (this.mShouldReverseLayout) {
                            iU = v();
                        } else {
                            iU = u();
                        }
                        anchorInfo.mPosition = iU;
                        if (this.mPendingScrollPositionOffset != Integer.MIN_VALUE) {
                            if (anchorInfo.mLayoutFromEnd) {
                                anchorInfo.mOffset = (this.mPrimaryOrientation.i() - this.mPendingScrollPositionOffset) - this.mPrimaryOrientation.d(viewFindViewByPosition);
                            } else {
                                anchorInfo.mOffset = (this.mPrimaryOrientation.m() + this.mPendingScrollPositionOffset) - this.mPrimaryOrientation.g(viewFindViewByPosition);
                            }
                            return true;
                        }
                        if (this.mPrimaryOrientation.e(viewFindViewByPosition) > this.mPrimaryOrientation.n()) {
                            if (anchorInfo.mLayoutFromEnd) {
                                iM = this.mPrimaryOrientation.i();
                            } else {
                                iM = this.mPrimaryOrientation.m();
                            }
                            anchorInfo.mOffset = iM;
                            return true;
                        }
                        int iG = this.mPrimaryOrientation.g(viewFindViewByPosition) - this.mPrimaryOrientation.m();
                        if (iG < 0) {
                            anchorInfo.mOffset = -iG;
                            return true;
                        }
                        int i11 = this.mPrimaryOrientation.i() - this.mPrimaryOrientation.d(viewFindViewByPosition);
                        if (i11 < 0) {
                            anchorInfo.mOffset = i11;
                            return true;
                        }
                        anchorInfo.mOffset = Integer.MIN_VALUE;
                    } else {
                        int i12 = this.mPendingScrollPosition;
                        anchorInfo.mPosition = i12;
                        int i13 = this.mPendingScrollPositionOffset;
                        if (i13 == Integer.MIN_VALUE) {
                            if (f(i12) == 1) {
                                z6 = true;
                            }
                            anchorInfo.mLayoutFromEnd = z6;
                            anchorInfo.a();
                        } else {
                            anchorInfo.b(i13);
                        }
                        anchorInfo.mInvalidateOffsets = true;
                    }
                }
                return true;
            }
            this.mPendingScrollPosition = -1;
            this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        }
        return false;
    }

    void U(RecyclerView.State state, AnchorInfo anchorInfo) {
        if (T(state, anchorInfo) || S(state, anchorInfo)) {
            return;
        }
        anchorInfo.a();
        anchorInfo.mPosition = 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollExtent(RecyclerView.State state) {
        return computeScrollExtent(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollOffset(RecyclerView.State state) {
        return computeScrollOffset(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollRange(RecyclerView.State state) {
        return computeScrollRange(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller.ScrollVectorProvider
    public PointF computeScrollVectorForPosition(int i10) {
        int iF = f(i10);
        PointF pointF = new PointF();
        if (iF == 0) {
            return null;
        }
        if (this.mOrientation == 0) {
            pointF.x = iF;
            pointF.y = 0.0f;
        } else {
            pointF.x = 0.0f;
            pointF.y = iF;
        }
        return pointF;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollExtent(RecyclerView.State state) {
        return computeScrollExtent(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollOffset(RecyclerView.State state) {
        return computeScrollOffset(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollRange(RecyclerView.State state) {
        return computeScrollRange(state);
    }

    boolean g() {
        int iU;
        int iV;
        int i10;
        if (getChildCount() == 0 || this.mGapStrategy == 0 || !isAttachedToWindow()) {
            return false;
        }
        if (this.mShouldReverseLayout) {
            iU = v();
            iV = u();
        } else {
            iU = u();
            iV = v();
        }
        if (iU == 0 && D() != null) {
            this.mLazySpanLookup.b();
            requestSimpleAnimationsInNextLayout();
            requestLayout();
            return true;
        }
        if (!this.mLaidOutInvalidFullSpan) {
            return false;
        }
        if (this.mShouldReverseLayout) {
            i10 = -1;
        } else {
            i10 = 1;
        }
        int i11 = iV + 1;
        LazySpanLookup.FullSpanItem fullSpanItemE = this.mLazySpanLookup.e(iU, i11, i10, true);
        if (fullSpanItemE == null) {
            this.mLaidOutInvalidFullSpan = false;
            this.mLazySpanLookup.d(i11);
            return false;
        }
        LazySpanLookup.FullSpanItem fullSpanItemE2 = this.mLazySpanLookup.e(iU, fullSpanItemE.mPosition, i10 * (-1), true);
        if (fullSpanItemE2 == null) {
            this.mLazySpanLookup.d(fullSpanItemE.mPosition);
        } else {
            this.mLazySpanLookup.d(fullSpanItemE2.mPosition + 1);
        }
        requestSimpleAnimationsInNextLayout();
        requestLayout();
        return true;
    }

    boolean isLayoutRTL() {
        if (getLayoutDirection() == 1) {
            return true;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void offsetChildrenHorizontal(int i10) {
        super.offsetChildrenHorizontal(i10);
        for (int i11 = 0; i11 < this.mSpanCount; i11++) {
            this.mSpans[i11].t(i10);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void offsetChildrenVertical(int i10) {
        super.offsetChildrenVertical(i10);
        for (int i11 = 0; i11 < this.mSpanCount; i11++) {
            this.mSpans[i11].t(i10);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.Recycler recycler) {
        super.onDetachedFromWindow(recyclerView, recycler);
        removeCallbacks(this.mCheckForGapsRunnable);
        for (int i10 = 0; i10 < this.mSpanCount; i10++) {
            this.mSpans[i10].e();
        }
        recyclerView.requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @Nullable
    public View onFocusSearchFailed(View view, int i10, RecyclerView.Recycler recycler, RecyclerView.State state) {
        View viewFindContainingItemView;
        int iU;
        boolean z6;
        boolean z10;
        int iG;
        int iG2;
        int iG3;
        View viewO;
        if (getChildCount() == 0 || (viewFindContainingItemView = findContainingItemView(view)) == null) {
            return null;
        }
        resolveShouldLayoutReverse();
        int iConvertFocusDirectionToLayoutDirection = convertFocusDirectionToLayoutDirection(i10);
        if (iConvertFocusDirectionToLayoutDirection == Integer.MIN_VALUE) {
            return null;
        }
        LayoutParams layoutParams = (LayoutParams) viewFindContainingItemView.getLayoutParams();
        boolean z11 = layoutParams.mFullSpan;
        Span span = layoutParams.mSpan;
        if (iConvertFocusDirectionToLayoutDirection == 1) {
            iU = v();
        } else {
            iU = u();
        }
        V(iU, state);
        P(iConvertFocusDirectionToLayoutDirection);
        LayoutState layoutState = this.mLayoutState;
        layoutState.mCurrentPosition = layoutState.mItemDirection + iU;
        layoutState.mAvailable = (int) (this.mPrimaryOrientation.n() * MAX_SCROLL_FACTOR);
        LayoutState layoutState2 = this.mLayoutState;
        layoutState2.mStopInFocusable = true;
        layoutState2.mRecycle = false;
        l(recycler, layoutState2, state);
        this.mLastLayoutFromEnd = this.mShouldReverseLayout;
        if (!z11 && (viewO = span.o(iU, iConvertFocusDirectionToLayoutDirection)) != null && viewO != viewFindContainingItemView) {
            return viewO;
        }
        if (I(iConvertFocusDirectionToLayoutDirection)) {
            for (int i11 = this.mSpanCount - 1; i11 >= 0; i11--) {
                View viewO2 = this.mSpans[i11].o(iU, iConvertFocusDirectionToLayoutDirection);
                if (viewO2 != null && viewO2 != viewFindContainingItemView) {
                    return viewO2;
                }
            }
        } else {
            for (int i12 = 0; i12 < this.mSpanCount; i12++) {
                View viewO3 = this.mSpans[i12].o(iU, iConvertFocusDirectionToLayoutDirection);
                if (viewO3 != null && viewO3 != viewFindContainingItemView) {
                    return viewO3;
                }
            }
        }
        boolean z12 = !this.mReverseLayout;
        if (iConvertFocusDirectionToLayoutDirection == -1) {
            z6 = true;
        } else {
            z6 = false;
        }
        if (z12 == z6) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z11) {
            if (z10) {
                iG3 = span.f();
            } else {
                iG3 = span.g();
            }
            View viewFindViewByPosition = findViewByPosition(iG3);
            if (viewFindViewByPosition != null && viewFindViewByPosition != viewFindContainingItemView) {
                return viewFindViewByPosition;
            }
        }
        if (I(iConvertFocusDirectionToLayoutDirection)) {
            for (int i13 = this.mSpanCount - 1; i13 >= 0; i13--) {
                if (i13 != span.mIndex) {
                    if (z10) {
                        iG2 = this.mSpans[i13].f();
                    } else {
                        iG2 = this.mSpans[i13].g();
                    }
                    View viewFindViewByPosition2 = findViewByPosition(iG2);
                    if (viewFindViewByPosition2 != null && viewFindViewByPosition2 != viewFindContainingItemView) {
                        return viewFindViewByPosition2;
                    }
                }
            }
        } else {
            for (int i14 = 0; i14 < this.mSpanCount; i14++) {
                if (z10) {
                    iG = this.mSpans[i14].f();
                } else {
                    iG = this.mSpans[i14].g();
                }
                View viewFindViewByPosition3 = findViewByPosition(iG);
                if (viewFindViewByPosition3 != null && viewFindViewByPosition3 != viewFindContainingItemView) {
                    return viewFindViewByPosition3;
                }
            }
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            View viewO = o(false);
            View viewN = n(false);
            if (viewO != null && viewN != null) {
                int position = getPosition(viewO);
                int position2 = getPosition(viewN);
                if (position < position2) {
                    accessibilityEvent.setFromIndex(position);
                    accessibilityEvent.setToIndex(position2);
                } else {
                    accessibilityEvent.setFromIndex(position2);
                    accessibilityEvent.setToIndex(position);
                }
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutCompleted(RecyclerView.State state) {
        super.onLayoutCompleted(state);
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mPendingSavedState = null;
        this.mAnchorInfo.c();
    }

    int scrollBy(int i10, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (getChildCount() == 0 || i10 == 0) {
            return 0;
        }
        J(i10, state);
        int iL = l(recycler, this.mLayoutState, state);
        if (this.mLayoutState.mAvailable >= iL) {
            if (i10 < 0) {
                i10 = -iL;
            } else {
                i10 = iL;
            }
        }
        this.mPrimaryOrientation.r(-i10);
        this.mLastLayoutFromEnd = this.mShouldReverseLayout;
        LayoutState layoutState = this.mLayoutState;
        layoutState.mAvailable = 0;
        L(recycler, layoutState);
        return i10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollHorizontallyBy(int i10, RecyclerView.Recycler recycler, RecyclerView.State state) {
        return scrollBy(i10, recycler, state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollVerticallyBy(int i10, RecyclerView.Recycler recycler, RecyclerView.State state) {
        return scrollBy(i10, recycler, state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void setMeasuredDimension(Rect rect, int i10, int i11) {
        int iChooseSize;
        int iChooseSize2;
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        if (this.mOrientation == 1) {
            iChooseSize2 = RecyclerView.LayoutManager.chooseSize(i11, rect.height() + paddingTop, getMinimumHeight());
            iChooseSize = RecyclerView.LayoutManager.chooseSize(i10, (this.mSizePerSpan * this.mSpanCount) + paddingLeft, getMinimumWidth());
        } else {
            iChooseSize = RecyclerView.LayoutManager.chooseSize(i10, rect.width() + paddingLeft, getMinimumWidth());
            iChooseSize2 = RecyclerView.LayoutManager.chooseSize(i11, (this.mSizePerSpan * this.mSpanCount) + paddingTop, getMinimumHeight());
        }
        setMeasuredDimension(iChooseSize, iChooseSize2);
    }

    int u() {
        if (getChildCount() == 0) {
            return 0;
        }
        return getPosition(getChildAt(0));
    }

    int v() {
        int childCount = getChildCount();
        if (childCount == 0) {
            return 0;
        }
        return getPosition(getChildAt(childCount - 1));
    }

    public StaggeredGridLayoutManager(int i10, int i11) {
        this.mOrientation = i11;
        Q(i10);
        this.mLayoutState = new LayoutState();
        k();
    }
}
