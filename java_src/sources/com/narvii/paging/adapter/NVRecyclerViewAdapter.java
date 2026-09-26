package com.narvii.paging.adapter;

import android.view.View;
import com.narvii.app.NVContext;
import com.narvii.logging.Impression.ImpressionCollector;
import com.narvii.logging.Impression.ImpressionUtils;
import com.narvii.model.NVObject;
import com.narvii.paging.source.DataSource;
import com.narvii.paging.source.DataSourceChangeListener;
import com.narvii.paging.source.DataSourceRefreshListener;
import com.narvii.paging.source.PageRequestCallback;
import com.narvii.paging.storage.PageStorage;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes7.dex */
public abstract class NVRecyclerViewAdapter<T extends NVObject> extends NVRecyclerViewBaseAdapter implements DataSourceChangeListener, DataSourceRefreshListener {
    public static final String ACTION_DELETE = "delete";
    public static final String ACTION_NEW = "new";
    public static final String ACTION_UPDATE = "update";
    protected DataSource<T> dataSource;

    @Retention(RetentionPolicy.SOURCE)
    public @interface Action {
    }

    public NVRecyclerViewAdapter(NVContext nVContext) {
        this(nVContext, null);
    }

    protected boolean autoLoadInitData() {
        return true;
    }

    public boolean autoLoadNextPage() {
        return true;
    }

    public abstract DataSource<T> createDataSource(NVContext nVContext);

    public DataSource getDataSource() {
        return this.dataSource;
    }

    protected boolean onSubViewClicked(View view, View view2, int i10) {
        return false;
    }

    public NVRecyclerViewAdapter(NVContext nVContext, DataSource dataSource) {
        super(nVContext);
        if (dataSource != null) {
            dataSource.setContext(nVContext);
        }
        dataSource = dataSource == null ? createDataSource(nVContext) : dataSource;
        this.dataSource = dataSource;
        if (dataSource == null) {
            throw new IllegalArgumentException("no data source init in this adapter");
        }
    }

    public void editDataSource(String str, T t5) {
        if (t5 == null) {
            return;
        }
        if ("new".equals(str)) {
            if (this.dataSource.getPageStorage() == null || this.dataSource.getPageStorage().getPosition(t5) >= 0) {
                return;
            }
            this.dataSource.prependData(t5, null);
            notifyDataSetChanged();
            return;
        }
        if ("delete".equals(str)) {
            if (this.dataSource.removeData(t5) < 0) {
                return;
            }
            notifyDataSetChanged();
        } else {
            if (!"update".equals(str) || this.dataSource.updateItem(t5) < 0) {
                return;
            }
            notifyDataSetChanged();
        }
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public String getErrorMessage() {
        DataSource<T> dataSource = this.dataSource;
        if (dataSource == null || !dataSource.getPageLoadState().isFailed()) {
            return null;
        }
        return this.dataSource.getPageLoadState().errorMessage;
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public T getItem(int i10) {
        return (T) this.dataSource.getItem(i10);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public int getSize() {
        return this.dataSource.getSize();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean isEmpty() {
        DataSource<T> dataSource = this.dataSource;
        if (dataSource == null || !dataSource.getPageLoadState().isLoaded()) {
            return false;
        }
        return this.dataSource.isEmpty();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean isLoading() {
        DataSource<T> dataSource = this.dataSource;
        return dataSource != null && dataSource.getPageLoadState().status == 0;
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void onErrorRetry() {
        DataSource<T> dataSource = this.dataSource;
        if (dataSource != null) {
            dataSource.onErrorRetry();
        }
    }

    public void onRefreshFinishedBeforePageResponse(int i10) {
        ImpressionCollector impressionCollector = this.mainIpc;
        if (impressionCollector != null) {
            ImpressionUtils.clearImpression(impressionCollector, this.context);
        }
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void refresh(int i10, PageRequestCallback pageRequestCallback) {
        DataSource<T> dataSource = this.dataSource;
        if (dataSource != null) {
            dataSource.refresh(i10, pageRequestCallback);
        }
    }

    public void setDataSource(DataSource dataSource) {
        if (dataSource == null) {
            return;
        }
        DataSource<T> dataSource2 = this.dataSource;
        if (dataSource2 != null) {
            dataSource2.removeDataSourceChangeListener(this);
            this.dataSource.resetDataSource();
        }
        this.dataSource = dataSource;
        dataSource.addDataSourceChangeListener(this);
        if (autoLoadInitData()) {
            this.dataSource.loadInitData();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return getSize();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean isListShow() {
        if (getSize() > 0) {
            return true;
        }
        return false;
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void onAttach() {
        super.onAttach();
        DataSource<T> dataSource = this.dataSource;
        if (dataSource != null) {
            dataSource.addDataSourceChangeListener(this);
            this.dataSource.addDataSourceRefreshListener(this);
            if (autoLoadInitData()) {
                this.dataSource.loadInitData();
            }
        }
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void onDetach() {
        super.onDetach();
        DataSource<T> dataSource = this.dataSource;
        if (dataSource != null) {
            dataSource.removeDataSourceChangeListener(this);
            this.dataSource.removeDataSourceRefreshListener(this);
        }
    }

    @Override // com.narvii.paging.source.DataSourceChangeListener
    public void onPageListChanged(PageStorage pageStorage) {
        notifyDataSetChanged();
        this.dataSetEventDispatcher.dispatch(new a());
    }

    @Override // com.narvii.paging.source.DataSourceChangeListener
    public void onPageLoadStatusChanged() {
        notifyDataSetChanged();
        this.dataSetEventDispatcher.dispatch(new a());
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void resetList() {
        super.resetList();
        this.dataSource.resetDataSource();
        notifyDataSetChanged();
        if (this.attached) {
            this.dataSource.loadInitData();
        }
        ImpressionCollector impressionCollector = this.mainIpc;
        if (impressionCollector != null) {
            ImpressionUtils.clearImpression(impressionCollector, this.context);
        }
    }
}
