package com.narvii.widget;

import android.content.Context;
import android.database.DataSetObserver;
import android.os.Handler;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.widget.Adapter;

/* loaded from: classes3.dex */
public abstract class AdapterView<T extends Adapter> extends ViewGroup {
    public static final int INVALID_POSITION = -1;
    public static final long INVALID_ROW_ID = Long.MIN_VALUE;
    public static final int ITEM_VIEW_TYPE_HEADER_OR_FOOTER = -2;
    public static final int ITEM_VIEW_TYPE_IGNORE = -1;
    static final int SYNC_FIRST_POSITION = 1;
    static final int SYNC_MAX_DURATION_MILLIS = 100;
    static final int SYNC_SELECTED_POSITION = 0;
    boolean mBlockLayoutRequests;
    boolean mDataChanged;
    private boolean mDesiredFocusableInTouchModeState;
    private boolean mDesiredFocusableState;
    View mEmptyView;

    @ViewDebug.ExportedProperty
    int mFirstPosition;
    boolean mInLayout;

    @ViewDebug.ExportedProperty
    int mItemCount;
    private int mLayoutHeight;
    boolean mNeedSync;

    @ViewDebug.ExportedProperty
    int mNextSelectedPosition;
    long mNextSelectedRowId;
    int mOldItemCount;
    int mOldSelectedPosition;
    long mOldSelectedRowId;
    OnItemClickListener mOnItemClickListener;
    OnItemLongClickListener mOnItemLongClickListener;
    OnItemSelectedListener mOnItemSelectedListener;

    @ViewDebug.ExportedProperty
    int mSelectedPosition;
    long mSelectedRowId;
    private AdapterView<T>.SelectionNotifier mSelectionNotifier;
    int mSpecificTop;
    long mSyncHeight;
    int mSyncMode;
    int mSyncPosition;
    long mSyncRowId;

    public interface OnItemClickListener {
        void onItemClick(AdapterView<?> adapterView, View view, int i, long j);
    }

