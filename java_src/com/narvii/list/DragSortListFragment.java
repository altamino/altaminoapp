package com.narvii.list;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.mobeta.android.dslv.DragSortController;
import com.mobeta.android.dslv.DragSortListView;
import com.narvii.lib.R;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public abstract class DragSortListFragment<T> extends NVListFragment implements DragSortListView.DropListener, DragSortListView.RemoveListener {
    private DragSortController mController;
    private DragSortListView mDslv;

    protected void advanceSortListView(DragSortListView dragSortListView) {
    }

    public boolean confirmBeforeRemove() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVListFragment
    public abstract NVArrayAdapter<T> createAdapter(Bundle bundle);

    public boolean isDragSortable() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.drag_sort_list_layout, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.mDslv = (DragSortListView) getListView();
        Drawable listSelector = getListSelector();
        if (listSelector != null) {
            this.mDslv.setSelector(listSelector);
        }
        this.mController = buildController(this.mDslv);
        this.mDslv.setFloatViewManager(this.mController);
        this.mDslv.setOnTouchListener(this.mController);
        this.mDslv.setDragEnabled(isDragSortable());
        this.mDslv.setDropListener(this);
        this.mDslv.setRemoveListener(this);
        advanceSortListView(this.mDslv);
    }

    public void removeItemAtPosition(int i) {
        DragSortListView dragSortListView = this.mDslv;
        if (dragSortListView != null) {
            dragSortListView.removeItem(i);
        }
    }

    protected DragSortController buildController(DragSortListView dragSortListView) {
        DragSortController dragSortController = new DragSortController(dragSortListView, 0, 0, 0) { // from class: com.narvii.list.DragSortListFragment.1
            @Override // com.mobeta.android.dslv.DragSortController
            protected void onClickRemove(final int i) {
                if (DragSortListFragment.this.confirmBeforeRemove()) {
                    AlertDialog.Builder builder = new AlertDialog.Builder(DragSortListFragment.this.getContext());
                    builder.setMessage(R.string.confirm_remove);
                    builder.setPositiveButton(R.string.yes, new DialogInterface.OnClickListener() { // from class: com.narvii.list.DragSortListFragment.1.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i2) {
                            DragSortListFragment.this.mDslv.removeItem(i);
                        }
                    });
                    builder.setNegativeButton(R.string.no, Utils.DIALOG_BUTTON_EMPTY_LISTENER);
                    builder.show();
                    return;
                }
                super.onClickRemove(i);
            }
        };
        dragSortController.setDragHandleId(R.id.drag_handle);
        dragSortController.setClickRemoveId(R.id.click_remove);
        dragSortController.setRemoveEnabled(true);
        dragSortController.setSortEnabled(isDragSortable());
        dragSortController.setDragInitMode(0);
        dragSortController.setRemoveMode(0);
        dragSortController.setBackgroundColor(1073741824);
        return dragSortController;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void drop(int i, int i2) {
        if (i != i2) {
            NVArrayAdapter nVArrayAdapter = (NVArrayAdapter) getListAdapter();
            Object item = nVArrayAdapter.getItem(i);
            nVArrayAdapter.remove(i);
            nVArrayAdapter.insert(item, i2);
        }
    }

    public void remove(int i) {
        ((NVArrayAdapter) getListAdapter()).remove(i);
    }
}
