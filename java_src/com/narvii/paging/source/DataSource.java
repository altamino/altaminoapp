package com.narvii.paging.source;

import com.narvii.app.NVContext;
import com.narvii.model.NVObject;
import com.narvii.paging.state.PageLoadState;
import com.narvii.paging.storage.ListPageStorage;
import com.narvii.paging.storage.PageOperationCallback;
import com.narvii.paging.storage.PageStorage;
import com.narvii.util.Callback;
import com.narvii.util.EventDispatcher;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DataSource.kt */
/* loaded from: classes3.dex */
public abstract class DataSource<T extends NVObject> implements PageOperationCallback {
    private EventDispatcher<DataSourceChangeListener> changeDispatcher;
    private NVContext context;
    private DataSourceInterceptor dataSourceInterceptor;
    private final List<T> initPage;
    private PageLoadState pageLoadState;
    private final PageStorage<T> pageStorage;
    private EventDispatcher<DataSourceRefreshListener> refreshDispatcher;

    public void loadInitData() {
    }

    @Override // com.narvii.paging.storage.PageOperationCallback
    public void onEmptyPageAppended() {
    }

    @Override // com.narvii.paging.storage.PageOperationCallback
    public void onEmptyPagePrepend() {
    }

    public abstract void onErrorRetry();

    @Override // com.narvii.paging.storage.PageOperationCallback
    public void onInitialized(int i) {
    }

    @Override // com.narvii.paging.storage.PageOperationCallback
    public void onPageAppended(int i) {
    }

    @Override // com.narvii.paging.storage.PageOperationCallback
    public void onPagePrepend(int i) {
    }

    public abstract void refresh(int i, PageRequestCallback pageRequestCallback);

    public NVContext getContext() {
        return this.context;
    }

    public void setContext(NVContext nVContext) {
        this.context = nVContext;
    }

    public final List<T> getInitPage() {
        return this.initPage;
    }

    public final PageStorage<T> getPageStorage() {
        return this.pageStorage;
    }

    public final PageLoadState getPageLoadState() {
        return this.pageLoadState;
    }

    public final void setPageLoadState(PageLoadState pageLoadState) {
        Intrinsics.checkParameterIsNotNull(pageLoadState, "<set-?>");
        this.pageLoadState = pageLoadState;
    }

    public final EventDispatcher<DataSourceChangeListener> getChangeDispatcher() {
        return this.changeDispatcher;
    }

    public final void setChangeDispatcher(EventDispatcher<DataSourceChangeListener> eventDispatcher) {
        this.changeDispatcher = eventDispatcher;
    }

    public final EventDispatcher<DataSourceRefreshListener> getRefreshDispatcher() {
        return this.refreshDispatcher;
    }

    public final void setRefreshDispatcher(EventDispatcher<DataSourceRefreshListener> eventDispatcher) {
        this.refreshDispatcher = eventDispatcher;
    }

    public DataSourceInterceptor getDataSourceInterceptor() {
        return this.dataSourceInterceptor;
    }

    public void setDataSourceInterceptor(DataSourceInterceptor dataSourceInterceptor) {
        this.dataSourceInterceptor = dataSourceInterceptor;
    }

    public DataSource(NVContext nVContext) {
        this(nVContext, null, new ListPageStorage());
    }

