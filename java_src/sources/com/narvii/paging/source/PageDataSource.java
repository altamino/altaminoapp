package com.narvii.paging.source;

import com.narvii.app.NVContext;
import com.narvii.model.NVObject;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.ListResponse;
import com.narvii.paging.storage.ListPageStorage;
import com.narvii.paging.storage.PageStorage;
import com.narvii.util.FilterHelper;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.Tag;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public abstract class PageDataSource<T extends NVObject, E extends ListResponse<? extends T>> extends DataSource<T> implements ContinuousSource {
    private final int DIRECTION_NEXT;
    private final int DIRECTION_NONE;
    private final int DIRECTION_PREV;
    private final int DIRECTION_REFRESH;

    @NotNull
    private final Tag REQ_TAG_FROM_START;

    @NotNull
    private final Tag REQ_TAG_SIZE;

    @NotNull
    private final Tag REQ_TAG_START;
    private final String TAG;
    private boolean _isEnd;

    @Nullable
    private String _nextPageToken;

    @Nullable
    private String _prevPageToken;

    @Nullable
    private String _refreshPageToken;
    private int _start;

    @Nullable
    private String _stopTime;

    @Nullable
    private final ApiService apiService;

    @NotNull
    private final PagingConfiguration config;
    private int direction;
    private boolean firstRequestSent;
    private int refreshFlag;

    @Nullable
    private ApiRequest request;

    @Nullable
    private PageRequestCallback requestCallback;

    @NotNull
    private ApiResponseListener<E> responseListener;

    /* JADX WARN: Illegal instructions before constructor call */
    public PageDataSource(@Nullable NVContext nVContext) {
        PagingConfiguration TOKEN_CONFIG = PagingConfiguration.TOKEN_CONFIG;
        t.i(TOKEN_CONFIG, "TOKEN_CONFIG");
        this(nVContext, null, TOKEN_CONFIG);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void prepareNewRequestContext() {
        this.request = null;
        this.direction = this.DIRECTION_NONE;
        this.requestCallback = null;
    }

    @Nullable
    protected abstract ApiRequest createRequest();

    @Nullable
    public final ApiService getApiService() {
        return this.apiService;
    }

    public final int getAppendItemRequested$Lib_release(int i10, int i11, int i12) {
        return ((i10 + i11) + 1) - i12;
    }

    @NotNull
    public final PagingConfiguration getConfig() {
        return this.config;
    }

    public final int getDirection() {
        return this.direction;
    }

    public final boolean getFirstRequestSent() {
        return this.firstRequestSent;
    }

    @NotNull
    public final Tag getREQ_TAG_START() {
        return this.REQ_TAG_START;
    }

    public final int getRefreshFlag() {
        return this.refreshFlag;
    }

    @Nullable
    public final ApiRequest getRequest() {
        return this.request;
    }

    @Nullable
    public final PageRequestCallback getRequestCallback() {
        return this.requestCallback;
    }

    @NotNull
    public final ApiResponseListener<E> getResponseListener$Lib_release() {
        return this.responseListener;
    }

    public final boolean get_isEnd() {
        return this._isEnd;
    }

    @Nullable
    public final String get_nextPageToken() {
        return this._nextPageToken;
    }

    @Nullable
    public final String get_prevPageToken() {
        return this._prevPageToken;
    }

    @Nullable
    public final String get_refreshPageToken() {
        return this._refreshPageToken;
    }

    public final int get_start() {
        return this._start;
    }

    @Nullable
    public final String get_stopTime() {
        return this._stopTime;
    }

    public boolean isFirstPageRequestFinished() {
        return this.firstRequestSent;
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

    @NotNull
    protected abstract Class<E> responseType();

    public final void setDirection(int i10) {
        this.direction = i10;
    }

    public void setFirstPageRequestFinished() {
        this.firstRequestSent = true;
    }

    public final void setFirstRequestSent(boolean z6) {
        this.firstRequestSent = z6;
    }

    public final void setRefreshFlag(int i10) {
        this.refreshFlag = i10;
    }

    public final void setRequest(@Nullable ApiRequest apiRequest) {
        this.request = apiRequest;
    }

    public final void setRequestCallback(@Nullable PageRequestCallback pageRequestCallback) {
        this.requestCallback = pageRequestCallback;
    }

    public final void setResponseListener$Lib_release(@NotNull ApiResponseListener<E> apiResponseListener) {
        t.j(apiResponseListener, "<set-?>");
        this.responseListener = apiResponseListener;
    }

    public final void set_isEnd(boolean z6) {
        this._isEnd = z6;
    }

    public final void set_nextPageToken(@Nullable String str) {
        this._nextPageToken = str;
    }

    public final void set_prevPageToken(@Nullable String str) {
        this._prevPageToken = str;
    }

    public final void set_refreshPageToken(@Nullable String str) {
        this._refreshPageToken = str;
    }

    public final void set_start(int i10) {
        this._start = i10;
    }

    public final void set_stopTime(@Nullable String str) {
        this._stopTime = str;
    }

    public enum DIRECTION {
        DIRECTION_NONE(0),
        DIRECTION_PRE(-1),
        DIRECTION_NEXT(1),
        DIRECTION_REFRESH(2);

        private static final /* synthetic */ z7.a $ENTRIES = z7.b.a(values());
        private final int d;

        @NotNull
        public static z7.a<DIRECTION> getEntries() {
            return $ENTRIES;
        }

        public final int getD() {
            return this.d;
        }

        DIRECTION(int i10) {
            this.d = i10;
        }
    }

    public PageDataSource(@Nullable NVContext nVContext, @Nullable List<? extends T> list) {
        ListPageStorage listPageStorage = new ListPageStorage();
        PagingConfiguration TOKEN_CONFIG = PagingConfiguration.TOKEN_CONFIG;
        t.i(TOKEN_CONFIG, "TOKEN_CONFIG");
        this(nVContext, list, listPageStorage, TOKEN_CONFIG);
    }

    public static /* synthetic */ ApiRequest generateNewRequest$default(PageDataSource pageDataSource, int i10, boolean z6, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: generateNewRequest");
        }
        if ((i11 & 2) != 0) {
            z6 = false;
        }
        return pageDataSource.generateNewRequest(i10, z6);
    }

    public static /* synthetic */ void loadFirstPage$default(PageDataSource pageDataSource, boolean z6, PageRequestCallback pageRequestCallback, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: loadFirstPage");
        }
        if ((i10 & 1) != 0) {
            z6 = false;
        }
        if ((i10 & 2) != 0) {
            pageRequestCallback = null;
        }
        pageDataSource.loadFirstPage(z6, pageRequestCallback);
    }

    @Nullable
    public List<T> filterResponseList(@Nullable List<? extends T> list) {
        return new FilterHelper(getContext()).filter(list);
    }

    public final void loadFirstPage(boolean z6, @Nullable PageRequestCallback pageRequestCallback) {
        ApiService apiService;
        ApiRequest apiRequest = this.request;
        if (apiRequest != null && (apiService = this.apiService) != null) {
            apiService.abort(apiRequest);
        }
        ApiRequest apiRequestGenerateNewRequest$default = generateNewRequest$default(this, this.DIRECTION_REFRESH, false, 2, null);
        this.request = apiRequestGenerateNewRequest$default;
        if (apiRequestGenerateNewRequest$default == null) {
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
        if (z6) {
            this.direction = this.DIRECTION_REFRESH;
        } else {
            this.refreshFlag = 0;
            this.direction = this.DIRECTION_NONE;
        }
        executeRequest();
    }

    public boolean loadNextPage(@Nullable PageRequestCallback pageRequestCallback) {
        if (this.request != null || this._isEnd || getPageLoadState().isFailed()) {
            return false;
        }
        ApiRequest apiRequestGenerateNewRequest$default = generateNewRequest$default(this, this.DIRECTION_NEXT, false, 2, null);
        this.request = apiRequestGenerateNewRequest$default;
        if (apiRequestGenerateNewRequest$default == null) {
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
    public boolean loadPrevPage(@Nullable PageRequestCallback pageRequestCallback) {
        if (this._prevPageToken == null) {
            return false;
        }
        if (this.config.paginationType != 0) {
            throw new IllegalStateException("only token pagination is supported!");
        }
        ApiRequest apiRequestGenerateNewRequest$default = generateNewRequest$default(this, this.DIRECTION_PREV, false, 2, null);
        this.request = apiRequestGenerateNewRequest$default;
        if (apiRequestGenerateNewRequest$default == null) {
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

    public void onFailResponse(@Nullable ApiRequest apiRequest, @Nullable String str, @Nullable ApiResponse apiResponse, int i10) {
        if (i10 != this.DIRECTION_REFRESH || isEmpty()) {
            return;
        }
        NVContext context = getContext();
        NVToast.makeText(context != null ? context.getContext() : null, str, 0).show();
    }

    public void onPageResponse(@NotNull ApiRequest req, @NotNull E resp, int i10) {
        t.j(req, "req");
        t.j(resp, "resp");
        Object objTag = req.tag(this.REQ_TAG_FROM_START);
        Boolean bool = Boolean.TRUE;
        boolean zE = t.e(objTag, bool);
        List<? extends T> list = resp.list();
        if (!(list instanceof List)) {
            list = null;
        }
        List<T> listFilterResponseList = filterResponseList(list);
        PagingConfiguration pagingConfiguration = this.config;
        int i11 = pagingConfiguration.paginationType;
        boolean z6 = false;
        if (i11 == 0) {
            String str = resp.getPaging() == null ? null : resp.getPaging().nextPageToken;
            String str2 = resp.getPaging() == null ? null : resp.getPaging().prevPageToken;
            String str3 = resp.getPaging() == null ? null : resp.getPaging().refreshPageToken;
            if (i10 == this.DIRECTION_REFRESH) {
                this._refreshPageToken = str3;
                if (str2 == null) {
                    Log.d("pagination prev token is null");
                } else {
                    this._prevPageToken = str2;
                }
                if (this._isEnd || (this.refreshFlag & 1) == 1) {
                    if (getInitPage() instanceof ArrayList) {
                        ((ArrayList) getInitPage()).clear();
                    }
                    PageStorage<T> pageStorage = getPageStorage();
                    if (pageStorage != null) {
                        pageStorage.initPage(listFilterResponseList, this);
                    }
                    this._isEnd = str == null;
                    this._nextPageToken = str;
                } else {
                    PageStorage<T> pageStorage2 = getPageStorage();
                    if (t.e(pageStorage2 != null ? Boolean.valueOf(pageStorage2.prependPage(listFilterResponseList, true, this)) : null, bool)) {
                        this._nextPageToken = str;
                        this._isEnd = false;
                    }
                }
                notifyPageSourceChange();
                return;
            }
            if (i10 == this.DIRECTION_PREV) {
                this._prevPageToken = str2;
                this._refreshPageToken = str3;
                PageStorage<T> pageStorage3 = getPageStorage();
                if (pageStorage3 != null) {
                    pageStorage3.prependPage(listFilterResponseList, false, this);
                }
                notifyPageSourceChange();
                return;
            }
            z6 = str == null || Utils.isEqualsNotNull(str, this._nextPageToken);
            this._isEnd = z6;
            this._nextPageToken = z6 ? null : str;
            if (zE) {
                this._prevPageToken = str2;
                this._refreshPageToken = str3;
            }
            PageStorage<T> pageStorage4 = getPageStorage();
            if (pageStorage4 != null) {
                pageStorage4.appendPage(listFilterResponseList, this);
            }
            notifyPageSourceChange();
            return;
        }
        if (i11 == 1) {
            int i12 = pagingConfiguration.pageSize;
            if (i10 != this.DIRECTION_REFRESH) {
                if (resp.list() == null || resp.list().isEmpty()) {
                    this._isEnd = true;
                } else {
                    PageStorage<T> pageStorage5 = getPageStorage();
                    if (pageStorage5 != null) {
                        pageStorage5.appendPage(listFilterResponseList, this);
                    }
                    this._start = req.tagInt(this.REQ_TAG_START, this._start) + i12;
                }
                String str4 = this._stopTime;
                if (str4 == null) {
                    str4 = resp.timestamp;
                }
                this._stopTime = str4;
                notifyPageSourceChange();
                return;
            }
            PageStorage<T> pageStorage6 = getPageStorage();
            if ((pageStorage6 != null ? pageStorage6.size() : 0) <= i12 || (this.refreshFlag & 1) == 1) {
                PageStorage<T> pageStorage7 = getPageStorage();
                if (pageStorage7 != null) {
                    pageStorage7.initPage(listFilterResponseList, this);
                }
                this._start = i12;
                List<T> list2 = resp.list();
                if (list2 != null && !(!list2.isEmpty())) {
                    z6 = true;
                }
                this._isEnd = z6;
                this._stopTime = resp.timestamp;
            } else {
                PageStorage<T> pageStorage8 = getPageStorage();
                Boolean boolValueOf = pageStorage8 != null ? Boolean.valueOf(pageStorage8.prependPage(listFilterResponseList, true, this)) : null;
                this._stopTime = resp.timestamp;
                if (t.e(boolValueOf, bool)) {
                    this._start = i12;
                    List<T> list3 = resp.list();
                    if (list3 != null && !(!list3.isEmpty())) {
                        z6 = true;
                    }
                    this._isEnd = z6;
                }
            }
            notifyPageSourceChange();
        }
    }

    @Override // com.narvii.paging.source.DataSource
    public void refresh(int i10, @Nullable PageRequestCallback pageRequestCallback) {
        this.refreshFlag = i10;
        loadFirstPage(true, pageRequestCallback);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PageDataSource(@Nullable NVContext nVContext, @Nullable List<? extends T> list, @NotNull PagingConfiguration config) {
        this(nVContext, list, new ListPageStorage(), config);
        t.j(config, "config");
    }

    public final void executeRequest() {
        pageLoadBegin();
        ApiService apiService = this.apiService;
        if (apiService != null) {
            apiService.exec(this.request, this.responseListener);
        }
    }

    @Nullable
    public final ApiRequest generateNewRequest(int i10, boolean z6) {
        ApiRequest interceptedRequest;
        boolean z10;
        String str;
        PageStorage<T> pageStorage;
        ApiRequest apiRequestCreateRequest = createRequest();
        String str2 = null;
        if (apiRequestCreateRequest == null) {
            return null;
        }
        DataSourceInterceptor dataSourceInterceptor = getDataSourceInterceptor();
        if (dataSourceInterceptor == null || (interceptedRequest = dataSourceInterceptor.getInterceptedRequest(apiRequestCreateRequest)) == null) {
            interceptedRequest = apiRequestCreateRequest;
        }
        ApiRequest.Builder builderEdit = interceptedRequest.edit();
        String str3 = "size";
        builderEdit.param("size", Integer.valueOf(this.config.pageSize));
        int i11 = this.config.paginationType;
        int i12 = 0;
        if (i11 == 0 ? this._nextPageToken == null : !(i11 == 1 ? this._start != 0 : (pageStorage = getPageStorage()) == null || pageStorage.size() != 0)) {
            z10 = true;
        } else {
            z10 = false;
        }
        builderEdit.tag(this.REQ_TAG_FROM_START, Boolean.valueOf(z10));
        int i13 = this.config.paginationType;
        if (i13 == 0) {
            builderEdit.param("pagingType", "t");
            if (i10 == this.DIRECTION_PREV) {
                str2 = this._prevPageToken;
            } else if (i10 == this.DIRECTION_REFRESH) {
                if ((this.refreshFlag & 2) != 2) {
                    str2 = this._refreshPageToken;
                }
            } else {
                str2 = this._nextPageToken;
            }
            if (str2 != null) {
                builderEdit.param("pageToken", str2);
            }
        } else if (i13 == 1) {
            if (i10 == this.DIRECTION_PREV) {
                Log.e(this.TAG, "load pre page is not support in this paginationType");
                return null;
            }
            if (i10 == this.DIRECTION_REFRESH) {
                builderEdit.tag(this.REQ_TAG_FROM_START, Boolean.TRUE);
            } else {
                i12 = this._start;
                str2 = this._stopTime;
            }
            String str4 = this.config.offsetStepKey;
            if (str4 != null && str4.length() != 0) {
                str3 = this.config.offsetStepKey;
            }
            builderEdit.param(str3, Integer.valueOf(this.config.pageSize));
            String str5 = this.config.offsetStartKey;
            if (str5 != null && str5.length() != 0) {
                str = this.config.offsetStartKey;
            } else {
                str = "start";
            }
            builderEdit.param(str, Integer.valueOf(i12));
            builderEdit.tag(this.REQ_TAG_START, Integer.valueOf(this._start));
            if (str2 != null) {
                builderEdit.param("stoptime", str2);
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

    @Override // com.narvii.paging.source.DataSource
    public boolean isEmpty() {
        if (super.isEmpty() && this._isEnd) {
            return true;
        }
        return false;
    }

    @Override // com.narvii.paging.source.ContinuousSource
    public void loadAround(int i10) {
        if (getSize() != 0 && getAppendItemRequested$Lib_release(i10, this.config.prefetchDistance, getSize()) > 0) {
            ContinuousSource.DefaultImpls.loadNextPage$default(this, null, 1, null);
        }
    }

    @Override // com.narvii.paging.source.DataSource
    public void loadInitData() {
        super.loadInitData();
        loadFirstPage$default(this, false, null, 3, null);
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

    @Override // com.narvii.paging.source.DataSource
    public void onErrorRetry() {
        pageLoadBegin();
        if (this.direction == this.DIRECTION_PREV) {
            ContinuousSource.DefaultImpls.loadPrevPage$default(this, null, 1, null);
        } else {
            ContinuousSource.DefaultImpls.loadNextPage$default(this, null, 1, null);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PageDataSource(@Nullable NVContext nVContext, @Nullable List<? extends T> list, @Nullable PageStorage<T> pageStorage, @NotNull PagingConfiguration config) {
        super(nVContext, list, pageStorage);
        t.j(config, "config");
        this.TAG = PageDataSource.class.getSimpleName();
        this.DIRECTION_NEXT = 1;
        this.DIRECTION_PREV = -1;
        this.DIRECTION_REFRESH = 2;
        this.REQ_TAG_FROM_START = new Tag("reqFromStart");
        this.REQ_TAG_SIZE = new Tag("reqSize");
        this.REQ_TAG_START = new Tag("reqStart");
        this.direction = this.DIRECTION_NONE;
        this.responseListener = new PageDataSource$responseListener$1(this, responseType());
        this.apiService = nVContext != null ? (ApiService) nVContext.getService("api") : null;
        this.config = config;
    }
}
