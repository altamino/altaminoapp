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

/* JADX INFO: loaded from: classes5.dex */
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

    class AdapterDataSetObserver extends DataSetObserver {
        private Parcelable mInstanceState = null;

        public void clearSavedState() {
            this.mInstanceState = null;
        }

        AdapterDataSetObserver() {
        }

        /* JADX WARN: Code duplicated, block: B:11:0x0034  */
        @Override // android.database.DataSetObserver
        public void onChanged() {
            Parcelable parcelable;
            AdapterView adapterView = AdapterView.this;
            adapterView.mDataChanged = true;
            adapterView.mOldItemCount = adapterView.mItemCount;
            adapterView.mItemCount = adapterView.getAdapter().getCount();
            if (!AdapterView.this.getAdapter().hasStableIds() || (parcelable = this.mInstanceState) == null) {
                AdapterView.this.rememberSyncState();
            } else {
                AdapterView adapterView2 = AdapterView.this;
                if (adapterView2.mOldItemCount != 0 || adapterView2.mItemCount <= 0) {
                    AdapterView.this.rememberSyncState();
                } else {
                    adapterView2.onRestoreInstanceState(parcelable);
                    this.mInstanceState = null;
                }
            }
            AdapterView.this.checkFocus();
            AdapterView.this.requestLayout();
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
    }

    public interface OnItemClickListener {
        void onItemClick(AdapterView<?> adapterView, View view, int i10, long j6);
    }

    public interface OnItemLongClickListener {
        boolean onItemLongClick(AdapterView<?> adapterView, View view, int i10, long j6);
    }

    public interface OnItemSelectedListener {
        void onItemSelected(AdapterView<?> adapterView, View view, int i10, long j6);

        void onNothingSelected(AdapterView<?> adapterView);
    }

    private class SelectionNotifier extends Handler implements Runnable {
        private SelectionNotifier() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AdapterView adapterView = AdapterView.this;
            if (adapterView.mDataChanged) {
                post(this);
            } else {
                adapterView.fireOnSelected();
            }
        }
    }

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

    @Override // android.view.ViewGroup
    public final void addView(View view) {
        throw new UnsupportedOperationException("addView(View) is not supported in AdapterView");
    }

    public abstract T getAdapter();

    public int getCount() {
        return this.mItemCount;
    }

    public final View getEmptyView() {
        return this.mEmptyView;
    }

    public final int getFirstVisiblePosition() {
        return this.mFirstPosition;
    }

    public final OnItemClickListener getOnItemClickListener() {
        return this.mOnItemClickListener;
    }

    public final OnItemLongClickListener getOnItemLongClickListener() {
        return this.mOnItemLongClickListener;
    }

    public final OnItemSelectedListener getOnItemSelectedListener() {
        return this.mOnItemSelectedListener;
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
        for (int i10 = 0; i10 < childCount; i10++) {
            if (getChildAt(i10).equals(view)) {
                return this.mFirstPosition + i10;
            }
        }
        return -1;
    }

    public final long getSelectedItemId() {
        return this.mNextSelectedRowId;
    }

    public final int getSelectedItemPosition() {
        return this.mNextSelectedPosition;
    }

    public abstract View getSelectedView();

    final boolean isInFilterMode() {
        return false;
    }

    final int lookForSelectablePosition(int i10, boolean z6) {
        return i10;
    }

    public abstract void setAdapter(T t5);

    public final void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.mOnItemClickListener = onItemClickListener;
    }

    public final void setOnItemSelectedListener(OnItemSelectedListener onItemSelectedListener) {
        this.mOnItemSelectedListener = onItemSelectedListener;
    }

    public abstract void setSelection(int i10);

    public static class AdapterContextMenuInfo implements ContextMenu.ContextMenuInfo {
        public long id;
        public int position;
        public View targetView;

        public AdapterContextMenuInfo(View view, int i10, long j6) {
            this.targetView = view;
            this.position = i10;
            this.id = j6;
        }
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

    /* JADX INFO: Access modifiers changed from: private */
    public void fireOnSelected() {
        if (this.mOnItemSelectedListener == null) {
            return;
        }
        int selectedItemPosition = getSelectedItemPosition();
        if (selectedItemPosition < 0) {
            this.mOnItemSelectedListener.onNothingSelected(this);
        } else {
            this.mOnItemSelectedListener.onItemSelected(this, getSelectedView(), selectedItemPosition, getAdapter().getItemId(selectedItemPosition));
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i10) {
        throw new UnsupportedOperationException("addView(View, int) is not supported in AdapterView");
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
        int i10 = this.mItemCount;
        if (i10 == 0) {
            return -1;
        }
        long j6 = this.mSyncRowId;
        int i11 = this.mSyncPosition;
        if (j6 == Long.MIN_VALUE) {
            return -1;
        }
        int i12 = i10 - 1;
        int iMin = Math.min(i12, Math.max(0, i11));
        long jUptimeMillis = SystemClock.uptimeMillis() + 100;
        Adapter adapter = getAdapter();
        if (adapter == null) {
            return -1;
        }
        int i13 = iMin;
        int i14 = i13;
        boolean z6 = false;
        while (SystemClock.uptimeMillis() <= jUptimeMillis) {
            if (adapter.getItemId(iMin) != j6) {
                boolean z10 = i13 == i12;
                boolean z11 = i14 == 0;
                if (z10 && z11) {
                    break;
                }
                if (z11 || (z6 && !z10)) {
                    i13++;
                    z6 = false;
                    iMin = i13;
                } else if (z10 || (!z6 && !z11)) {
                    i14--;
                    z6 = true;
                    iMin = i14;
                }
            } else {
                return iMin;
            }
        }
        return -1;
    }

    public final int getLastVisiblePosition() {
        return (this.mFirstPosition + getChildCount()) - 1;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x001d  */
    void handleDataChanged() {
        boolean z6;
        int i10 = this.mItemCount;
        if (i10 > 0) {
            if (this.mNeedSync) {
                this.mNeedSync = false;
                int iFindSyncPosition = findSyncPosition();
                if (iFindSyncPosition < 0 || lookForSelectablePosition(iFindSyncPosition, true) != iFindSyncPosition) {
                    z6 = false;
                } else {
                    setNextSelectedPositionInt(iFindSyncPosition);
                    z6 = true;
                }
            } else {
                z6 = false;
            }
            if (!z6) {
                int selectedItemPosition = getSelectedItemPosition();
                if (selectedItemPosition >= i10) {
                    selectedItemPosition = i10 - 1;
                }
                if (selectedItemPosition < 0) {
                    selectedItemPosition = 0;
                }
                int iLookForSelectablePosition = lookForSelectablePosition(selectedItemPosition, true);
                if (iLookForSelectablePosition < 0) {
                    iLookForSelectablePosition = lookForSelectablePosition(selectedItemPosition, false);
                }
                if (iLookForSelectablePosition >= 0) {
                    setNextSelectedPositionInt(iLookForSelectablePosition);
                    checkSelectionChanged();
                    return;
                }
            }
            if (z6) {
                return;
            }
        }
        this.mSelectedPosition = -1;
        this.mSelectedRowId = Long.MIN_VALUE;
        this.mNextSelectedPosition = -1;
        this.mNextSelectedRowId = Long.MIN_VALUE;
        this.mNeedSync = false;
        checkSelectionChanged();
    }

    public final boolean performItemClick(View view, int i10, long j6) {
        if (this.mOnItemClickListener == null) {
            return false;
        }
        playSoundEffect(0);
        this.mOnItemClickListener.onItemClick(this, view, i10, j6);
        return true;
    }

    @Override // android.view.ViewGroup
    public final void removeAllViews() {
        throw new UnsupportedOperationException("removeAllViews() is not supported in AdapterView");
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        throw new UnsupportedOperationException("removeView(View) is not supported in AdapterView");
    }

    @Override // android.view.ViewGroup
    public final void removeViewAt(int i10) {
        throw new UnsupportedOperationException("removeViewAt(int) is not supported in AdapterView");
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    void selectionChanged() {
        if (this.mOnItemSelectedListener != null) {
            if (!this.mInLayout && !this.mBlockLayoutRequests) {
                fireOnSelected();
                return;
            }
            if (this.mSelectionNotifier == null) {
                this.mSelectionNotifier = new SelectionNotifier();
            }
            SelectionNotifier selectionNotifier = (AdapterView<T>.SelectionNotifier) this.mSelectionNotifier;
            selectionNotifier.post(selectionNotifier);
        }
    }

    public final void setEmptyView(View view) {
        this.mEmptyView = view;
        Adapter adapter = getAdapter();
        updateEmptyStatus(adapter == null || adapter.isEmpty());
    }

    void setNextSelectedPositionInt(int i10) {
        this.mNextSelectedPosition = i10;
        long itemIdAtPosition = getItemIdAtPosition(i10);
        this.mNextSelectedRowId = itemIdAtPosition;
        if (this.mNeedSync && this.mSyncMode == 0 && i10 >= 0) {
            this.mSyncPosition = i10;
            this.mSyncRowId = itemIdAtPosition;
        }
    }

    @Override // android.view.View
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        throw new RuntimeException("Don't call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead");
    }

    void setSelectedPositionInt(int i10) {
        this.mSelectedPosition = i10;
        this.mSelectedRowId = getItemIdAtPosition(i10);
    }

    public AdapterView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
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

    private void updateEmptyStatus(boolean z6) {
        if (!isInFilterMode() && z6) {
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

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void addView(View view, ViewGroup.LayoutParams layoutParams) {
        throw new UnsupportedOperationException("addView(View, LayoutParams) is not supported in AdapterView");
    }

    @Override // android.view.ViewGroup
    protected final boolean canAnimate() {
        if (super.canAnimate() && this.mItemCount > 0) {
            return true;
        }
        return false;
    }

    void checkFocus() {
        boolean z6;
        boolean z10;
        boolean z11;
        Adapter adapter = getAdapter();
        boolean z12 = true;
        if ((adapter != null && adapter.getCount() != 0) || isInFilterMode()) {
            z6 = true;
        } else {
            z6 = false;
        }
        if (z6 && this.mDesiredFocusableInTouchModeState) {
            z10 = true;
        } else {
            z10 = false;
        }
        super.setFocusableInTouchMode(z10);
        if (z6 && this.mDesiredFocusableState) {
            z11 = true;
        } else {
            z11 = false;
        }
        super.setFocusable(z11);
        if (this.mEmptyView != null) {
            if (adapter != null && !adapter.isEmpty()) {
                z12 = false;
            }
            updateEmptyStatus(z12);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    public Object getItemAtPosition(int i10) {
        Adapter adapter = getAdapter();
        if (adapter != null && i10 >= 0) {
            return adapter.getItem(i10);
        }
        return null;
    }

    public long getItemIdAtPosition(int i10) {
        Adapter adapter = getAdapter();
        if (adapter != null && i10 >= 0) {
            return adapter.getItemId(i10);
        }
        return Long.MIN_VALUE;
    }

    public final Object getSelectedItem() {
        Adapter adapter = getAdapter();
        int selectedItemPosition = getSelectedItemPosition();
        if (adapter != null && adapter.getCount() > 0 && selectedItemPosition >= 0) {
            return adapter.getItem(selectedItemPosition);
        }
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        this.mLayoutHeight = getHeight();
    }

    final void rememberSyncState() {
        if (getChildCount() > 0) {
            this.mNeedSync = true;
            this.mSyncHeight = this.mLayoutHeight;
            int i10 = this.mSelectedPosition;
            if (i10 >= 0) {
                View childAt = getChildAt(i10 - this.mFirstPosition);
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
            int i11 = this.mFirstPosition;
            if (i11 >= 0 && i11 < adapter.getCount()) {
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

    @Override // android.view.View
    public final void setFocusable(boolean z6) {
        boolean z10;
        Adapter adapter = getAdapter();
        boolean z11 = true;
        if (adapter != null && adapter.getCount() != 0) {
            z10 = false;
        } else {
            z10 = true;
        }
        this.mDesiredFocusableState = z6;
        if (!z6) {
            this.mDesiredFocusableInTouchModeState = false;
        }
        if (!z6 || (z10 && !isInFilterMode())) {
            z11 = false;
        }
        super.setFocusable(z11);
    }

    @Override // android.view.View
    public final void setFocusableInTouchMode(boolean z6) {
        boolean z10;
        Adapter adapter = getAdapter();
        boolean z11 = false;
        if (adapter != null && adapter.getCount() != 0) {
            z10 = false;
        } else {
            z10 = true;
        }
        this.mDesiredFocusableInTouchModeState = z6;
        if (z6) {
            this.mDesiredFocusableState = true;
        }
        if (z6 && (!z10 || isInFilterMode())) {
            z11 = true;
        }
        super.setFocusableInTouchMode(z11);
    }

    public final void setOnItemLongClickListener(OnItemLongClickListener onItemLongClickListener) {
        if (!isLongClickable()) {
            setLongClickable(true);
        }
        this.mOnItemLongClickListener = onItemLongClickListener;
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        throw new UnsupportedOperationException("addView(View, int, LayoutParams) is not supported in AdapterView");
    }
}
