package com.narvii.paging.adapter;

import android.view.View;
import com.narvii.app.NVContext;
import com.narvii.logging.Impression.ImpressionCollector;
import com.narvii.logging.Impression.ImpressionUtils;
import com.narvii.model.NVObject;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.source.DataSource;
import com.narvii.paging.source.DataSourceChangeListener;
import com.narvii.paging.source.DataSourceRefreshListener;
import com.narvii.paging.source.PageRequestCallback;
import com.narvii.paging.storage.PageStorage;
import com.narvii.util.Callback;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes3.dex */
public abstract class NVRecyclerViewAdapter<T extends NVObject> extends NVRecyclerViewBaseAdapter implements DataSourceChangeListener, DataSourceRefreshListener {
    public static final String ACTION_DELETE = "delete";
    public static final String ACTION_NEW = "new";
    public static final String ACTION_UPDATE = "update";
    protected DataSource<T> dataSource;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface Action {
    }

    protected boolean autoLoadInitData() {
        return true;
    }

    public boolean autoLoadNextPage() {
        return true;
    }

    public abstract DataSource<T> createDataSource(NVContext nVContext);

    protected boolean onSubViewClicked(View view, View view2, int i) {
        return false;
    }

    public NVRecyclerViewAdapter(NVContext nVContext) {
        this(nVContext, null);
    }

    public NVRecyclerViewAdapter(NVContext nVContext, DataSource dataSource) {
        super(nVContext);
        if (dataSource != null) {
            dataSource.setContext(nVContext);
        }
        this.dataSource = dataSource == null ? createDataSource(nVContext) : dataSource;
        if (this.dataSource == null) {
            throw new IllegalArgumentException("no data source init in this adapter");
        }
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
        this.dataSource.addDataSourceChangeListener(this);
        if (autoLoadInitData()) {
            this.dataSource.loadInitData();
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

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void refresh(int i, PageRequestCallback pageRequestCallback) {
        DataSource<T> dataSource = this.dataSource;
        if (dataSource != null) {
            dataSource.refresh(i, pageRequestCallback);
        }
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public int getSize() {
        return this.dataSource.getSize();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public T getItem(int i) {
        return (T) this.dataSource.getItem(i);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return getSize();
    }

    @Override // com.narvii.paging.source.DataSourceChangeListener
    public void onPageListChanged(PageStorage pageStorage) {
        notifyDataSetChanged();
        this.dataSetEventDispatcher.dispatch(new Callback() { // from class: com.narvii.paging.adapter.-$$Lambda$NVRecyclerViewAdapter$aOS2opYbAs8_HXWDVnFZSkyrS0k
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                ((NVRecyclerViewBaseAdapter.DataSetChangeListener) obj).onDataSetChanged();
            }
        });
    }

    @Override // com.narvii.paging.source.DataSourceChangeListener
    public void onPageLoadStatusChanged() {
        notifyDataSetChanged();
        this.dataSetEventDispatcher.dispatch(new Callback() { // from class: com.narvii.paging.adapter.-$$Lambda$NVRecyclerViewAdapter$a66cyfK4xGc9VKjjH3h3TGOE69Q
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                ((NVRecyclerViewBaseAdapter.DataSetChangeListener) obj).onDataSetChanged();
            }
        });
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean isLoading() {
        DataSource<T> dataSource = this.dataSource;
        return dataSource != null && dataSource.getPageLoadState().status == 0;
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
    public String getErrorMessage() {
        DataSource<T> dataSource = this.dataSource;
        if (dataSource == null || !dataSource.getPageLoadState().isFailed()) {
            return null;
        }
        return this.dataSource.getPageLoadState().errorMessage;
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean isListShow() {
        return getSize() > 0;
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public void onErrorRetry() {
        DataSource<T> dataSource = this.dataSource;
        if (dataSource != null) {
            dataSource.onErrorRetry();
        }
    }

    public void editDataSource(String str, T t) {
        if (t == null) {
            return;
        }
        if ("new".equals(str)) {
            if (this.dataSource.getPageStorage() == null || this.dataSource.getPageStorage().getPosition(t) >= 0) {
                return;
            }
            this.dataSource.prependData(t, null);
            notifyDataSetChanged();
            return;
        }
        if ("delete".equals(str)) {
            if (this.dataSource.removeData(t) < 0) {
                return;
            }
            notifyDataSetChanged();
        } else {
            if (!"update".equals(str) || this.dataSource.updateItem(t) < 0) {
                return;
            }
            notifyDataSetChanged();
        }
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

    public void onRefreshFinishedBeforePageResponse(int i) {
        ImpressionCollector impressionCollector = this.mainIpc;
        if (impressionCollector != null) {
            ImpressionUtils.clearImpression(impressionCollector, this.context);
        }
    }

    public DataSource getDataSource() {
        return this.dataSource;
    }
}
