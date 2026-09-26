package com.narvii.paging.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.lib.R;
import com.narvii.model.NVObject;
import com.narvii.model.api.ListResponse;
import com.narvii.paging.PageView;
import com.narvii.paging.PageViewUtils;
import com.narvii.paging.source.ContinuousSource;
import com.narvii.paging.source.DataSource;
import com.narvii.paging.source.PageDataSource;
import com.narvii.paging.source.PageRequestCallback;
import com.narvii.paging.state.ErrorRetryListener;
import com.narvii.paging.state.PageLoadStateItemViewHolder;
import com.narvii.paging.storage.PageStorage;
import com.narvii.util.Callback;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes10.dex */
public abstract class PagingRecyclerViewAdapter<T extends NVObject, E extends ListResponse<? extends T>> extends NVRecyclerViewAdapter<T> {
    private static final int TYPE_PAGE_LOADING_STATUS = 0;
    public PageDataSource<T, E> pageDataSource;
    ErrorRetryListener retryListener;

    public PagingRecyclerViewAdapter(NVContext nVContext) {
        super(nVContext);
        this.retryListener = new ErrorRetryListener() { // from class: com.narvii.paging.adapter.c
            @Override // com.narvii.paging.state.ErrorRetryListener
            public final void onErrorRetry() {
                this.f2565a.lambda$new$0();
            }
        };
    }

    public abstract PageDataSource<T, E> createPageDataSource(NVContext nVContext);

    protected int getItemType(int i10) {
        return 0;
    }

    protected int getItemViewTypeCount() {
        return 0;
    }

    protected abstract void onBindItemViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i10);

    protected abstract RecyclerView.ViewHolder onCreateItemViewHolder(@NonNull ViewGroup viewGroup, int i10);

    protected int pageStatusLayoutId() {
        return R.layout.item_page_load_state;
    }

    protected boolean tagCellAuto() {
        return true;
    }

    private void invalidateAdapter() {
        final int size = this.dataSource.getInitPage() != null ? this.dataSource.getInitPage().size() : 0;
        int itemCount = getItemCount();
        RecyclerView recyclerView = this.recyclerView;
        if (recyclerView == null || recyclerView.isComputingLayout()) {
            Utils.post(new Runnable() { // from class: com.narvii.paging.adapter.d
                @Override // java.lang.Runnable
                public final void run() {
                    this.f2566a.lambda$invalidateAdapter$2(size);
                }
            });
            return;
        }
        if (itemCount <= size) {
            notifyItemRangeRemoved(itemCount, (size - itemCount) + 1);
        } else {
            notifyItemRangeChanged(size, itemCount - size);
        }
        this.dataSetEventDispatcher.dispatch(new Callback() { // from class: com.narvii.paging.adapter.e
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                ((NVRecyclerViewBaseAdapter.DataSetChangeListener) obj).onDataSetChanged();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        this.dataSource.onErrorRetry();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public T getItem(int i10) {
        T t5 = (T) this.dataSource.getItem(i10);
        if (autoLoadNextPage() && (this.dataSource instanceof ContinuousSource) && i10 >= 0 && i10 < getItemCount()) {
            ((ContinuousSource) this.dataSource).loadAround(i10);
        }
        return t5;
    }

    public T getItemById(String str) {
        return (T) this.dataSource.getItemById(str);
    }

    public boolean isRequestEnd() {
        return this.pageDataSource.get_isEnd();
    }

    public void loadInitData() {
        this.dataSource.loadInitData();
    }

    public void loadNextPage(PageRequestCallback pageRequestCallback) {
        DataSource<T> dataSource = this.dataSource;
        if (dataSource instanceof ContinuousSource) {
            ((ContinuousSource) dataSource).loadNextPage(pageRequestCallback);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i10) {
        if (viewHolder instanceof PageLoadStateItemViewHolder) {
            ((PageLoadStateItemViewHolder) viewHolder).bind(this.dataSource.getPageLoadState(), this.retryListener);
            return;
        }
        onBindItemViewHolder(viewHolder, i10);
        View view = viewHolder.itemView;
        if (view != null && view.getTag(R.id._not_set_cell_tag) != Boolean.TRUE && tagCellAuto()) {
            tagCellForLog(viewHolder.itemView, getItem(i10));
        }
        NVContext nVContext = this.context;
        if (nVContext instanceof NVFragment) {
            PageViewUtils.onBindViewHolder((NVFragment) nVContext, viewHolder, i10);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public final RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i10) {
        if (i10 == 0) {
            PageLoadStateItemViewHolder pageLoadStateItemViewHolder = new PageLoadStateItemViewHolder(createPageLoadStatusView(viewGroup));
            pageLoadStateItemViewHolder.setDarkTheme(isDarkTheme());
            return pageLoadStateItemViewHolder;
        }
        RecyclerView.ViewHolder viewHolderOnCreateItemViewHolder = onCreateItemViewHolder(viewGroup, i10 - 1);
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

    @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void refresh(int i10, PageRequestCallback pageRequestCallback) {
        this.dataSource.refresh(i10, pageRequestCallback);
    }

    protected boolean showPageLoadingStatus() {
        return !this.dataSource.getPageLoadState().isLoaded();
    }

    public void updateItem(T t5) {
        int iUpdateItem = this.dataSource.updateItem(t5);
        if (iUpdateItem >= 0) {
            notifyItemChanged(iUpdateItem);
        }
    }

    public PagingRecyclerViewAdapter(NVContext nVContext, DataSource dataSource) {
        super(nVContext, dataSource);
        this.retryListener = new ErrorRetryListener() { // from class: com.narvii.paging.adapter.c
            @Override // com.narvii.paging.state.ErrorRetryListener
            public final void onErrorRetry() {
                this.f2565a.lambda$new$0();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$invalidateAdapter$2(int i10) {
        notifyItemRangeChanged(i10, getItemCount() - i10);
        this.dataSetEventDispatcher.dispatch(new Callback() { // from class: com.narvii.paging.adapter.f
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                ((NVRecyclerViewBaseAdapter.DataSetChangeListener) obj).onDataSetChanged();
            }
        });
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter
    public final DataSource<T> createDataSource(NVContext nVContext) {
        PageDataSource<T, E> pageDataSourceCreatePageDataSource = createPageDataSource(nVContext);
        this.pageDataSource = pageDataSourceCreatePageDataSource;
        return pageDataSourceCreatePageDataSource;
    }

    protected View createPageLoadStatusView(ViewGroup viewGroup) {
        return LayoutInflater.from(viewGroup.getContext()).inflate(pageStatusLayoutId(), viewGroup, false);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return getSize() + (showPageLoadingStatus() ? 1 : 0);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i10) {
        NVObject item = getItem(i10);
        if (getItemType(i10) == 0) {
            return System.currentTimeMillis();
        }
        if (item == null) {
            return 0L;
        }
        return item.hashCode();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemViewType(int i10) {
        if (showPageLoadingStatus() && i10 == getItemCount() - 1) {
            return 0;
        }
        return getItemType(i10) + 1;
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public final int getViewTypeCount() {
        return getItemViewTypeCount() + 2;
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.source.DataSourceChangeListener
    public void onPageListChanged(PageStorage pageStorage) {
        invalidateAdapter();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.source.DataSourceChangeListener
    public void onPageLoadStatusChanged() {
        invalidateAdapter();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(@NonNull RecyclerView.ViewHolder viewHolder) {
        super.onViewRecycled(viewHolder);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void resetEmptyList() {
        super.resetEmptyList();
        this.dataSource.resetDataSource();
        notifyDataSetChanged();
    }
}
