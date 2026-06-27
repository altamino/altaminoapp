package com.narvii.catalog;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.detail.DetailAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.model.Item;
import com.narvii.model.api.ItemListResponse;
import com.narvii.util.Callback;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.widget.CardView;
import java.util.List;

/* loaded from: classes2.dex */
public class AllItemAdapter extends NVAdapter {
    public int count;
    List<Item> list;
    final ApiResponseListener<ItemListResponse> listener;
    public boolean showLoading;
    final String uid;

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        return false;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        return i == 0 ? 0 : 1;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 2;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        return i == 0;
    }

    public AllItemAdapter(NVContext nVContext, String str) {
        super(nVContext);
        this.count = -1;
        this.listener = new ApiResponseListener<ItemListResponse>(ItemListResponse.class) { // from class: com.narvii.catalog.AllItemAdapter.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ItemListResponse itemListResponse) throws Exception {
                AllItemAdapter allItemAdapter = AllItemAdapter.this;
                allItemAdapter.list = itemListResponse.itemList;
                allItemAdapter.notifyDataSetChanged();
            }
        };
        this.uid = str;
    }

    @Override // com.narvii.list.NVAdapter
    public void onAttach() {
        super.onAttach();
        if (this.list == null) {
            sendReqeust();
        }
    }

    void sendReqeust() {
        ApiRequest.Builder builderPath = ApiRequest.builder().path("/item");
        if (this.uid == null) {
            builderPath.param("type", "catalog-all");
        } else {
            builderPath.param("type", "user-all");
            builderPath.param("uid", this.uid);
        }
        builderPath.param(TtmlNode.START, 0);
        builderPath.param("size", 4);
        builderPath.param("cv", "1.2");
        ((ApiService) getService("api")).exec(builderPath.build(), this.listener);
    }

    @Override // com.narvii.list.NVAdapter
    public void refresh(int i, Callback<Integer> callback) {
        refreshMonitorStart(i, callback);
        sendReqeust();
        refreshMonitorEnd();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<Item> list = this.list;
        if (list == null) {
            if (!this.showLoading) {
                return 0;
            }
        } else if (list.isEmpty()) {
            return 0;
        }
        return 2;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return i == 0 ? this : DetailAdapter.DIVIDER;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        if (i == 0) {
            return hashCode();
        }
        return 3L;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        String str;
        if (i == 0) {
            View viewCreateView = createView(R.layout.catalog_category_item, viewGroup, view);
            TextView textView = (TextView) viewCreateView.findViewById(R.id.label);
            String string = getContext().getString(TextUtils.isEmpty(this.uid) ? R.string.all_curated : R.string.all_favorites);
            if (this.count < 0) {
                str = null;
            } else {
                str = "" + this.count;
            }
            textView.setText(CategoryListAdapter.buildLabel(string, str, this.uid == null));
            ((TextView) viewCreateView.findViewById(R.id.text)).setText((CharSequence) null);
            List<Item> list = this.list;
            int size = list == null ? this.count : list.size();
            Item item = this.uid == null ? CategoryListAdapter.EMPTY_GOLD : null;
            CardView cardView = (CardView) viewCreateView.findViewById(R.id.item_card1);
            CardView cardView2 = (CardView) viewCreateView.findViewById(R.id.item_card2);
            CardView cardView3 = (CardView) viewCreateView.findViewById(R.id.item_card3);
            cardView.setVisibility(size > 0 ? 0 : 4);
            cardView2.setVisibility(size > 1 ? 0 : 4);
            cardView3.setVisibility(size > 2 ? 0 : 4);
            List<Item> list2 = this.list;
            cardView.setItem((list2 == null || size <= 0) ? item : list2.get(0));
            List<Item> list3 = this.list;
            cardView2.setItem((list3 == null || size <= 1) ? item : list3.get(1));
            List<Item> list4 = this.list;
            if (list4 != null && size > 2) {
                item = list4.get(2);
            }
            cardView3.setItem(item);
            return viewCreateView;
        }
        return createView(R.layout.list_divider_dark, viewGroup, view);
    }
}
