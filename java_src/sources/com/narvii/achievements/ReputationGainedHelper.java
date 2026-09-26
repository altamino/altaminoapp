package com.narvii.achievements;

import android.content.SharedPreferences;
import com.narvii.account.AccountService;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.community.CommunityActiveHelper;
import com.narvii.config.ConfigService;
import com.narvii.model.User;

/* JADX INFO: loaded from: classes11.dex */
public class ReputationGainedHelper {
    public static final String KEY_LAST_RP = "last_rp";
    public static final String KEY_LAST_RP_GAINED_SHOW_TIME = "last_rp_gained_show_time";
    private static final long NOT_ACTIVE_INTERVAL = 14400000;
    private static final long NOT_ACTIVE_INTERVAL_DEBUG = 240000;
    private static final long SHOW_INTERVAL = 86400000;
    private static final long SHOW_INTERVAL_DEBUG = 900000;
    private final AccountService account;
    int communityId;
    NVContext mNVContext;
    SharedPreferences prefs;

    public boolean canShowNow() {
        CommunityActiveHelper communityActiveHelper;
        long j6 = this.prefs.getLong("last_rp_gained_show_time_" + this.communityId, 0L);
        if (j6 == 0) {
            show();
            return false;
        }
        if (System.currentTimeMillis() - j6 <= (NVApplication.DEBUG ? 900000L : 86400000L) || (communityActiveHelper = (CommunityActiveHelper) this.mNVContext.getService("_communityActiveHelper")) == null) {
            return false;
        }
        return System.currentTimeMillis() - communityActiveHelper.getLastActiveTime(((ConfigService) this.mNVContext.getService("config")).getCommunityId()) > (NVApplication.DEBUG ? NOT_ACTIVE_INTERVAL_DEBUG : NOT_ACTIVE_INTERVAL);
    }

    public int getGainedRP() {
        User userProfile = this.account.getUserProfile();
        if (userProfile == null) {
            return 0;
        }
        int i10 = this.prefs.getInt("last_rp_" + this.communityId, Integer.MIN_VALUE);
        if (i10 == Integer.MIN_VALUE) {
            return 0;
        }
        return userProfile.reputation - i10;
    }

    public int getLastRP() {
        return this.prefs.getInt("last_rp_" + this.communityId, Integer.MIN_VALUE);
    }

    public void show() {
        User userProfile = this.account.getUserProfile();
        if (userProfile == null) {
            return;
        }
        this.prefs.edit().putInt("last_rp_" + this.communityId, userProfile.reputation).apply();
        this.prefs.edit().putLong("last_rp_gained_show_time_" + this.communityId, System.currentTimeMillis()).apply();
    }

    public ReputationGainedHelper(NVContext nVContext) {
        this.mNVContext = nVContext;
        AccountService accountService = (AccountService) nVContext.getService("account");
        this.account = accountService;
        this.communityId = ((ConfigService) nVContext.getService("config")).getCommunityId();
        this.prefs = accountService.getPrefs();
    }
}
