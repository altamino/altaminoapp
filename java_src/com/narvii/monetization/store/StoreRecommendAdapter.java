package com.narvii.monetization.store;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.v4.content.LocalBroadcastManager;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.list.NVPagedAdapter;
import com.narvii.monetization.store.data.RecommendStoreItemListResponse;
import com.narvii.monetization.store.data.StoreItem;
import com.narvii.poweruser.history.ModerationHistoryBaseFragment;
import com.narvii.util.NVToast;
import com.narvii.util.http.ApiRequest;
import com.narvii.wallet.MembershipService;

/* loaded from: classes3.dex */
public class StoreRecommendAdapter extends NVPagedAdapter<StoreItem, RecommendStoreItemListResponse> {
    private LocalBroadcastManager lbm;
    private MembershipService membership;
    public String objectId;
    public int objectType;
    boolean preview;
    private BroadcastReceiver receiver;
    public String sectionGroupId;
    StoreHelper storeHelper;

    @Override // com.narvii.list.NVPagedAdapter
    protected int getItemType(Object obj) {
        return 0;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected int getItemTypeCount() {
        return 1;
    }

    public StoreRecommendAdapter(NVContext nVContext, String str, int i, String str2) {
        super(nVContext);
        this.receiver = new BroadcastReceiver() { // from class: com.narvii.monetization.store.StoreRecommendAdapter.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                if (MembershipService.ACTION_MEMBERSHIP_CHANGED.equals(intent.getAction())) {
                    StoreRecommendAdapter.this.notifyDataSetChanged();
                }
            }
        };
        this.sectionGroupId = str;
        this.objectId = str2;
        this.objectType = i;
        this.membership = (MembershipService) getService("membership");
        this.storeHelper = new StoreHelper(nVContext.getContext());
        this.storeHelper.source = "Recommended";
    }

    public StoreRecommendAdapter(NVContext nVContext, String str) {
        super(nVContext);
        this.receiver = new BroadcastReceiver() { // from class: com.narvii.monetization.store.StoreRecommendAdapter.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                if (MembershipService.ACTION_MEMBERSHIP_CHANGED.equals(intent.getAction())) {
                    StoreRecommendAdapter.this.notifyDataSetChanged();
                }
            }
        };
        this.sectionGroupId = str;
        this.objectId = null;
        this.objectType = -1;
        this.membership = (MembershipService) getService("membership");
        this.storeHelper = new StoreHelper(nVContext.getContext());
        this.storeHelper.source = "Recommended";
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
    public void onAttach() {
        super.onAttach();
        this.lbm = LocalBroadcastManager.getInstance(getContext());
        this.lbm.registerReceiver(this.receiver, new IntentFilter(MembershipService.ACTION_MEMBERSHIP_CHANGED));
    }

    @Override // com.narvii.list.NVAdapter
    public void onDetach() {
        this.lbm.unregisterReceiver(this.receiver);
        super.onDetach();
    }

    public void setPreview(boolean z) {
        this.preview = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<StoreItem> dataType() {
        return StoreItem.class;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<? extends RecommendStoreItemListResponse> responseType() {
        return RecommendStoreItemListResponse.class;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected ApiRequest createRequest(boolean z) {
        ApiRequest.Builder builderParam = ApiRequest.builder().path("/store/recommend-items").param("sectionGroupId", this.sectionGroupId);
        String str = this.objectId;
        if (str != null && this.objectType != -1) {
            builderParam.param(ModerationHistoryBaseFragment.PARAMS_OBJECT_ID, str).param(ModerationHistoryBaseFragment.PARAMS_OBJECT_TYPE, Integer.valueOf(this.objectType));
        }
        return builderParam.build();
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
        if (obj instanceof StoreItem) {
            if (this.preview) {
                NVToast.makeText(getContext(), R.string.this_is_preview, 0).show();
                return true;
            }
            this.storeHelper.openStoreItemDetail((StoreItem) obj);
            return true;
        }
        return super.onItemClick(listAdapter, i, obj, view, view2);
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
        if (!(obj instanceof StoreItem)) {
            return null;
        }
        StoreItemView storeItemView = (StoreItemView) createView(R.layout.cell_store_item, viewGroup, view);
        storeItemView.setStoreItem((StoreItem) obj, this.membership.isMembership());
        return storeItemView;
    }
}
