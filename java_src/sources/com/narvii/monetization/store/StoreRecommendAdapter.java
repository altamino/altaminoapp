package com.narvii.monetization.store;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.list.NVPagedAdapter;
import com.narvii.monetization.store.data.RecommendStoreItemListResponse;
import com.narvii.monetization.store.data.StoreItem;
import com.narvii.poweruser.history.ModerationHistoryBaseFragment;
import com.narvii.util.NVToast;
import com.narvii.util.http.ApiRequest;
import com.narvii.wallet.MembershipService;

/* JADX INFO: loaded from: classes5.dex */
public class StoreRecommendAdapter extends NVPagedAdapter<StoreItem, RecommendStoreItemListResponse> {
    private LocalBroadcastManager lbm;
    private MembershipService membership;
    public String objectId;
    public int objectType;
    boolean preview;
    private BroadcastReceiver receiver;
    public String sectionGroupId;
    StoreHelper storeHelper;

    public StoreRecommendAdapter(NVContext nVContext, String str, int i10, String str2) {
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
        this.objectType = i10;
        this.membership = (MembershipService) getService("membership");
        StoreHelper storeHelper = new StoreHelper(nVContext.getContext());
        this.storeHelper = storeHelper;
        storeHelper.source = "Recommended";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<StoreItem> dataType() {
        return StoreItem.class;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected int getItemType(Object obj) {
        return 0;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected int getItemTypeCount() {
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<? extends RecommendStoreItemListResponse> responseType() {
        return RecommendStoreItemListResponse.class;
    }

    public void setPreview(boolean z6) {
        this.preview = z6;
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

    @Override // com.narvii.list.NVAdapter
    public void onDetach() {
        this.lbm.f(this.receiver);
        super.onDetach();
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
        if (!(obj instanceof StoreItem)) {
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }
        if (this.preview) {
            NVToast.makeText(getContext(), R.string.this_is_preview, 0).show();
            return true;
        }
        this.storeHelper.openStoreItemDetail((StoreItem) obj);
        return true;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected ApiRequest createRequest(boolean z6) {
        ApiRequest.Builder builderParam = ApiRequest.builder().path("/store/recommend-items").param("sectionGroupId", this.sectionGroupId);
        String str = this.objectId;
        if (str != null && this.objectType != -1) {
            builderParam.param(ModerationHistoryBaseFragment.PARAMS_OBJECT_ID, str).param(ModerationHistoryBaseFragment.PARAMS_OBJECT_TYPE, Integer.valueOf(this.objectType));
        }
        return builderParam.build();
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
    public void onAttach() {
        super.onAttach();
        LocalBroadcastManager localBroadcastManagerB = LocalBroadcastManager.b(getContext());
        this.lbm = localBroadcastManagerB;
        localBroadcastManagerB.c(this.receiver, new IntentFilter(MembershipService.ACTION_MEMBERSHIP_CHANGED));
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
        StoreHelper storeHelper = new StoreHelper(nVContext.getContext());
        this.storeHelper = storeHelper;
        storeHelper.source = "Recommended";
    }
}
