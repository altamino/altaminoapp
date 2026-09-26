package com.narvii.headlines;

import android.content.SharedPreferences;
import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.app.incubator.IncubatorApplication;

/* JADX INFO: loaded from: classes11.dex */
public class HeadlinePreferencesHelper {
    public static String KEY_HEAD_LINE_LAST_CHECK_TIME = "key_headline_last_check_time";
    public static String KEY_HEAD_LINE_LAST_FEED_ID_PRE = "channel_";
    public static String KEY_HEAD_LINE_LAST_FEED_NDCID = "key_headline_last_feed_ndcid";
    public static String KEY_HEAD_LINE_LAST_FEED_TIME = "key_headline_last_feed_time";
    NVContext context;
    SharedPreferences prefs;
    SharedPreferences sharedPreferences;

    public long getLastCheckTime() {
        SharedPreferences sharedPreferences = this.sharedPreferences;
        if (sharedPreferences == null) {
            return 0L;
        }
        return sharedPreferences.getLong(KEY_HEAD_LINE_LAST_CHECK_TIME, 0L);
    }

    public long getLastHeadLineTime() {
        SharedPreferences sharedPreferences = this.sharedPreferences;
        if (sharedPreferences == null) {
            return 0L;
        }
        return sharedPreferences.getLong(KEY_HEAD_LINE_LAST_FEED_TIME, 0L);
    }

    public int getLastHeadLinendcId() {
        SharedPreferences sharedPreferences = this.sharedPreferences;
        if (sharedPreferences == null) {
            return -1;
        }
        return sharedPreferences.getInt(KEY_HEAD_LINE_LAST_FEED_NDCID, -1);
    }

    public String getLastTimeHeadlineFeedId(String str) {
        SharedPreferences sharedPreferences = this.prefs;
        if (sharedPreferences == null) {
            return null;
        }
        return sharedPreferences.getString(KEY_HEAD_LINE_LAST_FEED_ID_PRE + str, null);
    }

    public void saveLastCheckTime(long j6) {
        SharedPreferences sharedPreferences = this.sharedPreferences;
        if (sharedPreferences == null) {
            return;
        }
        sharedPreferences.edit().putLong(KEY_HEAD_LINE_LAST_CHECK_TIME, j6).commit();
    }

    public void saveLastHeadLineTime(long j6) {
        SharedPreferences sharedPreferences = this.sharedPreferences;
        if (sharedPreferences == null) {
            return;
        }
        sharedPreferences.edit().putLong(KEY_HEAD_LINE_LAST_FEED_TIME, j6).commit();
    }

    public void saveLastHeadLinendcId(int i10) {
        SharedPreferences sharedPreferences = this.sharedPreferences;
        if (sharedPreferences == null) {
            return;
        }
        sharedPreferences.edit().putInt(KEY_HEAD_LINE_LAST_FEED_NDCID, i10).apply();
    }

    public void saveLastReadHeadlineFeedId(String str, String str2) {
        SharedPreferences sharedPreferences = this.prefs;
        if (sharedPreferences == null) {
            return;
        }
        sharedPreferences.edit().putString(KEY_HEAD_LINE_LAST_FEED_ID_PRE + str, str2).commit();
    }

    public HeadlinePreferencesHelper(NVContext nVContext) {
        this.context = nVContext;
        this.prefs = (SharedPreferences) nVContext.getService(IncubatorApplication.PREFS_SERVICE_KEY);
        this.sharedPreferences = ((AccountService) nVContext.getService("account")).getPrefs();
    }
}
