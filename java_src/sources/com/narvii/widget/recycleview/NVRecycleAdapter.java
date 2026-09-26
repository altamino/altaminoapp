package com.narvii.widget.recycleview;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.google.firebase.messaging.e;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.model.NVObject;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.ListResponse;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.Tag;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.SpinningView;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public abstract class NVRecycleAdapter<T extends NVObject, E extends ListResponse<? extends T>> extends RecyclerView.Adapter implements ItemClickSupport.OnItemClickListener, ItemClickSupport.OnItemLongClickListener {
    private static final int DEFAULT_TYPE_COUNT = 5;
    private static final String TAG = "NVRecyclerViewAdapter";
    private static final int TYPE_ERROR = 4;
    private static final int TYPE_LIST_END = 3;
    private static final int TYPE_LOADING = 1;
    private static final int TYPE_LOAD_MORE = 2;
    private static final int TYPE_NULL = 0;
    private String _errorMessage;
    protected boolean _isEnd;
    private List<T> _list;
    private int _start;
    private String _stopTime;
    protected NVContext context;
    private boolean isRefreshing;
    private ItemClickSupport itemClickSupport;
    RecyclerView recyclerView;
    private ApiRequest request;
    private final ApiResponseListener<E> requestListener = (ApiResponseListener<E>) new ApiResponseListener<E>(responseType()) { // from class: com.narvii.widget.recycleview.NVRecycleAdapter.1
        @Override // com.narvii.util.http.ApiResponseListener
        public void onFinish(ApiRequest apiRequest, E e) throws Exception {
            super.onFinish(apiRequest, e);
            boolean z6 = NVRecycleAdapter.this.isRefreshing;
            NVRecycleAdapter.this.isRefreshing = false;
            NVRecycleAdapter.this.request = null;
            NVRecycleAdapter.this.onPageResponse(apiRequest, e, z6);
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
            super.onFail(apiRequest, i10, list, str, apiResponse, th);
            boolean z6 = NVRecycleAdapter.this.isRefreshing;
            NVRecycleAdapter.this.request = null;
            NVRecycleAdapter.this.isRefreshing = false;
            NVRecycleAdapter.this.onFailResponse(apiRequest, str, z6);
        }
    };
    public static final Tag LOADING = new Tag("loading");
    public static final Tag LOAD_MORE = new Tag("loadMore");
    public static final Tag LIST_END = new Tag("listEnd");
    public static final Tag ERROR = new Tag(e.IPC_BUNDLE_KEY_SEND_ERROR);

    protected class DefaultViewHolder extends RecyclerView.ViewHolder {
        public Tag tag;

        public DefaultViewHolder(Tag tag, View view) {
            super(view);
            this.tag = tag;
        }
    }

    protected boolean autoLoadNextPage() {
        return true;
    }

    protected abstract void bindCustomViewHolder(RecyclerView.ViewHolder viewHolder, int i10);

    protected abstract ApiRequest createRequest(int i10, int i11, String str);

    protected JsonDeserializer<T> dataDeserializer() {
        return null;
    }

    protected abstract Class<T> dataType();

    public String errorMessage() {
        return this._errorMessage;
    }

    protected List<T> filterResponseList(List<T> list) {
        return list;
    }

    protected abstract int getItemType(int i10, Object obj);

    protected abstract int getItemTypeCount();

    protected abstract RecyclerView.ViewHolder getItemViewHolder(ViewGroup viewGroup, int i10);

    public void insertItem(T t5) {
        if (this._list == null) {
            this._list = new ArrayList();
        }
        this._list.add(t5);
        notifyDataSetChanged();
    }

    protected boolean isDarkTheme() {
        return false;
    }

    public List<T> list() {
        return this._list;
    }

    protected void onBindEndViewHolder(RecyclerView.ViewHolder viewHolder, int i10) {
    }

    protected void onEndItemClicked() {
    }

    public void onErrorRetry() {
        this._errorMessage = null;
        loadNextPage();
    }

    @Override // com.narvii.widget.recycleview.ItemClickSupport.OnItemLongClickListener
    public boolean onItemLongClicked(RecyclerView recyclerView, int i10, View view) {
        return false;
    }

    protected int pageSize() {
        return 20;
    }

    protected abstract Class<? extends E> responseType();

    protected boolean showListEnd(int i10) {
        return false;
    }

    public View createErrorItem(ViewGroup viewGroup, String str) {
        View viewCreateView = createView(R.layout.normal_error_list_item, viewGroup);
        TextView textView = (TextView) viewCreateView.findViewById(R.id.text);
        if (textView != null) {
            textView.setTextColor(isDarkTheme() ? -1 : -12303292);
        }
        return viewCreateView;
    }

    public View createListEndItem(ViewGroup viewGroup, int i10) {
        View viewCreateView = createView(R.layout.normal_list_end_item, viewGroup);
        TextView textView = (TextView) viewCreateView.findViewById(R.id.icon);
        TextView textView2 = (TextView) viewCreateView.findViewById(R.id.text);
        if (i10 == 0) {
            textView.setVisibility(0);
            textView2.setText(viewGroup.getContext().getString(R.string.normal_empty_list));
        } else {
            textView.setVisibility(8);
            textView2.setText(viewGroup.getContext().getString(R.string.normal_end_n_items, Integer.valueOf(i10)));
        }
        if (textView2 != null) {
            textView2.setTextColor(isDarkTheme() ? -1 : -10066330);
        }
        if (textView != null) {
            textView.setTextColor(isDarkTheme() ? -1 : -7829368);
        }
        return viewCreateView;
    }

    public View createLoadMoreItem(ViewGroup viewGroup) {
        View viewCreateView = createView(R.layout.horizontal_load_more_list_item, viewGroup);
        TextView textView = (TextView) viewCreateView.findViewById(R.id.text);
        if (textView != null) {
            textView.setTextColor(isDarkTheme() ? -1 : -12303292);
        }
        return viewCreateView;
    }

    public View createLoadingItem(ViewGroup viewGroup) {
        View viewCreateView = createView(R.layout.horizontal_loading_list_item, viewGroup);
        SpinningView spinningView = (SpinningView) viewCreateView.findViewById(R.id.spinner);
        if (spinningView != null) {
            spinningView.setSpinColor(isDarkTheme() ? -1 : -12303292);
        }
        TextView textView = (TextView) viewCreateView.findViewById(R.id.text);
        if (textView != null) {
            textView.setTextColor(isDarkTheme() ? -1 : -12303292);
        }
        return viewCreateView;
    }

    public void loadNextPage() {
        if (this._list == null || this._isEnd || this.request != null) {
            return;
        }
        this._errorMessage = null;
        ApiService apiService = (ApiService) this.context.getService("api");
        ApiRequest apiRequestCreateRequest = createRequest(this._start, pageSize(), this._stopTime);
        this.request = apiRequestCreateRequest;
        if (apiRequestCreateRequest != null) {
            apiService.exec(apiRequestCreateRequest, this.requestListener);
        }
    }

    public void onAttach() {
        if (this._list == null) {
            this._list = new ArrayList();
            resetList();
        } else {
            if (this._start != 0 || this._isEnd) {
                return;
            }
            loadNextPage();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i10) {
        if (i10 == 0) {
            Log.e(getClass().getSimpleName() + ".getItemType returns null");
            View viewCreateView = createView(android.R.layout.simple_list_item_1, viewGroup);
            if (NVApplication.DEBUG) {
                ((TextView) viewCreateView.findViewById(android.R.id.text1)).setText("getItem() returns null");
            }
            return new DefaultViewHolder(null, viewCreateView);
        }
        if (i10 == 1) {
            return new DefaultViewHolder(LOADING, createLoadingItem(viewGroup));
        }
        if (i10 == 2) {
            return new DefaultViewHolder(LOAD_MORE, createLoadMoreItem(viewGroup));
        }
        if (i10 == 3) {
            return new DefaultViewHolder(LIST_END, createListEndItem(viewGroup, list() == null ? 0 : list().size()));
        }
        if (i10 == 4) {
            return new DefaultViewHolder(ERROR, createErrorItem(viewGroup, this._errorMessage));
        }
        return getItemViewHolder(viewGroup, i10 - 5);
    }

    protected void onFailResponse(ApiRequest apiRequest, String str, boolean z6) {
        if (this._list.isEmpty()) {
            this._errorMessage = str;
            notifyDataSetChanged();
        }
        if (this._list.isEmpty()) {
            return;
        }
        NVToast.makeText(this.context.getContext(), str, 0).show();
    }

    protected void onPageResponse(ApiRequest apiRequest, E e, boolean z6) {
        int i10 = this._start;
        int size = e.list() == null ? 0 : e.list().size();
        try {
            Uri uri = Uri.parse(apiRequest.url());
            String queryParameter = uri.getQueryParameter("start");
            String queryParameter2 = uri.getQueryParameter("size");
            if (!TextUtils.isEmpty(queryParameter) && !TextUtils.isEmpty(queryParameter2)) {
                i10 = Integer.parseInt(queryParameter);
                size = Integer.parseInt(queryParameter2);
            }
        } catch (Exception unused) {
        }
        if (!z6) {
            this._errorMessage = null;
            if (this._list == null) {
                this._list = new ArrayList();
            }
            if (e.list() == null || e.list().size() == 0) {
                this._isEnd = true;
                notifyDataSetChanged();
            } else {
                List<T> listFilterResponseList = filterResponseList(e.list());
                int size2 = listFilterResponseList.size();
                this._list.addAll(listFilterResponseList);
                this._start = i10 + size;
                notifyItemRangeChanged(size2, listFilterResponseList.size());
            }
            if (this._stopTime == null) {
                this._stopTime = e.timestamp;
                return;
            }
            return;
        }
        List<T> listFilterResponseList2 = filterResponseList(e.list());
        List<T> list = this._list;
        if (list == null || list.size() <= size) {
            if (listFilterResponseList2 == null) {
                this._list = new ArrayList();
            } else {
                this._list = new ArrayList(listFilterResponseList2);
            }
            this._start = i10 + size;
            this._isEnd = e.list() == null || e.list().size() == 0;
            this._stopTime = e.timestamp;
            notifyDataSetChanged();
            return;
        }
        int size3 = listFilterResponseList2 != null ? listFilterResponseList2.size() : 0;
        if (listFilterResponseList2 == null) {
            return;
        }
        ArrayList arrayList = new ArrayList(listFilterResponseList2);
        if (e.list().size() > pageSize()) {
            List<T> list2 = this._list;
            arrayList.addAll(size3, list2.subList(size3, list2.size()));
        }
        this._list = arrayList;
        this._stopTime = e.timestamp;
        notifyDataSetChanged();
    }

    public void onRestoreInstanceState(Bundle bundle) {
        if (bundle != null) {
            ArrayList listUsing = dataDeserializer() != null ? JacksonUtils.readListUsing(bundle.getString("list"), dataDeserializer()) : JacksonUtils.readListAs(bundle.getString("list"), dataType());
            if (listUsing != null) {
                this._list = listUsing;
                this._start = bundle.getInt("start");
                this._isEnd = bundle.getBoolean("isEnd");
                this._stopTime = bundle.getString("stopTime");
                this._errorMessage = bundle.getString("errorMsg");
            }
        }
    }

    public Bundle onSaveInstanceState() {
        Bundle bundle = new Bundle();
        String strSafeWriteAsString = JacksonUtils.safeWriteAsString(this._list);
        bundle.putInt("start", this._start);
        bundle.putString("list", strSafeWriteAsString);
        bundle.putBoolean("isEnd", this._isEnd);
        bundle.putString("stopTime", this._stopTime);
        bundle.putString("errorMsg", this._errorMessage);
        return bundle;
    }

    public void refresh() {
        if (this._list == null || this.isRefreshing) {
            resetList();
            this.isRefreshing = true;
            return;
        }
        ApiService apiService = (ApiService) this.context.getService("api");
        ApiRequest apiRequest = this.request;
        if (apiRequest != null) {
            apiService.abort(apiRequest);
        }
        ApiRequest apiRequestCreateRequest = createRequest(0, pageSize(), null);
        this.request = apiRequestCreateRequest;
        if (apiRequestCreateRequest == null) {
            this.isRefreshing = false;
        } else {
            this.isRefreshing = true;
            apiService.exec(apiRequestCreateRequest, this.requestListener);
        }
        notifyDataSetChanged();
    }

    public void resetList() {
        this._list = new ArrayList();
        this._start = 0;
        this._stopTime = null;
        ApiService apiService = (ApiService) this.context.getService("api");
        ApiRequest apiRequest = this.request;
        if (apiRequest != null) {
            apiService.abort(apiRequest);
            this.request = null;
        }
        this.isRefreshing = false;
        loadNextPage();
    }

    public void setListData(List<T> list) {
        if (this._list == null) {
            this._list = new ArrayList();
        }
        this._list.clear();
        this._list.addAll(list);
        notifyDataSetChanged();
    }

    public NVRecycleAdapter(NVContext nVContext) {
        this.context = nVContext;
    }

    protected View createView(int i10, ViewGroup viewGroup) {
        return LayoutInflater.from(viewGroup.getContext()).inflate(i10, viewGroup, false);
    }

    protected Object getItemAt(int i10) {
        int size;
        if (list() == null) {
            size = 0;
        } else {
            size = list().size();
        }
        if (i10 < size) {
            return list().get(i10);
        }
        if (this._isEnd) {
            if (!this.isRefreshing) {
                return LIST_END;
            }
            return LOADING;
        }
        if (this._errorMessage != null) {
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

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
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

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i10) {
        Object itemAt = getItemAt(i10);
        if (itemAt == LOADING) {
            return System.currentTimeMillis();
        }
        if (itemAt == null) {
            return 0L;
        }
        return itemAt.hashCode();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i10) {
        Object itemAt = getItemAt(i10);
        if (itemAt == null) {
            return 0;
        }
        if (itemAt == LOADING) {
            return 1;
        }
        if (itemAt == LOAD_MORE) {
            return 2;
        }
        if (itemAt == LIST_END) {
            return 3;
        }
        if (itemAt == ERROR) {
            return 4;
        }
        int itemType = getItemType(i10, itemAt);
        if (itemType < 0) {
            return -1;
        }
        return itemType + 5;
    }

    public boolean isEmpty() {
        if (list() != null && !list().isEmpty()) {
            return false;
        }
        return true;
    }

    public boolean isListShown() {
        if ((list() != null && list().size() > 0) || this._isEnd) {
            return true;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        super.onAttachedToRecyclerView(recyclerView);
        this.recyclerView = recyclerView;
        ItemClickSupport itemClickSupportAddTo = ItemClickSupport.addTo(recyclerView);
        this.itemClickSupport = itemClickSupportAddTo;
        itemClickSupportAddTo.setOnItemClickListener(this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i10) {
        int itemViewType = getItemViewType(i10);
        if (itemViewType >= 5) {
            bindCustomViewHolder(viewHolder, i10);
        } else if (itemViewType == 1) {
            loadNextPage();
        } else if (itemViewType == 3) {
            onBindEndViewHolder(viewHolder, i10);
        }
    }

    public void onItemClicked(RecyclerView recyclerView, int i10, View view) {
        Object itemAt = getItemAt(i10);
        if (itemAt == LIST_END) {
            onEndItemClicked();
        } else if (itemAt == ERROR) {
            onErrorRetry();
        }
    }

    public void insertItem(int i10, T t5) {
        if (this._list == null) {
            this._list = new ArrayList();
        }
        this._list.add(i10, t5);
        notifyDataSetChanged();
    }
}
