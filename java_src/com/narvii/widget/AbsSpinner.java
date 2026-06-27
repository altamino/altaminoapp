package com.narvii.widget;

import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.SpinnerAdapter;
import com.narvii.widget.AdapterView;

/* loaded from: classes3.dex */
public abstract class AbsSpinner extends AdapterView<SpinnerAdapter> {
    SpinnerAdapter mAdapter;
    boolean mBlockLayoutRequests;
    private DataSetObserver mDataSetObserver;
    int mHeightMeasureSpec;
    Interpolator mInterpolator;
    RecycleBin mRecycler;
    View mSelectedView;
    int mSelectionBottomPadding;
    int mSelectionLeftPadding;
    int mSelectionRightPadding;
    int mSelectionTopPadding;
    Rect mSpinnerPadding;
    private Rect mTouchFrame;
    int mWidthMeasureSpec;

    abstract void layout(int i, boolean z);

    public AbsSpinner(Context context) {
        super(context);
        this.mSelectionLeftPadding = 0;
        this.mSelectionTopPadding = 0;
        this.mSelectionRightPadding = 0;
        this.mSelectionBottomPadding = 0;
        this.mSpinnerPadding = new Rect();
        this.mSelectedView = null;
        this.mRecycler = new RecycleBin();
        initAbsSpinner();
    }

    public AbsSpinner(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AbsSpinner(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mSelectionLeftPadding = 0;
        this.mSelectionTopPadding = 0;
        this.mSelectionRightPadding = 0;
        this.mSelectionBottomPadding = 0;
        this.mSpinnerPadding = new Rect();
        this.mSelectedView = null;
        this.mRecycler = new RecycleBin();
        initAbsSpinner();
    }

    private void initAbsSpinner() {
        setFocusable(true);
        setWillNotDraw(false);
    }

    @Override // com.narvii.widget.AdapterView
    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        SpinnerAdapter spinnerAdapter2 = this.mAdapter;
        if (spinnerAdapter2 != null) {
            spinnerAdapter2.unregisterDataSetObserver(this.mDataSetObserver);
            resetList();
        }
        this.mAdapter = spinnerAdapter;
        this.mOldSelectedPosition = -1;
        this.mOldSelectedRowId = Long.MIN_VALUE;
        SpinnerAdapter spinnerAdapter3 = this.mAdapter;
        if (spinnerAdapter3 != null) {
            this.mOldItemCount = this.mItemCount;
            this.mItemCount = spinnerAdapter3.getCount();
            checkFocus();
            this.mDataSetObserver = new AdapterView.AdapterDataSetObserver();
            this.mAdapter.registerDataSetObserver(this.mDataSetObserver);
            int i = this.mItemCount > 0 ? 0 : -1;
            setSelectedPositionInt(i);
            setNextSelectedPositionInt(i);
            if (this.mItemCount == 0) {
                checkSelectionChanged();
            }
        } else {
            checkFocus();
            resetList();
            checkSelectionChanged();
        }
        requestLayout();
    }

