package com.narvii.list;

import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.lib.R;
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

/* JADX INFO: loaded from: classes8.dex */
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
    public static final Tag ERROR = new Tag(com.google.firebase.messaging.e.IPC_BUNDLE_KEY_SEND_ERROR);
    private static final Tag REQ_TAG_START = new Tag("reqStart");
    private static final Tag REQ_TAG_SIZE = new Tag("reqSize");
    private static final Tag REQ_TAG_FROM_START = new Tag("reqFromStart");
    private static final Tag REQ_TAG_REFRESH_FLAG = new Tag("reqRefreshFlag");
    private static final Tag REQ_MIDDLE_OBJ_ID = new Tag("reqMiddleObjId");

    public NVPagedAdapter(NVContext nVContext, int i10) {
        super(nVContext);
        this.requestListener = (ApiResponseListener<E>) new ApiResponseListener<E>(responseType()) { // from class: com.narvii.list.NVPagedAdapter.1
            @Override // com.narvii.util.http.ApiResponseListener
            public /* bridge */ /* synthetic */ ApiResponse parseResponse(ApiRequest apiRequest, int i11, List list, byte[] bArr) throws Exception {
                return parseResponse(apiRequest, i11, (List<NameValuePair>) list, bArr);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i11, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                int i12 = NVPagedAdapter.this.direction;
                Callback callback = NVPagedAdapter.this.requestCallback;
                NVPagedAdapter.this.request = null;
                NVPagedAdapter.this.direction = 0;
                NVPagedAdapter.this.requestCallback = null;
                NVPagedAdapter.this.onFailResponse(apiRequest, str, apiResponse, i12);
                NVPagedAdapter.this.refreshFlag = 0;
                if (callback != null) {
                    callback.call(1);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, E e) throws Exception {
                int i11 = NVPagedAdapter.this.direction;
                Callback callback = NVPagedAdapter.this.requestCallback;
                NVPagedAdapter.this.request = null;
                NVPagedAdapter.this.direction = 0;
                NVPagedAdapter.this.requestCallback = null;
                NVPagedAdapter nVPagedAdapter = NVPagedAdapter.this;
                ImpressionCollector impressionCollector = nVPagedAdapter.mainIpc;
                if (impressionCollector != null && i11 == 2) {
                    ImpressionUtils.clearImpression(impressionCollector, nVPagedAdapter.context);
                }
                NVPagedAdapter.this.onPageResponse(apiRequest, e, i11);
                NVPagedAdapter.this.refreshFlag = 0;
                if (callback != null) {
                    callback.call(0);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public E parseResponse(ApiRequest apiRequest, int i11, List<NameValuePair> list, byte[] bArr) throws Exception {
                if (NVPagedAdapter.this.requestWaitTime > 0) {
                    long jMax = NVPagedAdapter.this.requestWaitTime - Math.max(SystemClock.elapsedRealtime() - NVPagedAdapter.this.requestTime, 0L);
                    if (jMax > 0) {
                        Log.i("refresh wait for " + jMax + "ms");
                        Thread.sleep(jMax);
                    }
                }
                return (E) super.parseResponse(apiRequest, i11, list, bArr);
            }
        };
        this.paginationType = i10;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        return true;
    }

    public boolean autoLoadNextPage() {
        return true;
    }

    protected abstract ApiRequest createRequest(boolean z6);

    /* JADX INFO: Access modifiers changed from: protected */
    public JsonDeserializer<T> dataDeserializer() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract Class<T> dataType();

    protected boolean filterDuplicate() {
        return false;
    }

    protected List<T> filterResponseList(List<T> list, int i10) {
        return (i10 == 2 || !filterDuplicate()) ? new FilterHelper(this).filter(list) : new FilterHelper(this).filter(Utils.filterDuplicated(rawList(), list));
    }

    protected abstract int getItemType(Object obj);

    protected abstract int getItemTypeCount();

    protected abstract View getItemView(Object obj, View view, ViewGroup viewGroup);

    public boolean hasPrevPage() {
        return this._prevPageToken != null;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return true;
    }

    protected boolean ignoreStopTime() {
        return false;
    }

    public boolean isAttached() {
        return this.attached;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i10) {
        return true;
    }

    public boolean isEnd() {
        return this._isEnd;
    }

    @Override // com.narvii.list.NVAdapter
    public void onAttach() {
        this.attached = true;
        boolean z6 = this._list == null;
        if (z6) {
            this._list = new ArrayList<>();
        }
        super.onAttach();
        if (z6) {
            resetList();
        } else {
            if (this._start != 0 || this._isEnd) {
                return;
            }
            loadNextPage(true);
        }
    }

    @Override // com.narvii.list.NVAdapter
    public void onErrorRetry() {
        this._errorMsg = null;
        loadNextPage(false);
    }

    protected void onFailResponse(ApiRequest apiRequest, String str, ApiResponse apiResponse, int i10) {
        if (i10 == 1 || list().isEmpty()) {
            this._errorMsg = str;
            notifyDataSetChanged();
        }
        if (i10 == 2 && !list().isEmpty() && showErrorToast(apiResponse)) {
            NVToast.makeText(getContext(), str, 0).show();
        }
    }

    public final List<? extends T> rawList() {
        return this._list;
    }

    protected boolean resetWhenEmpty() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract Class<? extends E> responseType();

    public void setDatePageHelper(DatePageHelper datePageHelper) {
        this.datePageHelper = datePageHelper;
    }

    public void setList(ArrayList<T> arrayList) {
        this._list = arrayList;
    }

    public void setRefreshWaitTime(long j6) {
        this.requestWaitTime = j6;
    }

    protected boolean showErrorToast(ApiResponse apiResponse) {
        return true;
    }

    public boolean showListEnd(int i10) {
        return false;
    }

    protected boolean tagCellAuto() {
        return true;
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
            T t5 = list.get(size);
            for (int i10 = 0; i10 < list.size(); i10++) {
                if (Utils.isEqualsNotNull(t5.id(), arrayList.get(i10).id())) {
                    ArrayList<T> arrayList2 = new ArrayList<>(arrayList.size() + (size - i10));
                    arrayList2.addAll(list);
                    for (int i11 = i10 + 1; i11 < arrayList.size(); i11++) {
                        arrayList2.add(arrayList.get(i11));
                    }
                    return arrayList2;
                }
            }
        } else {
            T t10 = arrayList.get(0);
            for (int i12 = 0; i12 < list.size(); i12++) {
                if (Utils.isEqualsNotNull(t10.id(), list.get(i12).id())) {
                    if (i12 == 0) {
                        return arrayList;
                    }
                    ArrayList<T> arrayList3 = new ArrayList<>(arrayList.size() + i12);
                    for (int i13 = 0; i13 < i12; i13++) {
                        arrayList3.add(list.get(i13));
                    }
                    arrayList3.addAll(arrayList);
                    return arrayList3;
                }
            }
        }
        zArr[0] = true;
        return new ArrayList<>(list);
    }

    private void replaceObject(int i10, T t5) {
        String strategyInfo;
        ArrayList<T> arrayList = this._list;
        if (arrayList == null) {
            return;
        }
        T t10 = arrayList.get(i10);
        if ((t10 instanceof StrategyObject) && (t5 instanceof StrategyObject) && (strategyInfo = ((StrategyObject) t10).getStrategyInfo()) != null) {
            try {
                Cloneable cloneableM1622clone = t5.m1622clone();
                ((StrategyObject) cloneableM1622clone).setStrategyInfo(strategyInfo);
                this._list.set(i10, (T) cloneableM1622clone);
                return;
            } catch (Exception e) {
                Log.e("replace object", e);
            }
        }
        this._list.set(i10, t5);
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

    public void addAllFirst(List<T> list) {
        if (this._list == null || list == null) {
            return;
        }
        int i10 = 0;
        for (T t5 : list) {
            if (Utils.indexOfId(this._list, t5.id()) < 0) {
                this._list.add(i10, t5);
                i10++;
            }
        }
        notifyDataSetChanged();
    }

    public View createListEndItem(ViewGroup viewGroup, View view, int i10) {
        View viewCreateView = createView(R.layout.normal_list_end_item, viewGroup, view, "listEnd");
        TextView textView = (TextView) viewCreateView.findViewById(R.id.icon);
        TextView textView2 = (TextView) viewCreateView.findViewById(R.id.text);
        if (i10 == 0) {
            textView.setVisibility(0);
            textView2.setText(getContext().getString(R.string._empty));
        } else {
            textView.setVisibility(8);
            textView2.setText(getContext().getString(R.string.normal_end_n_items, Integer.valueOf(i10)));
        }
        int i11 = -1;
        if (textView2 != null) {
            textView2.setTextColor((this.darkTheme || isDarkNVTheme()) ? -1 : -10066330);
        }
        if (textView != null) {
            if (!this.darkTheme && !isDarkNVTheme()) {
                i11 = -7829368;
            }
            textView.setTextColor(i11);
        }
        return viewCreateView;
    }

    public View createLoadMoreItem(ViewGroup viewGroup, View view) {
        View viewCreateView = createView(R.layout.normal_load_more_list_item, viewGroup, view, "loadMore");
        TextView textView = (TextView) viewCreateView.findViewById(R.id.text);
        if (textView != null) {
            textView.setTextColor((this.darkTheme || isDarkNVTheme()) ? -1 : -12303292);
        }
        return viewCreateView;
    }

    @Override // com.narvii.list.NVAdapter
    public View createLoadingItem(ViewGroup viewGroup, View view) {
        View viewCreateView = createView(R.layout.normal_loading_list_item, viewGroup, view, "loading");
        SpinningView spinningView = (SpinningView) viewCreateView.findViewById(R.id.spinner);
        int i10 = -1;
        if (spinningView != null) {
            spinningView.setSpinColor((this.darkTheme || isDarkNVTheme()) ? -1 : -12303292);
        }
        TextView textView = (TextView) viewCreateView.findViewById(R.id.text);
        if (textView != null) {
            if (!this.darkTheme && !isDarkNVTheme()) {
                i10 = -12303292;
            }
            textView.setTextColor(i10);
        }
        return viewCreateView;
    }

    public void editList(Notification notification, boolean z6) {
        if (this._list != null && dataType().isInstance(notification.obj)) {
            NVObject nVObject = (NVObject) notification.obj;
            String str = notification.action;
            if (str == "new") {
                if (filterDuplicate() && Utils.indexOfId(this._list, nVObject.id()) >= 0) {
                    notifyDataSetChanged();
                    return;
                } else {
                    this._list.add(0, (T) nVObject);
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
                if (z6) {
                    this._list.add(0, (T) nVObject);
                    notifyDataSetChanged();
                    return;
                }
                return;
            }
            if (z6) {
                this._list.remove(iIndexOfId2);
                this._list.add(0, (T) nVObject);
                if (this.paginationType == 0) {
                    this._start--;
                }
            } else {
                replaceObject(iIndexOfId2, nVObject);
            }
            notifyDataSetChanged();
        }
    }

    public List<?> list() {
        DatePageHelper datePageHelper = this.datePageHelper;
        return datePageHelper != null ? datePageHelper.getList() : rawList();
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

    public void loadNextPage(boolean z6) {
        ArrayList<T> arrayList;
        if (this._list == null || this._isEnd || this.request != null) {
            return;
        }
        this._errorMsg = null;
        ApiService apiService = (ApiService) getService("api");
        int i10 = this.paginationType;
        boolean z10 = i10 != 0 ? !(i10 != 1 ? !(i10 == -2 || (arrayList = this._list) == null || arrayList.isEmpty()) : this._nextPageToken != null) : this._start == 0;
        ApiRequest apiRequestCreateRequest = createRequest(z10);
        if (apiRequestCreateRequest == null) {
            this.request = null;
        } else {
            int i11 = this.paginationType;
            if (i11 == 0) {
                ApiRequest.Builder builderEdit = apiRequestCreateRequest.edit();
                int iPageSize = pageSize();
                builderEdit.param("start", Integer.valueOf(this._start));
                builderEdit.param("size", Integer.valueOf(iPageSize));
                if (!TextUtils.isEmpty(this._stopTime) && !ignoreStopTime()) {
                    builderEdit.param("stoptime", this._stopTime);
                }
                builderEdit.tag(REQ_TAG_START, Integer.valueOf(this._start));
                builderEdit.tag(REQ_TAG_FROM_START, Boolean.valueOf(z10));
                builderEdit.tag(REQ_TAG_SIZE, Integer.valueOf(iPageSize));
                this.request = builderEdit.build();
            } else if (i11 == 1) {
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
                builderEdit2.tag(REQ_TAG_FROM_START, Boolean.valueOf(z10));
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
        builderEdit.tag(REQ_TAG_FROM_START, Boolean.FALSE);
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

    @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
        if (obj == ERROR) {
            loadNextPage(false);
            return true;
        }
        if (obj == LOAD_MORE) {
            loadNextPage(false);
            return true;
        }
        if (obj != LIST_END || list() == null || !list().isEmpty()) {
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }
        resetList();
        return true;
    }

    protected void onPageResponse(ApiRequest apiRequest, E e, int i10) {
        int i11 = this.paginationType;
        boolean z6 = true;
        if (i11 == 0) {
            int iTagInt = apiRequest.tagInt(REQ_TAG_SIZE, pageSize());
            if (i10 != 2) {
                this._errorMsg = null;
                if (this._list == null) {
                    this._list = new ArrayList<>();
                }
                if (e.list() == null || e.list().size() == 0) {
                    this._isEnd = true;
                } else {
                    this._list.addAll(filterResponseList(e.list(), i10));
                    this._start = apiRequest.tagInt(REQ_TAG_START, this._start) + iTagInt;
                }
                if (this._stopTime == null) {
                    this._stopTime = e.timestamp;
                }
                notifyDataSetChanged();
                return;
            }
            ArrayList<T> arrayList = this._list;
            if (arrayList == null || arrayList.size() <= iTagInt || (this.refreshFlag & 512) != 0) {
                this._list = new ArrayList<>();
                List<T> listFilterResponseList = filterResponseList(e.list(), i10);
                if (listFilterResponseList == null) {
                    this._list = new ArrayList<>();
                } else {
                    this._list = new ArrayList<>(listFilterResponseList);
                }
                this._start = iTagInt;
                if (e.list() != null && e.list().size() != 0) {
                    z6 = false;
                }
                this._isEnd = z6;
                this._stopTime = e.timestamp;
            } else {
                List<T> listFilterResponseList2 = filterResponseList(e.list(), i10);
                boolean[] zArr = new boolean[1];
                ArrayList<T> arrayListMergeTop = mergeTop(this._list, listFilterResponseList2, zArr);
                if (this._list != arrayListMergeTop) {
                    this._list = arrayListMergeTop;
                    this._stopTime = e.timestamp;
                    if (zArr[0]) {
                        this._start = iTagInt;
                        if (e.list() != null && e.list().size() != 0) {
                            z6 = false;
                        }
                        this._isEnd = z6;
                    }
                }
            }
            notifyDataSetChanged();
            return;
        }
        if (i11 != 1) {
            if (i11 == -2) {
                this._list = new ArrayList<>(filterResponseList(e.list(), i10));
                this._start = 0;
                this._isEnd = true;
                this._stopTime = null;
                this._errorMsg = null;
                notifyDataSetChanged();
                return;
            }
            if (i11 == -1) {
                if (i10 == 2) {
                    this._list = new ArrayList<>();
                    this._start = 0;
                } else if (this._list == null) {
                    this._list = new ArrayList<>();
                }
                int size = e.list() == null ? 0 : e.list().size();
                this._list.addAll(filterResponseList(e.list(), i10));
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
        if (i10 == 2) {
            if (str2 == null) {
                Log.w("pagination prev token is null! keep prevToken");
            } else {
                this._prevPageToken = str2;
            }
            this._refreshPageToken = str3;
            if (str == null || this._list == null || (this.refreshFlag & 512) != 0) {
                this._list = new ArrayList<>();
                List<T> listFilterResponseList3 = filterResponseList(e.list(), i10);
                if (listFilterResponseList3 == null) {
                    this._list = new ArrayList<>();
                } else {
                    this._list = new ArrayList<>(listFilterResponseList3);
                }
                this._nextPageToken = str;
                this._isEnd = str == null;
            } else {
                List<T> listFilterResponseList4 = filterResponseList(e.list(), i10);
                boolean[] zArr2 = new boolean[1];
                ArrayList<T> arrayListMergeTop2 = mergeTop(this._list, listFilterResponseList4, zArr2);
                if (this._list != arrayListMergeTop2) {
                    this._list = arrayListMergeTop2;
                    if (zArr2[0]) {
                        this._nextPageToken = str;
                        this._isEnd = false;
                    }
                }
            }
            notifyDataSetChanged();
            return;
        }
        if (i10 == -1) {
            if (str2 == null) {
                Log.w("pagination prev token is null! keep prevToken");
            } else {
                this._prevPageToken = str2;
            }
            if (this._list == null) {
                this._list = new ArrayList<>();
            }
            if (e.list() != null && e.list().size() > 0) {
                this._list.addAll(0, filterResponseList(e.list(), i10));
            }
            notifyDataSetChanged();
            return;
        }
        if (i10 == 3) {
            if (this._list == null) {
                this._list = new ArrayList<>();
            }
            if (e.list() != null && e.list().size() > 0) {
                List<T> listFilterResponseList5 = filterResponseList(e.list(), i10);
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
            this._list.addAll(filterResponseList(e.list(), i10));
        }
        if (apiRequest.tag(REQ_TAG_FROM_START) == Boolean.TRUE) {
            this._prevPageToken = str2;
            this._refreshPageToken = str3;
        }
        if (str != null && !Utils.isEqualsNotNull(this._nextPageToken, str)) {
            z6 = false;
        }
        this._isEnd = z6;
        this._nextPageToken = z6 ? null : str;
        notifyDataSetChanged();
    }

    protected int pageSize() {
        return ((ConfigService) getService("config")).getPageSize();
    }

    @Override // com.narvii.list.NVAdapter
    public void refresh(int i10, Callback<Integer> callback) {
        boolean z6 = (i10 & 256) != 0;
        ArrayList<T> arrayList = this._list;
        if ((arrayList == null || (!z6 && arrayList.isEmpty())) && resetWhenEmpty()) {
            resetList();
            if (this.request != null) {
                this.requestCallback = callback;
                this.direction = 2;
                this.refreshFlag = i10;
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
            int i11 = this.paginationType;
            if (i11 == 0) {
                ApiRequest.Builder builderEdit = apiRequestCreateRequest.edit();
                int iPageSize = pageSize();
                builderEdit.param("start", 0);
                builderEdit.param("size", Integer.valueOf(iPageSize));
                builderEdit.tag(REQ_TAG_START, Integer.valueOf(this._start));
                builderEdit.tag(REQ_TAG_FROM_START, Boolean.TRUE);
                builderEdit.tag(REQ_TAG_SIZE, Integer.valueOf(iPageSize));
                builderEdit.tag(REQ_TAG_REFRESH_FLAG, Integer.valueOf(i10));
                this.request = builderEdit.build();
            } else if (i11 == 1) {
                ApiRequest.Builder builderEdit2 = apiRequestCreateRequest.edit();
                int iPageSize2 = pageSize();
                builderEdit2.param("pagingType", "t");
                String str = this._refreshPageToken;
                if (str != null) {
                    builderEdit2.param("pageToken", str);
                }
                builderEdit2.param("size", Integer.valueOf(iPageSize2));
                builderEdit2.tag(REQ_TAG_FROM_START, Boolean.TRUE);
                builderEdit2.tag(REQ_TAG_SIZE, Integer.valueOf(iPageSize2));
                builderEdit2.tag(REQ_TAG_REFRESH_FLAG, Integer.valueOf(i10));
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
        this.refreshFlag = i10;
        this.requestCallback = callback;
        this.requestTime = SystemClock.elapsedRealtime();
        this.requestWaitTime = 0L;
        apiService.exec(this.request, this.requestListener);
    }

    protected int removeIdEqualsObject(T t5) {
        return Utils.removeId(this._list, t5.id());
    }

    public int removeIdEqualsObjectId(String str) {
        return Utils.removeId(this._list, str);
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

    public NVPagedAdapter(NVContext nVContext) {
        this(nVContext, 0);
    }

    @Override // com.narvii.list.NVAdapter
    public String errorMessage() {
        if (list() == null || !list().isEmpty()) {
            return null;
        }
        return this._errorMsg;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        int size;
        if (list() == null) {
            size = 0;
        } else {
            size = list().size();
        }
        if (this._isEnd) {
            return size + (showListEnd(size) ? 1 : 0);
        }
        return size + 1;
    }

    public Class<T> getDataClass() {
        return dataType();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i10) {
        int size;
        if (list() == null) {
            size = 0;
        } else {
            size = list().size();
        }
        if (i10 < size && i10 >= 0) {
            return list().get(i10);
        }
        if (this._isEnd) {
            if ((this.refreshFlag & 256) != 0 || this.direction != 2) {
                return LIST_END;
            }
            return LOADING;
        }
        if (this._errorMsg != null) {
            return ERROR;
        }
        if (autoLoadNextPage()) {
            return LOADING;
        }
        if (this.request == null && (size != 0 || this._isEnd)) {
            return LOAD_MORE;
        }
        return LOADING;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        Object item = getItem(i10);
        if (item == LOADING) {
            return System.currentTimeMillis();
        }
        if (item == null) {
            return 0L;
        }
        return item.hashCode();
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i10) {
        Object item = getItem(i10);
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

    @Override // android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        int size;
        Object item = getItem(i10);
        if (item == null) {
            Log.e(getClass().getSimpleName() + ".getItem(" + i10 + ") returns null");
            View viewCreateView = createView(android.R.layout.simple_list_item_1, viewGroup, view);
            if (NVApplication.DEBUG) {
                ((TextView) viewCreateView.findViewById(android.R.id.text1)).setText("getItem() returns null");
            }
            return viewCreateView;
        }
        Tag tag = LOADING;
        if (item == tag) {
            loadNextPage(true);
            return createLoadingItem(viewGroup, view);
        }
        if (item == LOAD_MORE) {
            return createLoadMoreItem(viewGroup, view);
        }
        if (item == LIST_END) {
            if (rawList() == null) {
                size = 0;
            } else {
                size = rawList().size();
            }
            return createListEndItem(viewGroup, view, size);
        }
        if (item == ERROR) {
            return createErrorItem(viewGroup, view, this._errorMsg);
        }
        int count = getCount();
        if (i10 >= count - 6 && getItem(count - 1) == tag) {
            loadNextPage(true);
        }
        View itemView = getItemView(item, view, viewGroup);
        if (itemView == null) {
            Log.e(getClass().getSimpleName() + ".getItemView(" + i10 + ") returns null for object " + item);
            View viewCreateView2 = createView(android.R.layout.simple_list_item_1, viewGroup, view);
            if (NVApplication.DEBUG) {
                ((TextView) viewCreateView2.findViewById(android.R.id.text1)).setText("getItemView() returns null");
            }
            return viewCreateView2;
        }
        if (itemView.getTag(R.id._not_set_cell_tag) != Boolean.TRUE && tagCellAuto()) {
            tagCellForLog(itemView, item);
        }
        return itemView;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return getItemTypeCount() + 5;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean isEmpty() {
        if (list() != null && !list().isEmpty()) {
            return false;
        }
        return true;
    }

    @Override // com.narvii.list.NVAdapter
    public boolean isListShown() {
        if ((list() != null && list().size() > 0) || this._isEnd) {
            return true;
        }
        return false;
    }

    public boolean loadFinishEmptyOrError() {
        if ((isEnd() && isEmpty()) || errorMessage() != null) {
            return true;
        }
        return false;
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
                this._start = bundle.getInt("start");
                this._isEnd = bundle.getBoolean("isEnd");
                this._stopTime = bundle.getString("stopTime");
                this._prevPageToken = bundle.getString("prevPageToken");
                this._nextPageToken = bundle.getString("nextPageToken");
                this._errorMsg = bundle.getString("errorMsg");
            }
        }
    }

    @Override // com.narvii.list.NVAdapter
    public Bundle onSaveInstanceState() {
        Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
        if (saveInstanceState()) {
            String strSafeWriteAsString = JacksonUtils.safeWriteAsString(this._list);
            bundleOnSaveInstanceState.putInt("start", this._start);
            bundleOnSaveInstanceState.putString("list", strSafeWriteAsString);
            bundleOnSaveInstanceState.putBoolean("isEnd", this._isEnd);
            bundleOnSaveInstanceState.putString("stopTime", this._stopTime);
            bundleOnSaveInstanceState.putString("prevPageToken", this._prevPageToken);
            bundleOnSaveInstanceState.putString("nextPageToken", this._nextPageToken);
            bundleOnSaveInstanceState.putString("errorMsg", this._errorMsg);
        }
        return bundleOnSaveInstanceState;
    }
}
