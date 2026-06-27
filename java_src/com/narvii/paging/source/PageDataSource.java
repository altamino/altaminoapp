package com.narvii.paging.source;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.narvii.app.NVContext;
import com.narvii.model.NVObject;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.ListResponse;
import com.narvii.paging.source.ContinuousSource;
import com.narvii.paging.storage.ListPageStorage;
import com.narvii.paging.storage.PageStorage;
import com.narvii.util.Callback;
import com.narvii.util.EventDispatcher;
import com.narvii.util.FilterHelper;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.Tag;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PageDataSource.kt */
/* loaded from: classes3.dex */
public abstract class PageDataSource<T extends NVObject, E extends ListResponse<? extends T>> extends DataSource<T> implements ContinuousSource {
    private final int DIRECTION_NEXT;
    private final int DIRECTION_NONE;
    private final int DIRECTION_PREV;
    private final int DIRECTION_REFRESH;
    private final Tag REQ_TAG_FROM_START;
    private final Tag REQ_TAG_SIZE;
    private final Tag REQ_TAG_START;
    private final String TAG;
    private boolean _isEnd;
    private String _nextPageToken;
    private String _prevPageToken;
    private String _refreshPageToken;
    private int _start;
    private String _stopTime;
    private final ApiService apiService;
    private final PagingConfiguration config;
    private int direction;
    private boolean firstRequestSent;
    private int refreshFlag;
    private ApiRequest request;
    private PageRequestCallback requestCallback;
    private ApiResponseListener<E> responseListener;

    protected abstract ApiRequest createRequest();

    public final int getAppendItemRequested$Lib_release(int i, int i2, int i3) {
        return ((i + i2) + 1) - i3;
    }

    protected abstract Class<E> responseType();

    public final Tag getREQ_TAG_START() {
        return this.REQ_TAG_START;
    }

    /* compiled from: PageDataSource.kt */
    public enum DIRECTION {
        DIRECTION_NONE(0),
        DIRECTION_PRE(-1),
        DIRECTION_NEXT(1),
        DIRECTION_REFRESH(2);

        private final int d;

        DIRECTION(int i) {
            this.d = i;
        }

        public final int getD() {
            return this.d;
        }
    }

    public final ApiService getApiService() {
        return this.apiService;
    }

    public final int getDirection() {
        return this.direction;
    }

    public final void setDirection(int i) {
        this.direction = i;
    }

    public final int getRefreshFlag() {
        return this.refreshFlag;
    }

    public final void setRefreshFlag(int i) {
        this.refreshFlag = i;
    }

    public final boolean get_isEnd() {
        return this._isEnd;
    }

    public final void set_isEnd(boolean z) {
        this._isEnd = z;
    }

    public final PagingConfiguration getConfig() {
        return this.config;
    }

    public final PageRequestCallback getRequestCallback() {
        return this.requestCallback;
    }

    public final void setRequestCallback(PageRequestCallback pageRequestCallback) {
        this.requestCallback = pageRequestCallback;
    }

    public final ApiRequest getRequest() {
        return this.request;
    }

    public final void setRequest(ApiRequest apiRequest) {
        this.request = apiRequest;
    }

    public final String get_prevPageToken() {
        return this._prevPageToken;
    }

    public final void set_prevPageToken(String str) {
        this._prevPageToken = str;
    }

    public final String get_nextPageToken() {
        return this._nextPageToken;
    }

    public final void set_nextPageToken(String str) {
        this._nextPageToken = str;
    }

    public final String get_refreshPageToken() {
        return this._refreshPageToken;
    }

    public final void set_refreshPageToken(String str) {
        this._refreshPageToken = str;
    }

    public final int get_start() {
        return this._start;
    }

    public final void set_start(int i) {
        this._start = i;
    }

    public final String get_stopTime() {
        return this._stopTime;
    }

    public final void set_stopTime(String str) {
        this._stopTime = str;
    }

    public final boolean getFirstRequestSent() {
        return this.firstRequestSent;
    }

