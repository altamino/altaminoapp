package com.narvii.userblock;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.support.v4.content.LocalBroadcastManager;
import com.narvii.account.AccountService;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public class GlobalBlockService implements UserBlockService {
    public static final String ACTION_BLOCK_LIST_CHANGED = "com.narvii.action.ACTION_BLOCK_LIST_CHANGED";
    private static final long EXPIRE;
    private AccountService account;
    protected Set<String> blockedList;
    protected Set<String> blockerList;
    private NVContext context;
    private LocalBroadcastManager lbm;
    private final BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.userblock.GlobalBlockService.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            GlobalBlockService.this.update();
            GlobalBlockService.this.refresh(true);
        }
    };

    static {
        EXPIRE = NVApplication.DEBUG ? 30000L : 3600000L;
    }

    public GlobalBlockService(NVContext nVContext) {
        this.context = nVContext;
        this.lbm = LocalBroadcastManager.getInstance(nVContext.getContext());
        this.account = (AccountService) this.context.getService("account");
    }

    public void start() {
        this.lbm.registerReceiver(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
        update();
    }

    public void stop() {
        this.lbm.unregisterReceiver(this.receiver);
        this.blockedList = null;
        this.blockerList = null;
    }

    protected void update() {
        if (this.account.hasAccount()) {
            SharedPreferences prefs = this.account.getPrefs();
            this.blockedList = prefs.getStringSet("blockedUidList", null);
            if (this.blockedList == null) {
                this.blockedList = Collections.emptySet();
            }
            this.blockerList = prefs.getStringSet("blockerUidList", null);
            if (this.blockerList == null) {
                this.blockerList = Collections.emptySet();
            }
        } else {
            this.blockedList = Collections.emptySet();
            this.blockerList = Collections.emptySet();
        }
        LocalBroadcastManager.getInstance(this.context.getContext()).sendBroadcast(new Intent(ACTION_BLOCK_LIST_CHANGED));
    }

    @Override // com.narvii.userblock.UserBlockService
    public boolean isBlocked(String str) {
        if (this.blockedList == null) {
            update();
        }
        Set<String> set = this.blockedList;
        if (set != null && set.contains(str)) {
            return true;
        }
        Set<String> set2 = this.blockerList;
        return set2 != null && set2.contains(str);
    }

    @Override // com.narvii.userblock.UserBlockService
    public boolean isInBlockedList(String str) {
        if (this.blockedList == null) {
            update();
        }
        Set<String> set = this.blockedList;
        return set != null && set.contains(str);
    }

    @Override // com.narvii.userblock.UserBlockService
    public void updateBlockList(List<String> list, List<String> list2) {
        if (this.account.hasAccount()) {
            this.account.getPrefs().edit().putStringSet("blockedUidList", new HashSet(list)).putStringSet("blockerUidList", new HashSet(list2)).apply();
        }
        update();
    }

    @Override // com.narvii.userblock.UserBlockService
    public void refresh(boolean z) {
        if (this.account.hasAccount()) {
            final SharedPreferences prefs = this.account.getPrefs();
            boolean z2 = (!z && prefs.contains("blockedUidList") && prefs.contains("blockerUidList")) ? false : true;
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (!z2) {
                long j = prefs.getLong("blockListTime", 0L);
                z2 |= jCurrentTimeMillis < j || jCurrentTimeMillis > j + EXPIRE;
            }
            if (z2) {
                ((ApiService) this.context.getService("api")).exec(ApiRequest.builder().global().path("/block/full-list").build(), new ApiResponseListener<BlockListResponse>(BlockListResponse.class) { // from class: com.narvii.userblock.GlobalBlockService.2
                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFinish(ApiRequest apiRequest, BlockListResponse blockListResponse) throws Exception {
                        GlobalBlockService.this.updateBlockList(blockListResponse.blockedUidList, blockListResponse.blockerUidList);
                    }

                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                        prefs.edit().remove("blockListTime").apply();
                    }
                });
                prefs.edit().putLong("blockListTime", jCurrentTimeMillis).apply();
            }
        }
    }
}
