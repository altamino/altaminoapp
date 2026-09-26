package com.narvii.catalog;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.detail.DetailAdapter;
import com.narvii.list.AdriftAdapter;
import com.narvii.model.Item;
import com.narvii.model.api.CategoryPreviewResponse;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.widget.CardView;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class AllEntriesAdapter extends AdriftAdapter {
    public String allEntryCategoryId;
    public int count;
    private boolean dataLoded;
    protected List<Item> previewList;
    final ApiResponseListener<CategoryPreviewResponse> previewListener;
    public boolean showLoading;

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        return false;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i10) {
        return i10 == 0 ? 0 : 1;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 2;
    }

    @Override // com.narvii.list.AdriftAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i10) {
        return i10 == 0;
    }

    public boolean isOfficalEmpty() {
        return false;
    }

    protected List<Item> list() {
        return this.previewList;
    }

    @Override // com.narvii.list.AdriftAdapter, android.widget.Adapter
    public Object getItem(int i10) {
        return i10 == 0 ? this : DetailAdapter.DIVIDER;
    }

    @Override // com.narvii.list.AdriftAdapter, android.widget.Adapter
    public long getItemId(int i10) {
        if (i10 == 0) {
            return hashCode();
        }
        return 3L;
    }

    @Override // android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        String str;
        List<Item> list;
        if (i10 != 0) {
            return createView(R.layout.list_divider_dark, viewGroup, view);
        }
        View viewCreateView = createView(R.layout.catalog_category_item, viewGroup, view);
        TextView textView = (TextView) viewCreateView.findViewById(R.id.label);
        String string = getContext().getString(R.string.catalog_all_entry);
        if (this.count < 0) {
            str = null;
        } else {
            str = "" + this.count;
        }
        textView.setText(CategoryListAdapter.buildLabel(string, str, false));
        ((TextView) viewCreateView.findViewById(R.id.text)).setText((CharSequence) null);
        List<Item> list2 = this.previewList;
        int size = list2 == null ? 0 : list2.size();
        Item item = CategoryListAdapter.EMPTY_GOLD;
        CardView cardView = (CardView) viewCreateView.findViewById(R.id.item_card1);
        CardView cardView2 = (CardView) viewCreateView.findViewById(R.id.item_card2);
        CardView cardView3 = (CardView) viewCreateView.findViewById(R.id.item_card3);
        cardView.setVisibility(size > 0 ? 0 : 4);
        cardView2.setVisibility(size > 1 ? 0 : 4);
        cardView3.setVisibility(size > 2 ? 0 : 4);
        cardView.setItem((list() == null || size <= 0) ? item : list().get(0));
        cardView2.setItem((list() == null || size <= 1) ? item : list().get(1));
        if (list() != null && size > 2) {
            item = list().get(2);
        }
        cardView3.setItem(item);
        if (!TextUtils.isEmpty(this.allEntryCategoryId) && (((list = this.previewList) == null || list.size() == 0) && !this.dataLoded)) {
            this.dataLoded = true;
            ((ApiService) getService("api")).exec(ApiRequest.builder().path("/item-category/" + this.allEntryCategoryId + "/item-previews").build(), this.previewListener);
        }
        return viewCreateView;
    }

    public AllEntriesAdapter(NVContext nVContext) {
        super(nVContext);
        this.count = -1;
        this.previewListener = new ApiResponseListener<CategoryPreviewResponse>(CategoryPreviewResponse.class) { // from class: com.narvii.catalog.AllEntriesAdapter.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, CategoryPreviewResponse categoryPreviewResponse) throws Exception {
                AllEntriesAdapter allEntriesAdapter = AllEntriesAdapter.this;
                String str = allEntriesAdapter.allEntryCategoryId;
                if (str != null) {
                    HashMap<String, List<Item>> map = categoryPreviewResponse.itemPreviews;
                    allEntriesAdapter.previewList = map == null ? null : map.get(str);
                    AllEntriesAdapter.this.notifyDataSetChanged();
                }
            }
        };
    }

    @Override // com.narvii.list.AdriftAdapter, android.widget.Adapter
    public int getCount() {
        if (list() == null) {
            if (!this.showLoading) {
                return 0;
            }
        } else if (list().isEmpty()) {
            return 0;
        }
        return 2;
    }
}