    public final void setFirstRequestSent(boolean z) {
        this.firstRequestSent = z;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public PageDataSource(NVContext nVContext) {
        PagingConfiguration pagingConfiguration = PagingConfiguration.TOKEN_CONFIG;
        Intrinsics.checkExpressionValueIsNotNull(pagingConfiguration, "PagingConfiguration.TOKEN_CONFIG");
        this(nVContext, null, pagingConfiguration);
    }

    public PageDataSource(NVContext nVContext, List<? extends T> list) {
        ListPageStorage listPageStorage = new ListPageStorage();
        PagingConfiguration pagingConfiguration = PagingConfiguration.TOKEN_CONFIG;
        Intrinsics.checkExpressionValueIsNotNull(pagingConfiguration, "PagingConfiguration.TOKEN_CONFIG");
        this(nVContext, list, listPageStorage, pagingConfiguration);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PageDataSource(NVContext nVContext, List<? extends T> list, PagingConfiguration config) {
        this(nVContext, list, new ListPageStorage(), config);
        Intrinsics.checkParameterIsNotNull(config, "config");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PageDataSource(NVContext nVContext, List<? extends T> list, PageStorage<T> pageStorage, PagingConfiguration config) {
        super(nVContext, list, pageStorage);
        Intrinsics.checkParameterIsNotNull(config, "config");
        String simpleName = PageDataSource.class.getSimpleName();
        Intrinsics.checkExpressionValueIsNotNull(simpleName, "PageDataSource::class.java.simpleName");
        this.TAG = simpleName;
        this.DIRECTION_NEXT = 1;
        this.DIRECTION_PREV = -1;
        this.DIRECTION_REFRESH = 2;
        this.REQ_TAG_FROM_START = new Tag("reqFromStart");
        this.REQ_TAG_SIZE = new Tag("reqSize");
        this.REQ_TAG_START = new Tag("reqStart");
        this.direction = this.DIRECTION_NONE;
        final Class<E> clsResponseType = responseType();
        this.responseListener = (ApiResponseListener<E>) new ApiResponseListener<E>(clsResponseType) { // from class: com.narvii.paging.source.PageDataSource$responseListener$1
            /* JADX WARN: Incorrect types in method signature: (Lcom/narvii/util/http/ApiRequest;TE;)V */
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest req, ListResponse resp) throws Exception {
                EventDispatcher<DataSourceRefreshListener> refreshDispatcher;
                Intrinsics.checkParameterIsNotNull(req, "req");
                Intrinsics.checkParameterIsNotNull(resp, "resp");
                super.onFinish(req, (ApiRequest) resp);
                final int direction = this.this$0.getDirection();
                PageRequestCallback requestCallback = this.this$0.getRequestCallback();
                this.this$0.prepareNewRequestContext();
                this.this$0.getPageLoadState().status = 1;
                this.this$0.getPageLoadState().errorMessage = null;
                if (direction == this.this$0.DIRECTION_REFRESH && (refreshDispatcher = this.this$0.getRefreshDispatcher()) != null) {
                    refreshDispatcher.dispatch(new Callback<DataSourceRefreshListener>() { // from class: com.narvii.paging.source.PageDataSource$responseListener$1$onFinish$1
                        @Override // com.narvii.util.Callback
                        public final void call(DataSourceRefreshListener dataSourceRefreshListener) {
                            dataSourceRefreshListener.onRefreshFinishedBeforePageResponse(direction);
                        }
                    });
                }
                boolean zAreEqual = Intrinsics.areEqual(req.tag(this.this$0.REQ_TAG_FROM_START), (Object) true);
                this.this$0.onPageResponse(req, resp, direction);
                if (zAreEqual) {
                    this.this$0.setFirstPageRequestFinished();
                }
                this.this$0.setRefreshFlag(0);
                if (requestCallback != null) {
                    requestCallback.onPageRequestFinished(0);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<? extends NameValuePair> list2, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list2, str, apiResponse, th);
                int direction = this.this$0.getDirection();
                PageRequestCallback requestCallback = this.this$0.getRequestCallback();
                this.this$0.prepareNewRequestContext();
                this.this$0.pageLoadFailed(str);
                this.this$0.onFailResponse(apiRequest, str, apiResponse, direction);
                if (Intrinsics.areEqual(apiRequest != null ? apiRequest.tag(this.this$0.REQ_TAG_FROM_START) : null, (Object) true)) {
                    this.this$0.setFirstPageRequestFinished();
                }
                this.this$0.setRefreshFlag(0);
                if (requestCallback != null) {
                    requestCallback.onPageRequestFinished(1);
                }
            }
        };
        this.apiService = nVContext != null ? (ApiService) nVContext.getService("api") : null;
        this.config = config;
    }

    @Override // com.narvii.paging.source.DataSource
    public void resetDataSource() {
        this._nextPageToken = null;
        this._prevPageToken = null;
        this._refreshPageToken = null;
        this._isEnd = false;
        this._start = 0;
        this._stopTime = null;
        ApiRequest apiRequest = this.request;
        if (apiRequest != null) {
            ApiService apiService = this.apiService;
            if (apiService != null) {
                apiService.abort(apiRequest);
            }
            this.request = null;
        }
        PageRequestCallback pageRequestCallback = this.requestCallback;
        if (pageRequestCallback != null) {
            pageRequestCallback.onPageRequestFinished(2);
        }
        this.requestCallback = null;
        this.direction = this.DIRECTION_NONE;
        this.refreshFlag = 0;
        this.firstRequestSent = false;
        super.resetDataSource();
    }

    @Override // com.narvii.paging.source.DataSource
    public void loadInitData() {
        super.loadInitData();
        loadFirstPage$default(this, false, null, 3, null);
    }

    @Override // com.narvii.paging.source.DataSource
    public void refresh(int i, PageRequestCallback pageRequestCallback) {
        this.refreshFlag = i;
        loadFirstPage(true, pageRequestCallback);
    }

    public static /* synthetic */ void loadFirstPage$default(PageDataSource pageDataSource, boolean z, PageRequestCallback pageRequestCallback, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: loadFirstPage");
        }
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            pageRequestCallback = null;
        }
        pageDataSource.loadFirstPage(z, pageRequestCallback);
    }

