package com.narvii.list;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.mobeta.android.dslv.DragSortListView;
import com.narvii.lib.R;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes6.dex */
public abstract class DragSortListFragment<T> extends NVListFragment implements DragSortListView.j, DragSortListView.n {
    private com.mobeta.android.dslv.a mController;
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

    protected com.mobeta.android.dslv.a buildController(DragSortListView dragSortListView) {
        com.mobeta.android.dslv.a aVar = new com.mobeta.android.dslv.a(dragSortListView, 0, 0, 0) { // from class: com.narvii.list.DragSortListFragment.1
            @Override // com.mobeta.android.dslv.a
            protected void onClickRemove(final int i10) {
                if (!DragSortListFragment.this.confirmBeforeRemove()) {
                    super.onClickRemove(i10);
                    return;
                }
                AlertDialog.Builder builder = new AlertDialog.Builder(DragSortListFragment.this.getContext());
                builder.setMessage(R.string.confirm_remove);
                builder.setPositiveButton(R.string.yes, new DialogInterface.OnClickListener() { // from class: com.narvii.list.DragSortListFragment.1.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i11) {
                        DragSortListFragment.this.mDslv.c0(i10);
                    }
                });
                builder.setNegativeButton(R.string.no, Utils.DIALOG_BUTTON_EMPTY_LISTENER);
                builder.show();
            }
        };
        aVar.setDragHandleId(R.id.drag_handle);
        aVar.setClickRemoveId(R.id.click_remove);
        aVar.setRemoveEnabled(true);
        aVar.setSortEnabled(isDragSortable());
        aVar.setDragInitMode(0);
        aVar.setRemoveMode(0);
        aVar.setBackgroundColor(1073741824);
        return aVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void drop(int i10, int i11) {
        if (i10 != i11) {
            NVArrayAdapter nVArrayAdapter = (NVArrayAdapter) getListAdapter();
            Object item = nVArrayAdapter.getItem(i10);
            nVArrayAdapter.remove(i10);
            nVArrayAdapter.insert(item, i11);
        }
    }

    @Override // com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.drag_sort_list_layout, viewGroup, false);
    }

    public void removeItemAtPosition(int i10) {
        DragSortListView dragSortListView = this.mDslv;
        if (dragSortListView != null) {
            dragSortListView.c0(i10);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.mDslv = (DragSortListView) getListView();
        Drawable listSelector = getListSelector();
        if (listSelector != null) {
            this.mDslv.setSelector(listSelector);
        }
        com.mobeta.android.dslv.a aVarBuildController = buildController(this.mDslv);
        this.mController = aVarBuildController;
        this.mDslv.setFloatViewManager(aVarBuildController);
        this.mDslv.setOnTouchListener(this.mController);
        this.mDslv.setDragEnabled(isDragSortable());
        this.mDslv.setDropListener(this);
        this.mDslv.setRemoveListener(this);
        advanceSortListView(this.mDslv);
    }

    public void remove(int i10) {
        ((NVArrayAdapter) getListAdapter()).remove(i10);
    }
}
