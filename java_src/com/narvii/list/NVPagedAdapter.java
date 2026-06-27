package com.narvii.list;

import android.R;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.logging.Impression.ImpressionCollector;
import com.narvii.logging.Impression.ImpressionUtils;
import com.narvii.model.NVObject;
import com.narvii.model.StrategyObject;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.ListResponse;
import com.narvii.notification.Notification;
import com.narvii.util.Callback;
import com.narvii.util.FilterHelper;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.Tag;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.SpinningView;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;

/* loaded from: classes3.dex */
public abstract class NVPagedAdapter<T extends NVObject, E extends ListResponse<? extends T>> extends NVAdapter {
    protected static final int DIRECTION_MIDDLE = 3;
    protected static final int DIRECTION_NEXT = 1;
    protected static final int DIRECTION_NONE = 0;
    protected static final int DIRECTION_PREV = -1;
    protected static final int DIRECTION_REFRESH = 2;
    public static final int PAGINATION_TYPE_CUSTOM = -1;
    public static final int PAGINATION_TYPE_OFFSET = 0;
    public static final int PAGINATION_TYPE_SINGLE_PAGE = -2;
    public static final int PAGINATION_TYPE_TOKEN = 1;
    public static final int REFRESH_FLAG_REPLACE = 512;
    public String _errorMsg;
    protected boolean _isEnd;
    protected ArrayList<T> _list;
    protected String _nextPageToken;
    protected String _prevPageToken;
    protected String _refreshPageToken;
    protected int _start;
    protected String _stopTime;
    protected boolean attached;
    private DatePageHelper datePageHelper;
    private int direction;
    protected int paginationType;
    protected int refreshFlag;
    private ApiRequest request;
    private Callback<Integer> requestCallback;
    protected final ApiResponseListener<E> requestListener;
    private long requestTime;
    private long requestWaitTime;
    public static final Tag LOADING = new Tag("loading");
    public static final Tag LOAD_MORE = new Tag("loadMore");
    public static final Tag LIST_END = new Tag("listEnd");
    public static final Tag ERROR = new Tag(IjkMediaPlayer.OnNativeInvokeListener.ARG_ERROR);
    private static final Tag REQ_TAG_START = new Tag("reqStart");
    private static final Tag REQ_TAG_SIZE = new Tag("reqSize");
    private static final Tag REQ_TAG_FROM_START = new Tag("reqFromStart");
    private static final Tag REQ_TAG_REFRESH_FLAG = new Tag("reqRefreshFlag");
    private static final Tag REQ_MIDDLE_OBJ_ID = new Tag("reqMiddleObjId");

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        return true;
    }

    public boolean autoLoadNextPage() {
        return true;
    }

    protected abstract ApiRequest createRequest(boolean z);

    /* JADX INFO: Access modifiers changed from: protected */
    public JsonDeserializer<T> dataDeserializer() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract Class<T> dataType();

    protected boolean filterDuplicate() {
        return false;
    }

    protected abstract int getItemType(Object obj);

    protected abstract int getItemTypeCount();

    protected abstract View getItemView(Object obj, View view, ViewGroup viewGroup);

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return true;
    }

    protected boolean ignoreStopTime() {
        return false;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        return true;
    }

    protected boolean resetWhenEmpty() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract Class<? extends E> responseType();

    protected boolean showErrorToast(ApiResponse apiResponse) {
        return true;
    }

    public boolean showListEnd(int i) {
        return false;
    }

    protected boolean tagCellAuto() {
        return true;
    }

    public NVPagedAdapter(NVContext nVContext, int i) {
        super(nVContext);
        this.requestListener = (ApiResponseListener<E>) new ApiResponseListener<E>(responseType()) { // from class: com.narvii.list.NVPagedAdapter.1
            @Override // com.narvii.util.http.ApiResponseListener
            public /* bridge */ /* synthetic */ ApiResponse parseResponse(ApiRequest apiRequest, int i2, List list, byte[] bArr) throws Exception {
                return parseResponse(apiRequest, i2, (List<NameValuePair>) list, bArr);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public E parseResponse(ApiRequest apiRequest, int i2, List<NameValuePair> list, byte[] bArr) throws Exception {
                if (NVPagedAdapter.this.requestWaitTime > 0) {
                    long jMax = NVPagedAdapter.this.requestWaitTime - Math.max(SystemClock.elapsedRealtime() - NVPagedAdapter.this.requestTime, 0L);
                    if (jMax > 0) {
                        Log.i("refresh wait for " + jMax + "ms");
                        Thread.sleep(jMax);
                    }
                }
                return (E) super.parseResponse(apiRequest, i2, list, bArr);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, E e) throws Exception {
                int i2 = NVPagedAdapter.this.direction;
                Callback callback = NVPagedAdapter.this.requestCallback;
                NVPagedAdapter.this.request = null;
                NVPagedAdapter.this.direction = 0;
                NVPagedAdapter.this.requestCallback = null;
                NVPagedAdapter nVPagedAdapter = NVPagedAdapter.this;
                ImpressionCollector impressionCollector = nVPagedAdapter.mainIpc;
                if (impressionCollector != null && i2 == 2) {
                    ImpressionUtils.clearImpression(impressionCollector, nVPagedAdapter.context);
                }
                NVPagedAdapter.this.onPageResponse(apiRequest, e, i2);
                NVPagedAdapter.this.refreshFlag = 0;
                if (callback != null) {
                    callback.call(0);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i2, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                int i3 = NVPagedAdapter.this.direction;
                Callback callback = NVPagedAdapter.this.requestCallback;
                NVPagedAdapter.this.request = null;
                NVPagedAdapter.this.direction = 0;
                NVPagedAdapter.this.requestCallback = null;
                NVPagedAdapter.this.onFailResponse(apiRequest, str, apiResponse, i3);
                NVPagedAdapter.this.refreshFlag = 0;
                if (callback != null) {
                    callback.call(1);
                }
            }
        };
        this.paginationType = i;
    }

    public NVPagedAdapter(NVContext nVContext) {
        this(nVContext, 0);
    }

    @Override // com.narvii.list.NVAdapter
    public void onRestoreInstanceState(Bundle bundle) {
        ArrayList<T> listAs;
        super.onRestoreInstanceState(bundle);
        if (bundle != null) {
            if (dataDeserializer() != null) {
                listAs = JacksonUtils.readListUsing(bundle.getString("list"), dataDeserializer());
            } else {
                listAs = JacksonUtils.readListAs(bundle.getString("list"), dataType());
            }
            if (listAs != null) {
                this._list = listAs;
                this._start = bundle.getInt(TtmlNode.START);
                this._isEnd = bundle.getBoolean("isEnd");
                this._stopTime = bundle.getString("stopTime");
                this._prevPageToken = bundle.getString("prevPageToken");
                this._nextPageToken = bundle.getString("nextPageToken");
                this._errorMsg = bundle.getString("errorMsg");
            }
        }
    }

    @Override // com.narvii.list.NVAdapter
    public void onAttach() {
        this.attached = true;
        boolean z = this._list == null;
        if (z) {
            this._list = new ArrayList<>();
        }
        super.onAttach();
        if (z) {
            resetList();
        } else {
            if (this._start != 0 || this._isEnd) {
                return;
            }
            loadNextPage(true);
        }
    }

    @Override // com.narvii.list.NVAdapter
    public Bundle onSaveInstanceState() {
        Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
        if (saveInstanceState()) {
            String strSafeWriteAsString = JacksonUtils.safeWriteAsString(this._list);
            bundleOnSaveInstanceState.putInt(TtmlNode.START, this._start);
            bundleOnSaveInstanceState.putString("list", strSafeWriteAsString);
            bundleOnSaveInstanceState.putBoolean("isEnd", this._isEnd);
            bundleOnSaveInstanceState.putString("stopTime", this._stopTime);
            bundleOnSaveInstanceState.putString("prevPageToken", this._prevPageToken);
            bundleOnSaveInstanceState.putString("nextPageToken", this._nextPageToken);
            bundleOnSaveInstanceState.putString("errorMsg", this._errorMsg);
        }
        return bundleOnSaveInstanceState;
    }

    @Override // com.narvii.list.NVAdapter
    public boolean isListShown() {
        return (list() != null && list().size() > 0) || this._isEnd;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean isEmpty() {
        return list() == null || list().isEmpty();
    }

    @Override // com.narvii.list.NVAdapter
    public String errorMessage() {
        if (list() != null && list().isEmpty()) {
            return this._errorMsg;
        }
        return null;
    }

    @Override // com.narvii.list.NVAdapter
    public void onErrorRetry() {
        this._errorMsg = null;
        loadNextPage(false);
    }

    public void setList(ArrayList<T> arrayList) {
        this._list = arrayList;
    }

    public final List<? extends T> rawList() {
        return this._list;
    }

    public List<?> list() {
        DatePageHelper datePageHelper = this.datePageHelper;
        if (datePageHelper != null) {
            return datePageHelper.getList();
        }
        return rawList();
    }

    public void setDatePageHelper(DatePageHelper datePageHelper) {
        this.datePageHelper = datePageHelper;
    }

    public boolean isEnd() {
        return this._isEnd;
    }

    public boolean hasPrevPage() {
        return this._prevPageToken != null;
    }

    protected int pageSize() {
        return ((ConfigService) getService("config")).getPageSize();
    }

    public void editList(Notification notification, boolean z) {
        if (this._list != null && dataType().isInstance(notification.obj)) {
            NVObject nVObject = (NVObject) notification.obj;
            String str = notification.action;
            if (str == "new") {
                if (filterDuplicate() && Utils.indexOfId(this._list, nVObject.id()) >= 0) {
                    notifyDataSetChanged();
                    return;
                } else {
                    this._list.add(0, nVObject);
                    notifyDataSetChanged();
                    return;
                }
            }
            if (str != "edit") {
                if (str == "update") {
                    int iIndexOfId = Utils.indexOfId(this._list, nVObject.id());
                    if (iIndexOfId >= 0) {
                        replaceObject(iIndexOfId, nVObject);
                        notifyDataSetChanged();
                        return;
                    }
                    return;
                }
                if (str == "delete") {
                    int iRemoveIdEqualsObject = removeIdEqualsObject(nVObject);
                    if (this.paginationType == 0) {
                        this._start -= iRemoveIdEqualsObject;
                    }
                    notifyDataSetChanged();
                    return;
                }
                return;
            }
            int iIndexOfId2 = Utils.indexOfId(this._list, nVObject.id());
            if (iIndexOfId2 < 0) {
                if (z) {
                    this._list.add(0, nVObject);
                    notifyDataSetChanged();
                    return;
                }
                return;
            }
            if (z) {
                this._list.remove(iIndexOfId2);
                this._list.add(0, nVObject);
                if (this.paginationType == 0) {
                    this._start--;
                }
            } else {
                replaceObject(iIndexOfId2, nVObject);
            }
            notifyDataSetChanged();
        }
    }

    private void replaceObject(int i, T t) {
        String strategyInfo;
        ArrayList<T> arrayList = this._list;
        if (arrayList == null) {
            return;
        }
        T t2 = arrayList.get(i);
        boolean z = false;
        if ((t2 instanceof StrategyObject) && (t instanceof StrategyObject) && (strategyInfo = ((StrategyObject) t2).getStrategyInfo()) != null) {
            try {
                Cloneable cloneableM46clone = t.m46clone();
                ((StrategyObject) cloneableM46clone).setStrategyInfo(strategyInfo);
                this._list.set(i, cloneableM46clone);
                z = true;
            } catch (Exception e) {
                Log.e("replace object", e);
            }
        }
        if (z) {
            return;
        }
        this._list.set(i, t);
    }

    protected int removeIdEqualsObject(T t) {
        return Utils.removeId(this._list, t.id());
    }

    public int removeIdEqualsObjectId(String str) {
        return Utils.removeId(this._list, str);
    }

    public void addAllFirst(List<T> list) {
        if (this._list == null || list == null) {
            return;
        }
        int i = 0;
        for (T t : list) {
            if (Utils.indexOfId(this._list, t.id()) < 0) {
                this._list.add(i, t);
                i++;
            }
        }
        notifyDataSetChanged();
    }

    public Class<T> getDataClass() {
        return dataType();
    }

    public void resetList() {
        this._list = new ArrayList<>();
        this._start = 0;
        this._isEnd = false;
        this._stopTime = null;
        this._prevPageToken = null;
        this._nextPageToken = null;
        this._refreshPageToken = null;
        this._errorMsg = null;
        ApiService apiService = (ApiService) getService("api");
        ApiRequest apiRequest = this.request;
        if (apiRequest != null) {
            apiService.abort(apiRequest);
            this.request = null;
        }
        Callback<Integer> callback = this.requestCallback;
        if (callback != null) {
            callback.call(2);
        }
        this.direction = 0;
        this.refreshFlag = 0;
        this.requestCallback = null;
        this.requestTime = 0L;
        this.requestWaitTime = 0L;
        if (this.attached) {
            loadNextPage(false);
        }
        ImpressionCollector impressionCollector = this.mainIpc;
        if (impressionCollector != null) {
            ImpressionUtils.clearImpression(impressionCollector, this.context);
        }
    }

    public void resetEmptyList() {
        this._list = new ArrayList<>();
        this._start = 0;
        this._isEnd = true;
        this._stopTime = null;
        this._prevPageToken = null;
        this._nextPageToken = null;
        this._errorMsg = null;
        ApiService apiService = (ApiService) getService("api");
        ApiRequest apiRequest = this.request;
        if (apiRequest != null) {
            apiService.abort(apiRequest);
            this.request = null;
        }
        Callback<Integer> callback = this.requestCallback;
        if (callback != null) {
            callback.call(2);
        }
        this.direction = 0;
        this.refreshFlag = 0;
        this.requestCallback = null;
        this.requestTime = 0L;
        this.requestWaitTime = 0L;
        notifyDataSetChanged();
    }

    public void loadNextPage(boolean z) {
        ArrayList<T> arrayList;
        if (this._list == null || this._isEnd || this.request != null) {
            return;
        }
        this._errorMsg = null;
        ApiService apiService = (ApiService) getService("api");
        int i = this.paginationType;
        boolean z2 = i != 0 ? !(i != 1 ? !(i == -2 || (arrayList = this._list) == null || arrayList.isEmpty()) : this._nextPageToken != null) : this._start == 0;
        ApiRequest apiRequestCreateRequest = createRequest(z2);
        if (apiRequestCreateRequest == null) {
            this.request = null;
        } else {
            int i2 = this.paginationType;
            if (i2 == 0) {
                ApiRequest.Builder builderEdit = apiRequestCreateRequest.edit();
                int iPageSize = pageSize();
                builderEdit.param(TtmlNode.START, Integer.valueOf(this._start));
                builderEdit.param("size", Integer.valueOf(iPageSize));
                if (!TextUtils.isEmpty(this._stopTime) && !ignoreStopTime()) {
                    builderEdit.param("stoptime", this._stopTime);
                }
                builderEdit.tag(REQ_TAG_START, Integer.valueOf(this._start));
                builderEdit.tag(REQ_TAG_FROM_START, Boolean.valueOf(z2));
                builderEdit.tag(REQ_TAG_SIZE, Integer.valueOf(iPageSize));
                this.request = builderEdit.build();
            } else if (i2 == 1) {
                ApiRequest.Builder builderEdit2 = apiRequestCreateRequest.edit();
                int iPageSize2 = pageSize();
                builderEdit2.param("pagingType", "t");
                String str = this._nextPageToken;
                if (str != null) {
                    builderEdit2.param("pageToken", str);
                }
                builderEdit2.param("size", Integer.valueOf(iPageSize2));
                if (apiRequestCreateRequest.getTags() != null) {
                    for (Map.Entry<Object, Object> entry : apiRequestCreateRequest.getTags().entrySet()) {
                        builderEdit2.tag(entry.getKey(), entry.getValue());
                    }
                }
                builderEdit2.tag(REQ_TAG_FROM_START, Boolean.valueOf(z2));
                builderEdit2.tag(REQ_TAG_SIZE, Integer.valueOf(iPageSize2));
                this.request = builderEdit2.build();
            } else {
                this.request = apiRequestCreateRequest;
            }
        }
        this.refreshFlag = 0;
        this.requestCallback = null;
        if (this.request == null) {
            this.direction = 0;
            this.requestTime = 0L;
            this.requestWaitTime = 0L;
            Log.d("loadNextPage pending...");
        } else {
            this.direction = 1;
            this.requestTime = SystemClock.elapsedRealtime();
            this.requestWaitTime = 0L;
            apiService.exec(this.request, this.requestListener);
        }
        notifyDataSetChanged();
    }

    public boolean loadPrevPage(Callback<Integer> callback) {
        if (this._prevPageToken == null) {
            return false;
        }
        if (this.paginationType != 1) {
            throw new IllegalStateException("only token pagination is supported!");
        }
        ApiService apiService = (ApiService) getService("api");
        ApiRequest apiRequestCreateRequest = createRequest(false);
        if (apiRequestCreateRequest == null) {
            this.direction = 0;
            Log.d("loadPrevPage pending...");
            return false;
        }
        Callback<Integer> callback2 = this.requestCallback;
        if (callback2 != null) {
            callback2.call(2);
        }
        ApiRequest.Builder builderEdit = apiRequestCreateRequest.edit();
        int iPageSize = pageSize();
        builderEdit.param("pagingType", "t");
        builderEdit.param("pageToken", this._prevPageToken);
        builderEdit.param("size", Integer.valueOf(iPageSize));
        if (apiRequestCreateRequest.getTags() != null) {
            for (Map.Entry<Object, Object> entry : apiRequestCreateRequest.getTags().entrySet()) {
                builderEdit.tag(entry.getKey(), entry.getValue());
            }
        }
        builderEdit.tag(REQ_TAG_FROM_START, false);
        builderEdit.tag(REQ_TAG_SIZE, Integer.valueOf(iPageSize));
        this.request = builderEdit.build();
        this.direction = this._prevPageToken == null ? 0 : -1;
        this.refreshFlag = 0;
        this.requestCallback = callback;
        this.requestTime = SystemClock.elapsedRealtime();
        this.requestWaitTime = 0L;
        apiService.exec(this.request, this.requestListener);
        notifyDataSetChanged();
        return true;
    }

    public void loadMiddlePage(String str, String str2, Callback<Integer> callback) {
        if (str2 == null || this.paginationType != 1) {
            return;
        }
        ApiService apiService = (ApiService) getService("api");
        ApiRequest apiRequestCreateRequest = createRequest(false);
        if (apiRequestCreateRequest == null) {
            this.direction = 0;
            return;
        }
        ApiRequest.Builder builderEdit = apiRequestCreateRequest.edit();
        int iPageSize = pageSize();
        builderEdit.param("pagingType", "t");
        builderEdit.param("pageToken", str2);
        builderEdit.param("size", Integer.valueOf(iPageSize));
        if (apiRequestCreateRequest.getTags() != null) {
            for (Map.Entry<Object, Object> entry : apiRequestCreateRequest.getTags().entrySet()) {
                builderEdit.tag(entry.getKey(), entry.getValue());
            }
        }
        builderEdit.tag(REQ_MIDDLE_OBJ_ID, str);
        builderEdit.tag(REQ_TAG_SIZE, Integer.valueOf(iPageSize));
        this.request = builderEdit.build();
        this.direction = 3;
        this.refreshFlag = 0;
        this.requestCallback = callback;
        this.requestTime = SystemClock.elapsedRealtime();
        this.requestWaitTime = 0L;
        apiService.exec(this.request, this.requestListener);
        notifyDataSetChanged();
    }

    public boolean isAttached() {
        return this.attached;
    }

    @Override // com.narvii.list.NVAdapter
    public void refresh(int i, Callback<Integer> callback) {
        boolean z = (i & 256) != 0;
        int i2 = i & 512;
        ArrayList<T> arrayList = this._list;
        if ((arrayList == null || (!z && arrayList.isEmpty())) && resetWhenEmpty()) {
            resetList();
            if (this.request != null) {
                this.requestCallback = callback;
                this.direction = 2;
                this.refreshFlag = i;
                return;
            }
            return;
        }
        ApiService apiService = (ApiService) getService("api");
        ApiRequest apiRequest = this.request;
        if (apiRequest != null) {
            apiService.abort(apiRequest);
        }
        ApiRequest apiRequestCreateRequest = createRequest(true);
        if (apiRequestCreateRequest == null) {
            this.request = null;
        } else {
            int i3 = this.paginationType;
            if (i3 == 0) {
                ApiRequest.Builder builderEdit = apiRequestCreateRequest.edit();
                int iPageSize = pageSize();
                builderEdit.param(TtmlNode.START, 0);
                builderEdit.param("size", Integer.valueOf(iPageSize));
                builderEdit.tag(REQ_TAG_START, Integer.valueOf(this._start));
                builderEdit.tag(REQ_TAG_FROM_START, true);
                builderEdit.tag(REQ_TAG_SIZE, Integer.valueOf(iPageSize));
                builderEdit.tag(REQ_TAG_REFRESH_FLAG, Integer.valueOf(i));
                this.request = builderEdit.build();
            } else if (i3 == 1) {
                ApiRequest.Builder builderEdit2 = apiRequestCreateRequest.edit();
                int iPageSize2 = pageSize();
                builderEdit2.param("pagingType", "t");
                String str = this._refreshPageToken;
                if (str != null) {
                    builderEdit2.param("pageToken", str);
                }
                builderEdit2.param("size", Integer.valueOf(iPageSize2));
                builderEdit2.tag(REQ_TAG_FROM_START, true);
                builderEdit2.tag(REQ_TAG_SIZE, Integer.valueOf(iPageSize2));
                builderEdit2.tag(REQ_TAG_REFRESH_FLAG, Integer.valueOf(i));
                this.request = builderEdit2.build();
            } else {
                this.request = apiRequestCreateRequest;
            }
        }
        Callback<Integer> callback2 = this.requestCallback;
        if (callback2 != null) {
            callback2.call(2);
        }
        if (this.request == null) {
            this.direction = 0;
            this.refreshFlag = 0;
            this.requestCallback = null;
            this.requestTime = 0L;
            this.requestWaitTime = 0L;
            return;
        }
        this.direction = 2;
        this.refreshFlag = i;
        this.requestCallback = callback;
        this.requestTime = SystemClock.elapsedRealtime();
        this.requestWaitTime = 0L;
        apiService.exec(this.request, this.requestListener);
    }

    public void setRefreshWaitTime(long j) {
        this.requestWaitTime = j;
    }

    protected List<T> filterResponseList(List<T> list, int i) {
        if (i != 2 && filterDuplicate()) {
            return new FilterHelper(this).filter(Utils.filterDuplicated(rawList(), list));
        }
        return new FilterHelper(this).filter(list);
    }

    protected void onPageResponse(ApiRequest apiRequest, E e, int i) {
        int i2 = this.paginationType;
        if (i2 == 0) {
            int iTagInt = apiRequest.tagInt(REQ_TAG_SIZE, pageSize());
            if (i == 2) {
                ArrayList<T> arrayList = this._list;
                if (arrayList == null || arrayList.size() <= iTagInt || (this.refreshFlag & 512) != 0) {
                    this._list = new ArrayList<>();
                    List<T> listFilterResponseList = filterResponseList(e.list(), i);
                    if (listFilterResponseList == null) {
                        this._list = new ArrayList<>();
                    } else {
                        this._list = new ArrayList<>(listFilterResponseList);
                    }
                    this._start = iTagInt;
                    if (e.list() != null && e.list().size() != 0) {
                        z = false;
                    }
                    this._isEnd = z;
                    this._stopTime = e.timestamp;
                } else {
                    List<T> listFilterResponseList2 = filterResponseList(e.list(), i);
                    boolean[] zArr = new boolean[1];
                    ArrayList<T> arrayListMergeTop = mergeTop(this._list, listFilterResponseList2, zArr);
                    if (this._list != arrayListMergeTop) {
                        this._list = arrayListMergeTop;
                        this._stopTime = e.timestamp;
                        if (zArr[0]) {
                            this._start = iTagInt;
                            if (e.list() != null && e.list().size() != 0) {
                                z = false;
                            }
                            this._isEnd = z;
                        }
                    }
                }
                notifyDataSetChanged();
                return;
            }
            this._errorMsg = null;
            if (this._list == null) {
                this._list = new ArrayList<>();
            }
            if (e.list() == null || e.list().size() == 0) {
                this._isEnd = true;
            } else {
                this._list.addAll(filterResponseList(e.list(), i));
                this._start = apiRequest.tagInt(REQ_TAG_START, this._start) + iTagInt;
            }
            if (this._stopTime == null) {
                this._stopTime = e.timestamp;
            }
            notifyDataSetChanged();
            return;
        }
        if (i2 != 1) {
            if (i2 == -2) {
                this._list = new ArrayList<>(filterResponseList(e.list(), i));
                this._start = 0;
                this._isEnd = true;
                this._stopTime = null;
                this._errorMsg = null;
                notifyDataSetChanged();
                return;
            }
            if (i2 == -1) {
                if (i == 2) {
                    this._list = new ArrayList<>();
                    this._start = 0;
                } else if (this._list == null) {
                    this._list = new ArrayList<>();
                }
                int size = e.list() == null ? 0 : e.list().size();
                this._list.addAll(filterResponseList(e.list(), i));
                this._start += size;
                this._isEnd = size < pageSize();
                this._stopTime = e.timestamp;
                this._errorMsg = null;
                notifyDataSetChanged();
                return;
            }
            return;
        }
        String str = e.getPaging() == null ? null : e.getPaging().nextPageToken;
        String str2 = e.getPaging() == null ? null : e.getPaging().prevPageToken;
        String str3 = e.getPaging() == null ? null : e.getPaging().refreshPageToken;
        if (i == 2) {
            if (str2 == null) {
                Log.w("pagination prev token is null! keep prevToken");
            } else {
                this._prevPageToken = str2;
            }
            this._refreshPageToken = str3;
            if (str == null || this._list == null || (this.refreshFlag & 512) != 0) {
                this._list = new ArrayList<>();
                List<T> listFilterResponseList3 = filterResponseList(e.list(), i);
                if (listFilterResponseList3 == null) {
                    this._list = new ArrayList<>();
                } else {
                    this._list = new ArrayList<>(listFilterResponseList3);
                }
                this._nextPageToken = str;
                this._isEnd = str == null;
            } else {
                List<T> listFilterResponseList4 = filterResponseList(e.list(), i);
                boolean[] zArr2 = new boolean[1];
                ArrayList<T> arrayListMergeTop2 = mergeTop(this._list, listFilterResponseList4, zArr2);
                if (this._list != arrayListMergeTop2) {
                    this._list = arrayListMergeTop2;
                    if (zArr2[0]) {
                        this._nextPageToken = str;
                        this._isEnd = str == null;
                    }
                }
            }
            notifyDataSetChanged();
            return;
        }
        if (i == -1) {
            if (str2 == null) {
                Log.w("pagination prev token is null! keep prevToken");
            } else {
                this._prevPageToken = str2;
            }
            if (this._list == null) {
                this._list = new ArrayList<>();
            }
            if (e.list() != null && e.list().size() > 0) {
                this._list.addAll(0, filterResponseList(e.list(), i));
            }
            notifyDataSetChanged();
            return;
        }
        if (i == 3) {
            if (this._list == null) {
                this._list = new ArrayList<>();
            }
            if (e.list() != null && e.list().size() > 0) {
                List<T> listFilterResponseList5 = filterResponseList(e.list(), i);
                Object objTag = apiRequest.tag(REQ_MIDDLE_OBJ_ID);
                if (objTag instanceof String) {
                    this._list.addAll(Utils.indexOfId(this._list, (String) objTag), listFilterResponseList5);
                }
            }
            notifyDataSetChanged();
            return;
        }
        this._errorMsg = null;
        if (this._list == null) {
            this._list = new ArrayList<>();
        }
        if (e.list() != null && e.list().size() > 0) {
            this._list.addAll(filterResponseList(e.list(), i));
        }
        if (apiRequest.tag(REQ_TAG_FROM_START) == Boolean.TRUE) {
            this._prevPageToken = str2;
            this._refreshPageToken = str3;
        }
        if (str != null && !Utils.isEqualsNotNull(this._nextPageToken, str)) {
            z = false;
        }
        this._isEnd = z;
        if (this._isEnd) {
            str = null;
        }
        this._nextPageToken = str;
        notifyDataSetChanged();
    }

    protected static <T extends NVObject> ArrayList<T> mergeTop(ArrayList<T> arrayList, List<T> list, boolean[] zArr) {
        if (list == null) {
            return arrayList;
        }
        if (arrayList.size() == 0) {
            zArr[0] = true;
            return new ArrayList<>(list);
        }
        if (list.isEmpty()) {
            zArr[0] = true;
            return new ArrayList<>();
        }
        if (arrayList.size() >= list.size()) {
            int size = list.size() - 1;
            T t = list.get(size);
            for (int i = 0; i < list.size(); i++) {
                if (Utils.isEqualsNotNull(t.id(), arrayList.get(i).id())) {
                    ArrayList<T> arrayList2 = new ArrayList<>(arrayList.size() + (size - i));
                    arrayList2.addAll(list);
                    for (int i2 = i + 1; i2 < arrayList.size(); i2++) {
                        arrayList2.add(arrayList.get(i2));
                    }
                    return arrayList2;
                }
            }
        } else {
            T t2 = arrayList.get(0);
            for (int i3 = 0; i3 < list.size(); i3++) {
                if (Utils.isEqualsNotNull(t2.id(), list.get(i3).id())) {
                    if (i3 == 0) {
                        return arrayList;
                    }
                    ArrayList<T> arrayList3 = new ArrayList<>(arrayList.size() + i3);
                    for (int i4 = 0; i4 < i3; i4++) {
                        arrayList3.add(list.get(i4));
                    }
                    arrayList3.addAll(arrayList);
                    return arrayList3;
                }
            }
        }
        zArr[0] = true;
        return new ArrayList<>(list);
    }

    protected void onFailResponse(ApiRequest apiRequest, String str, ApiResponse apiResponse, int i) {
        if (i == 1 || list().isEmpty()) {
            this._errorMsg = str;
            notifyDataSetChanged();
        }
        if (i == 2 && !list().isEmpty() && showErrorToast(apiResponse)) {
            NVToast.makeText(getContext(), str, 0).show();
        }
    }

    protected void abortRequests() {
        ApiService apiService = (ApiService) getService("api");
        ApiRequest apiRequest = this.request;
        if (apiRequest != null) {
            apiService.abort(apiRequest, this.requestListener);
            this.request = null;
        }
        Callback<Integer> callback = this.requestCallback;
        if (callback != null) {
            callback.call(2);
        }
        this.direction = 0;
        this.refreshFlag = 0;
        this.requestCallback = null;
        this.requestTime = 0L;
        this.requestWaitTime = 0L;
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        int size = list() == null ? 0 : list().size();
        return this._isEnd ? size + (showListEnd(size) ? 1 : 0) : size + 1;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        int size = list() == null ? 0 : list().size();
        if (i < size && i >= 0) {
            return list().get(i);
        }
        if (this._isEnd) {
            return (((this.refreshFlag & 256) != 0) || this.direction != 2) ? LIST_END : LOADING;
        }
        if (this._errorMsg != null) {
            return ERROR;
        }
        if (autoLoadNextPage()) {
            return LOADING;
        }
        if (this.request != null || (size == 0 && !this._isEnd)) {
            return LOADING;
        }
        return LOAD_MORE;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        Object item = getItem(i);
        if (item == LOADING) {
            return System.currentTimeMillis();
        }
        if (item == null) {
            return 0L;
        }
        return item.hashCode();
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        Object item = getItem(i);
        if (item == null) {
            return 0;
        }
        if (item == LOADING) {
            return 1;
        }
        if (item == LOAD_MORE) {
            return 2;
        }
        if (item == LIST_END) {
            return 3;
        }
        if (item == ERROR) {
            return 4;
        }
        int itemType = getItemType(item);
        if (itemType < 0) {
            return -1;
        }
        return itemType + 5;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return getItemTypeCount() + 5;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        Object item = getItem(i);
        if (item == null) {
            Log.e(getClass().getSimpleName() + ".getItem(" + i + ") returns null");
            View viewCreateView = createView(R.layout.simple_list_item_1, viewGroup, view);
            if (NVApplication.DEBUG) {
                ((TextView) viewCreateView.findViewById(R.id.text1)).setText("getItem() returns null");
            }
            return viewCreateView;
        }
        if (item == LOADING) {
            loadNextPage(true);
            return createLoadingItem(viewGroup, view);
        }
        if (item == LOAD_MORE) {
            return createLoadMoreItem(viewGroup, view);
        }
        if (item == LIST_END) {
            return createListEndItem(viewGroup, view, rawList() == null ? 0 : rawList().size());
        }
        if (item == ERROR) {
            return createErrorItem(viewGroup, view, this._errorMsg);
        }
        int count = getCount();
        if (i >= (count - 5) - 1 && getItem(count - 1) == LOADING) {
            loadNextPage(true);
        }
        View itemView = getItemView(item, view, viewGroup);
        if (itemView == null) {
            Log.e(getClass().getSimpleName() + ".getItemView(" + i + ") returns null for object " + item);
            View viewCreateView2 = createView(R.layout.simple_list_item_1, viewGroup, view);
            if (NVApplication.DEBUG) {
                ((TextView) viewCreateView2.findViewById(R.id.text1)).setText("getItemView() returns null");
            }
            return viewCreateView2;
        }
        if (itemView.getTag(com.narvii.lib.R.id._not_set_cell_tag) != Boolean.TRUE && tagCellAuto()) {
            tagCellForLog(itemView, item);
        }
        return itemView;
    }

    @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
        if (obj == ERROR) {
            loadNextPage(false);
            return true;
        }
        if (obj == LOAD_MORE) {
            loadNextPage(false);
            return true;
        }
        if (obj == LIST_END && list() != null && list().isEmpty()) {
            resetList();
            return true;
        }
        return super.onItemClick(listAdapter, i, obj, view, view2);
    }

    @Override // com.narvii.list.NVAdapter
    public View createLoadingItem(ViewGroup viewGroup, View view) {
        View viewCreateView = createView(com.narvii.lib.R.layout.normal_loading_list_item, viewGroup, view, "loading");
        SpinningView spinningView = (SpinningView) viewCreateView.findViewById(com.narvii.lib.R.id.spinner);
        if (spinningView != null) {
            spinningView.setSpinColor((this.darkTheme || isDarkNVTheme()) ? -1 : -12303292);
        }
        TextView textView = (TextView) viewCreateView.findViewById(com.narvii.lib.R.id.text);
        if (textView != null) {
            textView.setTextColor((this.darkTheme || isDarkNVTheme()) ? -1 : -12303292);
        }
        return viewCreateView;
    }

    public View createLoadMoreItem(ViewGroup viewGroup, View view) {
        View viewCreateView = createView(com.narvii.lib.R.layout.normal_load_more_list_item, viewGroup, view, "loadMore");
        TextView textView = (TextView) viewCreateView.findViewById(com.narvii.lib.R.id.text);
        if (textView != null) {
            textView.setTextColor((this.darkTheme || isDarkNVTheme()) ? -1 : -12303292);
        }
        return viewCreateView;
    }

    public View createListEndItem(ViewGroup viewGroup, View view, int i) {
        View viewCreateView = createView(com.narvii.lib.R.layout.normal_list_end_item, viewGroup, view, "listEnd");
        TextView textView = (TextView) viewCreateView.findViewById(com.narvii.lib.R.id.icon);
        TextView textView2 = (TextView) viewCreateView.findViewById(com.narvii.lib.R.id.text);
        if (i == 0) {
            textView.setVisibility(0);
            textView2.setText(getContext().getString(com.narvii.lib.R.string._empty));
        } else {
            textView.setVisibility(8);
            textView2.setText(getContext().getString(com.narvii.lib.R.string.normal_end_n_items, Integer.valueOf(i)));
        }
        int i2 = -1;
        if (textView2 != null) {
            textView2.setTextColor((this.darkTheme || isDarkNVTheme()) ? -1 : -10066330);
        }
        if (textView != null) {
            if (!this.darkTheme && !isDarkNVTheme()) {
                i2 = -7829368;
            }
            textView.setTextColor(i2);
        }
        return viewCreateView;
    }

    public boolean loadFinishEmptyOrError() {
        return (isEnd() && isEmpty()) || errorMessage() != null;
    }
}