    public final void loadFirstPage(boolean z, PageRequestCallback pageRequestCallback) {
        ApiService apiService;
        ApiRequest apiRequest = this.request;
        if (apiRequest != null && (apiService = this.apiService) != null) {
            apiService.abort(apiRequest);
        }
        this.request = generateNewRequest$default(this, this.DIRECTION_REFRESH, false, 2, null);
        if (this.request == null) {
            this.direction = this.DIRECTION_NONE;
            if (pageRequestCallback != null) {
                pageRequestCallback.onPageRequestFinished(0);
                return;
            }
            return;
        }
        PageRequestCallback pageRequestCallback2 = this.requestCallback;
        if (pageRequestCallback2 != null) {
            pageRequestCallback2.onPageRequestFinished(2);
        }
        this.requestCallback = pageRequestCallback;
        if (z) {
            this.direction = this.DIRECTION_REFRESH;
        } else {
            this.refreshFlag = 0;
            this.direction = this.DIRECTION_NONE;
        }
        executeRequest();
    }

    @Override // com.narvii.paging.source.DataSource
    public void onErrorRetry() {
        pageLoadBegin();
        if (this.direction == this.DIRECTION_PREV) {
            ContinuousSource.DefaultImpls.loadPrevPage$default(this, null, 1, null);
        } else {
            ContinuousSource.DefaultImpls.loadNextPage$default(this, null, 1, null);
        }
    }

    @Override // com.narvii.paging.source.DataSource
    public boolean isEmpty() {
        return super.isEmpty() && this._isEnd;
    }

