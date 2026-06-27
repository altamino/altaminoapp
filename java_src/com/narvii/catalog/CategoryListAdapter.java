package com.narvii.catalog;

import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StyleSpan;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.list.NVAdapter;
import com.narvii.master.home.profile.GlobalProfileFragment;
import com.narvii.model.Item;
import com.narvii.model.ItemCategory;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.CategoryListResponse;
import com.narvii.model.api.CategoryPreviewResponse;
import com.narvii.util.Callback;
import com.narvii.util.FilterHelper;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.CardView;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes2.dex */
public class CategoryListAdapter extends NVAdapter {
    static final Item EMPTY_GOLD = new Item();
    static final int TYPE_CATEGORY = 2;
    static final int TYPE_LEAF = 3;
    static final int TYPE_NONE = 0;
    static final int TYPE_UNKNOWN = 1;
    public ItemCategory allEntryCategory;
    final String categoryId;
    List<ItemCategory> categoryList;
    ApiRequest categoryRequest;
    String errorMsg;
    FilterHelper filterHelper;
    final CatalogItemAdapter itemAdapter;
    final ApiResponseListener<CategoryPreviewResponse> previewListener;
    public final HashMap<String, List<Item>> previewMap;
    final HashMap<String, Boolean> previewState;
    final ApiResponseListener<CategoryListResponse> rootCategoryListener;
    CategoryListResponse rootCategoryResponse;
    final ApiResponseListener<SubCategoryResponse> subCategoryListener;
    SubCategoryResponse subCategoryResponse;
    final String uid;

    public boolean keepForLeaderAndCurator() {
        return false;
    }

    static {
        Item item = EMPTY_GOLD;
        item.label = "";
        item.author = new User();
        EMPTY_GOLD.author.role = User.USER_ROLE_SYSTEM;
    }