    public DataSource(NVContext nVContext, List<? extends T> list) {
        this(nVContext, list, new ListPageStorage());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DataSource(NVContext nVContext, List<? extends T> list, PageStorage<T> pageStorage) {
        setContext(nVContext);
        this.initPage = list;
        this.pageStorage = pageStorage;
        this.pageLoadState = new PageLoadState();
        this.changeDispatcher = new EventDispatcher<>();
        this.refreshDispatcher = new EventDispatcher<>();
        if (this.pageStorage == null) {
            throw new IllegalArgumentException("Page Storage is null");
        }
        if (this.initPage == null || !(!r1.isEmpty())) {
            return;
        }
        this.pageStorage.initPage(list, this);
    }

    public final void addDataSourceChangeListener(DataSourceChangeListener dataSourceChangeListener) {
        EventDispatcher<DataSourceChangeListener> eventDispatcher = this.changeDispatcher;
        if (eventDispatcher != null) {
            eventDispatcher.addListener(dataSourceChangeListener);
        }
    }

    public final void removeDataSourceChangeListener(DataSourceChangeListener dataSourceChangeListener) {
        EventDispatcher<DataSourceChangeListener> eventDispatcher = this.changeDispatcher;
        if (eventDispatcher != null) {
            eventDispatcher.removeListener(dataSourceChangeListener);
        }
    }

    public final void addDataSourceRefreshListener(DataSourceRefreshListener dataSourceRefreshListener) {
        EventDispatcher<DataSourceRefreshListener> eventDispatcher = this.refreshDispatcher;
        if (eventDispatcher != null) {
            eventDispatcher.addListener(dataSourceRefreshListener);
        }
    }

    public final void removeDataSourceRefreshListener(DataSourceRefreshListener dataSourceRefreshListener) {
        EventDispatcher<DataSourceRefreshListener> eventDispatcher = this.refreshDispatcher;
        if (eventDispatcher != null) {
            eventDispatcher.removeListener(dataSourceRefreshListener);
        }
    }

    public int getSize() {
        PageStorage<T> pageStorage = this.pageStorage;
        if (pageStorage != null) {
            return pageStorage.size();
        }
        return 0;
    }

    public T getItem(int i) {
        PageStorage<T> pageStorage = this.pageStorage;
        if (pageStorage != null) {
            return pageStorage.get(i);
        }
        return null;
    }

    public final T getItemById(String id) {
        Intrinsics.checkParameterIsNotNull(id, "id");
        PageStorage<T> pageStorage = this.pageStorage;
        if (pageStorage != null) {
            return (T) pageStorage.getItemById(id);
        }
        return null;
    }

    public final int initPageSize() {
        List<T> list = this.initPage;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    public void resetDataSource() {
        this.pageLoadState = new PageLoadState();
        PageStorage<T> pageStorage = this.pageStorage;
        if (pageStorage != null) {
            pageStorage.resetPageData();
        }
    }

    public boolean isEmpty() {
        PageStorage<T> pageStorage = this.pageStorage;
        if (pageStorage != null) {
            return pageStorage.isEmpty();
        }
        return true;
    }

    public final int updateItem(T item) {
        Intrinsics.checkParameterIsNotNull(item, "item");
        PageStorage<T> pageStorage = this.pageStorage;
        if (pageStorage != null) {
            return pageStorage.updateItem(item);
        }
        return -1;
    }

    protected final void pageLoadBegin() {
        updatePageLoadState(0);
    }

    protected final void pageLoadFinished() {
        updatePageLoadState(1);
    }

    protected final void pageLoadFailed(String str) {
        updatePageLoadState(2, str);
    }

    private final void updatePageLoadState(int i) {
        updatePageLoadState(i, null);
    }

    private final void updatePageLoadState(int i, String str) {
        PageLoadState pageLoadState = this.pageLoadState;
        if (pageLoadState.status == i) {
            return;
        }
        pageLoadState.status = i;
        pageLoadState.errorMessage = str;
        notifyPageLoadStatusChange();
    }

    protected final void notifyPageLoadStatusChange() {
        EventDispatcher<DataSourceChangeListener> eventDispatcher = this.changeDispatcher;
        if (eventDispatcher != null) {
            eventDispatcher.dispatch(new Callback<DataSourceChangeListener>() { // from class: com.narvii.paging.source.DataSource.notifyPageLoadStatusChange.1
                @Override // com.narvii.util.Callback
                public final void call(DataSourceChangeListener dataSourceChangeListener) {
                    if (dataSourceChangeListener != null) {
                        dataSourceChangeListener.onPageLoadStatusChanged();
                    }
                }
            });
        }
    }

    protected final void notifyPageSourceChange() {
        EventDispatcher<DataSourceChangeListener> eventDispatcher = this.changeDispatcher;
        if (eventDispatcher != null) {
            eventDispatcher.dispatch(new Callback<DataSourceChangeListener>() { // from class: com.narvii.paging.source.DataSource.notifyPageSourceChange.1
                @Override // com.narvii.util.Callback
                public final void call(DataSourceChangeListener dataSourceChangeListener) {
                    if (dataSourceChangeListener != null) {
                        dataSourceChangeListener.onPageListChanged(DataSource.this.getPageStorage());
                    }
                }
            });
        }
    }

    public final void appendData(List<? extends T> list, PageOperationCallback pageOperationCallback) {
        Intrinsics.checkParameterIsNotNull(list, "list");
        PageStorage<T> pageStorage = this.pageStorage;
        if (pageStorage != null) {
            pageStorage.appendPage(list, pageOperationCallback);
        }
    }

    public final void prependData(T obj, PageOperationCallback pageOperationCallback) {
        Intrinsics.checkParameterIsNotNull(obj, "obj");
        PageStorage<T> pageStorage = this.pageStorage;
        if (pageStorage != null) {
            pageStorage.prependPage(CollectionsKt__CollectionsKt.arrayListOf(obj), false, pageOperationCallback);
        }
    }

    public final int removeData(T obj) {
        Intrinsics.checkParameterIsNotNull(obj, "obj");
        PageStorage<T> pageStorage = this.pageStorage;
        if (pageStorage != null) {
            return pageStorage.removeItem(obj);
        }
        return -1;
    }
}
