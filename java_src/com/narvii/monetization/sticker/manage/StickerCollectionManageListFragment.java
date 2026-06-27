package com.narvii.monetization.sticker.manage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.narvii.account.AccountService;
import com.narvii.adapter.MarginAdapter;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
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
import com.narvii.wallet.MembershipService;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class StickerCollectionManageListFragment extends NVListFragment implements StickerService.StickerCollectionListObserver {
    AccountService accountService;
    String error;
    MembershipService membershipService;
    private int pendingStickerCount;
    BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.monetization.sticker.manage.StickerCollectionManageListFragment.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
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

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "StickerManagementPage";
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.stickerService = (StickerService) getService("sticker");
        this.stickerService.addStickerCollectionListObserver(this);
        this.membershipService = (MembershipService) getService("membership");
        this.stickerHelper = new StickerHelper(this);
        this.accountService = (AccountService) getService("account");
        queryShareStickerCount();
        setTitle(R.string.my_stickers);
        MemberShipExpireWarningFragment.attachTo(this, "Sticker (Bar)");
        registerLocalReceiver(this.receiver, new IntentFilter(MembershipService.ACTION_MEMBERSHIP_CHANGED));
        registerLocalReceiver(this.receiver, new IntentFilter(StickerHelper.STICKER_PENDING_REQUEST_COUNT_CAHNGE));
        if (this.stickerService.isStickerPackListRefreshedThisSession()) {
            return;
        }
        this.stickerService.refreshStickerCollectionInfo(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void queryShareStickerCount() {
        if (this.stickerHelper == null) {
            return;
        }
        if (!(this.accountService.getUserProfile() != null && this.accountService.getUserProfile().isLeader())) {
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

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        if (getActivity() instanceof NVActivity) {
            ((NVActivity) getActivity()).setActionBarRightView(R.string.manage, new View.OnClickListener() { // from class: com.narvii.monetization.sticker.manage.StickerCollectionManageListFragment.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    StickerCollectionManageListFragment.this.startActivity(FragmentWrapperActivity.intent(StickerCollectionSortListFragment.class));
                }
            });
        }
        updateSortButton();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSortButton() throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        if (getActivity() instanceof NVActivity) {
            NVActivity nVActivity = (NVActivity) getActivity();
            boolean z = false;
            List<StickerCollection> list = this.stickerCollectionList;
            if (list != null) {
                Iterator<StickerCollection> it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    StickerCollection next = it.next();
                    if (!next.isPersonal() && !next.isLocalMood()) {
                        z = true;
                        break;
                    }
                }
            }
            nVActivity.setRightViewEnabled(z);
        }
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_sticker_collection_manage, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        super.onRefresh();
        queryShareStickerCount();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        unregisterLocalReceiver(this.receiver);
        this.stickerService.removeStickerCollectionListObserver(this);
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
        this.stickerListAdapter = new StickerListAdapter(this);
        mergeAdapter2.addAdapter(this.stickerListAdapter, true);
        dividerAdapter.setAdapter(mergeAdapter2);
        mergeAdapter.addAdapter(dividerAdapter, true);
        mergeAdapter.addAdapter(new MarginAdapter(this, (int) Utils.dpToPx(getContext(), 10.0f)));
        mergeAdapter.addAdapter(new ManageEntryAdapter(this, R.string.all_stickers) { // from class: com.narvii.monetization.sticker.manage.StickerCollectionManageListFragment.5
            @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
            public String getAreaName() {
                return "AllMyStickers";
            }

            @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
            public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
                logClickEvent(ActSemantic.listViewEnter);
                startActivity(FragmentWrapperActivity.intent(StickerCollectionHistoryListFragment.class));
                return true;
            }
        });
        mergeAdapter.addAdapter(new MarginAdapter(this, (int) Utils.dpToPx(getContext(), 10.0f)));
        this.stickerEntryAdapter = new ManageEntryAdapter(this, R.string.shared_sticker_packs) { // from class: com.narvii.monetization.sticker.manage.StickerCollectionManageListFragment.6
            @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
            public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
                Intent intent = FragmentWrapperActivity.intent(SharedStickerCollectionListFragment.class);
                intent.putExtra("Source", "Management");
                startActivity(intent);
                return true;
            }
        };
        if (!isGlobalInteractionScope()) {
            mergeAdapter.addAdapter(this.stickerEntryAdapter);
        }
        mergeAdapter.addAdapter(new SimpleViewAdapter(this) { // from class: com.narvii.monetization.sticker.manage.StickerCollectionManageListFragment.7
            @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
            public String getAreaName() {
                return "MoreStickers";
            }

            @Override // com.narvii.list.SimpleViewAdapter
            protected int getLayoutId() {
                return R.layout.sticker_collection_more;
            }

            @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
            public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
                logClickEvent(ActSemantic.pageEnter);
                Intent intent = FragmentWrapperActivity.intent(MonetizationStoreMainFragment.class);
                intent.putExtra("scrollSectionGroupId", "sticker");
                intent.putExtra("Source", "More Stickers");
                startActivity(intent);
                return true;
            }
        });
        return mergeAdapter;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws IllegalAccessException, NoSuchFieldException, Resources.NotFoundException, IllegalArgumentException {
        super.onViewCreated(view, bundle);
        updateAdapter();
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
        listView.setDividerHeight(0);
        listView.setBackgroundColor(ContextCompat.getColor(getContext(), R.color.product_manager_bg_color));
    }

    @Override // com.narvii.monetization.sticker.StickerService.StickerCollectionListObserver
    public void onListChanged() throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        updateAdapter();
    }

    @Override // com.narvii.monetization.sticker.StickerService.StickerCollectionListObserver
    public void onRequestFailed() throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        updateAdapter();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateAdapter() throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        this.stickerCollectionList = this.stickerService.getStickerCollectionList();
        this.error = this.stickerService.getError();
        StickerListAdapter stickerListAdapter = this.stickerListAdapter;
        if (stickerListAdapter != null) {
            stickerListAdapter.notifyDataSetChanged();
        }
    }

    class CreateStickerPackAdapter extends AdriftAdapter {
        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "CreateNewStickerPack";
        }

        @Override // com.narvii.list.AdriftAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            return true;
        }

        public CreateStickerPackAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            logClickEvent(ActSemantic.createStickerPack);
            StickerCollectionManageListFragment.this.stickerHelper.checkStickerCollectionCreatable(3, new Callback<ApiResponse>() { // from class: com.narvii.monetization.sticker.manage.StickerCollectionManageListFragment.CreateStickerPackAdapter.1
                @Override // com.narvii.util.Callback
                public void call(ApiResponse apiResponse) {
                    CreateStickerPackAdapter.this.startActivity(new Intent(CreateStickerPackAdapter.this.getContext(), (Class<?>) StickerCollectionPostActivity.class));
                }
            });
            return true;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
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

        @Override // android.widget.Adapter
        public int getCount() {
            return CollectionUtils.getSize(StickerCollectionManageListFragment.this.stickerCollectionList);
        }

        @Override // android.widget.Adapter
        public StickerCollection getItem(int i) {
            return StickerCollectionManageListFragment.this.stickerCollectionList.get(i);
        }

        @Override // com.narvii.list.NVAdapter
        public String errorMessage() {
            StickerCollectionManageListFragment stickerCollectionManageListFragment = StickerCollectionManageListFragment.this;
            if (stickerCollectionManageListFragment.stickerCollectionList == null) {
                return stickerCollectionManageListFragment.error;
            }
            return null;
        }

        @Override // com.narvii.list.NVAdapter
        public boolean isListShown() {
            return StickerCollectionManageListFragment.this.stickerCollectionList != null;
        }

        @Override // com.narvii.list.NVAdapter
        public void refresh(int i, Callback<Integer> callback) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
            StickerCollectionManageListFragment.this.stickerService.refreshStickerCollectionInfo(true);
            StickerCollectionManageListFragment.this.updateAdapter();
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
            super.notifyDataSetChanged();
            StickerCollectionManageListFragment.this.updateSortButton();
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (obj instanceof StickerCollection) {
                StickerCollection stickerCollection = (StickerCollection) obj;
                if (view2 == null) {
                    logClickEvent(obj, ActSemantic.checkDetail);
                    this.stickerHelper.onClickStickerCollection(stickerCollection, "Management");
                    return true;
                }
                if (view2 != null && view2.getId() == R.id.edit) {
                    this.stickerHelper.onClickEditStickerCollectionButton(stickerCollection);
                }
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return getItem(i).hashCode();
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            StickerCollection item = getItem(i);
            StickerCollectionItem stickerCollectionItem = (StickerCollectionItem) createView(R.layout.sticker_collection_item, viewGroup, view);
            stickerCollectionItem.setStickerCollection(item);
            View viewFindViewById = stickerCollectionItem.findViewById(R.id.edit);
            ViewUtils.show(viewFindViewById, this.stickerHelper.isCreatedByMe(item) && !item.notAvailable());
            viewFindViewById.setOnClickListener(this.subviewClickListener);
            return stickerCollectionItem;
        }
    }
}