    final void resetList() {
        this.mDataChanged = false;
        this.mNeedSync = false;
        removeAllViewsInLayout();
        this.mOldSelectedPosition = -1;
        this.mOldSelectedRowId = Long.MIN_VALUE;
        setSelectedPositionInt(-1);
        setNextSelectedPositionInt(-1);
        invalidate();
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x009e  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r7, int r8) {
        /*
            r6 = this;
            int r0 = android.view.View.MeasureSpec.getMode(r7)
            android.graphics.Rect r1 = r6.mSpinnerPadding
            int r2 = r6.getPaddingLeft()
            int r3 = r6.mSelectionLeftPadding
            if (r2 <= r3) goto L12
            int r3 = r6.getPaddingLeft()
        L12:
            r1.left = r3
            android.graphics.Rect r1 = r6.mSpinnerPadding
            int r2 = r6.getPaddingTop()
            int r3 = r6.mSelectionTopPadding
            if (r2 <= r3) goto L22
            int r3 = r6.getPaddingTop()
        L22:
            r1.top = r3
            android.graphics.Rect r1 = r6.mSpinnerPadding
            int r2 = r6.getPaddingRight()
            int r3 = r6.mSelectionRightPadding
            if (r2 <= r3) goto L32
            int r3 = r6.getPaddingRight()
        L32:
            r1.right = r3
            android.graphics.Rect r1 = r6.mSpinnerPadding
            int r2 = r6.getPaddingBottom()
            int r3 = r6.mSelectionBottomPadding
            if (r2 <= r3) goto L42
            int r3 = r6.getPaddingBottom()
        L42:
            r1.bottom = r3
            boolean r1 = r6.mDataChanged
            if (r1 == 0) goto L4b
            r6.handleDataChanged()
        L4b:
            int r1 = r6.getSelectedItemPosition()
            r2 = 1
            r3 = 0
            if (r1 < 0) goto L9e
            android.widget.SpinnerAdapter r4 = r6.mAdapter
            if (r4 == 0) goto L9e
            com.narvii.widget.AbsSpinner$RecycleBin r4 = r6.mRecycler
            android.view.View r4 = r4.get(r1)
            if (r4 != 0) goto L66
            android.widget.SpinnerAdapter r4 = r6.mAdapter
            r5 = 0
            android.view.View r4 = r4.getView(r1, r5, r6)
        L66:
            if (r4 == 0) goto L6d
            com.narvii.widget.AbsSpinner$RecycleBin r5 = r6.mRecycler
            r5.put(r1, r4)
        L6d:
            if (r4 == 0) goto L9e
            android.view.ViewGroup$LayoutParams r1 = r4.getLayoutParams()
            if (r1 != 0) goto L80
            r6.mBlockLayoutRequests = r2
            android.view.ViewGroup$LayoutParams r1 = r6.generateDefaultLayoutParams()
            r4.setLayoutParams(r1)
            r6.mBlockLayoutRequests = r3
        L80:
            r6.measureChild(r4, r7, r8)
            int r1 = r6.getChildHeight(r4)
            android.graphics.Rect r2 = r6.mSpinnerPadding
            int r5 = r2.top
            int r1 = r1 + r5
            int r2 = r2.bottom
            int r1 = r1 + r2
            int r2 = r6.getChildWidth(r4)
            android.graphics.Rect r4 = r6.mSpinnerPadding
            int r5 = r4.left
            int r2 = r2 + r5
            int r4 = r4.right
            int r2 = r2 + r4
            r3 = r2
            r2 = 0
            goto L9f
        L9e:
            r1 = 0
        L9f:
            if (r2 == 0) goto Lb1
            android.graphics.Rect r1 = r6.mSpinnerPadding
            int r2 = r1.top
            int r4 = r1.bottom
            int r2 = r2 + r4
            if (r0 != 0) goto Lb2
            int r0 = r1.left
            int r1 = r1.right
            int r3 = r0 + r1
            goto Lb2
        Lb1:
            r2 = r1
        Lb2:
            int r0 = r6.getSuggestedMinimumHeight()
            int r0 = java.lang.Math.max(r2, r0)
            int r1 = r6.getSuggestedMinimumWidth()
            int r1 = java.lang.Math.max(r3, r1)
            int r0 = android.view.ViewGroup.resolveSize(r0, r8)
            int r1 = android.view.ViewGroup.resolveSize(r1, r7)
            r6.setMeasuredDimension(r1, r0)
            r6.mHeightMeasureSpec = r8
            r6.mWidthMeasureSpec = r7
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.widget.AbsSpinner.onMeasure(int, int):void");
    }

    final int getChildHeight(View view) {
        return view.getMeasuredHeight();
    }

    final int getChildWidth(View view) {
        return view.getMeasuredWidth();
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.LayoutParams(-1, -2);
    }

    final void recycleAllViews() {
        int childCount = getChildCount();
        RecycleBin recycleBin = this.mRecycler;
        for (int i = 0; i < childCount; i++) {
            recycleBin.put(this.mFirstPosition + i, getChildAt(i));
        }
    }

    @Override // com.narvii.widget.AdapterView
    final void handleDataChanged() {
        super.handleDataChanged();
    }

    public final void setSelection(int i, boolean z) {
        int i2;
        setSelectionInt(i, z && (i2 = this.mFirstPosition) <= i && i <= (i2 + getChildCount()) - 1);
    }

    @Override // com.narvii.widget.AdapterView
    public final void setSelection(int i) {
        setNextSelectedPositionInt(i);
        requestLayout();
        invalidate();
    }

    final void setSelectionInt(int i, boolean z) {
        if (i != this.mOldSelectedPosition) {
            this.mBlockLayoutRequests = true;
            int i2 = i - this.mSelectedPosition;
            setNextSelectedPositionInt(i);
            layout(i2, z);
            this.mBlockLayoutRequests = false;
        }
    }

    @Override // com.narvii.widget.AdapterView
    public final View getSelectedView() {
        int i;
        if (this.mItemCount <= 0 || (i = this.mSelectedPosition) < 0) {
            return null;
        }
        return getChildAt(i - this.mFirstPosition);
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        if (this.mBlockLayoutRequests) {
            return;
        }
        super.requestLayout();
    }

    @Override // com.narvii.widget.AdapterView
    public final SpinnerAdapter getAdapter() {
        return this.mAdapter;
    }

    @Override // com.narvii.widget.AdapterView
    public final int getCount() {
        return this.mItemCount;
    }

    public final int pointToPosition(int i, int i2) {
        Rect rect = this.mTouchFrame;
        if (rect == null) {
            this.mTouchFrame = new Rect();
            rect = this.mTouchFrame;
        }
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (childAt.getVisibility() == 0) {
                childAt.getHitRect(rect);
                if (rect.contains(i, i2)) {
                    return this.mFirstPosition + childCount;
                }
            }
        }
        return -1;
    }

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.narvii.widget.AbsSpinner.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        int position;
        long selectedId;

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.selectedId = parcel.readLong();
            this.position = parcel.readInt();
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeLong(this.selectedId);
            parcel.writeInt(this.position);
        }

        public String toString() {
            return "AbsSpinner.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " selectedId=" + this.selectedId + " position=" + this.position + "}";
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.selectedId = getSelectedItemId();
        if (savedState.selectedId >= 0) {
            savedState.position = getSelectedItemPosition();
        } else {
            savedState.position = -1;
        }
        return savedState;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        long j = savedState.selectedId;
        if (j >= 0) {
            this.mDataChanged = true;
            this.mNeedSync = true;
            this.mSyncRowId = j;
            this.mSyncPosition = savedState.position;
            this.mSyncMode = 0;
            requestLayout();
        }
    }

    class RecycleBin {
        private final SparseArray<View> mScrapHeap = new SparseArray<>();

        RecycleBin() {
        }

        public void put(int i, View view) {
            this.mScrapHeap.put(i, view);
        }

        View get(int i) {
            View view = this.mScrapHeap.get(i);
            if (view != null) {
                this.mScrapHeap.delete(i);
            }
            return view;
        }

        View peek(int i) {
            return this.mScrapHeap.get(i);
        }

        void clear() {
            SparseArray<View> sparseArray = this.mScrapHeap;
            int size = sparseArray.size();
            for (int i = 0; i < size; i++) {
                View viewValueAt = sparseArray.valueAt(i);
                if (viewValueAt != null) {
                    AbsSpinner.this.removeDetachedView(viewValueAt, true);
                }
            }
            sparseArray.clear();
        }
    }
}
