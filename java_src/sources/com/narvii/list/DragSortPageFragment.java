package com.narvii.list;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.mobeta.android.dslv.DragSortListView;
import com.narvii.lib.R;
import com.narvii.model.NVObject;
import com.narvii.util.Utils;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class DragSortPageFragment<T extends NVObject> extends NVListFragment implements DragSortListView.j, DragSortListView.n {
    private com.mobeta.android.dslv.a mController;
    private DragSortListView mDslv;

    public boolean confirmBeforeRemove() {
        return true;
    }

    protected abstract NVPagedAdapter createMainAdapter();

    public boolean isDragSortable() {
        return true;
    }

    protected com.mobeta.android.dslv.a buildController(DragSortListView dragSortListView) {
        com.mobeta.android.dslv.a aVar = new com.mobeta.android.dslv.a(dragSortListView) { // from class: com.narvii.list.DragSortPageFragment.1
            @Override // com.mobeta.android.dslv.a
            protected void onClickRemove(final int i10) {
                if (!DragSortPageFragment.this.confirmBeforeRemove()) {
                    super.onClickRemove(i10);
                    return;
                }
                AlertDialog.Builder builder = new AlertDialog.Builder(DragSortPageFragment.this.getContext());
                builder.setMessage(R.string.confirm_remove);
                builder.setPositiveButton(R.string.yes, new DialogInterface.OnClickListener() { // from class: com.narvii.list.DragSortPageFragment.1.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i11) {
                        DragSortPageFragment.this.mDslv.c0(i10);
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
        aVar.setDragInitMode(1);
        aVar.setRemoveMode(0);
        aVar.setBackgroundColor(1073741824);
        return aVar;
    }

    @Override // com.mobeta.android.dslv.DragSortListView.j
    public void drop(int i10, int i11) {
        if (i10 != i11) {
            NVPagedAdapter nVPagedAdapterCreateMainAdapter = createMainAdapter();
            NVObject nVObject = (NVObject) nVPagedAdapterCreateMainAdapter.getItem(i10);
            List<?> list = nVPagedAdapterCreateMainAdapter.list();
            list.remove(nVObject);
            if (i11 > list.size()) {
                i11 = list.size();
            }
            nVPagedAdapterCreateMainAdapter.list().add(i11, nVObject);
            nVPagedAdapterCreateMainAdapter.notifyDataSetChanged();
        }
    }

    @Override // com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.drag_sort_pager_list_layout, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        return createMainAdapter();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        boolean zAutoLoadNextPage;
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
        if (getListAdapter() instanceof NVPagedAdapter) {
            zAutoLoadNextPage = ((NVPagedAdapter) getListAdapter()).autoLoadNextPage();
        } else {
            zAutoLoadNextPage = false;
        }
        this.mDslv.setCancelOnDataChanged(!zAutoLoadNextPage);
        this.mDslv.setDragEnabled(isDragSortable());
        this.mDslv.setDropListener(this);
        this.mDslv.setRemoveListener(this);
    }

    @Override // com.mobeta.android.dslv.DragSortListView.n
    public void remove(int i10) {
        NVPagedAdapter nVPagedAdapter = (NVPagedAdapter) getListAdapter();
        nVPagedAdapter.list().remove(nVPagedAdapter.getItem(i10));
    }
}
