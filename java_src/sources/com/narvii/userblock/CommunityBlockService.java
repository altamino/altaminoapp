package com.narvii.userblock;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.community.CommunityService;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.model.Community;
import com.narvii.model.User;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public class CommunityBlockService implements UserBlockService {
    private int cid;
    private NVContext context;
    private HashSet<String> headUidList;
    private boolean isLeaderOrCurator;
    private LocalBroadcastManager lbm;
    private UserBlockService parent;
    private final BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.userblock.CommunityBlockService.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getIntExtra("id", 0) == CommunityBlockService.this.cid) {
                CommunityBlockService.this.update();
            }
        }
    };

    @Override // com.narvii.userblock.UserBlockService
    public boolean isBlocked(String str) {
        if (this.isLeaderOrCurator) {
            return false;
        }
        HashSet<String> hashSet = this.headUidList;
        if (hashSet == null || !hashSet.contains(str)) {
            return this.parent.isBlocked(str);
        }
        return false;
    }

    @Override // com.narvii.userblock.UserBlockService
    public boolean isInBlockedList(String str) {
        return this.parent.isInBlockedList(str);
    }

    @Override // com.narvii.userblock.UserBlockService
    public void refresh(boolean z6) {
        this.parent.refresh(z6);
    }

    public void stop() {
        this.lbm.f(this.receiver);
    }

    protected void update() {
        User userProfile = ((AccountService) this.context.getService("account")).getUserProfile();
        this.isLeaderOrCurator = userProfile != null && userProfile.isCurator();
        Community community = ((CommunityService) this.context.getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY)).getCommunity(this.cid);
        if (community == null || community.communityHeadList == null) {
            this.headUidList = null;
            return;
        }
        this.headUidList = new HashSet<>();
        Iterator<User> it = community.communityHeadList.iterator();
        while (it.hasNext()) {
            this.headUidList.add(it.next().uid);
        }
    }

    @Override // com.narvii.userblock.UserBlockService
    public void updateBlockList(List<String> list, List<String> list2) {
        this.parent.updateBlockList(list, list2);
    }

    public CommunityBlockService(NVContext nVContext, UserBlockService userBlockService, int i10) {
        this.context = nVContext;
        this.parent = userBlockService;
        this.cid = i10;
        this.lbm = LocalBroadcastManager.b(nVContext.getContext());
    }

    public void start() {
        update();
        this.lbm.c(this.receiver, new IntentFilter(CommunityService.ACTION_COMMUNITY_CHANGED));
    }
}
