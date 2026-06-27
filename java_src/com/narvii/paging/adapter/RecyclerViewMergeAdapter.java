package com.narvii.paging.adapter;

import android.content.Intent;
import android.support.v7.widget.RecyclerView;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.app.NVContext;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.source.PageRequestCallback;
import com.narvii.util.Callback;
import com.narvii.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class RecyclerViewMergeAdapter extends NVRecyclerViewBaseAdapter {
    HashMap<NVRecyclerViewBaseAdapter, Integer> adapterBaseViewTypeOffsetMapper;
    NVRecyclerViewBaseAdapter.DataSetChangeListener dataSetChangeListener;
    public boolean dynamicalMode;
    public NVRecyclerViewBaseAdapter mainAdapter;
    SparseArray<Integer> pieceViewTypeMapper;
    public final ArrayList<NVRecyclerViewBaseAdapter> pieces;
    public int typeCountForEachAdapter;
    SparseArray<NVRecyclerViewBaseAdapter> viewBaseAdapterSparseArray;

    public RecyclerViewMergeAdapter(NVContext nVContext) {
        super(nVContext);
        this.pieces = new ArrayList<>();
        this.viewBaseAdapterSparseArray = new SparseArray<>();
        this.pieceViewTypeMapper = new SparseArray<>();
        this.typeCountForEachAdapter = 15;
        this.adapterBaseViewTypeOffsetMapper = new HashMap<>();
        this.dynamicalMode = false;
        this.dataSetChangeListener = new NVRecyclerViewBaseAdapter.DataSetChangeListener() { // from class: com.narvii.paging.adapter.RecyclerViewMergeAdapter.2
            @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter.DataSetChangeListener
            public void onDataSetChanged() {
                RecyclerViewMergeAdapter.this.dataSetEventDispatcher.dispatch(new Callback<NVRecyclerViewBaseAdapter.DataSetChangeListener>() { // from class: com.narvii.paging.adapter.RecyclerViewMergeAdapter.2.1
                    @Override // com.narvii.util.Callback
                    public void call(NVRecyclerViewBaseAdapter.DataSetChangeListener dataSetChangeListener) {
                        dataSetChangeListener.onDataSetChanged();
                    }
                });
            }
        };
    }

    public void addAdapter(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter) {
        addAdapter(nVRecyclerViewBaseAdapter, false);
    }

    public void addAdapter(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, boolean z) {
        addAdapter(-1, nVRecyclerViewBaseAdapter, z);
    }

    public void addAdapter(int i, final NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, boolean z) {
        if (z || this.mainAdapter == null) {
            this.mainAdapter = nVRecyclerViewBaseAdapter;
        }
        if (i == -1) {
            this.pieces.add(nVRecyclerViewBaseAdapter);
        } else {
            this.pieces.add(i, nVRecyclerViewBaseAdapter);
        }
        nVRecyclerViewBaseAdapter.addDataSetChangeListener(this.dataSetChangeListener);
        nVRecyclerViewBaseAdapter.registerAdapterDataObserver(new RecyclerView.AdapterDataObserver() { // from class: com.narvii.paging.adapter.RecyclerViewMergeAdapter.1
            @Override // android.support.v7.widget.RecyclerView.AdapterDataObserver
            public void onChanged() {
                super.onChanged();
                RecyclerViewMergeAdapter.this.notifyDataSetChanged();
            }

            @Override // android.support.v7.widget.RecyclerView.AdapterDataObserver
            public void onItemRangeChanged(int i2, int i3) {
                super.onItemRangeChanged(i2, i3);
                RecyclerViewMergeAdapter.this.notifyDataSetChanged();
            }

            @Override // android.support.v7.widget.RecyclerView.AdapterDataObserver
            public void onItemRangeInserted(int i2, int i3) {
                super.onItemRangeInserted(i2, i3);
                RecyclerViewMergeAdapter.this.notifyDataSetChanged();
            }

            @Override // android.support.v7.widget.RecyclerView.AdapterDataObserver
            public void onItemRangeRemoved(int i2, int i3) {
                super.onItemRangeRemoved(i2, i3);
                RecyclerViewMergeAdapter.this.notifyDataSetChanged();
            }

            @Override // android.support.v7.widget.RecyclerView.AdapterDataObserver
            public void onItemRangeMoved(int i2, int i3, int i4) {
                NVRecyclerViewBaseAdapter next;
                super.onItemRangeMoved(i2, i3, i4);
                Iterator<NVRecyclerViewBaseAdapter> it = RecyclerViewMergeAdapter.this.pieces.iterator();
                int itemCount = 0;
                while (it.hasNext() && (next = it.next()) != nVRecyclerViewBaseAdapter) {
                    itemCount += next.getItemCount();
                }
                RecyclerViewMergeAdapter.this.notifyItemMoved(i2 + itemCount, itemCount + i3);
            }
        });
        notifyDataSetChanged();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void onAttach() {
        super.onAttach();
        Iterator<NVRecyclerViewBaseAdapter> it = this.pieces.iterator();
        while (it.hasNext()) {
            it.next().onAttach();
        }
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void onDetach() {
        super.onDetach();
        Iterator<NVRecyclerViewBaseAdapter> it = this.pieces.iterator();
        while (it.hasNext()) {
            it.next().onDetach();
        }
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        Iterator<NVRecyclerViewBaseAdapter> it = this.pieces.iterator();
        int itemCount = 0;
        while (it.hasNext()) {
            itemCount += it.next().getItemCount();
        }
        return itemCount;
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public Object getItem(int i) {
        Iterator<NVRecyclerViewBaseAdapter> it = this.pieces.iterator();
        while (it.hasNext()) {
            NVRecyclerViewBaseAdapter next = it.next();
            int itemCount = next.getItemCount();
            if (i < itemCount) {
                return next.getItem(i);
            }
            i -= itemCount;
        }
        return null;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter = this.viewBaseAdapterSparseArray.get(i);
        if (nVRecyclerViewBaseAdapter == null) {
            return new UnknownTypeViewHolder(new View(viewGroup.getContext()));
        }
        return nVRecyclerViewBaseAdapter.onCreateViewHolder(viewGroup, this.pieceViewTypeMapper.get(i).intValue());
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        Iterator<NVRecyclerViewBaseAdapter> it = this.pieces.iterator();
        while (it.hasNext()) {
            NVRecyclerViewBaseAdapter next = it.next();
            int itemCount = next.getItemCount();
            if (i < itemCount) {
                next.onBindViewHolder(viewHolder, i);
                return;
            }
            i -= itemCount;
        }
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public int getViewTypeCount() {
        Iterator<NVRecyclerViewBaseAdapter> it = this.pieces.iterator();
        int viewTypeCount = 0;
        while (it.hasNext()) {
            viewTypeCount += it.next().getViewTypeCount();
        }
        if (this.dynamicalMode) {
            if (viewTypeCount == 0) {
                return 1;
            }
            return this.pieces.size() * this.typeCountForEachAdapter;
        }
        if (viewTypeCount == 0) {
            return 1;
        }
        return viewTypeCount;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        int viewTypeCount = 0;
        if (this.dynamicalMode) {
            Iterator<NVRecyclerViewBaseAdapter> it = this.pieces.iterator();
            while (it.hasNext()) {
                NVRecyclerViewBaseAdapter next = it.next();
                int itemCount = next.getItemCount();
                if (i < itemCount) {
                    int itemViewType = next.getItemViewType(i);
                    if (itemViewType >= next.getViewTypeCount()) {
                        Log.e("adapter getItemViewType() >= getViewTypeCount(): " + next.getClass().getSimpleName() + ", position=" + i + ", viewType=" + itemViewType);
                        return -1;
                    }
                    if (itemViewType >= 0) {
                        Integer num = this.adapterBaseViewTypeOffsetMapper.get(next);
                        if (num == null) {
                            int size = this.adapterBaseViewTypeOffsetMapper.size() * this.typeCountForEachAdapter;
                            viewTypeCount = size + itemViewType;
                            this.pieceViewTypeMapper.put(viewTypeCount, Integer.valueOf(itemViewType));
                            this.viewBaseAdapterSparseArray.put(viewTypeCount, next);
                            this.adapterBaseViewTypeOffsetMapper.put(next, Integer.valueOf(size));
                        } else {
                            viewTypeCount = num.intValue() + itemViewType;
                            this.pieceViewTypeMapper.put(viewTypeCount, Integer.valueOf(itemViewType));
                            this.viewBaseAdapterSparseArray.put(viewTypeCount, next);
                        }
                    }
                    if (itemViewType < 0) {
                        return -1;
                    }
                    return viewTypeCount;
                }
                i -= itemCount;
            }
            return -1;
        }
        Iterator<NVRecyclerViewBaseAdapter> it2 = this.pieces.iterator();
        while (it2.hasNext()) {
            NVRecyclerViewBaseAdapter next2 = it2.next();
            int itemCount2 = next2.getItemCount();
            if (i < itemCount2) {
                int itemViewType2 = next2.getItemViewType(i);
                if (itemViewType2 < next2.getViewTypeCount()) {
                    if (itemViewType2 >= 0) {
                        int i2 = viewTypeCount + itemViewType2;
                        this.pieceViewTypeMapper.put(i2, Integer.valueOf(itemViewType2));
                        this.viewBaseAdapterSparseArray.put(i2, next2);
                    }
                    if (itemViewType2 < 0) {
                        return -1;
                    }
                    return viewTypeCount + itemViewType2;
                }
                Log.e("adapter getItemViewType() >= getViewTypeCount(): " + next2.getClass().getSimpleName() + ", position=" + i + ", viewType=" + itemViewType2);
                return -1;
            }
            i -= itemCount2;
            viewTypeCount += next2.getViewTypeCount();
        }
        return -1;
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean isEmpty() {
        NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter = this.mainAdapter;
        return nVRecyclerViewBaseAdapter == null || nVRecyclerViewBaseAdapter.isEmpty();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean isListShow() {
        NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter = this.mainAdapter;
        return nVRecyclerViewBaseAdapter != null && nVRecyclerViewBaseAdapter.isListShow();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void refresh(int i, PageRequestCallback pageRequestCallback) {
        NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter = this.mainAdapter;
        if (nVRecyclerViewBaseAdapter != null) {
            nVRecyclerViewBaseAdapter.refresh(i, pageRequestCallback);
        } else {
            super.refresh(i, pageRequestCallback);
        }
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public String getErrorMessage() {
        NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter = this.mainAdapter;
        if (nVRecyclerViewBaseAdapter == null) {
            return null;
        }
        return nVRecyclerViewBaseAdapter.getErrorMessage();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void onErrorRetry() {
        NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter = this.mainAdapter;
        if (nVRecyclerViewBaseAdapter != null) {
            nVRecyclerViewBaseAdapter.onErrorRetry();
        }
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean isLoading() {
        NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter = this.mainAdapter;
        return nVRecyclerViewBaseAdapter != null && nVRecyclerViewBaseAdapter.isLoading();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public int getSize() {
        Iterator<NVRecyclerViewBaseAdapter> it = this.pieces.iterator();
        int size = 0;
        while (it.hasNext()) {
            size += it.next().getSize();
        }
        return size;
    }

    class UnknownTypeViewHolder extends RecyclerView.ViewHolder {
        public UnknownTypeViewHolder(View view) {
            super(view);
        }
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean onItemClick(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i, Object obj, View view, View view2) {
        Iterator<NVRecyclerViewBaseAdapter> it = this.pieces.iterator();
        int i2 = i;
        while (it.hasNext()) {
            NVRecyclerViewBaseAdapter next = it.next();
            int itemCount = next.getItemCount();
            if (i2 < itemCount) {
                return next.dispatchOnItemClick(next, i2, obj, view, view2);
            }
            i2 -= itemCount;
        }
        return super.onItemClick(nVRecyclerViewBaseAdapter, i2, obj, view, view2);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean onLongClick(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i, Object obj, View view, View view2) {
        Iterator<NVRecyclerViewBaseAdapter> it = this.pieces.iterator();
        int i2 = i;
        while (it.hasNext()) {
            NVRecyclerViewBaseAdapter next = it.next();
            int itemCount = next.getItemCount();
            if (i2 < itemCount) {
                return next.onLongClick(next, i2, obj, view, view2);
            }
            i2 -= itemCount;
        }
        return super.onLongClick(nVRecyclerViewBaseAdapter, i2, obj, view, view2);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void resetList() {
        Iterator<NVRecyclerViewBaseAdapter> it = this.pieces.iterator();
        while (it.hasNext()) {
            it.next().resetList();
        }
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void resetEmptyList() {
        super.resetEmptyList();
        Iterator<NVRecyclerViewBaseAdapter> it = this.pieces.iterator();
        while (it.hasNext()) {
            it.next().resetEmptyList();
        }
    }

    private void resetTypeInfo() {
        this.viewBaseAdapterSparseArray.clear();
        this.pieceViewTypeMapper.clear();
    }

    public void removeCellAtIndex(int i, int i2) {
        if (i < 0 || i2 > this.pieces.size() || i2 < i) {
            return;
        }
        int i3 = 0;
        while (i < i2) {
            NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapterRemove = this.pieces.remove(i - i3);
            nVRecyclerViewBaseAdapterRemove.resetEmptyList();
            i3++;
            nVRecyclerViewBaseAdapterRemove.removeDataSetChangeListener(this.dataSetChangeListener);
            i++;
        }
        resetTypeInfo();
        notifyDataSetChanged();
    }

    public void refreshCellAtIndex(int i, int i2) {
        if (i2 < i) {
            return;
        }
        while (i < i2) {
            this.pieces.get(i).refresh(0, null);
            i++;
        }
        notifyDataSetChanged();
    }

    public void addAdapterAtIndex(int i, List<NVRecyclerViewBaseAdapter> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        if (i == -1) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                addAdapter(-1, list.get(i2), false);
            }
            return;
        }
        for (int size = list.size() - 1; size >= 0; size--) {
            addAdapter(i, list.get(size), false);
        }
    }

    public void removeAllCells() {
        resetEmptyList();
        this.pieces.clear();
        resetTypeInfo();
        this.mainAdapter = null;
        notifyDataSetChanged();
    }

    public void dispatchDataSetChange() {
        this.dataSetEventDispatcher.dispatch(new Callback<NVRecyclerViewBaseAdapter.DataSetChangeListener>() { // from class: com.narvii.paging.adapter.RecyclerViewMergeAdapter.3
            @Override // com.narvii.util.Callback
            public void call(NVRecyclerViewBaseAdapter.DataSetChangeListener dataSetChangeListener) {
                dataSetChangeListener.onDataSetChanged();
            }
        });
    }

    public int getAdapterRealPos(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter) {
        NVRecyclerViewBaseAdapter next;
        Iterator<NVRecyclerViewBaseAdapter> it = this.pieces.iterator();
        int itemCount = 0;
        while (it.hasNext() && (next = it.next()) != nVRecyclerViewBaseAdapter) {
            itemCount += next.getItemCount();
        }
        return itemCount;
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean dispatchLoginResult(boolean z, Intent intent) {
        if (super.dispatchLoginResult(z, intent)) {
            return true;
        }
        Iterator<NVRecyclerViewBaseAdapter> it = this.pieces.iterator();
        while (it.hasNext()) {
            if (it.next().dispatchLoginResult(z, intent)) {
                return true;
            }
        }
        return false;
    }
}