    public CategoryListAdapter(NVContext nVContext, String str, String str2, CatalogItemAdapter catalogItemAdapter) {
        super(nVContext);
        this.previewState = new HashMap<>();
        this.previewMap = new HashMap<>();
        this.rootCategoryListener = new ApiResponseListener<CategoryListResponse>(CategoryListResponse.class) { // from class: com.narvii.catalog.CategoryListAdapter.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, CategoryListResponse categoryListResponse) throws Exception {
                CategoryListAdapter.this.setResponse(categoryListResponse);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str3, ApiResponse apiResponse, Throwable th) {
                CategoryListAdapter categoryListAdapter = CategoryListAdapter.this;
                categoryListAdapter.errorMsg = str3;
                categoryListAdapter.notifyDataSetChanged();
            }
        };
        this.subCategoryListener = new ApiResponseListener<SubCategoryResponse>(SubCategoryResponse.class) { // from class: com.narvii.catalog.CategoryListAdapter.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, SubCategoryResponse subCategoryResponse) throws Exception {
                CategoryListAdapter.this.setResponse(subCategoryResponse);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str3, ApiResponse apiResponse, Throwable th) {
                CategoryListAdapter categoryListAdapter = CategoryListAdapter.this;
                categoryListAdapter.errorMsg = str3;
                categoryListAdapter.notifyDataSetChanged();
            }
        };
        this.previewListener = new ApiResponseListener<CategoryPreviewResponse>(CategoryPreviewResponse.class) { // from class: com.narvii.catalog.CategoryListAdapter.3
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, CategoryPreviewResponse categoryPreviewResponse) throws Exception {
                CategoryListAdapter.this.previewMap.putAll(categoryPreviewResponse.itemPreviews);
                CategoryListAdapter.this.notifyDataSetChanged();
            }
        };
        this.uid = str;
        this.categoryId = str2;
        this.itemAdapter = catalogItemAdapter;
        this.filterHelper = new FilterHelper(nVContext);
    }

    public ItemCategory getRootCategory() {
        CategoryListResponse categoryListResponse = this.rootCategoryResponse;
        if (categoryListResponse == null) {
            return null;
        }
        return categoryListResponse.getRootCategory();
    }

    public ItemCategory getCategory() {
        SubCategoryResponse subCategoryResponse = this.subCategoryResponse;
        if (subCategoryResponse == null) {
            return null;
        }
        return subCategoryResponse.itemCategory;
    }

    public int getType() {
        if (this.categoryId == null) {
            return 2;
        }
        SubCategoryResponse subCategoryResponse = this.subCategoryResponse;
        if (subCategoryResponse == null) {
            return 0;
        }
        String strType = subCategoryResponse.type();
        if ("itemCategory".equals(strType)) {
            return 2;
        }
        if (!"item".equals(strType)) {
            return 0;
        }
        List<Item> list = this.subCategoryResponse.childrenWrapper.itemList;
        return (list == null || list.isEmpty()) ? 1 : 3;
    }

    @Override // com.narvii.list.NVAdapter
    public void onAttach() {
        super.onAttach();
        if (!(this.categoryId == null && this.rootCategoryResponse == null) && (this.categoryId == null || this.subCategoryResponse != null)) {
            return;
        }
        sendCategoryRequest();
    }

    void sendCategoryRequest() {
        ApiService apiService = (ApiService) getService("api");
        ApiRequest apiRequest = this.categoryRequest;
        if (apiRequest != null) {
            apiService.abort(apiRequest);
            this.categoryRequest = null;
        }
        if (this.categoryId == null) {
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/item-category");
            if (this.uid != null) {
                builderPath.param("type", GlobalProfileFragment.KEY_USER);
                builderPath.param("q", this.uid);
            }
            this.categoryRequest = builderPath.build();
            apiService.exec(this.categoryRequest, this.rootCategoryListener);
            return;
        }
        ApiRequest.Builder builderPath2 = ApiRequest.builder().path("/item-category/" + this.categoryId);
        builderPath2.param(TtmlNode.START, 0);
        builderPath2.param("size", Integer.valueOf(this.itemAdapter.pageSize()));
        this.categoryRequest = builderPath2.build();
        apiService.exec(this.categoryRequest, this.subCategoryListener);
    }

    protected void setResponse(CategoryListResponse categoryListResponse) {
        this.rootCategoryResponse = categoryListResponse;
        this.errorMsg = null;
        String str = this.categoryId;
        if (str == null) {
            str = categoryListResponse.getRootCategory().categoryId;
        }
        this.categoryList = categoryListResponse.getSubCategoryList(str);
        this.allEntryCategory = categoryListResponse.allEntriesItemCategory;
        notifyDataSetChanged();
    }

    void setResponse(SubCategoryResponse subCategoryResponse) {
        this.subCategoryResponse = subCategoryResponse;
        this.errorMsg = null;
        if ("item".equals(subCategoryResponse.type())) {
            this.categoryList = null;
            CatalogItemAdapter catalogItemAdapter = this.itemAdapter;
            catalogItemAdapter.isLeaf = true;
            catalogItemAdapter.responseFirstPage(subCategoryResponse.getItemListResponse());
        } else {
            this.categoryList = subCategoryResponse.getSubCategoryList(this.categoryId);
        }
        notifyDataSetChanged();
    }

    void updateList(List<ItemCategory> list) {
        this.categoryList = list;
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<ItemCategory> list;
        if (getType() == 3 || (list = this.categoryList) == null) {
            return 0;
        }
        return list.size();
    }

    @Override // android.widget.Adapter
    public ItemCategory getItem(int i) {
        return this.categoryList.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return getItem(i).hashCode();
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean isEmpty() {
        CatalogItemAdapter catalogItemAdapter = this.itemAdapter;
        return catalogItemAdapter.isLeaf ? catalogItemAdapter.isEmpty() : super.isEmpty();
    }

    @Override // com.narvii.list.NVAdapter
    public boolean isListShown() {
        CatalogItemAdapter catalogItemAdapter = this.itemAdapter;
        return catalogItemAdapter.isLeaf ? catalogItemAdapter.isListShown() : this.categoryList != null;
    }

    @Override // com.narvii.list.NVAdapter
    public void refresh(int i, Callback<Integer> callback) {
        refreshMonitorStart(i, callback);
        this.errorMsg = null;
        this.itemAdapter.isLeaf = false;
        sendCategoryRequest();
        this.previewState.clear();
        notifyDataSetChanged();
        refreshMonitorEnd();
    }

    @Override // com.narvii.list.NVAdapter
    public String errorMessage() {
        return this.errorMsg;
    }

    @Override // com.narvii.list.NVAdapter
    public void onErrorRetry() {
        sendCategoryRequest();
    }

    static CharSequence buildLabel(String str, String str2, boolean z) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        int length = spannableStringBuilder.length();
        spannableStringBuilder.setSpan(new StyleSpan(1), 0, length, 0);
        if (str2 != null) {
            spannableStringBuilder.append((CharSequence) (" (" + str2 + ")"));
            spannableStringBuilder.setSpan(new RelativeSizeSpan(0.75f), length, spannableStringBuilder.length(), 0);
        }
        if (z) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan(NVApplication.instance().getResources().getColor(R.color.gold)), 0, spannableStringBuilder.length(), 0);
        }
        return spannableStringBuilder;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        List<ItemCategory> subCategoryList;
        List listFilter;
        ItemCategory rootCategory;
        ItemCategory item = getItem(i);
        boolean z = item.uRole() == 254;
        View viewCreateView = createView(R.layout.catalog_category_item, viewGroup, view);
        ((TextView) viewCreateView.findViewById(R.id.label)).setText(buildLabel(item.label, "" + item.itemsCount, z));
        StringBuilder sb = new StringBuilder();
        CategoryListResponse categoryListResponse = this.rootCategoryResponse;
        if (categoryListResponse == null) {
            subCategoryList = this.subCategoryResponse.getSubCategoryList(item.categoryId);
        } else {
            subCategoryList = categoryListResponse.getSubCategoryList(item.categoryId);
        }
        for (ItemCategory itemCategory : subCategoryList) {
            if (sb.length() > 0) {
                sb.append(" | ");
            }
            sb.append(itemCategory.label);
        }
        ((TextView) viewCreateView.findViewById(R.id.text)).setText(sb.toString());
        List<Item> list = this.previewMap.get(item.categoryId);
        if (keepForLeaderAndCurator()) {
            listFilter = new FilterHelper(this).keepForLeaderAndCurator().filter(list);
        } else {
            listFilter = this.filterHelper.filter(list);
        }
        Item item2 = z ? EMPTY_GOLD : null;
        int size = listFilter == null ? item.itemsCount : listFilter.size();
        CardView cardView = (CardView) viewCreateView.findViewById(R.id.item_card1);
        CardView cardView2 = (CardView) viewCreateView.findViewById(R.id.item_card2);
        CardView cardView3 = (CardView) viewCreateView.findViewById(R.id.item_card3);
        cardView.setVisibility(size > 0 ? 0 : 4);
        cardView2.setVisibility(size > 1 ? 0 : 4);
        cardView3.setVisibility(size > 2 ? 0 : 4);
        cardView.setItem((listFilter == null || listFilter.size() <= 0) ? item2 : (Item) listFilter.get(0));
        cardView2.setItem((listFilter == null || listFilter.size() <= 1) ? item2 : (Item) listFilter.get(1));
        if (listFilter != null && listFilter.size() > 2) {
            item2 = (Item) listFilter.get(2);
        }
        cardView3.setItem(item2);
        if (this.previewState.get(item.categoryId) != Boolean.TRUE) {
            int i2 = NVApplication.DEBUG ? 2 : 5;
            StringBuilder sb2 = new StringBuilder();
            if (this.categoryId == null && (rootCategory = getRootCategory()) != null && this.previewState.get(rootCategory.categoryId) != Boolean.TRUE) {
                sb2.append(rootCategory.categoryId);
                this.previewState.put(rootCategory.categoryId, Boolean.TRUE);
            }
            int i3 = i - (i % i2);
            int i4 = i2 + i3;
            while (i3 < i4 && i3 < getCount()) {
                String str = getItem(i3).categoryId;
                if (this.previewState.get(str) != Boolean.TRUE) {
                    if (sb2.length() > 0) {
                        sb2.append(',');
                    }
                    sb2.append(str);
                    this.previewState.put(str, Boolean.TRUE);
                }
                i3++;
            }
            ((ApiService) getService("api")).exec(ApiRequest.builder().path("/item-category/" + ((Object) sb2) + "/item-previews").build(), this.previewListener);
        }
        return viewCreateView;
    }
}
