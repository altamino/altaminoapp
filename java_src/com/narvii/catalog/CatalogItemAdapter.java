package com.narvii.catalog;

import android.os.Bundle;
import com.narvii.app.NVContext;
import com.narvii.model.api.ItemListResponse;
import com.narvii.util.http.ApiRequest;

/* loaded from: classes2.dex */
public class CatalogItemAdapter extends CatalogItemGridAdapter {
    public static final int PAGE_SIZE = 100;
    final String categoryId;
    boolean isLeaf;

    @Override // com.narvii.list.NVPagedAdapter
    protected int pageSize() {
        return 100;
    }

    public CatalogItemAdapter(NVContext nVContext, String str) {
        super(nVContext);
        this.categoryId = str;
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
    public Bundle onSaveInstanceState() {
        return new Bundle();
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected ApiRequest createRequest(boolean z) {
        if (!this.isLeaf) {
            return null;
        }
        return ApiRequest.builder().path("/item-category/" + this.categoryId + "/list").build();
    }

    @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
    public int getCount() {
        if (this.isLeaf) {
            return super.getCount();
        }
        return 0;
    }

    public void responseFirstPage(ItemListResponse itemListResponse) {
        int i = 1;
        ApiRequest apiRequestCreateRequest = createRequest(true);
        if (list() != null && list().size() > 0) {
            i = 2;
        }
        onPageResponse(apiRequestCreateRequest, itemListResponse, i);
    }
}
