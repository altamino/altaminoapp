package com.narvii.catalog.search;

import android.os.Bundle;
import android.text.TextUtils;
import com.narvii.app.NVContext;
import com.narvii.catalog.CatalogItemGridAdapter;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.modulization.Module;
import com.narvii.util.http.ApiRequest;

/* loaded from: classes2.dex */
public class CatalogSearchAdapter extends CatalogItemGridAdapter {
    CommunityConfigHelper communityConfigHelper;
    boolean isAllEntry;
    boolean isCurationEnabled;
    String keyword;
    String uid;

    public CatalogSearchAdapter(NVContext nVContext, String str, boolean z) {
        super(nVContext);
        this.uid = str;
        this.showPin = !z && str == null;
        this.isAllEntry = z;
        this.communityConfigHelper = new CommunityConfigHelper(this);
        this.isCurationEnabled = this.communityConfigHelper.getModuleBoolean(Module.MODULE_CATALOG, "curationEnabled");
    }

    public void setKeyword(String str) {
        this.keyword = str;
        resetList();
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
    public Bundle onSaveInstanceState() {
        Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
        bundleOnSaveInstanceState.putString("keyword", this.keyword);
        return bundleOnSaveInstanceState;
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.keyword = bundle.getString("keyword");
    }

    @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
    public int getCount() {
        if (TextUtils.isEmpty(this.keyword)) {
            return 0;
        }
        return super.getCount();
    }

    @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public boolean isEmpty() {
        if (TextUtils.isEmpty(this.keyword)) {
            return false;
        }
        return super.isEmpty();
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
    public boolean isListShown() {
        if (TextUtils.isEmpty(this.keyword)) {
            return true;
        }
        return super.isListShown();
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected ApiRequest createRequest(boolean z) {
        if (this.keyword == null) {
            return null;
        }
        ApiRequest.Builder builderPath = ApiRequest.builder().path("/item");
        if (!TextUtils.isEmpty(this.uid)) {
            builderPath.param("type", "user-all");
            builderPath.param("uid", this.uid);
            builderPath.param("q", this.keyword);
        } else if (this.isAllEntry || !this.isCurationEnabled) {
            builderPath.param("type", "keywords");
            builderPath.param("q", this.keyword);
        } else {
            builderPath.param("type", "catalog-all");
            builderPath.param("q", this.keyword);
        }
        return builderPath.build();
    }
}
