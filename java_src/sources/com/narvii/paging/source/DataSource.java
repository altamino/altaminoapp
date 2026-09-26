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
import kotlin.collections.v;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public abstract class DataSource<T extends NVObject> implements PageOperationCallback {

    @Nullable
    private EventDispatcher<DataSourceChangeListener> changeDispatcher;

    @Nullable
    private NVContext context;

    @Nullable
    private DataSourceInterceptor dataSourceInterceptor;

    @Nullable
    private final List<T> initPage;

    @NotNull
    private PageLoadState pageLoadState;

    @Nullable
    private final PageStorage<T> pageStorage;

    @Nullable
    private EventDispatcher<DataSourceRefreshListener> refreshDispatcher;

    public DataSource(@Nullable NVContext nVContext) {
        this(nVContext, null, new ListPageStorage());
    }

    private final void updatePageLoadState(int i10) {
        updatePageLoadState(i10, null);
    }

    @Nullable
    public final EventDispatcher<DataSourceChangeListener> getChangeDispatcher() {
        return this.changeDispatcher;
    }

    @Nullable
    public NVContext getContext() {
        return this.context;
    }

    @Nullable
    public DataSourceInterceptor getDataSourceInterceptor() {
        return this.dataSourceInterceptor;
    }

    @Nullable
    public final List<T> getInitPage() {
        return this.initPage;
    }

    @NotNull
    public final PageLoadState getPageLoadState() {
        return this.pageLoadState;
    }

    @Nullable
    public final PageStorage<T> getPageStorage() {
        return this.pageStorage;
    }

    @Nullable
    public final EventDispatcher<DataSourceRefreshListener> getRefreshDispatcher() {
        return this.refreshDispatcher;
    }

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
    public void onInitialized(int i10) {
    }

    @Override // com.narvii.paging.storage.PageOperationCallback
    public void onPageAppended(int i10) {
    }

    @Override // com.narvii.paging.storage.PageOperationCallback
    public void onPagePrepend(int i10) {
    }

    protected final void pageLoadBegin() {
        updatePageLoadState(0);
    }

    protected final void pageLoadFailed(@Nullable String str) {
        updatePageLoadState(2, str);
    }

    protected final void pageLoadFinished() {
        updatePageLoadState(1);
    }

    public abstract void refresh(int i10, @Nullable PageRequestCallback pageRequestCallback);

    public final void setChangeDispatcher(@Nullable EventDispatcher<DataSourceChangeListener> eventDispatcher) {
        this.changeDispatcher = eventDispatcher;
    }

    public void setContext(@Nullable NVContext nVContext) {
        this.context = nVContext;
    }

    public void setDataSourceInterceptor(@Nullable DataSourceInterceptor dataSourceInterceptor) {
        this.dataSourceInterceptor = dataSourceInterceptor;
    }

    public final void setPageLoadState(@NotNull PageLoadState pageLoadState) {
        t.j(pageLoadState, "<set-?>");
        this.pageLoadState = pageLoadState;
    }

    public final void setRefreshDispatcher(@Nullable EventDispatcher<DataSourceRefreshListener> eventDispatcher) {
        this.refreshDispatcher = eventDispatcher;
    }

    public DataSource(@Nullable NVContext nVContext, @Nullable List<? extends T> list) {
        this(nVContext, list, new ListPageStorage());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void notifyPageLoadStatusChange$lambda$0(DataSourceChangeListener dataSourceChangeListener) {
        if (dataSourceChangeListener != null) {
            dataSourceChangeListener.onPageLoadStatusChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void notifyPageSourceChange$lambda$1(DataSource this$0, DataSourceChangeListener dataSourceChangeListener) {
        t.j(this$0, "this$0");
        if (dataSourceChangeListener != null) {
            dataSourceChangeListener.onPageListChanged(this$0.pageStorage);
        }
    }

    private final void updatePageLoadState(int i10, String str) {
        PageLoadState pageLoadState = this.pageLoadState;
        if (pageLoadState.status == i10) {
            return;
        }
        pageLoadState.status = i10;
        pageLoadState.errorMessage = str;
        notifyPageLoadStatusChange();
    }

    public final void addDataSourceChangeListener(@Nullable DataSourceChangeListener dataSourceChangeListener) {
        EventDispatcher<DataSourceChangeListener> eventDispatcher = this.changeDispatcher;
        if (eventDispatcher != null) {
            eventDispatcher.addListener(dataSourceChangeListener);
        }
    }

    public final void addDataSourceRefreshListener(@Nullable DataSourceRefreshListener dataSourceRefreshListener) {
        EventDispatcher<DataSourceRefreshListener> eventDispatcher = this.refreshDispatcher;
        if (eventDispatcher != null) {
            eventDispatcher.addListener(dataSourceRefreshListener);
        }
    }

    public final void appendData(@NotNull List<? extends T> list, @Nullable PageOperationCallback pageOperationCallback) {
        t.j(list, "list");
        PageStorage<T> pageStorage = this.pageStorage;
        if (pageStorage != null) {
            pageStorage.appendPage(list, pageOperationCallback);
        }
    }

    @Nullable
    public T getItem(int i10) {
        PageStorage<T> pageStorage = this.pageStorage;
        if (pageStorage != null) {
            return pageStorage.get(i10);
        }
        return null;
    }

    @Nullable
    public final T getItemById(@NotNull String id) {
        t.j(id, "id");
        PageStorage<T> pageStorage = this.pageStorage;
        if (pageStorage != null) {
            return (T) pageStorage.getItemById(id);
        }
        return null;
    }

    public int getSize() {
        PageStorage<T> pageStorage = this.pageStorage;
        if (pageStorage != null) {
            return pageStorage.size();
        }
        return 0;
    }

    public final int initPageSize() {
        List<T> list = this.initPage;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    public boolean isEmpty() {
        PageStorage<T> pageStorage = this.pageStorage;
        if (pageStorage != null) {
            return pageStorage.isEmpty();
        }
        return true;
    }

    protected final void notifyPageLoadStatusChange() {
        EventDispatcher<DataSourceChangeListener> eventDispatcher = this.changeDispatcher;
        if (eventDispatcher != null) {
            eventDispatcher.dispatch(new Callback() { // from class: com.narvii.paging.source.a
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    DataSource.notifyPageLoadStatusChange$lambda$0((DataSourceChangeListener) obj);
                }
            });
        }
    }

    protected final void notifyPageSourceChange() {
        EventDispatcher<DataSourceChangeListener> eventDispatcher = this.changeDispatcher;
        if (eventDispatcher != null) {
            eventDispatcher.dispatch(new Callback() { // from class: com.narvii.paging.source.b
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    DataSource.notifyPageSourceChange$lambda$1(this.f2569a, (DataSourceChangeListener) obj);
                }
            });
        }
    }

    public final void prependData(@NotNull T obj, @Nullable PageOperationCallback pageOperationCallback) {
        t.j(obj, "obj");
        PageStorage<T> pageStorage = this.pageStorage;
        if (pageStorage != null) {
            pageStorage.prependPage(v.g(obj), false, pageOperationCallback);
        }
    }

    public final int removeData(@NotNull T obj) {
        t.j(obj, "obj");
        PageStorage<T> pageStorage = this.pageStorage;
        if (pageStorage != null) {
            return pageStorage.removeItem(obj);
        }
        return -1;
    }

    public final void removeDataSourceChangeListener(@Nullable DataSourceChangeListener dataSourceChangeListener) {
        EventDispatcher<DataSourceChangeListener> eventDispatcher = this.changeDispatcher;
        if (eventDispatcher != null) {
            eventDispatcher.removeListener(dataSourceChangeListener);
        }
    }

    public final void removeDataSourceRefreshListener(@Nullable DataSourceRefreshListener dataSourceRefreshListener) {
        EventDispatcher<DataSourceRefreshListener> eventDispatcher = this.refreshDispatcher;
        if (eventDispatcher != null) {
            eventDispatcher.removeListener(dataSourceRefreshListener);
        }
    }

    public void resetDataSource() {
        this.pageLoadState = new PageLoadState();
        PageStorage<T> pageStorage = this.pageStorage;
        if (pageStorage != null) {
            pageStorage.resetPageData();
        }
    }

    public final int updateItem(@NotNull T item) {
        t.j(item, "item");
        PageStorage<T> pageStorage = this.pageStorage;
        if (pageStorage != null) {
            return pageStorage.updateItem(item);
        }
        return -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DataSource(@Nullable NVContext nVContext, @Nullable List<? extends T> list, @Nullable PageStorage<T> pageStorage) {
        setContext(nVContext);
        this.initPage = list;
        this.pageStorage = pageStorage;
        this.pageLoadState = new PageLoadState();
        this.changeDispatcher = new EventDispatcher<>();
        this.refreshDispatcher = new EventDispatcher<>();
        if (pageStorage != null) {
            if (list == 0 || !(!list.isEmpty())) {
                return;
            }
            pageStorage.initPage(list, this);
            return;
        }
        throw new IllegalArgumentException("Page Storage is null");
    }
}