    public interface OnItemLongClickListener {
        boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j);
    }

    public interface OnItemSelectedListener {
        void onItemSelected(AdapterView<?> adapterView, View view, int i, long j);

        void onNothingSelected(AdapterView<?> adapterView);
    }

    public abstract T getAdapter();

    public abstract View getSelectedView();

    final boolean isInFilterMode() {
        return false;
    }

    final int lookForSelectablePosition(int i, boolean z) {
        return i;
    }

    public abstract void setAdapter(T t);

    public abstract void setSelection(int i);

    public AdapterView(Context context) {
        super(context);
        this.mFirstPosition = 0;
        this.mSyncRowId = Long.MIN_VALUE;
        this.mNeedSync = false;
        this.mInLayout = false;
        this.mNextSelectedPosition = -1;
        this.mNextSelectedRowId = Long.MIN_VALUE;
        this.mSelectedPosition = -1;
        this.mSelectedRowId = Long.MIN_VALUE;
        this.mOldSelectedPosition = -1;
        this.mOldSelectedRowId = Long.MIN_VALUE;
        this.mBlockLayoutRequests = false;
    }

    public AdapterView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mFirstPosition = 0;
        this.mSyncRowId = Long.MIN_VALUE;
        this.mNeedSync = false;
        this.mInLayout = false;
        this.mNextSelectedPosition = -1;
        this.mNextSelectedRowId = Long.MIN_VALUE;
        this.mSelectedPosition = -1;
        this.mSelectedRowId = Long.MIN_VALUE;
        this.mOldSelectedPosition = -1;
        this.mOldSelectedRowId = Long.MIN_VALUE;
        this.mBlockLayoutRequests = false;
    }

    public AdapterView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mFirstPosition = 0;
        this.mSyncRowId = Long.MIN_VALUE;
        this.mNeedSync = false;
        this.mInLayout = false;
        this.mNextSelectedPosition = -1;
        this.mNextSelectedRowId = Long.MIN_VALUE;
        this.mSelectedPosition = -1;
        this.mSelectedRowId = Long.MIN_VALUE;
        this.mOldSelectedPosition = -1;
        this.mOldSelectedRowId = Long.MIN_VALUE;
        this.mBlockLayoutRequests = false;
    }

    public final void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.mOnItemClickListener = onItemClickListener;
    }

    public final OnItemClickListener getOnItemClickListener() {
        return this.mOnItemClickListener;
    }

    public final boolean performItemClick(View view, int i, long j) {
        if (this.mOnItemClickListener == null) {
            return false;
        }
        playSoundEffect(0);
        this.mOnItemClickListener.onItemClick(this, view, i, j);
        return true;
    }

    public final void setOnItemLongClickListener(OnItemLongClickListener onItemLongClickListener) {
        if (!isLongClickable()) {
            setLongClickable(true);
        }
        this.mOnItemLongClickListener = onItemLongClickListener;
    }

    public final OnItemLongClickListener getOnItemLongClickListener() {
        return this.mOnItemLongClickListener;
    }

    public final void setOnItemSelectedListener(OnItemSelectedListener onItemSelectedListener) {
        this.mOnItemSelectedListener = onItemSelectedListener;
    }

    public final OnItemSelectedListener getOnItemSelectedListener() {
        return this.mOnItemSelectedListener;
    }

    public static class AdapterContextMenuInfo implements ContextMenu.ContextMenuInfo {
        public long id;
        public int position;
        public View targetView;

        public AdapterContextMenuInfo(View view, int i, long j) {
            this.targetView = view;
            this.position = i;
            this.id = j;
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view) {
        throw new UnsupportedOperationException("addView(View) is not supported in AdapterView");
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i) {
        throw new UnsupportedOperationException("addView(View, int) is not supported in AdapterView");
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void addView(View view, ViewGroup.LayoutParams layoutParams) {
        throw new UnsupportedOperationException("addView(View, LayoutParams) is not supported in AdapterView");
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        throw new UnsupportedOperationException("addView(View, int, LayoutParams) is not supported in AdapterView");
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        throw new UnsupportedOperationException("removeView(View) is not supported in AdapterView");
    }

    @Override // android.view.ViewGroup
    public final void removeViewAt(int i) {
        throw new UnsupportedOperationException("removeViewAt(int) is not supported in AdapterView");
    }

    @Override // android.view.ViewGroup
    public final void removeAllViews() {
        throw new UnsupportedOperationException("removeAllViews() is not supported in AdapterView");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.mLayoutHeight = getHeight();
    }

    public final int getSelectedItemPosition() {
        return this.mNextSelectedPosition;
    }

    public final long getSelectedItemId() {
        return this.mNextSelectedRowId;
    }

    public final Object getSelectedItem() {
        Adapter adapter = getAdapter();
        int selectedItemPosition = getSelectedItemPosition();
        if (adapter == null || adapter.getCount() <= 0 || selectedItemPosition < 0) {
            return null;
        }
        return adapter.getItem(selectedItemPosition);
    }

    public int getCount() {
        return this.mItemCount;
    }

    public final int getPositionForView(View view) {
        while (true) {
            try {
                View view2 = (View) view.getParent();
                if (view2.equals(this)) {
                    break;
                }
                view = view2;
            } catch (ClassCastException unused) {
            }
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (getChildAt(i).equals(view)) {
                return this.mFirstPosition + i;
            }
        }
        return -1;
    }

    public final int getFirstVisiblePosition() {
        return this.mFirstPosition;
    }

    public final int getLastVisiblePosition() {
        return (this.mFirstPosition + getChildCount()) - 1;
    }

    public final void setEmptyView(View view) {
        this.mEmptyView = view;
        Adapter adapter = getAdapter();
        updateEmptyStatus(adapter == null || adapter.isEmpty());
    }

    public final View getEmptyView() {
        return this.mEmptyView;
    }

    @Override // android.view.View
    public final void setFocusable(boolean z) {
        Adapter adapter = getAdapter();
        boolean z2 = true;
        boolean z3 = adapter == null || adapter.getCount() == 0;
        this.mDesiredFocusableState = z;
        if (!z) {
            this.mDesiredFocusableInTouchModeState = false;
        }
        if (!z || (z3 && !isInFilterMode())) {
            z2 = false;
        }
        super.setFocusable(z2);
    }

    @Override // android.view.View
    public final void setFocusableInTouchMode(boolean z) {
        Adapter adapter = getAdapter();
        boolean z2 = false;
        boolean z3 = adapter == null || adapter.getCount() == 0;
        this.mDesiredFocusableInTouchModeState = z;
        if (z) {
            this.mDesiredFocusableState = true;
        }
        if (z && (!z3 || isInFilterMode())) {
            z2 = true;
        }
        super.setFocusableInTouchMode(z2);
    }

    void checkFocus() {
        Adapter adapter = getAdapter();
        boolean z = !(adapter == null || adapter.getCount() == 0) || isInFilterMode();
        super.setFocusableInTouchMode(z && this.mDesiredFocusableInTouchModeState);
        super.setFocusable(z && this.mDesiredFocusableState);
        if (this.mEmptyView != null) {
            updateEmptyStatus(adapter == null || adapter.isEmpty());
        }
    }

    private void updateEmptyStatus(boolean z) {
        if (isInFilterMode()) {
            z = false;
        }
        if (z) {
            View view = this.mEmptyView;
            if (view != null) {
                view.setVisibility(0);
                setVisibility(8);
            } else {
                setVisibility(0);
            }
            if (this.mDataChanged) {
                onLayout(false, getLeft(), getTop(), getRight(), getBottom());
                return;
            }
            return;
        }
        View view2 = this.mEmptyView;
        if (view2 != null) {
            view2.setVisibility(8);
        }
        setVisibility(0);
    }

    public Object getItemAtPosition(int i) {
        Adapter adapter = getAdapter();
        if (adapter == null || i < 0) {
            return null;
        }
        return adapter.getItem(i);
    }

    public long getItemIdAtPosition(int i) {
        Adapter adapter = getAdapter();
        if (adapter == null || i < 0) {
            return Long.MIN_VALUE;
        }
        return adapter.getItemId(i);
    }

    @Override // android.view.View
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        throw new RuntimeException("Don't call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    class AdapterDataSetObserver extends DataSetObserver {
        private Parcelable mInstanceState = null;

        AdapterDataSetObserver() {
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x0034  */
        @Override // android.database.DataSetObserver
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onChanged() {
            /*
                r3 = this;
                com.narvii.widget.AdapterView r0 = com.narvii.widget.AdapterView.this
                r1 = 1
                r0.mDataChanged = r1
                int r1 = r0.mItemCount
                r0.mOldItemCount = r1
                android.widget.Adapter r1 = r0.getAdapter()
                int r1 = r1.getCount()
                r0.mItemCount = r1
                com.narvii.widget.AdapterView r0 = com.narvii.widget.AdapterView.this
                android.widget.Adapter r0 = r0.getAdapter()
                boolean r0 = r0.hasStableIds()
                if (r0 == 0) goto L34
                android.os.Parcelable r0 = r3.mInstanceState
                if (r0 == 0) goto L34
                com.narvii.widget.AdapterView r1 = com.narvii.widget.AdapterView.this
                int r2 = r1.mOldItemCount
                if (r2 != 0) goto L34
                int r2 = r1.mItemCount
                if (r2 <= 0) goto L34
                com.narvii.widget.AdapterView.access$000(r1, r0)
                r0 = 0
                r3.mInstanceState = r0
                goto L39
            L34:
                com.narvii.widget.AdapterView r0 = com.narvii.widget.AdapterView.this
                r0.rememberSyncState()
            L39:
                com.narvii.widget.AdapterView r0 = com.narvii.widget.AdapterView.this
                r0.checkFocus()
                com.narvii.widget.AdapterView r0 = com.narvii.widget.AdapterView.this
                r0.requestLayout()
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.narvii.widget.AdapterView.AdapterDataSetObserver.onChanged():void");
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            AdapterView adapterView = AdapterView.this;
            adapterView.mDataChanged = true;
            if (adapterView.getAdapter().hasStableIds()) {
                this.mInstanceState = AdapterView.this.onSaveInstanceState();
            }
            AdapterView adapterView2 = AdapterView.this;
            adapterView2.mOldItemCount = adapterView2.mItemCount;
            adapterView2.mItemCount = 0;
            adapterView2.mSelectedPosition = -1;
            adapterView2.mSelectedRowId = Long.MIN_VALUE;
            adapterView2.mNextSelectedPosition = -1;
            adapterView2.mNextSelectedRowId = Long.MIN_VALUE;
            adapterView2.mNeedSync = false;
            adapterView2.checkSelectionChanged();
            AdapterView.this.checkFocus();
            AdapterView.this.requestLayout();
        }

        public void clearSavedState() {
            this.mInstanceState = null;
        }
    }

    private class SelectionNotifier extends Handler implements Runnable {
        private SelectionNotifier() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AdapterView adapterView = AdapterView.this;
            if (!adapterView.mDataChanged) {
                adapterView.fireOnSelected();
            } else {
                post(this);
            }
        }
    }

    void selectionChanged() {
        if (this.mOnItemSelectedListener != null) {
            if (this.mInLayout || this.mBlockLayoutRequests) {
                if (this.mSelectionNotifier == null) {
                    this.mSelectionNotifier = new SelectionNotifier();
                }
                SelectionNotifier selectionNotifier = (AdapterView<T>.SelectionNotifier) this.mSelectionNotifier;
                selectionNotifier.post(selectionNotifier);
                return;
            }
            fireOnSelected();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fireOnSelected() {
        if (this.mOnItemSelectedListener == null) {
            return;
        }
        int selectedItemPosition = getSelectedItemPosition();
        if (selectedItemPosition >= 0) {
            this.mOnItemSelectedListener.onItemSelected(this, getSelectedView(), selectedItemPosition, getAdapter().getItemId(selectedItemPosition));
        } else {
            this.mOnItemSelectedListener.onNothingSelected(this);
        }
    }

    @Override // android.view.ViewGroup
    protected final boolean canAnimate() {
        return super.canAnimate() && this.mItemCount > 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001d  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x003f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void handleDataChanged() {
        /*
            r5 = this;
            int r0 = r5.mItemCount
            r1 = 1
            r2 = 0
            if (r0 <= 0) goto L41
            boolean r3 = r5.mNeedSync
            if (r3 == 0) goto L1d
            r5.mNeedSync = r2
            int r3 = r5.findSyncPosition()
            if (r3 < 0) goto L1d
            int r4 = r5.lookForSelectablePosition(r3, r1)
            if (r4 != r3) goto L1d
            r5.setNextSelectedPositionInt(r3)
            r3 = 1
            goto L1e
        L1d:
            r3 = 0
        L1e:
            if (r3 != 0) goto L3f
            int r4 = r5.getSelectedItemPosition()
            if (r4 < r0) goto L28
            int r0 = r0 - r1
            goto L29
        L28:
            r0 = r4
        L29:
            if (r0 >= 0) goto L2c
            r0 = 0
        L2c:
            int r4 = r5.lookForSelectablePosition(r0, r1)
            if (r4 >= 0) goto L36
            int r4 = r5.lookForSelectablePosition(r0, r2)
        L36:
            if (r4 < 0) goto L3f
            r5.setNextSelectedPositionInt(r4)
            r5.checkSelectionChanged()
            goto L42
        L3f:
            r1 = r3
            goto L42
        L41:
            r1 = 0
        L42:
            if (r1 != 0) goto L54
            r0 = -1
            r5.mSelectedPosition = r0
            r3 = -9223372036854775808
            r5.mSelectedRowId = r3
            r5.mNextSelectedPosition = r0
            r5.mNextSelectedRowId = r3
            r5.mNeedSync = r2
            r5.checkSelectionChanged()
        L54:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.widget.AdapterView.handleDataChanged():void");
    }

    void checkSelectionChanged() {
        if (this.mSelectedPosition == this.mOldSelectedPosition && this.mSelectedRowId == this.mOldSelectedRowId) {
            return;
        }
        selectionChanged();
        this.mOldSelectedPosition = this.mSelectedPosition;
        this.mOldSelectedRowId = this.mSelectedRowId;
    }

    final int findSyncPosition() {
        int i = this.mItemCount;
        if (i == 0) {
            return -1;
        }
        long j = this.mSyncRowId;
        int i2 = this.mSyncPosition;
        if (j == Long.MIN_VALUE) {
            return -1;
        }
        int i3 = i - 1;
        int iMin = Math.min(i3, Math.max(0, i2));
        long jUptimeMillis = SystemClock.uptimeMillis() + 100;
        Adapter adapter = getAdapter();
        if (adapter == null) {
            return -1;
        }
        int i4 = iMin;
        int i5 = i4;
        loop0: while (true) {
            boolean z = false;
            while (SystemClock.uptimeMillis() <= jUptimeMillis) {
                if (adapter.getItemId(iMin) != j) {
                    boolean z2 = i4 == i3;
                    boolean z3 = i5 == 0;
                    if (z2 && z3) {
                        break loop0;
                    }
                    if (z3 || (z && !z2)) {
                        break;
                    }
                    if (z2 || (!z && !z3)) {
                        i5--;
                        iMin = i5;
                        z = true;
                    }
                } else {
                    return iMin;
                }
            }
            i4++;
            iMin = i4;
        }
        return -1;
    }

    void setSelectedPositionInt(int i) {
        this.mSelectedPosition = i;
        this.mSelectedRowId = getItemIdAtPosition(i);
    }

    void setNextSelectedPositionInt(int i) {
        this.mNextSelectedPosition = i;
        this.mNextSelectedRowId = getItemIdAtPosition(i);
        if (this.mNeedSync && this.mSyncMode == 0 && i >= 0) {
            this.mSyncPosition = i;
            this.mSyncRowId = this.mNextSelectedRowId;
        }
    }

    final void rememberSyncState() {
        if (getChildCount() > 0) {
            this.mNeedSync = true;
            this.mSyncHeight = this.mLayoutHeight;
            int i = this.mSelectedPosition;
            if (i >= 0) {
                View childAt = getChildAt(i - this.mFirstPosition);
                this.mSyncRowId = this.mNextSelectedRowId;
                this.mSyncPosition = this.mNextSelectedPosition;
                if (childAt != null) {
                    this.mSpecificTop = childAt.getTop();
                }
                this.mSyncMode = 0;
                return;
            }
            View childAt2 = getChildAt(0);
            Adapter adapter = getAdapter();
            int i2 = this.mFirstPosition;
            if (i2 >= 0 && i2 < adapter.getCount()) {
                this.mSyncRowId = adapter.getItemId(this.mFirstPosition);
            } else {
                this.mSyncRowId = -1L;
            }
            this.mSyncPosition = this.mFirstPosition;
            if (childAt2 != null) {
                this.mSpecificTop = childAt2.getTop();
            }
            this.mSyncMode = 1;
        }
    }
}
