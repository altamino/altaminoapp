package com.narvii.headlines;

import android.content.SharedPreferences;
import com.narvii.account.AccountService;
import com.narvii.app.NVContext;

/* loaded from: classes2.dex */
public class HeadlinePreferencesHelper {
    public static String KEY_HEAD_LINE_LAST_CHECK_TIME = "key_headline_last_check_time";
    public static String KEY_HEAD_LINE_LAST_FEED_ID_PRE = "channel_";
    public static String KEY_HEAD_LINE_LAST_FEED_NDCID = "key_headline_last_feed_ndcid";
    public static String KEY_HEAD_LINE_LAST_FEED_TIME = "key_headline_last_feed_time";
    NVContext context;
    SharedPreferences prefs;
    SharedPreferences sharedPreferences;

    public HeadlinePreferencesHelper(NVContext nVContext) {
        this.context = nVContext;
        this.prefs = (SharedPreferences) nVContext.getService("prefs");
        this.sharedPreferences = ((AccountService) nVContext.getService("account")).getPrefs();
    }

    public long getLastHeadLineTime() {
        SharedPreferences sharedPreferences = this.sharedPreferences;
        if (sharedPreferences == null) {
            return 0L;
        }
        return sharedPreferences.getLong(KEY_HEAD_LINE_LAST_FEED_TIME, 0L);
    }

    public void saveLastHeadLineTime(long j) {
        SharedPreferences sharedPreferences = this.sharedPreferences;
        if (sharedPreferences == null) {
            return;
        }
        sharedPreferences.edit().putLong(KEY_HEAD_LINE_LAST_FEED_TIME, j).commit();
    }

    public int getLastHeadLinendcId() {
        SharedPreferences sharedPreferences = this.sharedPreferences;
        if (sharedPreferences == null) {
            return -1;
        }
        return sharedPreferences.getInt(KEY_HEAD_LINE_LAST_FEED_NDCID, -1);
    }

    public void saveLastHeadLinendcId(int i) {
        SharedPreferences sharedPreferences = this.sharedPreferences;
        if (sharedPreferences == null) {
            return;
        }
        sharedPreferences.edit().putInt(KEY_HEAD_LINE_LAST_FEED_NDCID, i).apply();
    }

    public long getLastCheckTime() {
        SharedPreferences sharedPreferences = this.sharedPreferences;
        if (sharedPreferences == null) {
            return 0L;
        }
        return sharedPreferences.getLong(KEY_HEAD_LINE_LAST_CHECK_TIME, 0L);
    }

    public void saveLastCheckTime(long j) {
        SharedPreferences sharedPreferences = this.sharedPreferences;
        if (sharedPreferences == null) {
            return;
        }
        sharedPreferences.edit().putLong(KEY_HEAD_LINE_LAST_CHECK_TIME, j).commit();
    }

    public void saveLastReadHeadlineFeedId(String str, String str2) {
        SharedPreferences sharedPreferences = this.prefs;
        if (sharedPreferences == null) {
            return;
        }
        sharedPreferences.edit().putString(KEY_HEAD_LINE_LAST_FEED_ID_PRE + str, str2).commit();
    }

    public String getLastTimeHeadlineFeedId(String str) {
        SharedPreferences sharedPreferences = this.prefs;
        if (sharedPreferences == null) {
            return null;
        }
        return sharedPreferences.getString(KEY_HEAD_LINE_LAST_FEED_ID_PRE + str, null);
    }
}
