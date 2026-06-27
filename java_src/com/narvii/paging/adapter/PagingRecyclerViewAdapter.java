package com.narvii.paging.adapter;

import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.lib.R;
import com.narvii.model.NVObject;
import com.narvii.model.api.ListResponse;
import com.narvii.paging.PageView;
import com.narvii.paging.PageViewUtils;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.source.ContinuousSource;
import com.narvii.paging.source.DataSource;
import com.narvii.paging.source.DataSourceChangeListener;
import com.narvii.paging.source.PageDataSource;
import com.narvii.paging.source.PageRequestCallback;
import com.narvii.paging.state.ErrorRetryListener;
import com.narvii.paging.state.PageLoadStateItemViewHolder;
import com.narvii.paging.storage.PageStorage;
import com.narvii.util.Callback;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public abstract class PagingRecyclerViewAdapter<T extends NVObject, E extends ListResponse<? extends T>> extends NVRecyclerViewAdapter<T> implements DataSourceChangeListener {
    private static final int TYPE_PAGE_LOADING_STATUS = 0;
    public PageDataSource<T, E> pageDataSource;
    ErrorRetryListener retryListener;

    public abstract PageDataSource<T, E> createPageDataSource(NVContext nVContext);

    protected int getItemType(int i) {
        return 0;
    }

    protected int getItemViewTypeCount() {
        return 0;
    }

    protected abstract void onBindItemViewHolder(RecyclerView.ViewHolder viewHolder, int i);

    protected abstract RecyclerView.ViewHolder onCreateItemViewHolder(ViewGroup viewGroup, int i);

    protected boolean tagCellAuto() {
        return true;
    }

    public PagingRecyclerViewAdapter(NVContext nVContext) {
        super(nVContext);
        this.retryListener = new ErrorRetryListener() { // from class: com.narvii.paging.adapter.-$$Lambda$PagingRecyclerViewAdapter$GPlfGhdYIpMVxrSDhciCpE6VdHo
            @Override // com.narvii.paging.state.ErrorRetryListener
            public final void onErrorRetry() {
                this.f$0.lambda$new$0$PagingRecyclerViewAdapter();
            }
        };
    }

    public PagingRecyclerViewAdapter(NVContext nVContext, DataSource dataSource) {
        super(nVContext, dataSource);
        this.retryListener = new ErrorRetryListener() { // from class: com.narvii.paging.adapter.-$$Lambda$PagingRecyclerViewAdapter$GPlfGhdYIpMVxrSDhciCpE6VdHo
            @Override // com.narvii.paging.state.ErrorRetryListener
            public final void onErrorRetry() {
                this.f$0.lambda$new$0$PagingRecyclerViewAdapter();
            }
        };
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
        super.onViewRecycled(viewHolder);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 0) {
            PageLoadStateItemViewHolder pageLoadStateItemViewHolder = new PageLoadStateItemViewHolder(createPageLoadStatusView(viewGroup));
            pageLoadStateItemViewHolder.setDarkTheme(isDarkTheme());
            return pageLoadStateItemViewHolder;
        }
        RecyclerView.ViewHolder viewHolderOnCreateItemViewHolder = onCreateItemViewHolder(viewGroup, i - 1);
        if (viewHolderOnCreateItemViewHolder != null) {
            viewHolderOnCreateItemViewHolder.itemView.setOnClickListener(this.subviewClickListener);
            viewHolderOnCreateItemViewHolder.itemView.setOnLongClickListener(this.subviewLongClickListener);
        }
        if (viewHolderOnCreateItemViewHolder != null) {
            View view = viewHolderOnCreateItemViewHolder.itemView;
            if (view instanceof PageView) {
                ((PageView) view).setNvContext(this.context);
                ((PageView) viewHolderOnCreateItemViewHolder.itemView).setVisibleHint(false);
            }
        }
        return viewHolderOnCreateItemViewHolder;
    }

    protected View createPageLoadStatusView(ViewGroup viewGroup) {
        return LayoutInflater.from(viewGroup.getContext()).inflate(pageStatusLayoutId(), viewGroup, false);
    }

    protected int pageStatusLayoutId() {
        return R.layout.item_page_load_state;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        if (viewHolder instanceof PageLoadStateItemViewHolder) {
            ((PageLoadStateItemViewHolder) viewHolder).bind(this.dataSource.getPageLoadState(), this.retryListener);
            return;
        }
        onBindItemViewHolder(viewHolder, i);
        View view = viewHolder.itemView;
        if (view != null && view.getTag(R.id._not_set_cell_tag) != Boolean.TRUE && tagCellAuto()) {
            tagCellForLog(viewHolder.itemView, getItem(i));
        }
        NVContext nVContext = this.context;
        if (nVContext instanceof NVFragment) {
            PageViewUtils.onBindViewHolder((NVFragment) nVContext, viewHolder, i);
        }
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public final int getItemViewType(int i) {
        if (showPageLoadingStatus() && i == getItemCount() - 1) {
            return 0;
        }
        return getItemType(i) + 1;
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public final int getViewTypeCount() {
        return getItemViewTypeCount() + 2;
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter, android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return getSize() + (showPageLoadingStatus() ? 1 : 0);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public T getItem(int i) {
        T t = (T) this.dataSource.getItem(i);
        if (autoLoadNextPage() && (this.dataSource instanceof ContinuousSource) && i >= 0 && i < getItemCount()) {
            ((ContinuousSource) this.dataSource).loadAround(i);
        }
        return t;
    }

    public /* synthetic */ void lambda$new$0$PagingRecyclerViewAdapter() {
        this.dataSource.onErrorRetry();
    }

    protected boolean showPageLoadingStatus() {
        return !this.dataSource.getPageLoadState().isLoaded();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.source.DataSourceChangeListener
    public void onPageListChanged(PageStorage pageStorage) {
        invalidateAdapter();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.source.DataSourceChangeListener
    public void onPageLoadStatusChanged() {
        invalidateAdapter();
    }

    private void invalidateAdapter() {
        final int size = this.dataSource.getInitPage() != null ? this.dataSource.getInitPage().size() : 0;
        int itemCount = getItemCount();
        RecyclerView recyclerView = this.recyclerView;
        if (recyclerView == null || recyclerView.isComputingLayout()) {
            Utils.post(new Runnable() { // from class: com.narvii.paging.adapter.-$$Lambda$PagingRecyclerViewAdapter$nvSieRoUbOshNXcS_f7SAJmNITw
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$invalidateAdapter$2$PagingRecyclerViewAdapter(size);
                }
            });
            return;
        }
        if (itemCount <= size) {
            notifyItemRangeRemoved(itemCount, (size - itemCount) + 1);
        } else {
            notifyItemRangeChanged(size, itemCount - size);
        }
        this.dataSetEventDispatcher.dispatch(new Callback() { // from class: com.narvii.paging.adapter.-$$Lambda$PagingRecyclerViewAdapter$u81cWKr_i0qhvd53WbRJqgncPkc
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                ((NVRecyclerViewBaseAdapter.DataSetChangeListener) obj).onDataSetChanged();
            }
        });
    }

    public /* synthetic */ void lambda$invalidateAdapter$2$PagingRecyclerViewAdapter(int i) {
        notifyItemRangeChanged(i, getItemCount() - i);
        this.dataSetEventDispatcher.dispatch(new Callback() { // from class: com.narvii.paging.adapter.-$$Lambda$PagingRecyclerViewAdapter$BZMCP9CVd8jmNPktFjKcdinEb4o
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                ((NVRecyclerViewBaseAdapter.DataSetChangeListener) obj).onDataSetChanged();
            }
        });
    }

    public void loadInitData() {
        this.dataSource.loadInitData();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void refresh(int i, PageRequestCallback pageRequestCallback) {
        this.dataSource.refresh(i, pageRequestCallback);
    }

    public void updateItem(T t) {
        int iUpdateItem = this.dataSource.updateItem(t);
        if (iUpdateItem >= 0) {
            notifyItemChanged(iUpdateItem);
        }
    }

    public T getItemById(String str) {
        return (T) this.dataSource.getItemById(str);
    }

    public void loadNextPage(PageRequestCallback pageRequestCallback) {
        DataSource<T> dataSource = this.dataSource;
        if (dataSource instanceof ContinuousSource) {
            ((ContinuousSource) dataSource).loadNextPage(pageRequestCallback);
        }
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter
    public final DataSource<T> createDataSource(NVContext nVContext) {
        PageDataSource<T, E> pageDataSourceCreatePageDataSource = createPageDataSource(nVContext);
        this.pageDataSource = pageDataSourceCreatePageDataSource;
        return pageDataSourceCreatePageDataSource;
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void resetEmptyList() {
        super.resetEmptyList();
        this.dataSource.resetDataSource();
        notifyDataSetChanged();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter, android.support.v7.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        NVObject item = getItem(i);
        if (getItemType(i) == 0) {
            return System.currentTimeMillis();
        }
        if (item == null) {
            return 0L;
        }
        return item.hashCode();
    }

    public boolean isRequestEnd() {
        return this.pageDataSource.get_isEnd();
    }
}
