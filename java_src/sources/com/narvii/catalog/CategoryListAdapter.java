package com.narvii.catalog;

import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StyleSpan;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.amino.master.R;
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
import kotlinx.serialization.json.internal.b;

/* JADX INFO: loaded from: classes10.dex */
public class CategoryListAdapter extends NVAdapter {
    static final Item EMPTY_GOLD;
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

    @Override // com.narvii.list.NVAdapter
    public String errorMessage() {
        return this.errorMsg;
    }

    public boolean keepForLeaderAndCurator() {
        return false;
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

    static {
        Item item = new Item();
        EMPTY_GOLD = item;
        item.label = "";
        User user = new User();
        item.author = user;
        user.role = 254;
    }

    static CharSequence buildLabel(String str, String str2, boolean z6) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        int length = spannableStringBuilder.length();
        spannableStringBuilder.setSpan(new StyleSpan(1), 0, length, 0);
        if (str2 != null) {
            spannableStringBuilder.append((CharSequence) (" (" + str2 + ")"));
            spannableStringBuilder.setSpan(new RelativeSizeSpan(0.75f), length, spannableStringBuilder.length(), 0);
        }
        if (z6) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan(NVApplication.instance().getResources().getColor(R.color.gold)), 0, spannableStringBuilder.length(), 0);
        }
        return spannableStringBuilder;
    }

    public ItemCategory getCategory() {
        SubCategoryResponse subCategoryResponse = this.subCategoryResponse;
        if (subCategoryResponse == null) {
            return null;
        }
        return subCategoryResponse.itemCategory;
    }

    @Override // android.widget.Adapter
    public ItemCategory getItem(int i10) {
        return this.categoryList.get(i10);
    }

    public ItemCategory getRootCategory() {
        CategoryListResponse categoryListResponse = this.rootCategoryResponse;
        if (categoryListResponse == null) {
            return null;
        }
        return categoryListResponse.getRootCategory();
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

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean isEmpty() {
        CatalogItemAdapter catalogItemAdapter = this.itemAdapter;
        return catalogItemAdapter.isLeaf ? catalogItemAdapter.isEmpty() : super.isEmpty();
    }

    @Override // com.narvii.list.NVAdapter
    public boolean isListShown() {
        CatalogItemAdapter catalogItemAdapter = this.itemAdapter;
        if (catalogItemAdapter.isLeaf) {
            return catalogItemAdapter.isListShown();
        }
        return this.categoryList != null;
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
            ApiRequest apiRequestBuild = builderPath.build();
            this.categoryRequest = apiRequestBuild;
            apiService.exec(apiRequestBuild, this.rootCategoryListener);
            return;
        }
        ApiRequest.Builder builderPath2 = ApiRequest.builder().path("/item-category/" + this.categoryId);
        builderPath2.param("start", 0);
        builderPath2.param("size", Integer.valueOf(this.itemAdapter.pageSize()));
        ApiRequest apiRequestBuild2 = builderPath2.build();
        this.categoryRequest = apiRequestBuild2;
        apiService.exec(apiRequestBuild2, this.subCategoryListener);
    }

    void updateList(List<ItemCategory> list) {
        this.categoryList = list;
        notifyDataSetChanged();
    }

    public CategoryListAdapter(NVContext nVContext, String str, String str2, CatalogItemAdapter catalogItemAdapter) {
        super(nVContext);
        this.previewState = new HashMap<>();
        this.previewMap = new HashMap<>();
        this.rootCategoryListener = new ApiResponseListener<CategoryListResponse>(CategoryListResponse.class) { // from class: com.narvii.catalog.CategoryListAdapter.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str3, ApiResponse apiResponse, Throwable th) {
                CategoryListAdapter categoryListAdapter = CategoryListAdapter.this;
                categoryListAdapter.errorMsg = str3;
                categoryListAdapter.notifyDataSetChanged();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, CategoryListResponse categoryListResponse) throws Exception {
                CategoryListAdapter.this.setResponse(categoryListResponse);
            }
        };
        this.subCategoryListener = new ApiResponseListener<SubCategoryResponse>(SubCategoryResponse.class) { // from class: com.narvii.catalog.CategoryListAdapter.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str3, ApiResponse apiResponse, Throwable th) {
                CategoryListAdapter categoryListAdapter = CategoryListAdapter.this;
                categoryListAdapter.errorMsg = str3;
                categoryListAdapter.notifyDataSetChanged();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, SubCategoryResponse subCategoryResponse) throws Exception {
                CategoryListAdapter.this.setResponse(subCategoryResponse);
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

    @Override // android.widget.Adapter
    public int getCount() {
        List<ItemCategory> list;
        if (getType() == 3 || (list = this.categoryList) == null) {
            return 0;
        }
        return list.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        return getItem(i10).hashCode();
    }

    @Override // android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        boolean z6;
        List<ItemCategory> subCategoryList;
        List listFilter;
        Item item;
        int size;
        int i11;
        int i12;
        Item item2;
        Item item3;
        ItemCategory rootCategory;
        ItemCategory item4 = getItem(i10);
        if (item4.uRole() == 254) {
            z6 = true;
        } else {
            z6 = false;
        }
        View viewCreateView = createView(R.layout.catalog_category_item, viewGroup, view);
        ((TextView) viewCreateView.findViewById(R.id.label)).setText(buildLabel(item4.label, "" + item4.itemsCount, z6));
        StringBuilder sb = new StringBuilder();
        CategoryListResponse categoryListResponse = this.rootCategoryResponse;
        if (categoryListResponse == null) {
            subCategoryList = this.subCategoryResponse.getSubCategoryList(item4.categoryId);
        } else {
            subCategoryList = categoryListResponse.getSubCategoryList(item4.categoryId);
        }
        for (ItemCategory itemCategory : subCategoryList) {
            if (sb.length() > 0) {
                sb.append(" | ");
            }
            sb.append(itemCategory.label);
        }
        ((TextView) viewCreateView.findViewById(R.id.text)).setText(sb.toString());
        List<Item> list = this.previewMap.get(item4.categoryId);
        if (keepForLeaderAndCurator()) {
            listFilter = new FilterHelper(this).keepForLeaderAndCurator().filter(list);
        } else {
            listFilter = this.filterHelper.filter(list);
        }
        if (z6) {
            item = EMPTY_GOLD;
        } else {
            item = null;
        }
        if (listFilter == null) {
            size = item4.itemsCount;
        } else {
            size = listFilter.size();
        }
        CardView cardView = (CardView) viewCreateView.findViewById(R.id.item_card1);
        CardView cardView2 = (CardView) viewCreateView.findViewById(R.id.item_card2);
        CardView cardView3 = (CardView) viewCreateView.findViewById(R.id.item_card3);
        int i13 = 4;
        if (size > 0) {
            i11 = 0;
        } else {
            i11 = 4;
        }
        cardView.setVisibility(i11);
        if (size > 1) {
            i12 = 0;
        } else {
            i12 = 4;
        }
        cardView2.setVisibility(i12);
        int i14 = 2;
        if (size > 2) {
            i13 = 0;
        }
        cardView3.setVisibility(i13);
        if (listFilter != null && listFilter.size() > 0) {
            item2 = (Item) listFilter.get(0);
        } else {
            item2 = item;
        }
        cardView.setItem(item2);
        if (listFilter != null && listFilter.size() > 1) {
            item3 = (Item) listFilter.get(1);
        } else {
            item3 = item;
        }
        cardView2.setItem(item3);
        if (listFilter != null && listFilter.size() > 2) {
            item = (Item) listFilter.get(2);
        }
        cardView3.setItem(item);
        Boolean bool = this.previewState.get(item4.categoryId);
        Boolean bool2 = Boolean.TRUE;
        if (bool != bool2) {
            if (!NVApplication.DEBUG) {
                i14 = 5;
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.categoryId == null && (rootCategory = getRootCategory()) != null && this.previewState.get(rootCategory.categoryId) != bool2) {
                sb2.append(rootCategory.categoryId);
                this.previewState.put(rootCategory.categoryId, bool2);
            }
            int i15 = i10 - (i10 % i14);
            int i16 = i14 + i15;
            while (i15 < i16 && i15 < getCount()) {
                String str = getItem(i15).categoryId;
                Boolean bool3 = this.previewState.get(str);
                Boolean bool4 = Boolean.TRUE;
                if (bool3 != bool4) {
                    if (sb2.length() > 0) {
                        sb2.append(b.COMMA);
                    }
                    sb2.append(str);
                    this.previewState.put(str, bool4);
                }
                i15++;
            }
            ((ApiService) getService("api")).exec(ApiRequest.builder().path("/item-category/" + ((Object) sb2) + "/item-previews").build(), this.previewListener);
        }
        return viewCreateView;
    }

    @Override // com.narvii.list.NVAdapter
    public void onAttach() {
        super.onAttach();
        String str = this.categoryId;
        if ((str == null && this.rootCategoryResponse == null) || (str != null && this.subCategoryResponse == null)) {
            sendCategoryRequest();
        }
    }

    @Override // com.narvii.list.NVAdapter
    public void onErrorRetry() {
        sendCategoryRequest();
    }

    @Override // com.narvii.list.NVAdapter
    public void refresh(int i10, Callback<Integer> callback) {
        refreshMonitorStart(i10, callback);
        this.errorMsg = null;
        this.itemAdapter.isLeaf = false;
        sendCategoryRequest();
        this.previewState.clear();
        notifyDataSetChanged();
        refreshMonitorEnd();
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
}
