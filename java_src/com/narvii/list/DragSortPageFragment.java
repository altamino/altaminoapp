package com.narvii.list;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.mobeta.android.dslv.DragSortController;
import com.mobeta.android.dslv.DragSortListView;
import com.narvii.lib.R;
import com.narvii.model.NVObject;
import com.narvii.util.Utils;
import java.util.List;

/* loaded from: classes3.dex */
public abstract class DragSortPageFragment<T extends NVObject> extends NVListFragment implements DragSortListView.DropListener, DragSortListView.RemoveListener {
    private DragSortController mController;
    private DragSortListView mDslv;

    public boolean confirmBeforeRemove() {
        return true;
    }

    protected abstract NVPagedAdapter createMainAdapter();

    public boolean isDragSortable() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.drag_sort_pager_list_layout, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        this.mDslv = (DragSortListView) getListView();
        Drawable listSelector = getListSelector();
        if (listSelector != null) {
            this.mDslv.setSelector(listSelector);
        }
        this.mController = buildController(this.mDslv);
        this.mDslv.setFloatViewManager(this.mController);
        this.mDslv.setOnTouchListener(this.mController);
        this.mDslv.setCancelOnDataChanged(!(getListAdapter() instanceof NVPagedAdapter ? ((NVPagedAdapter) getListAdapter()).autoLoadNextPage() : false));
        this.mDslv.setDragEnabled(isDragSortable());
        this.mDslv.setDropListener(this);
        this.mDslv.setRemoveListener(this);
    }

    protected DragSortController buildController(DragSortListView dragSortListView) {
        DragSortController dragSortController = new DragSortController(dragSortListView) { // from class: com.narvii.list.DragSortPageFragment.1
            @Override // com.mobeta.android.dslv.DragSortController
            protected void onClickRemove(final int i) {
                if (DragSortPageFragment.this.confirmBeforeRemove()) {
                    AlertDialog.Builder builder = new AlertDialog.Builder(DragSortPageFragment.this.getContext());
                    builder.setMessage(R.string.confirm_remove);
                    builder.setPositiveButton(R.string.yes, new DialogInterface.OnClickListener() { // from class: com.narvii.list.DragSortPageFragment.1.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i2) {
                            DragSortPageFragment.this.mDslv.removeItem(i);
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
        dragSortController.setDragInitMode(1);
        dragSortController.setRemoveMode(0);
        dragSortController.setBackgroundColor(1073741824);
        return dragSortController;
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        return createMainAdapter();
    }

    @Override // com.mobeta.android.dslv.DragSortListView.DropListener
    public void drop(int i, int i2) {
        if (i != i2) {
            NVPagedAdapter nVPagedAdapterCreateMainAdapter = createMainAdapter();
            NVObject nVObject = (NVObject) nVPagedAdapterCreateMainAdapter.getItem(i);
            List<?> list = nVPagedAdapterCreateMainAdapter.list();
            list.remove(nVObject);
            if (i2 > list.size()) {
                i2 = list.size();
            }
            nVPagedAdapterCreateMainAdapter.list().add(i2, nVObject);
            nVPagedAdapterCreateMainAdapter.notifyDataSetChanged();
        }
    }

    @Override // com.mobeta.android.dslv.DragSortListView.RemoveListener
    public void remove(int i) {
        NVPagedAdapter nVPagedAdapter = (NVPagedAdapter) getListAdapter();
        nVPagedAdapter.list().remove(nVPagedAdapter.getItem(i));
    }
}
