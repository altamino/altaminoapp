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

/* JADX INFO: loaded from: classes7.dex */
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

    class RecycleBin {
        private final SparseArray<View> mScrapHeap = new SparseArray<>();

        RecycleBin() {
        }

        void clear() {
            SparseArray<View> sparseArray = this.mScrapHeap;
            int size = sparseArray.size();
            for (int i10 = 0; i10 < size; i10++) {
                View viewValueAt = sparseArray.valueAt(i10);
                if (viewValueAt != null) {
                    AbsSpinner.this.removeDetachedView(viewValueAt, true);
                }
            }
            sparseArray.clear();
        }

        View get(int i10) {
            View view = this.mScrapHeap.get(i10);
            if (view != null) {
                this.mScrapHeap.delete(i10);
            }
            return view;
        }

        View peek(int i10) {
            return this.mScrapHeap.get(i10);
        }

        public void put(int i10, View view) {
            this.mScrapHeap.put(i10, view);
        }
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
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        };
        int position;
        long selectedId;

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "AbsSpinner.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " selectedId=" + this.selectedId + " position=" + this.position + "}";
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.selectedId = parcel.readLong();
            this.position = parcel.readInt();
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeLong(this.selectedId);
            parcel.writeInt(this.position);
        }
    }

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

    private void initAbsSpinner() {
        setFocusable(true);
        setWillNotDraw(false);
    }

    @Override // com.narvii.widget.AdapterView
    public final SpinnerAdapter getAdapter() {
        return this.mAdapter;
    }

    @Override // com.narvii.widget.AdapterView
    public final int getCount() {
        return this.mItemCount;
    }

    abstract void layout(int i10, boolean z6);

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

    /* JADX WARN: Code duplicated, block: B:8:0x0010  */
    public final void setSelection(int i10, boolean z6) {
        boolean z10;
        int i11;
        if (z6 && (i11 = this.mFirstPosition) <= i10) {
            z10 = i10 <= (i11 + getChildCount()) - 1;
        }
        setSelectionInt(i10, z10);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.LayoutParams(-1, -2);
    }

    @Override // com.narvii.widget.AdapterView
    public final View getSelectedView() {
        int i10;
        if (this.mItemCount <= 0 || (i10 = this.mSelectedPosition) < 0) {
            return null;
        }
        return getChildAt(i10 - this.mFirstPosition);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        long j6 = savedState.selectedId;
        if (j6 >= 0) {
            this.mDataChanged = true;
            this.mNeedSync = true;
            this.mSyncRowId = j6;
            this.mSyncPosition = savedState.position;
            this.mSyncMode = 0;
            requestLayout();
        }
    }

    public final int pointToPosition(int i10, int i11) {
        Rect rect = this.mTouchFrame;
        if (rect == null) {
            rect = new Rect();
            this.mTouchFrame = rect;
        }
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (childAt.getVisibility() == 0) {
                childAt.getHitRect(rect);
                if (rect.contains(i10, i11)) {
                    return this.mFirstPosition + childCount;
                }
            }
        }
        return -1;
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        if (this.mBlockLayoutRequests) {
            return;
        }
        super.requestLayout();
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
        if (spinnerAdapter != null) {
            this.mOldItemCount = this.mItemCount;
            this.mItemCount = spinnerAdapter.getCount();
            checkFocus();
            AdapterView.AdapterDataSetObserver adapterDataSetObserver = new AdapterView.AdapterDataSetObserver();
            this.mDataSetObserver = adapterDataSetObserver;
            this.mAdapter.registerDataSetObserver(adapterDataSetObserver);
            int i10 = this.mItemCount > 0 ? 0 : -1;
            setSelectedPositionInt(i10);
            setNextSelectedPositionInt(i10);
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

    final void setSelectionInt(int i10, boolean z6) {
        if (i10 != this.mOldSelectedPosition) {
            this.mBlockLayoutRequests = true;
            int i11 = i10 - this.mSelectedPosition;
            setNextSelectedPositionInt(i10);
            layout(i11, z6);
            this.mBlockLayoutRequests = false;
        }
    }

    final int getChildHeight(View view) {
        return view.getMeasuredHeight();
    }

    final int getChildWidth(View view) {
        return view.getMeasuredWidth();
    }

    @Override // com.narvii.widget.AdapterView
    final void handleDataChanged() {
        super.handleDataChanged();
    }

    /* JADX WARN: Code duplicated, block: B:31:0x00a0  */
    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        int i12;
        int mode = View.MeasureSpec.getMode(i10);
        Rect rect = this.mSpinnerPadding;
        int paddingLeft = getPaddingLeft();
        int paddingLeft2 = this.mSelectionLeftPadding;
        if (paddingLeft > paddingLeft2) {
            paddingLeft2 = getPaddingLeft();
        }
        rect.left = paddingLeft2;
        Rect rect2 = this.mSpinnerPadding;
        int paddingTop = getPaddingTop();
        int paddingTop2 = this.mSelectionTopPadding;
        if (paddingTop > paddingTop2) {
            paddingTop2 = getPaddingTop();
        }
        rect2.top = paddingTop2;
        Rect rect3 = this.mSpinnerPadding;
        int paddingRight = getPaddingRight();
        int paddingRight2 = this.mSelectionRightPadding;
        if (paddingRight > paddingRight2) {
            paddingRight2 = getPaddingRight();
        }
        rect3.right = paddingRight2;
        Rect rect4 = this.mSpinnerPadding;
        int paddingBottom = getPaddingBottom();
        int paddingBottom2 = this.mSelectionBottomPadding;
        if (paddingBottom > paddingBottom2) {
            paddingBottom2 = getPaddingBottom();
        }
        rect4.bottom = paddingBottom2;
        if (this.mDataChanged) {
            handleDataChanged();
        }
        int selectedItemPosition = getSelectedItemPosition();
        boolean z6 = true;
        int i13 = 0;
        if (selectedItemPosition >= 0 && this.mAdapter != null) {
            View view = this.mRecycler.get(selectedItemPosition);
            if (view == null) {
                view = this.mAdapter.getView(selectedItemPosition, null, this);
            }
            if (view != null) {
                this.mRecycler.put(selectedItemPosition, view);
            }
            if (view != null) {
                if (view.getLayoutParams() == null) {
                    this.mBlockLayoutRequests = true;
                    view.setLayoutParams(generateDefaultLayoutParams());
                    this.mBlockLayoutRequests = false;
                }
                measureChild(view, i10, i11);
                int childHeight = getChildHeight(view);
                Rect rect5 = this.mSpinnerPadding;
                int i14 = childHeight + rect5.top + rect5.bottom;
                int childWidth = getChildWidth(view);
                Rect rect6 = this.mSpinnerPadding;
                i13 = i14;
                i12 = childWidth + rect6.left + rect6.right;
                z6 = false;
            } else {
                i12 = 0;
            }
        } else {
            i12 = 0;
        }
        if (z6) {
            Rect rect7 = this.mSpinnerPadding;
            i13 = rect7.top + rect7.bottom;
            if (mode == 0) {
                i12 = rect7.right + rect7.left;
            }
        }
        int iMax = Math.max(i13, getSuggestedMinimumHeight());
        setMeasuredDimension(View.resolveSize(Math.max(i12, getSuggestedMinimumWidth()), i10), View.resolveSize(iMax, i11));
        this.mHeightMeasureSpec = i11;
        this.mWidthMeasureSpec = i10;
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        long selectedItemId = getSelectedItemId();
        savedState.selectedId = selectedItemId;
        if (selectedItemId >= 0) {
            savedState.position = getSelectedItemPosition();
        } else {
            savedState.position = -1;
        }
        return savedState;
    }

    final void recycleAllViews() {
        int childCount = getChildCount();
        RecycleBin recycleBin = this.mRecycler;
        for (int i10 = 0; i10 < childCount; i10++) {
            recycleBin.put(this.mFirstPosition + i10, getChildAt(i10));
        }
    }

    @Override // com.narvii.widget.AdapterView
    public final void setSelection(int i10) {
        setNextSelectedPositionInt(i10);
        requestLayout();
        invalidate();
    }

    public AbsSpinner(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AbsSpinner(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mSelectionLeftPadding = 0;
        this.mSelectionTopPadding = 0;
        this.mSelectionRightPadding = 0;
        this.mSelectionBottomPadding = 0;
        this.mSpinnerPadding = new Rect();
        this.mSelectedView = null;
        this.mRecycler = new RecycleBin();
        initAbsSpinner();
    }
}
