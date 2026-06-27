package com.narvii.widget.recycleview;

import android.R;
import android.net.Uri;
import android.os.Bundle;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
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
import com.narvii.widget.recycleview.ItemClickSupport;
import java.util.ArrayList;
import java.util.List;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;

/* loaded from: classes3.dex */
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
            super.onFinish(apiRequest, (ApiRequest) e);
            boolean z = NVRecycleAdapter.this.isRefreshing;
            NVRecycleAdapter.this.isRefreshing = false;
            NVRecycleAdapter.this.request = null;
            NVRecycleAdapter.this.onPageResponse(apiRequest, e, z);
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
            super.onFail(apiRequest, i, list, str, apiResponse, th);
            boolean z = NVRecycleAdapter.this.isRefreshing;
            NVRecycleAdapter.this.request = null;
            NVRecycleAdapter.this.isRefreshing = false;
            NVRecycleAdapter.this.onFailResponse(apiRequest, str, z);
        }
    };
    public static final Tag LOADING = new Tag("loading");
    public static final Tag LOAD_MORE = new Tag("loadMore");
    public static final Tag LIST_END = new Tag("listEnd");
    public static final Tag ERROR = new Tag(IjkMediaPlayer.OnNativeInvokeListener.ARG_ERROR);

    protected boolean autoLoadNextPage() {
        return true;
    }

    protected abstract void bindCustomViewHolder(RecyclerView.ViewHolder viewHolder, int i);

    protected abstract ApiRequest createRequest(int i, int i2, String str);

    protected JsonDeserializer<T> dataDeserializer() {
        return null;
    }

    protected abstract Class<T> dataType();

    protected List<T> filterResponseList(List<T> list) {
        return list;
    }

    protected abstract int getItemType(int i, Object obj);

    protected abstract int getItemTypeCount();

    protected abstract RecyclerView.ViewHolder getItemViewHolder(ViewGroup viewGroup, int i);

    protected boolean isDarkTheme() {
        return false;
    }

    protected void onBindEndViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
    }

    protected void onEndItemClicked() {
    }

    @Override // com.narvii.widget.recycleview.ItemClickSupport.OnItemLongClickListener
    public boolean onItemLongClicked(RecyclerView recyclerView, int i, View view) {
        return false;
    }

    protected int pageSize() {
        return 20;
    }

    protected abstract Class<? extends E> responseType();

    protected boolean showListEnd(int i) {
        return false;
    }

    public NVRecycleAdapter(NVContext nVContext) {
        this.context = nVContext;
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

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        super.onAttachedToRecyclerView(recyclerView);
        this.recyclerView = recyclerView;
        this.itemClickSupport = ItemClickSupport.addTo(recyclerView);
        this.itemClickSupport.setOnItemClickListener(this);
    }

    public void onRestoreInstanceState(Bundle bundle) {
        ArrayList listAs;
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
                this._errorMessage = bundle.getString("errorMsg");
            }
        }
    }

    public Bundle onSaveInstanceState() {
        Bundle bundle = new Bundle();
        String strSafeWriteAsString = JacksonUtils.safeWriteAsString(this._list);
        bundle.putInt(TtmlNode.START, this._start);
        bundle.putString("list", strSafeWriteAsString);
        bundle.putBoolean("isEnd", this._isEnd);
        bundle.putString("stopTime", this._stopTime);
        bundle.putString("errorMsg", this._errorMessage);
        return bundle;
    }

    public void insertItem(T t) {
        if (this._list == null) {
            this._list = new ArrayList();
        }
        this._list.add(t);
        notifyDataSetChanged();
    }

    public void insertItem(int i, T t) {
        if (this._list == null) {
            this._list = new ArrayList();
        }
        this._list.add(i, t);
        notifyDataSetChanged();
    }

    public void setListData(List<T> list) {
        if (this._list == null) {
            this._list = new ArrayList();
        }
        this._list.clear();
        this._list.addAll(list);
        notifyDataSetChanged();
    }

    public void loadNextPage() {
        if (this._list == null || this._isEnd || this.request != null) {
            return;
        }
        this._errorMessage = null;
        ApiService apiService = (ApiService) this.context.getService("api");
        this.request = createRequest(this._start, pageSize(), this._stopTime);
        ApiRequest apiRequest = this.request;
        if (apiRequest != null) {
            apiService.exec(apiRequest, this.requestListener);
        }
    }

    protected Object getItemAt(int i) {
        int size = list() == null ? 0 : list().size();
        if (i < size) {
            return list().get(i);
        }
        if (this._isEnd) {
            return !this.isRefreshing ? LIST_END : LOADING;
        }
        if (this._errorMessage != null) {
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

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        Object itemAt = getItemAt(i);
        if (itemAt == LOADING) {
            return System.currentTimeMillis();
        }
        if (itemAt == null) {
            return 0L;
        }
        return itemAt.hashCode();
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        int size = list() == null ? 0 : list().size();
        return this._isEnd ? size + (showListEnd(size) ? 1 : 0) : size + 1;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        Object itemAt = getItemAt(i);
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
        int itemType = getItemType(i, itemAt);
        if (itemType < 0) {
            return -1;
        }
        return itemType + 5;
    }

    public List<T> list() {
        return this._list;
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
        this.request = createRequest(0, pageSize(), null);
        ApiRequest apiRequest2 = this.request;
        if (apiRequest2 == null) {
            this.isRefreshing = false;
        } else {
            this.isRefreshing = true;
            apiService.exec(apiRequest2, this.requestListener);
        }
        notifyDataSetChanged();
    }

    protected void onPageResponse(ApiRequest apiRequest, E e, boolean z) {
        int i = this._start;
        int size = e.list() == null ? 0 : e.list().size();
        try {
            Uri uri = Uri.parse(apiRequest.url());
            String queryParameter = uri.getQueryParameter(TtmlNode.START);
            String queryParameter2 = uri.getQueryParameter("size");
            if (!TextUtils.isEmpty(queryParameter) && !TextUtils.isEmpty(queryParameter2)) {
                i = Integer.parseInt(queryParameter);
                size = Integer.parseInt(queryParameter2);
            }
        } catch (Exception unused) {
        }
        boolean z2 = true;
        if (z) {
            List<T> listFilterResponseList = filterResponseList(e.list());
            List<T> list = this._list;
            if (list == null || list.size() <= size) {
                if (listFilterResponseList == null) {
                    this._list = new ArrayList();
                } else {
                    this._list = new ArrayList(listFilterResponseList);
                }
                this._start = i + size;
                if (e.list() != null && e.list().size() != 0) {
                    z2 = false;
                }
                this._isEnd = z2;
                this._stopTime = e.timestamp;
                notifyDataSetChanged();
                return;
            }
            int size2 = listFilterResponseList != null ? listFilterResponseList.size() : 0;
            if (listFilterResponseList == null) {
                return;
            }
            ArrayList arrayList = new ArrayList(listFilterResponseList);
            if (e.list().size() > pageSize()) {
                List<T> list2 = this._list;
                arrayList.addAll(size2, list2.subList(size2, list2.size()));
            }
            this._list = arrayList;
            this._stopTime = e.timestamp;
            notifyDataSetChanged();
            return;
        }
        this._errorMessage = null;
        if (this._list == null) {
            this._list = new ArrayList();
        }
        if (e.list() == null || e.list().size() == 0) {
            this._isEnd = true;
            notifyDataSetChanged();
        } else {
            List<T> listFilterResponseList2 = filterResponseList(e.list());
            int size3 = listFilterResponseList2.size();
            this._list.addAll(listFilterResponseList2);
            this._start = i + size;
            notifyItemRangeChanged(size3, listFilterResponseList2.size());
        }
        if (this._stopTime == null) {
            this._stopTime = e.timestamp;
        }
    }

    protected void onFailResponse(ApiRequest apiRequest, String str, boolean z) {
        if (this._list.isEmpty()) {
            this._errorMessage = str;
            notifyDataSetChanged();
        }
        if (this._list.isEmpty()) {
            return;
        }
        NVToast.makeText(this.context.getContext(), str, 0).show();
    }

    public String errorMessage() {
        return this._errorMessage;
    }

    public void onErrorRetry() {
        this._errorMessage = null;
        loadNextPage();
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 0) {
            Log.e(getClass().getSimpleName() + ".getItemType returns null");
            View viewCreateView = createView(R.layout.simple_list_item_1, viewGroup);
            if (NVApplication.DEBUG) {
                ((TextView) viewCreateView.findViewById(R.id.text1)).setText("getItem() returns null");
            }
            return new DefaultViewHolder(null, viewCreateView);
        }
        if (i == 1) {
            return new DefaultViewHolder(LOADING, createLoadingItem(viewGroup));
        }
        if (i == 2) {
            return new DefaultViewHolder(LOAD_MORE, createLoadMoreItem(viewGroup));
        }
        if (i == 3) {
            return new DefaultViewHolder(LIST_END, createListEndItem(viewGroup, list() == null ? 0 : list().size()));
        }
        if (i == 4) {
            return new DefaultViewHolder(ERROR, createErrorItem(viewGroup, this._errorMessage));
        }
        return getItemViewHolder(viewGroup, i - 5);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        int itemViewType = getItemViewType(i);
        if (itemViewType >= 5) {
            bindCustomViewHolder(viewHolder, i);
        } else if (itemViewType == 1) {
            loadNextPage();
        } else if (itemViewType == 3) {
            onBindEndViewHolder(viewHolder, i);
        }
    }

    protected View createView(int i, ViewGroup viewGroup) {
        return LayoutInflater.from(viewGroup.getContext()).inflate(i, viewGroup, false);
    }

    public View createLoadingItem(ViewGroup viewGroup) {
        View viewCreateView = createView(com.narvii.lib.R.layout.horizontal_loading_list_item, viewGroup);
        SpinningView spinningView = (SpinningView) viewCreateView.findViewById(com.narvii.lib.R.id.spinner);
        if (spinningView != null) {
            spinningView.setSpinColor(isDarkTheme() ? -1 : -12303292);
        }
        TextView textView = (TextView) viewCreateView.findViewById(com.narvii.lib.R.id.text);
        if (textView != null) {
            textView.setTextColor(isDarkTheme() ? -1 : -12303292);
        }
        return viewCreateView;
    }

    public View createErrorItem(ViewGroup viewGroup, String str) {
        View viewCreateView = createView(com.narvii.lib.R.layout.normal_error_list_item, viewGroup);
        TextView textView = (TextView) viewCreateView.findViewById(com.narvii.lib.R.id.text);
        if (textView != null) {
            textView.setTextColor(isDarkTheme() ? -1 : -12303292);
        }
        return viewCreateView;
    }

    public View createLoadMoreItem(ViewGroup viewGroup) {
        View viewCreateView = createView(com.narvii.lib.R.layout.horizontal_load_more_list_item, viewGroup);
        TextView textView = (TextView) viewCreateView.findViewById(com.narvii.lib.R.id.text);
        if (textView != null) {
            textView.setTextColor(isDarkTheme() ? -1 : -12303292);
        }
        return viewCreateView;
    }

    public View createListEndItem(ViewGroup viewGroup, int i) {
        View viewCreateView = createView(com.narvii.lib.R.layout.normal_list_end_item, viewGroup);
        TextView textView = (TextView) viewCreateView.findViewById(com.narvii.lib.R.id.icon);
        TextView textView2 = (TextView) viewCreateView.findViewById(com.narvii.lib.R.id.text);
        if (i == 0) {
            textView.setVisibility(0);
            textView2.setText(viewGroup.getContext().getString(com.narvii.lib.R.string.normal_empty_list));
        } else {
            textView.setVisibility(8);
            textView2.setText(viewGroup.getContext().getString(com.narvii.lib.R.string.normal_end_n_items, Integer.valueOf(i)));
        }
        if (textView2 != null) {
            textView2.setTextColor(isDarkTheme() ? -1 : -10066330);
        }
        if (textView != null) {
            textView.setTextColor(isDarkTheme() ? -1 : -7829368);
        }
        return viewCreateView;
    }

    protected class DefaultViewHolder extends RecyclerView.ViewHolder {
        public Tag tag;

        public DefaultViewHolder(Tag tag, View view) {
            super(view);
            this.tag = tag;
        }
    }

    public void onItemClicked(RecyclerView recyclerView, int i, View view) {
        Object itemAt = getItemAt(i);
        if (itemAt == LIST_END) {
            onEndItemClicked();
        } else if (itemAt == ERROR) {
            onErrorRetry();
        }
    }

    public boolean isListShown() {
        return (list() != null && list().size() > 0) || this._isEnd;
    }

    public boolean isEmpty() {
        return list() == null || list().isEmpty();
    }
}
