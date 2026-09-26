package com.narvii.userblock;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
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

/* JADX INFO: loaded from: classes9.dex */
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
    public void refresh(boolean z6) {
        if (this.account.hasAccount()) {
            final SharedPreferences prefs = this.account.getPrefs();
            boolean z10 = true;
            boolean z11 = (!z6 && prefs.contains("blockedUidList") && prefs.contains("blockerUidList")) ? false : true;
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (!z11) {
                long j6 = prefs.getLong("blockListTime", 0L);
                if (jCurrentTimeMillis >= j6 && jCurrentTimeMillis <= j6 + EXPIRE) {
                    z10 = false;
                }
                z11 |= z10;
            }
            if (z11) {
                ((ApiService) this.context.getService("api")).exec(ApiRequest.builder().global().path("/block/full-list").build(), new ApiResponseListener<BlockListResponse>(BlockListResponse.class) { // from class: com.narvii.userblock.GlobalBlockService.2
                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                        prefs.edit().remove("blockListTime").apply();
                    }

                    @Override // com.narvii.util.http.ApiResponseListener
                    public void onFinish(ApiRequest apiRequest, BlockListResponse blockListResponse) throws Exception {
                        GlobalBlockService.this.updateBlockList(blockListResponse.blockedUidList, blockListResponse.blockerUidList);
                    }
                });
                prefs.edit().putLong("blockListTime", jCurrentTimeMillis).apply();
            }
        }
    }

    public void start() {
        this.lbm.c(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
        update();
    }

    public void stop() {
        this.lbm.f(this.receiver);
        this.blockedList = null;
        this.blockerList = null;
    }

    protected void update() {
        if (this.account.hasAccount()) {
            SharedPreferences prefs = this.account.getPrefs();
            Set<String> stringSet = prefs.getStringSet("blockedUidList", null);
            this.blockedList = stringSet;
            if (stringSet == null) {
                this.blockedList = Collections.emptySet();
            }
            Set<String> stringSet2 = prefs.getStringSet("blockerUidList", null);
            this.blockerList = stringSet2;
            if (stringSet2 == null) {
                this.blockerList = Collections.emptySet();
            }
        } else {
            this.blockedList = Collections.emptySet();
            this.blockerList = Collections.emptySet();
        }
        LocalBroadcastManager.b(this.context.getContext()).d(new Intent(ACTION_BLOCK_LIST_CHANGED));
    }

    @Override // com.narvii.userblock.UserBlockService
    public void updateBlockList(List<String> list, List<String> list2) {
        if (this.account.hasAccount()) {
            this.account.getPrefs().edit().putStringSet("blockedUidList", new HashSet(list)).putStringSet("blockerUidList", new HashSet(list2)).apply();
        }
        update();
    }

    public GlobalBlockService(NVContext nVContext) {
        this.context = nVContext;
        this.lbm = LocalBroadcastManager.b(nVContext.getContext());
        this.account = (AccountService) this.context.getService("account");
    }
}
