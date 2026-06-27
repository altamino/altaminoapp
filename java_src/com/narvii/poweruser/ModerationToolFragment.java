package com.narvii.poweruser;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.catalog.review.CatalogSubmissionFragment;
import com.narvii.flag.FlagListFragment;
import com.narvii.list.NVListFragment;
import com.narvii.list.prefs.PrefsAdapter;
import com.narvii.list.prefs.PrefsBadge;
import com.narvii.list.prefs.PrefsEntry;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.modulization.Module;
import com.narvii.monetization.sticker.StickerHelper;
import com.narvii.monetization.sticker.model.PendingStickerResponse;
import com.narvii.monetization.sticker.shared.SharedStickerCollectionListFragment;
import com.narvii.poweruser.history.ModerationHistoryFragment;
import com.narvii.sharedfolder.DisabledSharedPhotosFragment;
import com.narvii.util.Callback;
import java.util.List;

/* loaded from: classes3.dex */
public class ModerationToolFragment extends NVListFragment {
    private Adapter adapter;
    CommunityConfigHelper communityConfigHelper;
    LocalBroadcastManager lbm;
    private int pendingStickerRequestCount;
    BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.poweruser.ModerationToolFragment.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (StickerHelper.STICKER_PENDING_REQUEST_COUNT_CAHNGE.equals(intent.getAction())) {
                ModerationToolFragment.this.sendPendingStickerRequest();
            }
        }
    };
    StickerHelper stickerHelper;

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(getString(R.string.main_drawer_moderation_tools));
        this.communityConfigHelper = new CommunityConfigHelper(this);
        this.stickerHelper = new StickerHelper(this);
        sendPendingStickerRequest();
        this.lbm = LocalBroadcastManager.getInstance(getContext());
        this.lbm.registerReceiver(this.receiver, new IntentFilter(StickerHelper.STICKER_PENDING_REQUEST_COUNT_CAHNGE));
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.lbm.unregisterReceiver(this.receiver);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        Adapter adapter = new Adapter();
        this.adapter = adapter;
        return adapter;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        super.onRefresh();
        sendPendingStickerRequest();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendPendingStickerRequest() {
        if (this.stickerHelper == null) {
            return;
        }
        AccountService accountService = (AccountService) getService("account");
        if (accountService.getUserProfile() != null && accountService.getUserProfile().isLeader()) {
            this.stickerHelper.sendPendingRequestCountRequest(new Callback<PendingStickerResponse>() { // from class: com.narvii.poweruser.ModerationToolFragment.2
                @Override // com.narvii.util.Callback
                public void call(PendingStickerResponse pendingStickerResponse) {
                    if (ModerationToolFragment.this.isAdded() && pendingStickerResponse != null) {
                        ModerationToolFragment.this.pendingStickerRequestCount = pendingStickerResponse.pendingShareRequestCount;
                        if (ModerationToolFragment.this.adapter != null) {
                            ModerationToolFragment.this.adapter.notifyDataSetChanged();
                        }
                    }
                }
            });
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDividerHeight(2);
        listView.setDivider(new ColorDrawable(-328966));
    }

    class Adapter extends PrefsAdapter {
        public Adapter() {
            super(ModerationToolFragment.this);
        }

        @Override // com.narvii.list.prefs.PrefsAdapter
        protected void buildCells(List<Object> list) {
            AccountService accountService = (AccountService) getService("account");
            CommunityConfigHelper communityConfigHelper = new CommunityConfigHelper(this);
            boolean zHasAccount = accountService.hasAccount();
            boolean z = zHasAccount && accountService.getUserProfile().isCurator();
            boolean z2 = zHasAccount && accountService.getUserProfile().isLeader();
            if (zHasAccount && accountService.getUserProfile().isLeader()) {
                PrefsEntry prefsEntry = new PrefsEntry(R.string.main_drawer_flag_center);
                prefsEntry.callbackIntent = FragmentWrapperActivity.intent(FlagListFragment.class);
                list.add(prefsEntry);
            }
            if (zHasAccount && accountService.getUserProfile().isCurator() && communityConfigHelper.isCatalogCutaionEnable()) {
                PrefsEntry prefsEntry2 = new PrefsEntry(R.string.catalog_submissions);
                prefsEntry2.callbackIntent = FragmentWrapperActivity.intent(CatalogSubmissionFragment.class);
                list.add(prefsEntry2);
            }
            if (zHasAccount && accountService.getUserProfile().isCurator() && communityConfigHelper.isPublicChatEnabled() && communityConfigHelper.isFeaturedChatThreadEnabled()) {
                PrefsEntry prefsEntry3 = new PrefsEntry(R.string.featured_public_chat);
                prefsEntry3.callbackIntent = FragmentWrapperActivity.intent(FeaturedPublicChatListFragment.class);
                list.add(prefsEntry3);
            }
            if (zHasAccount && accountService.getUserProfile().isCurator() && communityConfigHelper.isFeaturedPostEnabled() && communityConfigHelper.isPostEnabled()) {
                PrefsEntry prefsEntry4 = new PrefsEntry(R.string.reorder_featured_posts);
                prefsEntry4.callbackIntent = FragmentWrapperActivity.intent(ReorderFeatureFragment.class);
                list.add(prefsEntry4);
            }
            if (zHasAccount && accountService.getUserProfile().isLeader() && communityConfigHelper.isFeaturedMemberEnabled()) {
                PrefsEntry prefsEntry5 = new PrefsEntry(R.string.reorder_featured_memebers);
                prefsEntry5.callbackIntent = FragmentWrapperActivity.intent(ReorderFeatureUserFragment.class);
                list.add(prefsEntry5);
            }
            if (zHasAccount && accountService.getUserProfile().isCurator() && communityConfigHelper.isPostEnabled()) {
                PrefsEntry prefsEntry6 = new PrefsEntry(R.string.disabled_post);
                prefsEntry6.callbackIntent = FragmentWrapperActivity.intent(DisabledFeedFragment.class);
                list.add(prefsEntry6);
            }
            if (zHasAccount && accountService.getUserProfile().isCurator()) {
                PrefsEntry prefsEntry7 = new PrefsEntry(R.string.moderation_history);
                prefsEntry7.callbackIntent = FragmentWrapperActivity.intent(ModerationHistoryFragment.class);
                list.add(prefsEntry7);
            }
            if (zHasAccount && accountService.getUserProfile().isCurator() && communityConfigHelper.isPublicChatEnabled()) {
                PrefsEntry prefsEntry8 = new PrefsEntry(R.string.disabled_public_chat);
                prefsEntry8.callbackIntent = FragmentWrapperActivity.intent(DisabledPublicChatListFragment.class);
                list.add(prefsEntry8);
            }
            if (zHasAccount && accountService.getUserProfile().isLeader()) {
                PrefsEntry prefsEntry9 = new PrefsEntry(R.string.baned_user);
                prefsEntry9.callbackIntent = FragmentWrapperActivity.intent(BannedMemberListFragment.class);
                list.add(prefsEntry9);
            }
            if (zHasAccount && accountService.getUserProfile().isCurator() && communityConfigHelper.isModuleEnabled(Module.MODULE_SHARED_FOLDER)) {
                PrefsEntry prefsEntry10 = new PrefsEntry(R.string.disabled_from_shared_folder);
                prefsEntry10.callbackIntent = FragmentWrapperActivity.intent(DisabledSharedPhotosFragment.class);
                list.add(prefsEntry10);
            }
            if (zHasAccount && z2 && communityConfigHelper.isPremiumFeatureEnabled()) {
                PrefsBadge prefsBadge = new PrefsBadge(R.string.shared_sticker_packs, ModerationToolFragment.this.pendingStickerRequestCount);
                prefsBadge.callbackIntent = FragmentWrapperActivity.intent(SharedStickerCollectionListFragment.class);
                list.add(prefsBadge);
            }
            if (z && communityConfigHelper.isPublicChatEnabled()) {
                PrefsEntry prefsEntry11 = new PrefsEntry(R.string.recently_created_public_chatrooms);
                prefsEntry11.callbackIntent = FragmentWrapperActivity.intent(RecentCreatedChatroomListFragment.class);
                list.add(prefsEntry11);
            }
        }
    }
}
