package com.narvii.community;

import android.content.SharedPreferences;
import android.util.SparseArray;
import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.services.AutostartServiceProvider;

/* JADX INFO: loaded from: classes5.dex */
public class CommunityActiveHelper implements AutostartServiceProvider<Object> {
    public static final String KEY_LAST_COMMUNITY_ACTIVE_TIME = "last_community_active_time";
    private SharedPreferences accountPrefs;
    private SparseArray<Long> lastActiveTimeArray = new SparseArray<>();

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, Object obj) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, Object obj) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, Object obj) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, Object obj) {
    }

    @Override // com.narvii.services.ServiceProvider
    public Object create(NVContext nVContext) {
        this.accountPrefs = ((AccountService) nVContext.getService("account")).getPrefs();
        return this;
    }

    public long getLastActiveTime(int i10) {
        long jLongValue = this.lastActiveTimeArray.get(i10, 0L).longValue();
        if (jLongValue != 0) {
            return jLongValue;
        }
        return this.accountPrefs.getLong("last_community_active_time_" + i10, 0L);
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, Object obj) {
        int communityId = ((ConfigService) nVContext.getService("config")).getCommunityId();
        long jLongValue = this.lastActiveTimeArray.get(communityId, 0L).longValue();
        if (jLongValue == 0) {
            return;
        }
        this.accountPrefs.edit().putLong("last_community_active_time_" + communityId, jLongValue).apply();
    }

    public void logActive(int i10) {
        this.lastActiveTimeArray.put(i10, Long.valueOf(System.currentTimeMillis()));
    }
}
