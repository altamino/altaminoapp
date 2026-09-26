package com.narvii.monetization.sticker.shared;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.core.internal.view.SupportMenu;
import androidx.fragment.app.Fragment;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWillFinishListener;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.drawer.DrawerHost;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.master.widget.MasterBottomItemView;
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
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.statistics.constants.EventConstants;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.NVImageView;
import com.safedk.android.utils.Logger;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
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
        public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
            Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
            if (p1 == null) {
                return;
            }
            p0.startActivityForResult(p1, p5);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(SharedStickerCollectionListFragment.this, FragmentWrapperActivity.intent(ShareStickerManageListFragment.class), 102);
        }
    };

    private class StoreItemListAdapter extends NVPagedAdapter<StoreItem, StoreItemListResponse> implements NotificationListener {
        StoreHelper storeHelper;
        private StoreSectionMini storeSection;

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class dataType() {
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

        @Override // com.narvii.list.NVPagedAdapter
        protected int pageSize() {
            return 30;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class responseType() {
            return StoreItemListResponse.class;
        }

        public StoreItemListAdapter(NVContext nVContext) {
            super(nVContext);
            this.storeHelper = new StoreHelper(getContext());
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected List filterResponseList(List list, int i10) {
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
        public boolean onItemClick(ListAdapter listAdapter, int i10, final Object obj, View view, View view2) {
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
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }

        @Override // com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            Object obj = notification.obj;
            if (!(obj instanceof StickerCollection) || notification.action != "update") {
                if (obj instanceof StoreItem) {
                    editList(notification, false);
                    return;
                }
                return;
            }
            StickerCollection stickerCollection = (StickerCollection) obj;
            List<? extends StoreItem> listRawList = rawList();
            String strId = stickerCollection.id();
            if (listRawList != null) {
                for (StoreItem storeItem : listRawList) {
                    if (storeItem instanceof StoreItem) {
                        StoreItem storeItem2 = storeItem;
                        if (Utils.isEqualsNotNull(storeItem2.refObjectId, strId)) {
                            storeItem2.setCachedRefObject(stickerCollection);
                            notifyDataSetChanged();
                            return;
                        }
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, StoreItemListResponse storeItemListResponse, int i10) {
            super.onPageResponse(apiRequest, storeItemListResponse, i10);
            this.storeSection = storeItemListResponse.storeSection;
            if ("start0".equals(apiRequest.tag())) {
                SharedStickerCollectionListFragment.this.updateActionBarRightButton();
            }
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void refresh(int i10, Callback callback) {
            super.refresh(i10 | 512, callback);
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

    @Override // com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return Boolean.FALSE;
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void queryShareStickerCount() {
        if (this.stickerHelper == null) {
            return;
        }
        if (this.accountService.getUserProfile() == null || !this.accountService.getUserProfile().isLeader()) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePendingApproveContainer() {
        AccountService accountService = (AccountService) getService("account");
        boolean z6 = accountService.getUserProfile() != null && accountService.getUserProfile().isLeader();
        TextView textView = (TextView) this.pendingApproveContainer.findViewById(R.id.pending_count);
        textView.setText(Utils.getBadgeCount(this.pendingRequestCount));
        textView.setVisibility((!z6 || this.pendingRequestCount <= 0) ? 8 : 0);
        this.pendingApproveContainer.setVisibility((!z6 || this.pendingRequestCount <= 0) ? 8 : 0);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.storeItemListAdapter = new StoreItemListAdapter(this);
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this, (int) Utils.dpToPx(getContext(), 7.0f), (int) Utils.dpToPx(getContext(), 7.0f), (int) Utils.dpToPx(getContext(), 15.0f), 0);
        divideColumnAdapter.setAdapter(this.storeItemListAdapter, 3);
        return divideColumnAdapter;
    }

    @Override // com.narvii.app.NVFragment
    protected Drawable getActionBarCustomDrawable() {
        return new ColorDrawable(MasterBottomItemView.TEXT_COLOR_DISABLED);
    }

    @Override // com.narvii.list.NVListFragment
    public Drawable getListSelector() {
        return new ColorDrawable(0);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        StoreItemListAdapter storeItemListAdapter;
        if (i10 == 102 && i11 == -1 && (storeItemListAdapter = this.storeItemListAdapter) != null) {
            storeItemListAdapter.refresh(0, null);
        }
        super.onActivityResult(i10, i11, intent);
    }

    @Override // com.narvii.app.FragmentWillFinishListener
    public void willFinish(NVActivity nVActivity) {
        DrawerHost drawerHost = (DrawerHost) getService("drawerHost");
        if (drawerHost != null) {
            drawerHost.refreshGeneralCount(0L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateActionBarRightButton() {
        if (getActivity() instanceof NVActivity) {
            NVActivity nVActivity = (NVActivity) getActivity();
            nVActivity.removeRightView();
            AccountService accountService = this.accountService;
            if (accountService != null && accountService.getUserProfile() != null && this.accountService.getUserProfile().isLeader()) {
                StoreItemListAdapter storeItemListAdapter = this.storeItemListAdapter;
                if (storeItemListAdapter != null && storeItemListAdapter.list() != null && this.storeItemListAdapter.list().size() != 0) {
                    nVActivity.setActionBarRightView(R.string.manage, ContextCompat.getColorStateList(getContext(), R.color.actionbar_text), true, this.actionBarRightListener);
                } else {
                    nVActivity.setActionBarRightView(R.string.manage, -2130706433, false, (View.OnClickListener) null);
                }
            }
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        updateActionBarRightButton();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
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
        LocalBroadcastManager localBroadcastManagerB = LocalBroadcastManager.b(getContext());
        this.lbm = localBroadcastManagerB;
        localBroadcastManagerB.c(this.receiver, new IntentFilter(StickerHelper.STICKER_PENDING_REQUEST_COUNT_CAHNGE));
        if (bundle == null) {
            ((StatisticsService) getService("statistics")).event("Amino+ Product Category Page (Store)").source(getStringParam(ExternalPostPreviewFragment.SOURCE)).param(EventConstants.CommentPost.TYPE, "Shared Sticker Packs").userPropInc("Amino+ Product Category Page (Store) Total");
        }
    }

    @Override // com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_share_sticker_collection, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.lbm.f(this.receiver);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
        listView.setDividerHeight(0);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        super.onRefresh();
        queryShareStickerCount();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt(KEY_PENDING_COUNT, this.pendingRequestCount);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        View viewFindViewById = view.findViewById(R.id.pending_container);
        this.pendingApproveContainer = viewFindViewById;
        viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.monetization.sticker.shared.SharedStickerCollectionListFragment.1
            public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(SharedStickerCollectionListFragment.this, FragmentWrapperActivity.intent(PendingStickerCollectionListFragment.class));
            }
        });
        View emptyView = setEmptyView(R.layout.item_share_sticker_empty);
        emptyView.findViewById(R.id.create_new_sticker).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.monetization.sticker.shared.SharedStickerCollectionListFragment.2
            public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(SharedStickerCollectionListFragment.this, FragmentWrapperActivity.intent(StickerCollectionManageListFragment.class));
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
}