    @Override // com.narvii.paging.source.ContinuousSource
    public void loadAround(int i) {
        if (getSize() != 0 && getAppendItemRequested$Lib_release(i, this.config.prefetchDistance, getSize()) > 0) {
            ContinuousSource.DefaultImpls.loadNextPage$default(this, null, 1, null);
        }
    }

    public boolean loadNextPage(PageRequestCallback pageRequestCallback) {
        if (this.request != null || this._isEnd || getPageLoadState().isFailed()) {
            return false;
        }
        this.request = generateNewRequest$default(this, this.DIRECTION_NEXT, false, 2, null);
        if (this.request == null) {
            this.direction = this.DIRECTION_NONE;
            pageLoadFinished();
            return false;
        }
        PageRequestCallback pageRequestCallback2 = this.requestCallback;
        if (pageRequestCallback2 != null) {
            pageRequestCallback2.onPageRequestFinished(2);
        }
        this.direction = this.DIRECTION_NEXT;
        this.requestCallback = pageRequestCallback;
        this.refreshFlag = 0;
        executeRequest();
        return true;
    }

    @Override // com.narvii.paging.source.ContinuousSource
    public boolean loadPrevPage(PageRequestCallback pageRequestCallback) {
        if (this._prevPageToken == null) {
            return false;
        }
        if (this.config.paginationType != 0) {
            throw new IllegalStateException("only token pagination is supported!");
        }
        this.request = generateNewRequest$default(this, this.DIRECTION_PREV, false, 2, null);
        if (this.request == null) {
            this.direction = this.DIRECTION_NONE;
            pageLoadFinished();
            return false;
        }
        PageRequestCallback pageRequestCallback2 = this.requestCallback;
        if (pageRequestCallback2 != null) {
            pageRequestCallback2.onPageRequestFinished(2);
        }
        this.direction = this._prevPageToken == null ? this.DIRECTION_NONE : this.DIRECTION_PREV;
        this.requestCallback = pageRequestCallback;
        this.refreshFlag = 0;
        executeRequest();
        return true;
    }

