package com.narvii.catalog;

import android.os.Bundle;
import com.narvii.app.NVContext;
import com.narvii.model.api.ItemListResponse;
import com.narvii.util.http.ApiRequest;

/* JADX INFO: loaded from: classes.dex */
public class CatalogItemAdapter extends CatalogItemGridAdapter {
    public static final int PAGE_SIZE = 100;
    final String categoryId;
    boolean isLeaf;

    @Override // com.narvii.list.NVPagedAdapter
    protected int pageSize() {
        return 100;
    }

    public void responseFirstPage(ItemListResponse itemListResponse) {
        int i10 = 1;
        ApiRequest apiRequestCreateRequest = createRequest(true);
        if (list() != null && list().size() > 0) {
            i10 = 2;
        }
        onPageResponse(apiRequestCreateRequest, itemListResponse, i10);
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected ApiRequest createRequest(boolean z6) {
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

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
    public Bundle onSaveInstanceState() {
        return new Bundle();
    }

    public CatalogItemAdapter(NVContext nVContext, String str) {
        super(nVContext);
        this.categoryId = str;
    }
}
