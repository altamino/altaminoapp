package com.narvii.paging.adapter;

import android.content.Intent;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.app.NVContext;
import com.narvii.paging.source.PageRequestCallback;
import com.narvii.util.Callback;
import com.narvii.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public class RecyclerViewMergeAdapter extends NVRecyclerViewBaseAdapter {
    HashMap<NVRecyclerViewBaseAdapter, Integer> adapterBaseViewTypeOffsetMapper;
    NVRecyclerViewBaseAdapter.DataSetChangeListener dataSetChangeListener;
    public boolean dynamicalMode;
    public NVRecyclerViewBaseAdapter mainAdapter;
    SparseArray<Integer> pieceViewTypeMapper;
    public final ArrayList<NVRecyclerViewBaseAdapter> pieces;
    public int typeCountForEachAdapter;
    SparseArray<NVRecyclerViewBaseAdapter> viewBaseAdapterSparseArray;

    class UnknownTypeViewHolder extends RecyclerView.ViewHolder {
        public UnknownTypeViewHolder(View view) {
            super(view);
        }
    }

    public void addAdapter(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter) {
        addAdapter(nVRecyclerViewBaseAdapter, false);
    }

    private void resetTypeInfo() {
        this.viewBaseAdapterSparseArray.clear();
        this.pieceViewTypeMapper.clear();
    }

    public void addAdapter(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, boolean z6) {
        addAdapter(-1, nVRecyclerViewBaseAdapter, z6);
    }

    public void addAdapterAtIndex(int i10, List<NVRecyclerViewBaseAdapter> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        if (i10 == -1) {
            for (int i11 = 0; i11 < list.size(); i11++) {
                addAdapter(-1, list.get(i11), false);
            }
            return;
        }
        for (int size = list.size() - 1; size >= 0; size--) {
            addAdapter(i10, list.get(size), false);
        }
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
    public String getErrorMessage() {
        NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter = this.mainAdapter;
        if (nVRecyclerViewBaseAdapter == null) {
            return null;
        }
        return nVRecyclerViewBaseAdapter.getErrorMessage();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public Object getItem(int i10) {
        for (NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter : this.pieces) {
            int itemCount = nVRecyclerViewBaseAdapter.getItemCount();
            if (i10 < itemCount) {
                return nVRecyclerViewBaseAdapter.getItem(i10);
            }
            i10 -= itemCount;
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        Iterator<NVRecyclerViewBaseAdapter> it = this.pieces.iterator();
        int itemCount = 0;
        while (it.hasNext()) {
            itemCount += it.next().getItemCount();
        }
        return itemCount;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i10) {
        int viewTypeCount = 0;
        if (!this.dynamicalMode) {
            for (NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter : this.pieces) {
                int itemCount = nVRecyclerViewBaseAdapter.getItemCount();
                if (i10 < itemCount) {
                    int itemViewType = nVRecyclerViewBaseAdapter.getItemViewType(i10);
                    if (itemViewType < nVRecyclerViewBaseAdapter.getViewTypeCount()) {
                        if (itemViewType >= 0) {
                            int i11 = viewTypeCount + itemViewType;
                            this.pieceViewTypeMapper.put(i11, Integer.valueOf(itemViewType));
                            this.viewBaseAdapterSparseArray.put(i11, nVRecyclerViewBaseAdapter);
                        }
                        if (itemViewType < 0) {
                            return -1;
                        }
                        return viewTypeCount + itemViewType;
                    }
                    Log.e("adapter getItemViewType() >= getViewTypeCount(): " + nVRecyclerViewBaseAdapter.getClass().getSimpleName() + ", position=" + i10 + ", viewType=" + itemViewType);
                    return -1;
                }
                i10 -= itemCount;
                viewTypeCount += nVRecyclerViewBaseAdapter.getViewTypeCount();
            }
            return -1;
        }
        for (NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter2 : this.pieces) {
            int itemCount2 = nVRecyclerViewBaseAdapter2.getItemCount();
            if (i10 < itemCount2) {
                int itemViewType2 = nVRecyclerViewBaseAdapter2.getItemViewType(i10);
                if (itemViewType2 >= nVRecyclerViewBaseAdapter2.getViewTypeCount()) {
                    Log.e("adapter getItemViewType() >= getViewTypeCount(): " + nVRecyclerViewBaseAdapter2.getClass().getSimpleName() + ", position=" + i10 + ", viewType=" + itemViewType2);
                    return -1;
                }
                if (itemViewType2 >= 0) {
                    Integer num = this.adapterBaseViewTypeOffsetMapper.get(nVRecyclerViewBaseAdapter2);
                    if (num == null) {
                        int size = this.adapterBaseViewTypeOffsetMapper.size() * this.typeCountForEachAdapter;
                        viewTypeCount = size + itemViewType2;
                        this.pieceViewTypeMapper.put(viewTypeCount, Integer.valueOf(itemViewType2));
                        this.viewBaseAdapterSparseArray.put(viewTypeCount, nVRecyclerViewBaseAdapter2);
                        this.adapterBaseViewTypeOffsetMapper.put(nVRecyclerViewBaseAdapter2, Integer.valueOf(size));
                    } else {
                        viewTypeCount = num.intValue() + itemViewType2;
                        this.pieceViewTypeMapper.put(viewTypeCount, Integer.valueOf(itemViewType2));
                        this.viewBaseAdapterSparseArray.put(viewTypeCount, nVRecyclerViewBaseAdapter2);
                    }
                }
                if (itemViewType2 < 0) {
                    return -1;
                }
                return viewTypeCount;
            }
            i10 -= itemCount2;
        }
        return -1;
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
    public boolean isLoading() {
        NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter = this.mainAdapter;
        return nVRecyclerViewBaseAdapter != null && nVRecyclerViewBaseAdapter.isLoading();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i10) {
        for (NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter : this.pieces) {
            int itemCount = nVRecyclerViewBaseAdapter.getItemCount();
            if (i10 < itemCount) {
                nVRecyclerViewBaseAdapter.onBindViewHolder(viewHolder, i10);
                return;
            }
            i10 -= itemCount;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i10) {
        NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter = this.viewBaseAdapterSparseArray.get(i10);
        return nVRecyclerViewBaseAdapter == null ? new UnknownTypeViewHolder(new View(viewGroup.getContext())) : nVRecyclerViewBaseAdapter.onCreateViewHolder(viewGroup, this.pieceViewTypeMapper.get(i10).intValue());
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void onErrorRetry() {
        NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter = this.mainAdapter;
        if (nVRecyclerViewBaseAdapter != null) {
            nVRecyclerViewBaseAdapter.onErrorRetry();
        }
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean onItemClick(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i10, Object obj, View view, View view2) {
        int i11 = i10;
        for (NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter2 : this.pieces) {
            int itemCount = nVRecyclerViewBaseAdapter2.getItemCount();
            if (i11 < itemCount) {
                return nVRecyclerViewBaseAdapter2.dispatchOnItemClick(nVRecyclerViewBaseAdapter2, i11, obj, view, view2);
            }
            i11 -= itemCount;
        }
        return super.onItemClick(nVRecyclerViewBaseAdapter, i11, obj, view, view2);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean onLongClick(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i10, Object obj, View view, View view2) {
        int i11 = i10;
        for (NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter2 : this.pieces) {
            int itemCount = nVRecyclerViewBaseAdapter2.getItemCount();
            if (i11 < itemCount) {
                return nVRecyclerViewBaseAdapter2.onLongClick(nVRecyclerViewBaseAdapter2, i11, obj, view, view2);
            }
            i11 -= itemCount;
        }
        return super.onLongClick(nVRecyclerViewBaseAdapter, i11, obj, view, view2);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void refresh(int i10, PageRequestCallback pageRequestCallback) {
        NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter = this.mainAdapter;
        if (nVRecyclerViewBaseAdapter != null) {
            nVRecyclerViewBaseAdapter.refresh(i10, pageRequestCallback);
        } else {
            super.refresh(i10, pageRequestCallback);
        }
    }

    public void refreshCellAtIndex(int i10, int i11) {
        if (i11 < i10) {
            return;
        }
        while (i10 < i11) {
            this.pieces.get(i10).refresh(0, null);
            i10++;
        }
        notifyDataSetChanged();
    }

    public void removeCellAtIndex(int i10, int i11) {
        if (i10 < 0 || i11 > this.pieces.size() || i11 < i10) {
            return;
        }
        int i12 = 0;
        while (i10 < i11) {
            NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapterRemove = this.pieces.remove(i10 - i12);
            nVRecyclerViewBaseAdapterRemove.resetEmptyList();
            i12++;
            nVRecyclerViewBaseAdapterRemove.removeDataSetChangeListener(this.dataSetChangeListener);
            i10++;
        }
        resetTypeInfo();
        notifyDataSetChanged();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void resetList() {
        Iterator<NVRecyclerViewBaseAdapter> it = this.pieces.iterator();
        while (it.hasNext()) {
            it.next().resetList();
        }
    }

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

    public void addAdapter(int i10, final NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, boolean z6) {
        if (z6 || this.mainAdapter == null) {
            this.mainAdapter = nVRecyclerViewBaseAdapter;
        }
        if (i10 == -1) {
            this.pieces.add(nVRecyclerViewBaseAdapter);
        } else {
            this.pieces.add(i10, nVRecyclerViewBaseAdapter);
        }
        nVRecyclerViewBaseAdapter.addDataSetChangeListener(this.dataSetChangeListener);
        nVRecyclerViewBaseAdapter.registerAdapterDataObserver(new RecyclerView.AdapterDataObserver() { // from class: com.narvii.paging.adapter.RecyclerViewMergeAdapter.1
            @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onChanged() {
                super.onChanged();
                RecyclerViewMergeAdapter.this.notifyDataSetChanged();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onItemRangeChanged(int i11, int i12) {
                super.onItemRangeChanged(i11, i12);
                RecyclerViewMergeAdapter.this.notifyDataSetChanged();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onItemRangeInserted(int i11, int i12) {
                super.onItemRangeInserted(i11, i12);
                RecyclerViewMergeAdapter.this.notifyDataSetChanged();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onItemRangeMoved(int i11, int i12, int i13) {
                NVRecyclerViewBaseAdapter next;
                super.onItemRangeMoved(i11, i12, i13);
                Iterator<NVRecyclerViewBaseAdapter> it = RecyclerViewMergeAdapter.this.pieces.iterator();
                int itemCount = 0;
                while (it.hasNext() && (next = it.next()) != nVRecyclerViewBaseAdapter) {
                    itemCount += next.getItemCount();
                }
                RecyclerViewMergeAdapter.this.notifyItemMoved(i11 + itemCount, itemCount + i12);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onItemRangeRemoved(int i11, int i12) {
                super.onItemRangeRemoved(i11, i12);
                RecyclerViewMergeAdapter.this.notifyDataSetChanged();
            }
        });
        notifyDataSetChanged();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean dispatchLoginResult(boolean z6, Intent intent) {
        if (super.dispatchLoginResult(z6, intent)) {
            return true;
        }
        Iterator<NVRecyclerViewBaseAdapter> it = this.pieces.iterator();
        while (it.hasNext()) {
            if (it.next().dispatchLoginResult(z6, intent)) {
                return true;
            }
        }
        return false;
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

    public void removeAllCells() {
        resetEmptyList();
        this.pieces.clear();
        resetTypeInfo();
        this.mainAdapter = null;
        notifyDataSetChanged();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void resetEmptyList() {
        super.resetEmptyList();
        Iterator<NVRecyclerViewBaseAdapter> it = this.pieces.iterator();
        while (it.hasNext()) {
            it.next().resetEmptyList();
        }
    }
}
