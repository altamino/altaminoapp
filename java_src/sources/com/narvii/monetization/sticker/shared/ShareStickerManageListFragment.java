package com.narvii.monetization.sticker.shared;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.core.internal.view.SupportMenu;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.narvii.amino.master.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.list.DragSortPageFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.model.api.ApiResponse;
import com.narvii.monetization.sticker.StickerHelper;
import com.narvii.monetization.sticker.StickerService;
import com.narvii.monetization.sticker.model.StickerCollection;
import com.narvii.monetization.store.data.StoreItem;
import com.narvii.monetization.store.data.StoreItemListResponse;
import com.narvii.monetization.store.data.StoreSectionMini;
import com.narvii.monetization.utils.StoreItemNameView;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.util.Callback;
import com.narvii.util.FilterHelper;
import com.narvii.util.JacksonUtils;
import com.narvii.util.ViewUtils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.NVImageView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class ShareStickerManageListFragment extends DragSortPageFragment<StickerCollection> {
    ShareSticlkerAdapater shareSticlkerAdapater;
    StickerHelper stickerHelper;
    private StoreSectionMini storeSection;
    private List<StoreItem> oList = new ArrayList();
    boolean changed = false;

    class ShareSticlkerAdapater extends NVPagedAdapter<StoreItem, StoreItemListResponse> implements NotificationListener {
        @Override // com.narvii.list.NVPagedAdapter
        public boolean autoLoadNextPage() {
            return false;
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

        @Override // com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            editList(notification, false);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int pageSize() {
            return 50;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends StoreItemListResponse> responseType() {
            return StoreItemListResponse.class;
        }

        public ShareSticlkerAdapater(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected List<StoreItem> filterResponseList(List<StoreItem> list, int i10) {
            return new FilterHelper(this).keepForLeader().filter(list);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            StickerCollection stickerCollection;
            if (!(obj instanceof StoreItem) || (stickerCollection = (StickerCollection) ((StoreItem) obj).getRefObject()) == null) {
                return null;
            }
            View viewCreateView = createView(R.layout.item_pending_sticker_pack_manage, viewGroup, view);
            NVImageView nVImageView = (NVImageView) viewCreateView.findViewById(R.id.collection_icon);
            nVImageView.setImageUrl(stickerCollection.icon);
            nVImageView.setShowPressedMask(false);
            ((StoreItemNameView) viewCreateView.findViewById(R.id.sticker_collection_name)).setStoreItem(stickerCollection);
            ViewUtils.show(viewCreateView.findViewById(R.id.disabled), stickerCollection.isDisabled() || stickerCollection.isClosed());
            TextView textView = (TextView) viewCreateView.findViewById(R.id.sticker_count);
            textView.setText(TextUtils.getCountText(getContext(), stickerCollection.stickersCount, R.string.one_sticker, R.string.n_stickers));
            ViewUtils.show(textView, stickerCollection.stickersCount != 0);
            viewCreateView.findViewById(R.id.delete).setOnClickListener(this.subviewClickListener);
            return viewCreateView;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, final Object obj, View view, View view2) {
            if ((obj instanceof StoreItem) && view2 != null && view2.getId() == R.id.delete) {
                ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
                aCMAlertDialog.setMessage(R.string.delete_sticker_confirm);
                aCMAlertDialog.addButton(R.string.no, null);
                aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.monetization.sticker.shared.ShareStickerManageListFragment.ShareSticlkerAdapater.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view3) {
                        ShareStickerManageListFragment shareStickerManageListFragment = ShareStickerManageListFragment.this;
                        shareStickerManageListFragment.changed = true;
                        shareStickerManageListFragment.stickerHelper.deleteStickerFromShareSection(shareStickerManageListFragment.storeSection == null ? null : ShareStickerManageListFragment.this.storeSection.storeSectionId, (StoreItem) obj);
                    }
                }, SupportMenu.CATEGORY_MASK);
                aCMAlertDialog.show();
            }
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, StoreItemListResponse storeItemListResponse, int i10) {
            super.onPageResponse(apiRequest, storeItemListResponse, i10);
            if ("start0".equals(apiRequest.tag())) {
                ShareStickerManageListFragment.this.oList.clear();
            }
            ShareStickerManageListFragment.this.oList.addAll(storeItemListResponse.list());
            ShareStickerManageListFragment.this.storeSection = storeItemListResponse.storeSection;
        }

        @Override // com.narvii.list.NVPagedAdapter
        public View createLoadMoreItem(ViewGroup viewGroup, View view) {
            if (list() != null && list().size() < pageSize()) {
                return new View(viewGroup.getContext());
            }
            return super.createLoadMoreItem(viewGroup, view);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/store/items");
            builderPath.param("sectionGroupId", "sticker");
            builderPath.param("storeGroupId", "community-shared");
            if (z6) {
                builderPath.tag("start0");
            }
            return builderPath.build();
        }
    }

    @Override // com.narvii.list.DragSortPageFragment
    protected NVPagedAdapter createMainAdapter() {
        return this.shareSticlkerAdapater;
    }

    @Override // com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return Boolean.FALSE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveChanges() {
        if (this.shareSticlkerAdapater == null || this.storeSection == null) {
            return;
        }
        ArrayList arrayList = new ArrayList(this.shareSticlkerAdapater.list());
        boolean z6 = this.shareSticlkerAdapater.list() == null || this.shareSticlkerAdapater.list().size() == 0;
        if (!(!arrayList.equals(this.oList)) || z6) {
            finish();
            return;
        }
        this.changed = true;
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.show();
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.monetization.sticker.shared.ShareStickerManageListFragment.2
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                ShareStickerManageListFragment.this.setResult(-1, new Intent());
                ShareStickerManageListFragment.this.finish();
            }
        };
        ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayNodeCreateArrayNode.add(((StoreItem) it.next()).id());
        }
        ((ApiService) getService("api")).exec(ApiRequest.builder().post().path("store/sections/" + this.storeSection.storeSectionId + "/items/reorder").param("objectIdList", arrayNodeCreateArrayNode).build(), progressDialog.dismissListener);
        progressDialog.show();
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        if (getActivity() instanceof NVActivity) {
            NVActivity nVActivity = (NVActivity) getActivity();
            nVActivity.setBackButtonDrawable(ContextCompat.getDrawable(getContext(), R.drawable.ic_actionbar_close));
            nVActivity.setActionBarRightView(R.string.done, new View.OnClickListener() { // from class: com.narvii.monetization.sticker.shared.ShareStickerManageListFragment.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ShareStickerManageListFragment.this.saveChanges();
                }
            });
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.manage);
        this.shareSticlkerAdapater = new ShareSticlkerAdapater(this);
        this.stickerHelper = new StickerHelper(this);
        if (bundle != null) {
            this.oList = JacksonUtils.readListAs(bundle.getString("olist"), StoreItem.class);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        if (this.changed) {
            ((StickerService) getService("sticker")).refreshSharedStickerPackList(true);
            this.changed = false;
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("olist", JacksonUtils.writeAsString(this.oList));
    }
}
