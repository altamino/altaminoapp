package com.narvii.monetization.store;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.adapter.MarginAdapter;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.detail.DetailAdapter;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVPagedAdapter;
import com.narvii.list.overlay.OverlayLayout;
import com.narvii.model.StoreItemBaseObject;
import com.narvii.model.api.ListResponse;
import com.narvii.monetization.sticker.StickerHelper;
import com.narvii.monetization.sticker.manage.StickerCollectionManageListFragment;
import com.narvii.monetization.sticker.model.PendingStickerResponse;
import com.narvii.monetization.sticker.shared.SharedStickerCollectionListFragment;
import com.narvii.monetization.store.data.StoreItem;
import com.narvii.monetization.store.data.StoreItemListResponse;
import com.narvii.monetization.store.data.StoreItemStubStickCollection;
import com.narvii.monetization.store.data.StoreSectionMini;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.wallet.MembershipService;
import com.narvii.widget.NVListView;
import java.util.List;

/* loaded from: classes3.dex */
public class MonetizationStoreSectionDetailFragment extends MonetizationStoreBaseFragment implements NotificationListener {
    private AccountService accountService;
    private HeaderLayout headerLayout;
    private boolean isGlobalSpace;
    private LocalBroadcastManager lbm;
    private MembershipService membership;
    private View myStickerEntry;
    private int pendingStickerRequstCount;
    private BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.monetization.store.MonetizationStoreSectionDetailFragment.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (StickerHelper.STICKER_PENDING_REQUEST_COUNT_CAHNGE.equals(intent.getAction())) {
                MonetizationStoreSectionDetailFragment.this.queryPendingCount();
            } else if (MembershipService.ACTION_MEMBERSHIP_CHANGED.equals(intent.getAction())) {
                MonetizationStoreSectionDetailFragment.this.storeItemListAdapter.notifyDataSetChanged();
            }
        }
    };
    private SharedStickerEntryAdapter sharedStickerEntryAdapter;
    private StoreItemListAdapter storeItemListAdapter;

    @Override // com.narvii.monetization.store.MonetizationStoreBaseFragment
    protected int getLayoutId() {
        return R.layout.monetization_store_section_layout;
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws IllegalAccessException, NoSuchFieldException, Resources.NotFoundException, IllegalArgumentException {
        super.onViewCreated(view, bundle);
        OverlayLayout overlayLayout = (OverlayLayout) view.findViewById(R.id.overlay);
        if (overlayLayout != null) {
            overlayLayout.attach((NVListView) getListView());
            overlayLayout.setVisibility(0);
            overlayLayout.setLayout(R.layout.monetization_store_section_header, (int) (getStatusBarOverlaySize() + Utils.dpToPx(getContext(), 130.0f)));
            overlayLayout.setHeight1(getStatusBarOverlaySize() + getActionBarOverlaySize());
            this.headerLayout = (HeaderLayout) overlayLayout.findViewById(R.id.header_layout);
            this.headerLayout.setImageSizeRange((int) Utils.dpToPx(getContext(), 40.0f), (int) Utils.dpToPx(getContext(), 30.0f));
        }
        setActionBarTitleView(new View(getContext()));
        updateHeaderView((StoreSectionMini) JacksonUtils.readAs(getStringParam("sectionGroupInfo"), StoreSectionMini.class));
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.accountService = (AccountService) getService("account");
        this.membership = (MembershipService) getService("membership");
        queryPendingCount();
        this.lbm = LocalBroadcastManager.getInstance(getContext());
        this.lbm.registerReceiver(this.receiver, new IntentFilter(StickerHelper.STICKER_PENDING_REQUEST_COUNT_CAHNGE));
        this.lbm.registerReceiver(this.receiver, new IntentFilter(MembershipService.ACTION_MEMBERSHIP_CHANGED));
        this.isGlobalSpace = ((ConfigService) getService("config")).getCommunityId() == 0;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        this.lbm.unregisterReceiver(this.receiver);
        super.onDestroy();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        super.onRefresh();
        queryPendingCount();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void queryPendingCount() {
        if (this.accountService.getUserProfile() != null && this.accountService.getUserProfile().isLeader()) {
            new StickerHelper(this).sendPendingRequestCountRequest(new Callback<PendingStickerResponse>() { // from class: com.narvii.monetization.store.MonetizationStoreSectionDetailFragment.2
                @Override // com.narvii.util.Callback
                public void call(PendingStickerResponse pendingStickerResponse) {
                    if (MonetizationStoreSectionDetailFragment.this.isAdded() && pendingStickerResponse != null) {
                        MonetizationStoreSectionDetailFragment.this.pendingStickerRequstCount = pendingStickerResponse.pendingShareRequestCount;
                        if (MonetizationStoreSectionDetailFragment.this.sharedStickerEntryAdapter != null) {
                            MonetizationStoreSectionDetailFragment.this.sharedStickerEntryAdapter.notifyDataSetChanged();
                        }
                    }
                }
            });
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        configRightButton();
    }

    private void configRightButton() throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        if ("sticker".equals(getStringParam("sectionGroupId"))) {
            this.myStickerEntry = LayoutInflater.from(getContext()).inflate(R.layout.my_sticker_entry, (ViewGroup) null);
            this.myStickerEntry.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.monetization.store.MonetizationStoreSectionDetailFragment.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    Intent intent = FragmentWrapperActivity.intent(StickerCollectionManageListFragment.class);
                    intent.putExtra("Source", MonetizationStoreSectionDetailFragment.this.getStringParam("Source"));
                    MonetizationStoreSectionDetailFragment.this.startActivity(intent);
                }
            });
            setActionBarRightView(this.myStickerEntry);
        }
    }

    @Override // com.narvii.monetization.store.MonetizationStoreBaseFragment, com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
        listView.setDividerHeight(0);
        if (!"sticker".equals(getStringParam("sectionGroupId")) || this.isGlobalSpace) {
            return;
        }
        ((NVListView) listView).setOverscrollStretchFooter(-1118482);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        mergeAdapter.addAdapter(new TopAdapter(this));
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this, (int) Utils.dpToPx(getContext(), 7.0f), (int) Utils.dpToPx(getContext(), 7.0f), (int) Utils.dpToPx(getContext(), 15.0f), 0);
        this.storeItemListAdapter = new StoreItemListAdapter(this);
        divideColumnAdapter.setAdapter(this.storeItemListAdapter, 3);
        mergeAdapter.addAdapter(divideColumnAdapter, true);
        if ("sticker".equals(getStringParam("sectionGroupId")) && !this.isGlobalSpace) {
            mergeAdapter.addAdapter(new GreyMarginAdapter(this, Utils.dpToPxInt(getContext(), 10.0f)));
            this.sharedStickerEntryAdapter = new SharedStickerEntryAdapter(this);
            mergeAdapter.addAdapter(this.sharedStickerEntryAdapter);
            mergeAdapter.addAdapter(new GreyMarginAdapter(this, Utils.dpToPxInt(getContext(), 10.0f)));
        }
        return mergeAdapter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateHeaderView(StoreSectionMini storeSectionMini) {
        HeaderLayout headerLayout = this.headerLayout;
        if (headerLayout == null || storeSectionMini == null) {
            return;
        }
        ((ImageView) headerLayout.findViewById(R.id.store_section_icon)).setImageResource(storeSectionMini.icon());
        ((TextView) this.headerLayout.findViewById(R.id.store_section_title)).setText(storeSectionMini.name);
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        List<?> list;
        if ((notification.obj instanceof StoreItemBaseObject) && notification.action == "update" && (list = this.storeItemListAdapter.list()) != null) {
            for (Object obj : list) {
                if (obj instanceof StoreItem) {
                    StoreItem storeItem = (StoreItem) obj;
                    if (Utils.isStringEquals(storeItem.refObjectId, ((StoreItemBaseObject) notification.obj).id())) {
                        storeItem.setCachedRefObject((StoreItemBaseObject) notification.obj);
                        StoreItemListAdapter storeItemListAdapter = this.storeItemListAdapter;
                        if (storeItemListAdapter != null) {
                            storeItemListAdapter.notifyDataSetChanged();
                            return;
                        }
                        return;
                    }
                }
            }
        }
    }

    private class GreyMarginAdapter extends MarginAdapter {
        public GreyMarginAdapter(NVContext nVContext, int i) {
            super(nVContext, i);
        }

        @Override // com.narvii.adapter.MarginAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View view2 = super.getView(i, view, viewGroup);
            view2.setBackgroundColor(-1118482);
            return view2;
        }
    }

    private class SharedStickerEntryAdapter extends NVAdapter {
        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        public SharedStickerEntryAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return (MonetizationStoreSectionDetailFragment.this.storeItemListAdapter != null && MonetizationStoreSectionDetailFragment.this.storeItemListAdapter.isListShown() && MonetizationStoreSectionDetailFragment.this.storeItemListAdapter.isEnd()) ? 1 : 0;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            Intent intent = FragmentWrapperActivity.intent(SharedStickerCollectionListFragment.class);
            intent.putExtra(SharedStickerCollectionListFragment.KEY_PENDING_COUNT, MonetizationStoreSectionDetailFragment.this.pendingStickerRequstCount);
            startActivity(intent);
            return true;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.store_sticker_pack_entry, viewGroup, view);
            AccountService accountService = (AccountService) getService("account");
            boolean z = accountService.getUserProfile() != null && accountService.getUserProfile().isLeader();
            TextView textView = (TextView) viewCreateView.findViewById(R.id.pending_count);
            textView.setText(Utils.getBadgeCount(MonetizationStoreSectionDetailFragment.this.pendingStickerRequstCount));
            textView.setVisibility((!z || MonetizationStoreSectionDetailFragment.this.pendingStickerRequstCount <= 0) ? 8 : 0);
            return viewCreateView;
        }
    }

    private class StoreItemListAdapter extends NVPagedAdapter {
        StoreHelper storeHelper;

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
            this.storeHelper.source = "Category";
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected Class dataType() {
            return StoreItem.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected Class responseType() {
            return StoreItemListResponse.class;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void refresh(int i, Callback callback) {
            super.refresh(i | 512, callback);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            String stringParam = MonetizationStoreSectionDetailFragment.this.getStringParam("sectionGroupId");
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/store/items");
            builderPath.param("sectionGroupId", stringParam);
            if (z && "sticker".equals(stringParam)) {
                builderPath.tag("start0");
            }
            return builderPath.build();
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected void onPageResponse(ApiRequest apiRequest, ListResponse listResponse, int i) {
            List<StoreItem> list;
            boolean z = listResponse instanceof StoreItemListResponse;
            if (z && "start0".equals(apiRequest.tag()) && (list = ((StoreItemListResponse) listResponse).storeItemList) != null) {
                list.add(new StoreItemStubStickCollection(getContext()));
            }
            super.onPageResponse(apiRequest, listResponse, i);
            if (z) {
                MonetizationStoreSectionDetailFragment.this.updateHeaderView(((StoreItemListResponse) listResponse).storeSection);
            }
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            StoreItemView storeItemView = new StoreItemView(getContext());
            storeItemView.setStoreItem((StoreItem) obj, MonetizationStoreSectionDetailFragment.this.membership.isMembership());
            storeItemView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            return storeItemView;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (obj instanceof StoreItem) {
                this.storeHelper.openStoreItemDetail((StoreItem) obj);
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }
    }

    public class TopAdapter extends NVAdapter {
        private final DetailAdapter.CellType HEADER;
        private View headerPlaceHolder;

        @Override // android.widget.Adapter
        public int getCount() {
            return 1;
        }

        public TopAdapter(NVContext nVContext) {
            super(nVContext);
            this.HEADER = new DetailAdapter.CellType("user.header");
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this.HEADER;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return getItem(i).hashCode();
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (getItem(i) != this.HEADER) {
                return null;
            }
            this.headerPlaceHolder = createView(R.layout.user_profile_header_placeholder, viewGroup, view);
            ViewGroup.LayoutParams layoutParams = this.headerPlaceHolder.getLayoutParams();
            layoutParams.height = (int) (MonetizationStoreSectionDetailFragment.this.getStatusBarOverlaySize() + Utils.dpToPx(getContext(), 130.0f));
            this.headerPlaceHolder.setLayoutParams(layoutParams);
            return this.headerPlaceHolder;
        }
    }
}
