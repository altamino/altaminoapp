package com.narvii.monetization.sticker.manage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import com.narvii.account.AccountService;
import com.narvii.adapter.MarginAdapter;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.AdriftAdapter;
import com.narvii.list.DividerAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.SimpleViewAdapter;
import com.narvii.logging.ActSemantic;
import com.narvii.model.api.ApiResponse;
import com.narvii.monetization.MemberShipExpireWarningFragment;
import com.narvii.monetization.common.ManageEntryAdapter;
import com.narvii.monetization.common.ManageTitleAdapter;
import com.narvii.monetization.sticker.StickerHelper;
import com.narvii.monetization.sticker.StickerService;
import com.narvii.monetization.sticker.model.PendingStickerResponse;
import com.narvii.monetization.sticker.model.StickerCollection;
import com.narvii.monetization.sticker.post.StickerCollectionPostActivity;
import com.narvii.monetization.sticker.shared.SharedStickerCollectionListFragment;
import com.narvii.monetization.store.MonetizationStoreMainFragment;
import com.narvii.util.Callback;
import com.narvii.util.CollectionUtils;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.wallet.MembershipService;
import com.safedk.android.utils.Logger;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public class StickerCollectionManageListFragment extends NVListFragment implements StickerService.StickerCollectionListObserver {
    AccountService accountService;
    String error;
    MembershipService membershipService;
    private int pendingStickerCount;
    BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.monetization.sticker.manage.StickerCollectionManageListFragment.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (MembershipService.ACTION_MEMBERSHIP_CHANGED.equals(intent.getAction())) {
                StickerListAdapter stickerListAdapter = StickerCollectionManageListFragment.this.stickerListAdapter;
                if (stickerListAdapter != null) {
                    stickerListAdapter.notifyDataSetChanged();
                    return;
                }
                return;
            }
            if (StickerHelper.STICKER_PENDING_REQUEST_COUNT_CAHNGE.equals(intent.getAction())) {
                StickerCollectionManageListFragment.this.queryShareStickerCount();
            }
        }
    };
    List<StickerCollection> stickerCollectionList;
    ManageEntryAdapter stickerEntryAdapter;
    StickerHelper stickerHelper;
    StickerListAdapter stickerListAdapter;
    StickerService stickerService;

    class CreateStickerPackAdapter extends AdriftAdapter {
        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "CreateNewStickerPack";
        }

        @Override // com.narvii.list.AdriftAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i10) {
            return true;
        }

        public CreateStickerPackAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            logClickEvent(ActSemantic.createStickerPack);
            StickerCollectionManageListFragment.this.stickerHelper.checkStickerCollectionCreatable(3, new Callback<ApiResponse>() { // from class: com.narvii.monetization.sticker.manage.StickerCollectionManageListFragment.CreateStickerPackAdapter.1
                public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
                    Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
                    if (p1 == null) {
                        return;
                    }
                    p0.startActivity(p1);
                }

                @Override // com.narvii.util.Callback
                public void call(ApiResponse apiResponse) {
                    safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(CreateStickerPackAdapter.this, new Intent(CreateStickerPackAdapter.this.getContext(), (Class<?>) StickerCollectionPostActivity.class));
                }
            });
            return true;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            return createView(R.layout.create_sticker_pack, viewGroup, view);
        }
    }

    class StickerListAdapter extends NVAdapter {
        StickerHelper stickerHelper;

        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "StickerPackList";
        }

        public StickerListAdapter(NVContext nVContext) {
            super(nVContext);
            this.stickerHelper = new StickerHelper(nVContext);
        }

        @Override // com.narvii.list.NVAdapter
        public String errorMessage() {
            StickerCollectionManageListFragment stickerCollectionManageListFragment = StickerCollectionManageListFragment.this;
            if (stickerCollectionManageListFragment.stickerCollectionList == null) {
                return stickerCollectionManageListFragment.error;
            }
            return null;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return CollectionUtils.getSize(StickerCollectionManageListFragment.this.stickerCollectionList);
        }

        @Override // android.widget.Adapter
        public StickerCollection getItem(int i10) {
            return StickerCollectionManageListFragment.this.stickerCollectionList.get(i10);
        }

        @Override // com.narvii.list.NVAdapter
        public boolean isListShown() {
            return StickerCollectionManageListFragment.this.stickerCollectionList != null;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (!(obj instanceof StickerCollection)) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            StickerCollection stickerCollection = (StickerCollection) obj;
            if (view2 == null) {
                logClickEvent(obj, ActSemantic.checkDetail);
                this.stickerHelper.onClickStickerCollection(stickerCollection, "Management");
                return true;
            }
            if (view2.getId() == R.id.edit) {
                this.stickerHelper.onClickEditStickerCollectionButton(stickerCollection);
            }
            return true;
        }

        @Override // com.narvii.list.NVAdapter
        public void refresh(int i10, Callback<Integer> callback) {
            StickerCollectionManageListFragment.this.stickerService.refreshStickerCollectionInfo(true);
            StickerCollectionManageListFragment.this.updateAdapter();
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return getItem(i10).hashCode();
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            boolean z6;
            StickerCollection item = getItem(i10);
            StickerCollectionItem stickerCollectionItem = (StickerCollectionItem) createView(R.layout.sticker_collection_item, viewGroup, view);
            stickerCollectionItem.setStickerCollection(item);
            View viewFindViewById = stickerCollectionItem.findViewById(R.id.edit);
            if (this.stickerHelper.isCreatedByMe(item) && !item.notAvailable()) {
                z6 = true;
            } else {
                z6 = false;
            }
            ViewUtils.show(viewFindViewById, z6);
            viewFindViewById.setOnClickListener(this.subviewClickListener);
            return stickerCollectionItem;
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            super.notifyDataSetChanged();
            StickerCollectionManageListFragment.this.updateSortButton();
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "StickerManagementPage";
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void queryShareStickerCount() {
        if (this.stickerHelper == null) {
            return;
        }
        if (this.accountService.getUserProfile() == null || !this.accountService.getUserProfile().isLeader()) {
            this.pendingStickerCount = 0;
        } else {
            this.stickerHelper.sendPendingRequestCountRequest(new Callback<PendingStickerResponse>() { // from class: com.narvii.monetization.sticker.manage.StickerCollectionManageListFragment.2
                @Override // com.narvii.util.Callback
                public void call(PendingStickerResponse pendingStickerResponse) {
                    if (StickerCollectionManageListFragment.this.isAdded() && pendingStickerResponse != null) {
                        StickerCollectionManageListFragment.this.pendingStickerCount = pendingStickerResponse.pendingShareRequestCount;
                        StickerCollectionManageListFragment stickerCollectionManageListFragment = StickerCollectionManageListFragment.this;
                        ManageEntryAdapter manageEntryAdapter = stickerCollectionManageListFragment.stickerEntryAdapter;
                        if (manageEntryAdapter != null) {
                            manageEntryAdapter.setNumber(stickerCollectionManageListFragment.pendingStickerCount);
                            StickerCollectionManageListFragment.this.stickerEntryAdapter.notifyDataSetChanged();
                        }
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateAdapter() {
        this.stickerCollectionList = this.stickerService.getStickerCollectionList();
        this.error = this.stickerService.getError();
        StickerListAdapter stickerListAdapter = this.stickerListAdapter;
        if (stickerListAdapter != null) {
            stickerListAdapter.notifyDataSetChanged();
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        ListAdapter manageTitleAdapter = new ManageTitleAdapter(this, R.string.stickers_in_this_amino);
        if (!isGlobalInteractionScope()) {
            mergeAdapter.addAdapter(manageTitleAdapter);
        }
        DividerAdapter dividerAdapter = new DividerAdapter(this) { // from class: com.narvii.monetization.sticker.manage.StickerCollectionManageListFragment.4
            @Override // com.narvii.list.DividerAdapter
            protected int getDividerLayoutId() {
                return R.layout.left_white_divider_10;
            }
        };
        MergeAdapter mergeAdapter2 = new MergeAdapter(this);
        mergeAdapter2.addAdapter(new CreateStickerPackAdapter(this));
        StickerListAdapter stickerListAdapter = new StickerListAdapter(this);
        this.stickerListAdapter = stickerListAdapter;
        mergeAdapter2.addAdapter(stickerListAdapter, true);
        dividerAdapter.setAdapter(mergeAdapter2);
        mergeAdapter.addAdapter(dividerAdapter, true);
        mergeAdapter.addAdapter(new MarginAdapter(this, (int) Utils.dpToPx(getContext(), 10.0f)));
        mergeAdapter.addAdapter(new ManageEntryAdapter(this, R.string.all_stickers) { // from class: com.narvii.monetization.sticker.manage.StickerCollectionManageListFragment.5
            public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
            public String getAreaName() {
                return "AllMyStickers";
            }

            @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
            public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
                logClickEvent(ActSemantic.listViewEnter);
                safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, FragmentWrapperActivity.intent(StickerCollectionHistoryListFragment.class));
                return true;
            }
        });
        mergeAdapter.addAdapter(new MarginAdapter(this, (int) Utils.dpToPx(getContext(), 10.0f)));
        this.stickerEntryAdapter = new ManageEntryAdapter(this, R.string.shared_sticker_packs) { // from class: com.narvii.monetization.sticker.manage.StickerCollectionManageListFragment.6
            public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
            public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
                Intent intent = FragmentWrapperActivity.intent(SharedStickerCollectionListFragment.class);
                intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Management");
                safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
                return true;
            }
        };
        if (!isGlobalInteractionScope()) {
            mergeAdapter.addAdapter(this.stickerEntryAdapter);
        }
        mergeAdapter.addAdapter(new SimpleViewAdapter(this) { // from class: com.narvii.monetization.sticker.manage.StickerCollectionManageListFragment.7
            public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
            public String getAreaName() {
                return "MoreStickers";
            }

            @Override // com.narvii.list.SimpleViewAdapter
            protected int getLayoutId() {
                return R.layout.sticker_collection_more;
            }

            @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
            public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
                logClickEvent(ActSemantic.pageEnter);
                Intent intent = FragmentWrapperActivity.intent(MonetizationStoreMainFragment.class);
                intent.putExtra("scrollSectionGroupId", "sticker");
                intent.putExtra(ExternalPostPreviewFragment.SOURCE, "More Stickers");
                safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
                return true;
            }
        });
        return mergeAdapter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSortButton() {
        boolean z6;
        if (getActivity() instanceof NVActivity) {
            NVActivity nVActivity = (NVActivity) getActivity();
            List<StickerCollection> list = this.stickerCollectionList;
            if (list != null) {
                for (StickerCollection stickerCollection : list) {
                    if (!stickerCollection.isPersonal() && !stickerCollection.isLocalMood()) {
                        z6 = true;
                    }
                }
                z6 = false;
            } else {
                z6 = false;
            }
            nVActivity.setRightViewEnabled(z6);
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        if (getActivity() instanceof NVActivity) {
            ((NVActivity) getActivity()).setActionBarRightView(R.string.manage, new View.OnClickListener() { // from class: com.narvii.monetization.sticker.manage.StickerCollectionManageListFragment.3
                public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
                    Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
                    if (p1 == null) {
                        return;
                    }
                    p0.startActivity(p1);
                }

                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(StickerCollectionManageListFragment.this, FragmentWrapperActivity.intent(StickerCollectionSortListFragment.class));
                }
            });
        }
        updateSortButton();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        StickerService stickerService = (StickerService) getService("sticker");
        this.stickerService = stickerService;
        stickerService.addStickerCollectionListObserver(this);
        this.membershipService = (MembershipService) getService("membership");
        this.stickerHelper = new StickerHelper(this);
        this.accountService = (AccountService) getService("account");
        queryShareStickerCount();
        setTitle(R.string.my_stickers);
        MemberShipExpireWarningFragment.attachTo(this, "Sticker (Bar)");
        registerLocalReceiver(this.receiver, new IntentFilter(MembershipService.ACTION_MEMBERSHIP_CHANGED));
        registerLocalReceiver(this.receiver, new IntentFilter(StickerHelper.STICKER_PENDING_REQUEST_COUNT_CAHNGE));
        if (!this.stickerService.isStickerPackListRefreshedThisSession()) {
            this.stickerService.refreshStickerCollectionInfo(false);
        }
        if (bundle == null) {
            ((StatisticsService) getService("statistics")).event("My Stickers").source(getStringParam(ExternalPostPreviewFragment.SOURCE)).userPropInc("My Stickers Total");
        }
    }

    @Override // com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_sticker_collection_manage, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        unregisterLocalReceiver(this.receiver);
        this.stickerService.removeStickerCollectionListObserver(this);
    }

    @Override // com.narvii.monetization.sticker.StickerService.StickerCollectionListObserver
    public void onListChanged() {
        updateAdapter();
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
        listView.setDividerHeight(0);
        listView.setBackgroundColor(ContextCompat.getColor(getContext(), R.color.product_manager_bg_color));
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        super.onRefresh();
        queryShareStickerCount();
    }

    @Override // com.narvii.monetization.sticker.StickerService.StickerCollectionListObserver
    public void onRequestFailed() {
        updateAdapter();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        updateAdapter();
    }
}
