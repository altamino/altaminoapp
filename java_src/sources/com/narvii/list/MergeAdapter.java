package com.narvii.list;

import android.content.Intent;
import android.database.DataSetObserver;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.narvii.app.NVContext;
import com.narvii.util.Callback;
import com.narvii.util.Log;
import ha.f;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public class MergeAdapter extends NVAdapter {
    public static final int FLAG_FORCE_EMPTY_OR_ERROR = 1;
    private int flags;
    private ListAdapter mainAdapter;
    private final DataSetObserver observer;
    private final ArrayList<ListAdapter> pieces;

    public void addAdapter(ListAdapter listAdapter) {
        addAdapter(listAdapter, false);
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        return false;
    }

    public int getCurAdapterIndex(ListAdapter listAdapter) {
        for (int i10 = 0; i10 < this.pieces.size(); i10++) {
            if (this.pieces.get(i10) == listAdapter) {
                return i10;
            }
        }
        return -1;
    }

    public void addAdapter(ListAdapter listAdapter, boolean z6) {
        if (z6 || this.mainAdapter == null) {
            this.mainAdapter = listAdapter;
        }
        this.pieces.add(listAdapter);
        listAdapter.registerDataSetObserver(this.observer);
        notifyDataSetChanged();
    }

    @Override // com.narvii.list.NVAdapter
    public String errorMessage() {
        ListAdapter listAdapter = this.mainAdapter;
        if (listAdapter instanceof NVAdapter) {
            return ((NVAdapter) listAdapter).errorMessage();
        }
        return null;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if ((this.flags & 1) != 0) {
            ListAdapter listAdapter = this.mainAdapter;
            if (listAdapter instanceof NVAdapter) {
                NVAdapter nVAdapter = (NVAdapter) listAdapter;
                if (nVAdapter.isEmpty() || nVAdapter.errorMessage() != null) {
                    return 0;
                }
            }
        }
        return getTotalCount();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i10) {
        for (ListAdapter listAdapter : this.pieces) {
            int count = listAdapter.getCount();
            if (i10 < count) {
                return listAdapter.getItem(i10);
            }
            i10 -= count;
        }
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        for (ListAdapter listAdapter : this.pieces) {
            int count = listAdapter.getCount();
            if (i10 < count) {
                return listAdapter.getItemId(i10);
            }
            i10 -= count;
        }
        return -1L;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i10) {
        int viewTypeCount = 0;
        for (ListAdapter listAdapter : this.pieces) {
            int count = listAdapter.getCount();
            if (i10 < count) {
                int itemViewType = listAdapter.getItemViewType(i10);
                if (itemViewType < listAdapter.getViewTypeCount()) {
                    if (itemViewType < 0) {
                        return -1;
                    }
                    return viewTypeCount + itemViewType;
                }
                Log.e("adapter getItemViewType() >= getViewTypeCount(): " + listAdapter.getClass().getSimpleName() + ", position=" + i10 + ", viewType=" + itemViewType);
                return -1;
            }
            i10 -= count;
            viewTypeCount += listAdapter.getViewTypeCount();
        }
        return -1;
    }

    protected int getTotalCount() {
        Iterator<ListAdapter> it = this.pieces.iterator();
        int count = 0;
        while (it.hasNext()) {
            count += it.next().getCount();
        }
        return count;
    }

    @Override // android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        for (ListAdapter listAdapter : this.pieces) {
            int count = listAdapter.getCount();
            if (i10 < count) {
                return listAdapter.getView(i10, view, viewGroup);
            }
            i10 -= count;
        }
        return createErrorItem(viewGroup, view, null);
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        Iterator<ListAdapter> it = this.pieces.iterator();
        int viewTypeCount = 0;
        while (it.hasNext()) {
            viewTypeCount += it.next().getViewTypeCount();
        }
        if (viewTypeCount == 0) {
            return 1;
        }
        return viewTypeCount;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean isEmpty() {
        ListAdapter listAdapter = this.mainAdapter;
        return listAdapter instanceof NVAdapter ? ((NVAdapter) listAdapter).isEmpty() : super.isEmpty();
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i10) {
        for (ListAdapter listAdapter : this.pieces) {
            int count = listAdapter.getCount();
            if (i10 < count) {
                return listAdapter.isEnabled(i10);
            }
            i10 -= count;
        }
        return false;
    }

    @Override // com.narvii.list.NVAdapter
    public boolean isListShown() {
        ListAdapter listAdapter = this.mainAdapter;
        if (listAdapter == null) {
            return false;
        }
        return listAdapter instanceof NVAdapter ? ((NVAdapter) listAdapter).isListShown() : !listAdapter.isEmpty();
    }

    @Override // com.narvii.list.NVAdapter
    public void onErrorRetry() {
        ListAdapter listAdapter = this.mainAdapter;
        if (listAdapter instanceof NVAdapter) {
            ((NVAdapter) listAdapter).onErrorRetry();
        }
    }

    @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
        int i11 = i10;
        for (ListAdapter listAdapter2 : this.pieces) {
            int count = listAdapter2.getCount();
            if (i11 < count) {
                if (!(listAdapter2 instanceof NVAdapter)) {
                    return false;
                }
                NVAdapter nVAdapter = (NVAdapter) listAdapter2;
                return nVAdapter.dispatchOnItemClick(nVAdapter, i11, obj, view, view2);
            }
            i11 -= count;
        }
        return false;
    }

    @Override // com.narvii.list.NVAdapter
    public boolean onLongClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
        int i11 = i10;
        for (ListAdapter listAdapter2 : this.pieces) {
            int count = listAdapter2.getCount();
            if (i11 < count) {
                if (listAdapter2 instanceof NVAdapter) {
                    return ((NVAdapter) listAdapter2).dispatchOnLongClick(listAdapter, i11, obj, view, view2);
                }
                return false;
            }
            i11 -= count;
        }
        return false;
    }

    @Override // com.narvii.list.NVAdapter
    public void refresh(int i10, Callback<Integer> callback) {
        ListAdapter listAdapter = this.mainAdapter;
        if (listAdapter instanceof NVAdapter) {
            ((NVAdapter) listAdapter).refresh(i10, callback);
        } else {
            super.refresh(i10, callback);
        }
    }

    public void setFlags(int i10) {
        this.flags = i10;
        notifyDataSetChanged();
    }

    public MergeAdapter(NVContext nVContext) {
        super(nVContext);
        this.pieces = new ArrayList<>();
        this.observer = new DataSetObserver() { // from class: com.narvii.list.MergeAdapter.1
            @Override // android.database.DataSetObserver
            public void onChanged() {
                MergeAdapter.this.notifyDataSetChanged();
            }

            @Override // android.database.DataSetObserver
            public void onInvalidated() {
                MergeAdapter.this.notifyDataSetInvalidated();
            }
        };
    }

    @Override // com.narvii.list.NVAdapter
    boolean dispatchLoginResult(boolean z6, Intent intent) {
        if (super.dispatchLoginResult(z6, intent)) {
            return true;
        }
        for (ListAdapter listAdapter : this.pieces) {
            if ((listAdapter instanceof NVAdapter) && ((NVAdapter) listAdapter).dispatchLoginResult(z6, intent)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.narvii.list.NVAdapter
    public void onAttach() {
        super.onAttach();
        for (ListAdapter listAdapter : this.pieces) {
            if (listAdapter instanceof NVAdapter) {
                ((NVAdapter) listAdapter).onAttach();
            }
        }
    }

    @Override // com.narvii.list.NVAdapter
    public void onDetach() {
        super.onDetach();
        for (ListAdapter listAdapter : this.pieces) {
            if (listAdapter instanceof NVAdapter) {
                ((NVAdapter) listAdapter).onDetach();
            }
        }
    }

    @Override // com.narvii.list.NVAdapter
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        if (bundle.getInt(f.COUNT_KEY) != this.pieces.size()) {
            Log.e("merge adapter cannot restore instance state: count doesn't match");
        }
        for (int i10 = 0; i10 < this.pieces.size(); i10++) {
            ListAdapter listAdapter = this.pieces.get(i10);
            if (listAdapter instanceof NVAdapter) {
                Bundle bundle2 = bundle.getBundle("adapter" + i10);
                if (bundle2 != null) {
                    ((NVAdapter) listAdapter).onRestoreInstanceState(bundle2);
                }
            }
        }
    }

    @Override // com.narvii.list.NVAdapter
    public Bundle onSaveInstanceState() {
        Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
        bundleOnSaveInstanceState.putInt(f.COUNT_KEY, this.pieces.size());
        for (int i10 = 0; i10 < this.pieces.size(); i10++) {
            ListAdapter listAdapter = this.pieces.get(i10);
            if (listAdapter instanceof NVAdapter) {
                bundleOnSaveInstanceState.putBundle("adapter" + i10, ((NVAdapter) listAdapter).onSaveInstanceState());
            }
        }
        return bundleOnSaveInstanceState;
    }
}
