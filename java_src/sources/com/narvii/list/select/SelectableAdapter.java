package com.narvii.list.select;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.narvii.app.NVContext;
import com.narvii.list.ProxyAdapter;
import com.narvii.model.NVObject;
import com.narvii.util.Utils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public class SelectableAdapter extends ProxyAdapter {
    private boolean inSelect;
    private int layoutId;
    private SelectableListener listener;
    private boolean overrideLongClick;
    private final ArrayList<Object> selections;
    private final List<Object> selections_;

    public boolean inSelect() {
        return this.inSelect;
    }

    public List<Object> selections() {
        return this.selections_;
    }

    public void setListener(SelectableListener selectableListener) {
        this.listener = selectableListener;
    }

    public void startSelect(List<Object> list) {
        this.inSelect = true;
        this.selections.clear();
        if (list != null) {
            this.selections.addAll(list);
        }
        SelectableListener selectableListener = this.listener;
        if (selectableListener != null) {
            selectableListener.onSelectModeChanged(true);
        }
        notifyDataSetChanged();
    }

    protected boolean canSelect(int i10, Object obj, boolean z6) {
        ListAdapter listAdapter = this.wrapped;
        if (listAdapter instanceof SelectableSource) {
            return ((SelectableSource) listAdapter).canSelect(i10, obj, z6);
        }
        return true;
    }

    public void finishSelect() {
        if (this.inSelect) {
            this.inSelect = false;
            this.selections.clear();
            SelectableListener selectableListener = this.listener;
            if (selectableListener != null) {
                selectableListener.onSelectModeChanged(false);
            }
            notifyDataSetChanged();
        }
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        SelectableFrame selectableFrame = view instanceof SelectableFrame ? (SelectableFrame) view : (SelectableFrame) createView(this.layoutId, viewGroup, view);
        selectableFrame.setView(super.getView(i10, selectableFrame.getView(), selectableFrame));
        Object item = getItem(i10);
        boolean zIsSelectable = isSelectable(i10, item);
        boolean z6 = false;
        boolean z10 = zIsSelectable && isSelected(item);
        if (this.inSelect && zIsSelectable) {
            z6 = true;
        }
        selectableFrame.set(z6, z10);
        return selectableFrame;
    }

    protected boolean isSelectable(int i10, Object obj) {
        ListAdapter listAdapter = this.wrapped;
        if (listAdapter instanceof SelectableSource) {
            return ((SelectableSource) listAdapter).isSelectable(i10, obj);
        }
        return true;
    }

    @Override // com.narvii.list.ProxyAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
        if (!this.inSelect || !isSelectable(i10, obj)) {
            if (this.inSelect) {
                return false;
            }
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }
        boolean z6 = !isSelected(obj);
        if (canSelect(i10, obj, z6)) {
            onSelectionChanged(obj, z6);
        }
        return true;
    }

    @Override // com.narvii.list.ProxyAdapter, com.narvii.list.NVAdapter
    public boolean onLongClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
        if (!this.inSelect && !this.overrideLongClick && super.onLongClick(listAdapter, i10, obj, view, view2)) {
            return true;
        }
        if (this.inSelect || !isSelectable(i10, obj) || !canSelect(i10, obj, true)) {
            if (this.inSelect) {
                return false;
            }
            return super.onLongClick(listAdapter, i10, obj, view, view2);
        }
        this.inSelect = true;
        this.selections.clear();
        SelectableListener selectableListener = this.listener;
        if (selectableListener != null) {
            selectableListener.onSelectModeChanged(true);
        }
        if (!isSelected(obj)) {
            onSelectionChanged(obj, true);
        }
        notifyDataSetChanged();
        return true;
    }

    public void onSelectionChanged(Object obj, boolean z6) {
        if (!this.selections.remove(obj) && (obj instanceof NVObject)) {
            Utils.removeId(this.selections, ((NVObject) obj).id());
        }
        if (z6) {
            this.selections.add(obj);
        }
        SelectableListener selectableListener = this.listener;
        if (selectableListener != null) {
            selectableListener.onSelectionChanged(obj, z6);
        }
        notifyDataSetChanged();
    }

    public SelectableAdapter(NVContext nVContext, int i10, boolean z6) {
        super(nVContext);
        ArrayList<Object> arrayList = new ArrayList<>();
        this.selections = arrayList;
        this.selections_ = Collections.unmodifiableList(arrayList);
        this.layoutId = i10;
        this.overrideLongClick = z6;
    }

    public boolean isSelected(Object obj) {
        if (selections().contains(obj)) {
            return true;
        }
        if (obj instanceof NVObject) {
            return Utils.containsId(this.selections, ((NVObject) obj).id());
        }
        return false;
    }
}
