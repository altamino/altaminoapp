package com.narvii.user.favorite;

import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.list.NVAdapter;
import com.narvii.util.Callback;
import com.narvii.widget.recycleview.NVRecycleAdapter;
import com.narvii.widget.recycleview.NVRichRecycleView;

/* JADX INFO: loaded from: classes5.dex */
public class NVRecycleViewWrapAdapter extends NVAdapter {
    private static final String TAG = "NVRecycleViewWrapperAdapter";
    private final RecyclerView.AdapterDataObserver observer;
    protected NVRecycleAdapter wrapped;

    @Override // android.widget.Adapter
    public int getCount() {
        return 1;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i10) {
        return this;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        return 0L;
    }

    protected int recycleViewContainerLayoutId() {
        return R.layout.recycle_container_layout;
    }

    @Override // com.narvii.list.NVAdapter
    public String errorMessage() {
        NVRecycleAdapter nVRecycleAdapter = this.wrapped;
        return nVRecycleAdapter != null ? nVRecycleAdapter.errorMessage() : super.errorMessage();
    }

    @Override // com.narvii.list.NVAdapter
    public void onErrorRetry() {
        NVRecycleAdapter nVRecycleAdapter = this.wrapped;
        if (nVRecycleAdapter != null) {
            nVRecycleAdapter.onErrorRetry();
        } else {
            super.onErrorRetry();
        }
    }

    @Override // com.narvii.list.NVAdapter
    public void onRestoreInstanceState(Bundle bundle) {
        NVRecycleAdapter nVRecycleAdapter = this.wrapped;
        if (nVRecycleAdapter != null) {
            nVRecycleAdapter.onRestoreInstanceState(bundle);
        }
        super.onRestoreInstanceState(bundle);
    }

    @Override // com.narvii.list.NVAdapter
    public Bundle onSaveInstanceState() {
        NVRecycleAdapter nVRecycleAdapter = this.wrapped;
        return nVRecycleAdapter != null ? nVRecycleAdapter.onSaveInstanceState() : super.onSaveInstanceState();
    }

    public void setRecycleAdapter(NVRecycleAdapter nVRecycleAdapter) {
        NVRecycleAdapter nVRecycleAdapter2 = this.wrapped;
        if (nVRecycleAdapter2 == nVRecycleAdapter) {
            return;
        }
        if (nVRecycleAdapter2 != null) {
            nVRecycleAdapter2.unregisterAdapterDataObserver(this.observer);
        }
        this.wrapped = nVRecycleAdapter;
        if (nVRecycleAdapter != null) {
            nVRecycleAdapter.registerAdapterDataObserver(this.observer);
        }
        notifyDataSetChanged();
    }

    public NVRecycleViewWrapAdapter(NVContext nVContext, NVRecycleAdapter nVRecycleAdapter) {
        super(nVContext);
        this.observer = new RecyclerView.AdapterDataObserver() { // from class: com.narvii.user.favorite.NVRecycleViewWrapAdapter.1
            @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onChanged() {
                super.onChanged();
                NVRecycleViewWrapAdapter.this.updateViewsOnDataChanged();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onItemRangeChanged(int i10, int i11) {
                super.onItemRangeChanged(i10, i11);
                NVRecycleViewWrapAdapter.this.updateViewsOnDataChanged();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onItemRangeInserted(int i10, int i11) {
                super.onItemRangeInserted(i10, i11);
                NVRecycleViewWrapAdapter.this.updateViewsOnDataChanged();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onItemRangeMoved(int i10, int i11, int i12) {
                super.onItemRangeMoved(i10, i11, i12);
                NVRecycleViewWrapAdapter.this.updateViewsOnDataChanged();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onItemRangeRemoved(int i10, int i11) {
                super.onItemRangeRemoved(i10, i11);
                NVRecycleViewWrapAdapter.this.updateViewsOnDataChanged();
            }
        };
        this.wrapped = nVRecycleAdapter;
    }

    @Override // android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        KeyEvent.Callback callbackFindViewById;
        View viewCreateView = createView(recycleViewContainerLayoutId(), viewGroup, view, TAG);
        View viewFindViewById = viewCreateView.findViewById(R.id.recycle_layout);
        if (viewFindViewById instanceof NVRichRecycleView) {
            RecyclerView recyclerView = (RecyclerView) viewFindViewById.findViewById(R.id.recycle_list);
            if (recyclerView.getLayoutManager() == null) {
                ((NVRichRecycleView) viewFindViewById).setRecyclerViewLayoutManager(new LinearLayoutManager(getContext(), 0, false));
            }
            RecyclerView.Adapter adapter = recyclerView.getAdapter();
            NVRecycleAdapter nVRecycleAdapter = this.wrapped;
            if (adapter != nVRecycleAdapter) {
                ((NVRichRecycleView) viewFindViewById).setRecyclerViewAdapter(nVRecycleAdapter);
            }
            return viewCreateView;
        }
        if (viewFindViewById instanceof RecyclerView) {
            callbackFindViewById = (RecyclerView) viewFindViewById;
        } else {
            callbackFindViewById = viewCreateView.findViewById(R.id.recycle_list);
        }
        if (callbackFindViewById != null) {
            if (callbackFindViewById instanceof RecyclerView) {
                RecyclerView recyclerView2 = (RecyclerView) callbackFindViewById;
                if (recyclerView2.getLayoutManager() == null) {
                    recyclerView2.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
                }
                RecyclerView.Adapter adapter2 = recyclerView2.getAdapter();
                NVRecycleAdapter nVRecycleAdapter2 = this.wrapped;
                if (adapter2 != nVRecycleAdapter2) {
                    recyclerView2.setAdapter(nVRecycleAdapter2);
                }
            }
            return viewCreateView;
        }
        throw new IllegalArgumentException("must contain a NvRecycleView in layout");
    }

    @Override // com.narvii.list.NVAdapter
    public void onAttach() {
        super.onAttach();
        NVRecycleAdapter nVRecycleAdapter = this.wrapped;
        if (nVRecycleAdapter != null) {
            nVRecycleAdapter.onAttach();
        }
    }

    @Override // com.narvii.list.NVAdapter
    public void refresh(int i10, Callback<Integer> callback) {
        refreshMonitorStart(i10, callback);
        this.wrapped.refresh();
        refreshMonitorEnd();
    }

    protected void updateViewsOnDataChanged() {
        notifyDataSetChanged();
    }
}
