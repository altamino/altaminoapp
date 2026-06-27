package com.narvii.monetization.sticker.shared;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.support.v4.content.LocalBroadcastManager;
import android.support.v4.internal.view.SupportMenu;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWillFinishListener;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.drawer.DrawerHost;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.model.NVObject;
import com.narvii.model.RestrictionInfo;
import com.narvii.monetization.sticker.StickerHelper;
import com.narvii.monetization.sticker.manage.StickerCollectionManageListFragment;
import com.narvii.monetization.sticker.model.PendingStickerResponse;
import com.narvii.monetization.sticker.model.StickerCollection;
import com.narvii.monetization.store.StoreHelper;
import com.narvii.monetization.store.data.StoreItem;
import com.narvii.monetization.store.data.StoreItemListResponse;
import com.narvii.monetization.store.data.StoreSectionMini;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.util.Callback;
import com.narvii.util.FilterHelper;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.NVImageView;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class SharedStickerCollectionListFragment extends NVListFragment implements FragmentWillFinishListener {
    public static final String KEY_PENDING_COUNT = "pendingRequestCount";
    private static final int REQUEST_MANAGE = 102;
    AccountService accountService;
    private LocalBroadcastManager lbm;
    private View pendingApproveContainer;
    private int pendingRequestCount;
    StickerHelper stickerHelper;
    StoreItemListAdapter storeItemListAdapter;
    BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.monetization.sticker.shared.SharedStickerCollectionListFragment.4
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (StickerHelper.STICKER_PENDING_REQUEST_COUNT_CAHNGE.equals(intent.getAction())) {
                SharedStickerCollectionListFragment.this.queryShareStickerCount();
            }
        }
    };
    View.OnClickListener actionBarRightListener = new View.OnClickListener() { // from class: com.narvii.monetization.sticker.shared.SharedStickerCollectionListFragment.6
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SharedStickerCollectionListFragment.this.startActivityForResult(FragmentWrapperActivity.intent(ShareStickerManageListFragment.class), 102);
        }
    };

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.shared_sticker_packs);
        this.accountService = (AccountService) getService("account");
        if (bundle != null) {
            this.pendingRequestCount = bundle.getInt(KEY_PENDING_COUNT);
        } else {
            this.pendingRequestCount = getIntParam(KEY_PENDING_COUNT);
        }
        this.stickerHelper = new StickerHelper(this);
        queryShareStickerCount();
        this.lbm = LocalBroadcastManager.getInstance(getContext());
        this.lbm.registerReceiver(this.receiver, new IntentFilter(StickerHelper.STICKER_PENDING_REQUEST_COUNT_CAHNGE));
    }

    @Override // com.narvii.app.NVFragment
    protected Drawable getActionBarCustomDrawable() {
        return new ColorDrawable(-13421773);
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_share_sticker_collection, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        this.pendingApproveContainer = view.findViewById(R.id.pending_container);
        this.pendingApproveContainer.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.monetization.sticker.shared.SharedStickerCollectionListFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                SharedStickerCollectionListFragment.this.startActivity(FragmentWrapperActivity.intent(PendingStickerCollectionListFragment.class));
            }
        });
        View emptyView = setEmptyView(R.layout.item_share_sticker_empty);
        emptyView.findViewById(R.id.create_new_sticker).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.monetization.sticker.shared.SharedStickerCollectionListFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                SharedStickerCollectionListFragment.this.startActivity(FragmentWrapperActivity.intent(StickerCollectionManageListFragment.class));
            }
        });
        emptyView.findViewById(R.id.empty_retry).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.monetization.sticker.shared.SharedStickerCollectionListFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                StoreItemListAdapter storeItemListAdapter = SharedStickerCollectionListFragment.this.storeItemListAdapter;
                if (storeItemListAdapter != null) {
                    storeItemListAdapter.refresh(2, null);
                }
            }
        });
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.lbm.unregisterReceiver(this.receiver);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        super.onRefresh();
        queryShareStickerCount();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePendingApproveContainer() {
        AccountService accountService = (AccountService) getService("account");
        boolean z = accountService.getUserProfile() != null && accountService.getUserProfile().isLeader();
        TextView textView = (TextView) this.pendingApproveContainer.findViewById(R.id.pending_count);
        textView.setText(Utils.getBadgeCount(this.pendingRequestCount));
        textView.setVisibility((!z || this.pendingRequestCount <= 0) ? 8 : 0);
        this.pendingApproveContainer.setVisibility((!z || this.pendingRequestCount <= 0) ? 8 : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void queryShareStickerCount() {
        if (this.stickerHelper == null) {
            return;
        }
        if (!(this.accountService.getUserProfile() != null && this.accountService.getUserProfile().isLeader())) {
            this.pendingRequestCount = 0;
        } else {
            this.stickerHelper.sendPendingRequestCountRequest(new Callback<PendingStickerResponse>() { // from class: com.narvii.monetization.sticker.shared.SharedStickerCollectionListFragment.5
                @Override // com.narvii.util.Callback
                public void call(PendingStickerResponse pendingStickerResponse) {
                    if (SharedStickerCollectionListFragment.this.isAdded() && pendingStickerResponse != null) {
                        SharedStickerCollectionListFragment.this.pendingRequestCount = pendingStickerResponse.pendingShareRequestCount;
                        SharedStickerCollectionListFragment.this.updatePendingApproveContainer();
                    }
                }
            });
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt(KEY_PENDING_COUNT, this.pendingRequestCount);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        updateActionBarRightButton();
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
        listView.setDividerHeight(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateActionBarRightButton() throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        if (getActivity() instanceof NVActivity) {
            NVActivity nVActivity = (NVActivity) getActivity();
            nVActivity.removeRightView();
            AccountService accountService = this.accountService;
            if ((accountService == null || accountService.getUserProfile() == null || !this.accountService.getUserProfile().isLeader()) ? false : true) {
                StoreItemListAdapter storeItemListAdapter = this.storeItemListAdapter;
                if (storeItemListAdapter == null || storeItemListAdapter.list() == null || this.storeItemListAdapter.list().size() == 0) {
                    nVActivity.setActionBarRightView(R.string.manage, -2130706433, false, (View.OnClickListener) null);
                } else {
                    nVActivity.setActionBarRightView(R.string.manage, ContextCompat.getColorStateList(getContext(), R.color.actionbar_text), true, this.actionBarRightListener);
                }
            }
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        StoreItemListAdapter storeItemListAdapter;
        if (i == 102 && i2 == -1 && (storeItemListAdapter = this.storeItemListAdapter) != null) {
            storeItemListAdapter.refresh(0, null);
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return false;
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.storeItemListAdapter = new StoreItemListAdapter(this);
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this, (int) Utils.dpToPx(getContext(), 7.0f), (int) Utils.dpToPx(getContext(), 7.0f), (int) Utils.dpToPx(getContext(), 15.0f), 0);
        divideColumnAdapter.setAdapter(this.storeItemListAdapter, 3);
        return divideColumnAdapter;
    }

    @Override // com.narvii.list.NVListFragment
    public Drawable getListSelector() {
        return new ColorDrawable(0);
    }

    private class StoreItemListAdapter extends NVPagedAdapter<StoreItem, StoreItemListResponse> implements NotificationListener {
        StoreHelper storeHelper;
        private StoreSectionMini storeSection;

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            return 0;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 1;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int pageSize() {
            return 30;
        }

        public StoreItemListAdapter(NVContext nVContext) {
            super(nVContext);
            this.storeHelper = new StoreHelper(getContext());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class dataType() {
            return StoreItem.class;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class responseType() {
            return StoreItemListResponse.class;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void refresh(int i, Callback callback) {
            super.refresh(i | 512, callback);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/store/items");
            builderPath.param("sectionGroupId", "sticker");
            builderPath.param("storeGroupId", "community-shared");
            if (z) {
                builderPath.tag("start0");
            }
            return builderPath.build();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, StoreItemListResponse storeItemListResponse, int i) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
            super.onPageResponse(apiRequest, (ApiRequest) storeItemListResponse, i);
            this.storeSection = storeItemListResponse.storeSection;
            if ("start0".equals(apiRequest.tag())) {
                SharedStickerCollectionListFragment.this.updateActionBarRightButton();
            }
        }

        @Override // com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            Object obj = notification.obj;
            boolean z = false;
            if ((obj instanceof StickerCollection) && notification.action == "update") {
                StickerCollection stickerCollection = (StickerCollection) obj;
                List<? extends StoreItem> listRawList = rawList();
                String strId = stickerCollection.id();
                if (listRawList != null) {
                    Iterator<? extends StoreItem> it = listRawList.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        StoreItem next = it.next();
                        if (next instanceof StoreItem) {
                            StoreItem storeItem = next;
                            if (Utils.isEqualsNotNull(storeItem.refObjectId, strId)) {
                                storeItem.setCachedRefObject(stickerCollection);
                                z = true;
                                break;
                            }
                        }
                    }
                }
                if (z) {
                    notifyDataSetChanged();
                    return;
                }
                return;
            }
            if (notification.obj instanceof StoreItem) {
                editList(notification, false);
            }
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected List filterResponseList(List list, int i) {
            return new FilterHelper(this).keepForLeader().filter(list);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            if (!(obj instanceof StoreItem)) {
                return null;
            }
            StoreItem storeItem = (StoreItem) obj;
            View viewCreateView = createView(R.layout.shared_sticker_pack_store_item_layout, viewGroup, view);
            NVObject refObject = storeItem.getRefObject();
            ViewUtils.show(viewCreateView.findViewById(R.id.disabled), refObject != null && (refObject.status() == 9 || refObject.status() == 3));
            NVImageView nVImageView = (NVImageView) viewCreateView.findViewById(R.id.store_item_preview);
            TextView textView = (TextView) viewCreateView.findViewById(R.id.store_item_name);
            StoreItem.ItemBasicInfo itemBasicInfo = storeItem.itemBasicInfo;
            nVImageView.setImageUrl(itemBasicInfo == null ? null : itemBasicInfo.icon);
            StoreItem.ItemBasicInfo itemBasicInfo2 = storeItem.itemBasicInfo;
            textView.setText(itemBasicInfo2 != null ? itemBasicInfo2.name : null);
            RestrictionInfo restrictionInfo = storeItem.itemRestrictionInfo;
            ViewUtils.show(viewCreateView, R.id.amino_plus_badge, restrictionInfo != null && restrictionInfo.restrictType == 2);
            TextView textView2 = (TextView) viewCreateView.findViewById(R.id.used_times);
            if (refObject instanceof StickerCollection) {
                StickerCollection stickerCollection = (StickerCollection) refObject;
                ViewUtils.show(viewCreateView, R.id._new, SharedStickerCollectionListFragment.this.stickerHelper.isStickerPackNew(stickerCollection));
                textView2.setText(SharedStickerCollectionListFragment.this.getString(R.string.used_n_x, TextUtils.numberFormat.format(stickerCollection.usedCount)));
                ViewUtils.visible(textView2, SharedStickerCollectionListFragment.this.stickerHelper.showStickerCollectionUsedTimes(stickerCollection));
            } else {
                ViewUtils.show(viewCreateView, R.id._new, false);
                ViewUtils.visible(textView2, false);
            }
            return viewCreateView;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, final Object obj, View view, View view2) {
            if (obj instanceof StoreItem) {
                StoreItem storeItem = (StoreItem) obj;
                NVObject refObject = storeItem.getRefObject();
                if (refObject != null && (refObject.status() == 9 || refObject.status() == 3)) {
                    ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
                    aCMAlertDialog.setMessage(R.string.delete_disabled_sticker_pack_confirm);
                    aCMAlertDialog.addButton(R.string.cancel, null);
                    aCMAlertDialog.addButton(R.string.delete, new View.OnClickListener() { // from class: com.narvii.monetization.sticker.shared.SharedStickerCollectionListFragment.StoreItemListAdapter.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view3) {
                            StoreItemListAdapter storeItemListAdapter = StoreItemListAdapter.this;
                            SharedStickerCollectionListFragment.this.stickerHelper.deleteStickerFromShareSection(storeItemListAdapter.storeSection == null ? null : StoreItemListAdapter.this.storeSection.storeSectionId, (StoreItem) obj);
                        }
                    }, SupportMenu.CATEGORY_MASK);
                    aCMAlertDialog.show();
                    return true;
                }
                this.storeHelper.openStoreItemDetail(storeItem);
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }
    }

    @Override // com.narvii.app.FragmentWillFinishListener
    public void willFinish(NVActivity nVActivity) {
        DrawerHost drawerHost = (DrawerHost) getService("drawerHost");
        if (drawerHost != null) {
            drawerHost.refreshGeneralCount(0L);
        }
    }
}
