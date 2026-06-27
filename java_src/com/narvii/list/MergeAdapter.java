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
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes3.dex */
public class MergeAdapter extends NVAdapter {
    public static final int FLAG_FORCE_EMPTY_OR_ERROR = 1;
    private int flags;
    private ListAdapter mainAdapter;
    private final DataSetObserver observer;
    private final ArrayList<ListAdapter> pieces;

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        return false;
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

    public void setFlags(int i) {
        this.flags = i;
        notifyDataSetChanged();
    }

    @Override // com.narvii.list.NVAdapter
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        if (bundle.getInt("count") != this.pieces.size()) {
            Log.e("merge adapter cannot restore instance state: count doesn't match");
        }
        for (int i = 0; i < this.pieces.size(); i++) {
            ListAdapter listAdapter = this.pieces.get(i);
            if (listAdapter instanceof NVAdapter) {
                Bundle bundle2 = bundle.getBundle("adapter" + i);
                if (bundle2 != null) {
                    ((NVAdapter) listAdapter).onRestoreInstanceState(bundle2);
                }
            }
        }
    }

    @Override // com.narvii.list.NVAdapter
    public Bundle onSaveInstanceState() {
        Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
        bundleOnSaveInstanceState.putInt("count", this.pieces.size());
        for (int i = 0; i < this.pieces.size(); i++) {
            ListAdapter listAdapter = this.pieces.get(i);
            if (listAdapter instanceof NVAdapter) {
                bundleOnSaveInstanceState.putBundle("adapter" + i, ((NVAdapter) listAdapter).onSaveInstanceState());
            }
        }
        return bundleOnSaveInstanceState;
    }

    @Override // com.narvii.list.NVAdapter
    public void onAttach() {
        super.onAttach();
        Iterator<ListAdapter> it = this.pieces.iterator();
        while (it.hasNext()) {
            ListAdapter next = it.next();
            if (next instanceof NVAdapter) {
                ((NVAdapter) next).onAttach();
            }
        }
    }

    @Override // com.narvii.list.NVAdapter
    public void onDetach() {
        super.onDetach();
        Iterator<ListAdapter> it = this.pieces.iterator();
        while (it.hasNext()) {
            ListAdapter next = it.next();
            if (next instanceof NVAdapter) {
                ((NVAdapter) next).onDetach();
            }
        }
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean isEmpty() {
        ListAdapter listAdapter = this.mainAdapter;
        if (listAdapter instanceof NVAdapter) {
            return ((NVAdapter) listAdapter).isEmpty();
        }
        return super.isEmpty();
    }

    @Override // com.narvii.list.NVAdapter
    public boolean isListShown() {
        ListAdapter listAdapter = this.mainAdapter;
        if (listAdapter == null) {
            return false;
        }
        if (listAdapter instanceof NVAdapter) {
            return ((NVAdapter) listAdapter).isListShown();
        }
        return !listAdapter.isEmpty();
    }

    @Override // com.narvii.list.NVAdapter
    public void refresh(int i, Callback<Integer> callback) {
        ListAdapter listAdapter = this.mainAdapter;
        if (listAdapter instanceof NVAdapter) {
            ((NVAdapter) listAdapter).refresh(i, callback);
        } else {
            super.refresh(i, callback);
        }
    }

    @Override // com.narvii.list.NVAdapter
    public String errorMessage() {
        ListAdapter listAdapter = this.mainAdapter;
        if (listAdapter instanceof NVAdapter) {
            return ((NVAdapter) listAdapter).errorMessage();
        }
        return null;
    }

    @Override // com.narvii.list.NVAdapter
    public void onErrorRetry() {
        ListAdapter listAdapter = this.mainAdapter;
        if (listAdapter instanceof NVAdapter) {
            ((NVAdapter) listAdapter).onErrorRetry();
        }
    }

    public void addAdapter(ListAdapter listAdapter) {
        addAdapter(listAdapter, false);
    }

    public void addAdapter(ListAdapter listAdapter, boolean z) {
        if (z || this.mainAdapter == null) {
            this.mainAdapter = listAdapter;
        }
        this.pieces.add(listAdapter);
        listAdapter.registerDataSetObserver(this.observer);
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        Iterator<ListAdapter> it = this.pieces.iterator();
        while (it.hasNext()) {
            ListAdapter next = it.next();
            int count = next.getCount();
            if (i < count) {
                return next.getItem(i);
            }
            i -= count;
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

    protected int getTotalCount() {
        Iterator<ListAdapter> it = this.pieces.iterator();
        int count = 0;
        while (it.hasNext()) {
            count += it.next().getCount();
        }
        return count;
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
    public int getItemViewType(int i) {
        Iterator<ListAdapter> it = this.pieces.iterator();
        int viewTypeCount = 0;
        while (it.hasNext()) {
            ListAdapter next = it.next();
            int count = next.getCount();
            if (i < count) {
                int itemViewType = next.getItemViewType(i);
                if (itemViewType < next.getViewTypeCount()) {
                    if (itemViewType < 0) {
                        return -1;
                    }
                    return viewTypeCount + itemViewType;
                }
                Log.e("adapter getItemViewType() >= getViewTypeCount(): " + next.getClass().getSimpleName() + ", position=" + i + ", viewType=" + itemViewType);
                return -1;
            }
            i -= count;
            viewTypeCount += next.getViewTypeCount();
        }
        return -1;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        Iterator<ListAdapter> it = this.pieces.iterator();
        while (it.hasNext()) {
            ListAdapter next = it.next();
            int count = next.getCount();
            if (i < count) {
                return next.isEnabled(i);
            }
            i -= count;
        }
        return false;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        Iterator<ListAdapter> it = this.pieces.iterator();
        while (it.hasNext()) {
            ListAdapter next = it.next();
            int count = next.getCount();
            if (i < count) {
                return next.getView(i, view, viewGroup);
            }
            i -= count;
        }
        return createErrorItem(viewGroup, view, null);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        Iterator<ListAdapter> it = this.pieces.iterator();
        while (it.hasNext()) {
            ListAdapter next = it.next();
            int count = next.getCount();
            if (i < count) {
                return next.getItemId(i);
            }
            i -= count;
        }
        return -1L;
    }

    @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
        Iterator<ListAdapter> it = this.pieces.iterator();
        int i2 = i;
        while (it.hasNext()) {
            ListAdapter next = it.next();
            int count = next.getCount();
            if (i2 < count) {
                if (!(next instanceof NVAdapter)) {
                    return false;
                }
                NVAdapter nVAdapter = (NVAdapter) next;
                return nVAdapter.dispatchOnItemClick(nVAdapter, i2, obj, view, view2);
            }
            i2 -= count;
        }
        return false;
    }

    @Override // com.narvii.list.NVAdapter
    public boolean onLongClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
        Iterator<ListAdapter> it = this.pieces.iterator();
        int i2 = i;
        while (it.hasNext()) {
            ListAdapter next = it.next();
            int count = next.getCount();
            if (i2 < count) {
                if (next instanceof NVAdapter) {
                    return ((NVAdapter) next).dispatchOnLongClick(listAdapter, i2, obj, view, view2);
                }
                return false;
            }
            i2 -= count;
        }
        return false;
    }

    @Override // com.narvii.list.NVAdapter
    boolean dispatchLoginResult(boolean z, Intent intent) {
        if (super.dispatchLoginResult(z, intent)) {
            return true;
        }
        Iterator<ListAdapter> it = this.pieces.iterator();
        while (it.hasNext()) {
            ListAdapter next = it.next();
            if ((next instanceof NVAdapter) && ((NVAdapter) next).dispatchLoginResult(z, intent)) {
                return true;
            }
        }
        return false;
    }

    public int getCurAdapterIndex(ListAdapter listAdapter) {
        for (int i = 0; i < this.pieces.size(); i++) {
            if (this.pieces.get(i) == listAdapter) {
                return i;
            }
        }
        return -1;
    }
}
