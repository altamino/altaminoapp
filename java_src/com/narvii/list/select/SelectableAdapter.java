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

/* loaded from: classes3.dex */
public class SelectableAdapter extends ProxyAdapter {
    private boolean inSelect;
    private int layoutId;
    private SelectableListener listener;
    private boolean overrideLongClick;
    private final ArrayList<Object> selections;
    private final List<Object> selections_;

    public SelectableAdapter(NVContext nVContext, int i, boolean z) {
        super(nVContext);
        this.selections = new ArrayList<>();
        this.selections_ = Collections.unmodifiableList(this.selections);
        this.layoutId = i;
        this.overrideLongClick = z;
    }

    public void setListener(SelectableListener selectableListener) {
        this.listener = selectableListener;
    }

    public boolean inSelect() {
        return this.inSelect;
    }

    public List<Object> selections() {
        return this.selections_;
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

    public void onSelectionChanged(Object obj, boolean z) {
        if (!this.selections.remove(obj) && (obj instanceof NVObject)) {
            Utils.removeId(this.selections, ((NVObject) obj).id());
        }
        if (z) {
            this.selections.add(obj);
        }
        SelectableListener selectableListener = this.listener;
        if (selectableListener != null) {
            selectableListener.onSelectionChanged(obj, z);
        }
        notifyDataSetChanged();
    }

    @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        SelectableFrame selectableFrame;
        if (view instanceof SelectableFrame) {
            selectableFrame = (SelectableFrame) view;
        } else {
            selectableFrame = (SelectableFrame) createView(this.layoutId, viewGroup, view);
        }
        selectableFrame.setView(super.getView(i, selectableFrame.getView(), selectableFrame));
        Object item = getItem(i);
        boolean zIsSelectable = isSelectable(i, item);
        selectableFrame.set(this.inSelect && zIsSelectable, zIsSelectable && isSelected(item));
        return selectableFrame;
    }

    protected boolean isSelectable(int i, Object obj) {
        ListAdapter listAdapter = this.wrapped;
        if (listAdapter instanceof SelectableSource) {
            return ((SelectableSource) listAdapter).isSelectable(i, obj);
        }
        return true;
    }

    protected boolean canSelect(int i, Object obj, boolean z) {
        ListAdapter listAdapter = this.wrapped;
        if (listAdapter instanceof SelectableSource) {
            return ((SelectableSource) listAdapter).canSelect(i, obj, z);
        }
        return true;
    }

    @Override // com.narvii.list.ProxyAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
        if (this.inSelect && isSelectable(i, obj)) {
            boolean z = !isSelected(obj);
            if (canSelect(i, obj, z)) {
                onSelectionChanged(obj, z);
            }
            return true;
        }
        if (this.inSelect) {
            return false;
        }
        return super.onItemClick(listAdapter, i, obj, view, view2);
    }

    @Override // com.narvii.list.ProxyAdapter, com.narvii.list.NVAdapter
    public boolean onLongClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
        if (!this.inSelect && !this.overrideLongClick && super.onLongClick(listAdapter, i, obj, view, view2)) {
            return true;
        }
        if (!this.inSelect && isSelectable(i, obj) && canSelect(i, obj, true)) {
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
        if (this.inSelect) {
            return false;
        }
        return super.onLongClick(listAdapter, i, obj, view, view2);
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
}