    public static /* synthetic */ ApiRequest generateNewRequest$default(PageDataSource pageDataSource, int i, boolean z, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: generateNewRequest");
        }
        if ((i2 & 2) != 0) {
            z = false;
        }
        return pageDataSource.generateNewRequest(i, z);
    }

    public final ApiRequest generateNewRequest(int i, boolean z) {
        ApiRequest interceptedRequest;
        int i2;
        PageStorage<T> pageStorage;
        ApiRequest apiRequestCreateRequest = createRequest();
        String str = null;
        if (apiRequestCreateRequest == null) {
            return null;
        }
        DataSourceInterceptor dataSourceInterceptor = getDataSourceInterceptor();
        if (dataSourceInterceptor == null || (interceptedRequest = dataSourceInterceptor.getInterceptedRequest(apiRequestCreateRequest)) == null) {
            interceptedRequest = apiRequestCreateRequest;
        }
        ApiRequest.Builder builderEdit = interceptedRequest.edit();
        builderEdit.param("size", Integer.valueOf(this.config.pageSize));
        int i3 = this.config.paginationType;
        builderEdit.tag(this.REQ_TAG_FROM_START, Boolean.valueOf(i3 == 0 ? this._nextPageToken == null : !(i3 == 1 ? this._start != 0 : (pageStorage = getPageStorage()) == null || pageStorage.size() != 0)));
        int i4 = this.config.paginationType;
        if (i4 == 0) {
            builderEdit.param("pagingType", "t");
            if (i == this.DIRECTION_PREV) {
                str = this._prevPageToken;
            } else if (i != this.DIRECTION_REFRESH) {
                str = this._nextPageToken;
            } else if ((this.refreshFlag & 2) != 2) {
                str = this._refreshPageToken;
            }
            if (str != null) {
                builderEdit.param("pageToken", str);
            }
        } else if (i4 == 1) {
            if (i == this.DIRECTION_PREV) {
                Log.e(this.TAG, "load pre page is not support in this paginationType");
                return null;
            }
            if (i == this.DIRECTION_REFRESH) {
                builderEdit.tag(this.REQ_TAG_FROM_START, true);
                i2 = 0;
            } else {
                i2 = this._start;
                str = this._stopTime;
            }
            String str2 = this.config.offsetStepKey;
            builderEdit.param(str2 == null || str2.length() == 0 ? "size" : this.config.offsetStepKey, Integer.valueOf(this.config.pageSize));
            String str3 = this.config.offsetStartKey;
            builderEdit.param(str3 == null || str3.length() == 0 ? TtmlNode.START : this.config.offsetStartKey, Integer.valueOf(i2));
            builderEdit.tag(this.REQ_TAG_START, Integer.valueOf(this._start));
            if (str != null) {
                builderEdit.param("stoptime", str);
            }
        }
        HashMap<Object, Object> tags = apiRequestCreateRequest.getTags();
        if (tags != null) {
            for (Map.Entry<Object, Object> entry : tags.entrySet()) {
                builderEdit.tag(entry.getKey(), entry.getValue());
            }
        }
        return builderEdit.build();
    }

    public final void executeRequest() {
        pageLoadBegin();
        ApiService apiService = this.apiService;
        if (apiService != null) {
            apiService.exec(this.request, this.responseListener);
        }
    }

    @Override // com.narvii.paging.source.DataSource, com.narvii.paging.storage.PageOperationCallback
    public void onEmptyPageAppended() {
        super.onEmptyPageAppended();
        ContinuousSource.DefaultImpls.loadNextPage$default(this, null, 1, null);
    }

    @Override // com.narvii.paging.source.DataSource, com.narvii.paging.storage.PageOperationCallback
    public void onEmptyPagePrepend() {
        super.onEmptyPagePrepend();
        ContinuousSource.DefaultImpls.loadPrevPage$default(this, null, 1, null);
    }

    public List<T> filterResponseList(List<? extends T> list) {
        return new FilterHelper(getContext()).filter(list);
    }

    public void onPageResponse(ApiRequest req, E resp, int i) {
        Intrinsics.checkParameterIsNotNull(req, "req");
        Intrinsics.checkParameterIsNotNull(resp, "resp");
        boolean zAreEqual = Intrinsics.areEqual(req.tag(this.REQ_TAG_FROM_START), (Object) true);
        List<? extends T> list = resp.list();
        if (!(list instanceof List)) {
            list = null;
        }
        List<T> listFilterResponseList = filterResponseList(list);
        PagingConfiguration pagingConfiguration = this.config;
        int i2 = pagingConfiguration.paginationType;
        if (i2 != 0) {
            if (i2 == 1) {
                int i3 = pagingConfiguration.pageSize;
                if (i == this.DIRECTION_REFRESH) {
                    PageStorage<T> pageStorage = getPageStorage();
                    if ((pageStorage != null ? pageStorage.size() : 0) <= i3 || (this.refreshFlag & 1) == 1) {
                        PageStorage<T> pageStorage2 = getPageStorage();
                        if (pageStorage2 != null) {
                            pageStorage2.initPage(listFilterResponseList, this);
                        }
                        this._start = i3;
                        List<T> list2 = resp.list();
                        this._isEnd = (list2 == null || (list2.isEmpty() ^ true)) ? false : true;
                        this._stopTime = resp.timestamp;
                    } else {
                        PageStorage<T> pageStorage3 = getPageStorage();
                        Boolean boolValueOf = pageStorage3 != null ? Boolean.valueOf(pageStorage3.prependPage(listFilterResponseList, true, this)) : null;
                        this._stopTime = resp.timestamp;
                        if (Intrinsics.areEqual((Object) boolValueOf, (Object) true)) {
                            this._start = i3;
                            List<T> list3 = resp.list();
                            this._isEnd = (list3 == null || (list3.isEmpty() ^ true)) ? false : true;
                        }
                    }
                    notifyPageSourceChange();
                    return;
                }
                if (resp.list() == null || resp.list().isEmpty()) {
                    this._isEnd = true;
                } else {
                    PageStorage<T> pageStorage4 = getPageStorage();
                    if (pageStorage4 != null) {
                        pageStorage4.appendPage(listFilterResponseList, this);
                    }
                    this._start = req.tagInt(this.REQ_TAG_START, this._start) + i3;
                }
                String str = this._stopTime;
                if (str == null) {
                    str = resp.timestamp;
                }
                this._stopTime = str;
                notifyPageSourceChange();
                return;
            }
            return;
        }
        String str2 = resp.getPaging() == null ? null : resp.getPaging().nextPageToken;
        String str3 = resp.getPaging() == null ? null : resp.getPaging().prevPageToken;
        String str4 = resp.getPaging() == null ? null : resp.getPaging().refreshPageToken;
        if (i == this.DIRECTION_REFRESH) {
            this._refreshPageToken = str4;
            if (str3 == null) {
                Log.d("pagination prev token is null");
            } else {
                this._prevPageToken = str3;
            }
            if (this._isEnd || (this.refreshFlag & 1) == 1) {
                if (getInitPage() instanceof ArrayList) {
                    ((ArrayList) getInitPage()).clear();
                }
                PageStorage<T> pageStorage5 = getPageStorage();
                if (pageStorage5 != null) {
                    pageStorage5.initPage(listFilterResponseList, this);
                }
                this._isEnd = str2 == null;
                this._nextPageToken = str2;
            } else {
                PageStorage<T> pageStorage6 = getPageStorage();
                if (Intrinsics.areEqual((Object) (pageStorage6 != null ? Boolean.valueOf(pageStorage6.prependPage(listFilterResponseList, true, this)) : null), (Object) true)) {
                    this._nextPageToken = str2;
                    this._isEnd = false;
                }
            }
            notifyPageSourceChange();
            return;
        }
        if (i == this.DIRECTION_PREV) {
            this._prevPageToken = str3;
            this._refreshPageToken = str4;
            PageStorage<T> pageStorage7 = getPageStorage();
            if (pageStorage7 != null) {
                pageStorage7.prependPage(listFilterResponseList, false, this);
            }
            notifyPageSourceChange();
            return;
        }
        boolean zIsEqualsNotNull = Utils.isEqualsNotNull(str2, this._nextPageToken);
        if (str2 != null && !zIsEqualsNotNull) {
            z = false;
        }
        this._isEnd = z;
        if (this._isEnd) {
            str2 = null;
        }
        this._nextPageToken = str2;
        if (zAreEqual) {
            this._prevPageToken = str3;
            this._refreshPageToken = str4;
        }
        PageStorage<T> pageStorage8 = getPageStorage();
        if (pageStorage8 != null) {
            pageStorage8.appendPage(listFilterResponseList, this);
        }
        notifyPageSourceChange();
    }

    public void onFailResponse(ApiRequest apiRequest, String str, ApiResponse apiResponse, int i) {
        if (i != this.DIRECTION_REFRESH || isEmpty()) {
            return;
        }
        NVContext context = getContext();
        NVToast.makeText(context != null ? context.getContext() : null, str, 0).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void prepareNewRequestContext() {
        this.request = null;
        this.direction = this.DIRECTION_NONE;
        this.requestCallback = null;
    }

    public final ApiResponseListener<E> getResponseListener$Lib_release() {
        return this.responseListener;
    }

    public final void setResponseListener$Lib_release(ApiResponseListener<E> apiResponseListener) {
        Intrinsics.checkParameterIsNotNull(apiResponseListener, "<set-?>");
        this.responseListener = apiResponseListener;
    }

    public void setFirstPageRequestFinished() {
        this.firstRequestSent = true;
    }

    public boolean isFirstPageRequestFinished() {
        return this.firstRequestSent;
    }
}
