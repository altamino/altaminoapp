package com.narvii.community;

import android.content.SharedPreferences;
import android.util.SparseArray;
import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.services.AutostartServiceProvider;

/* loaded from: classes.dex */
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

    public long getLastActiveTime(int i) {
        long jLongValue = this.lastActiveTimeArray.get(i, 0L).longValue();
        if (jLongValue != 0) {
            return jLongValue;
        }
        return this.accountPrefs.getLong("last_community_active_time_" + i, 0L);
    }

    public void logActive(int i) {
        this.lastActiveTimeArray.put(i, Long.valueOf(System.currentTimeMillis()));
    }

    @Override // com.narvii.services.ServiceProvider
    public Object create(NVContext nVContext) {
        this.accountPrefs = ((AccountService) nVContext.getService("account")).getPrefs();
        return this;
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
}
