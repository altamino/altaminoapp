package com.narvii.util;

import android.content.SharedPreferences;
import com.narvii.app.NVContext;
import com.narvii.app.incubator.IncubatorApplication;
import com.narvii.language.ContentLanguageService;
import com.narvii.language.LanguageManager;
import com.narvii.model.Media;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class PreferencesHelper {
    public static String DEFAULT_LANGUAGE_CODE = "en";
    public static String KEY_ANNOUNCEMENT_LAST_OPEN_TIME = "key_announcement_last_open_time";
    public static String KEY_COMMUNITY_TAB_EXP = "key_community_tab_exp";
    public static String KEY_CONTENT_LANGUAGE = "content_language";
    public static String KEY_CUR_LANGUAGE_INFO_SHOWED = "key_current_language_info_showed";
    public static String KEY_EXPLORER_LANGUAGE = "key_explorer_language";
    public static String KEY_EXPLORER_LANGUAGE_CHANGED = "key_explorer_language_changed";
    public static String KEY_EXPLORER_RETURN_LANGUAGE = "key_explorer_return_language";
    public static String KEY_FORCE_UPDATE_BIRTHDATE_COUNT_MAP = "key_force_update_birthdate_count";
    public static String KEY_FORCE_UPDATE_BIRTHDATE_TIMESTAMP_MAP = "key_force_update_birthdate_timestamp";
    public static String KEY_LANDING_POS = "key_master_landing_pos";
    public static String KEY_LANGUAGE_HINT = "key_language_hint_show_before";
    public static final String KEY_LAST_ANNOUNCEMENT_ID = "bottom_drawer_last_an_id";
    public static final String KEY_LAST_ANNOUNCEMENT_SHOW_TIME = "bottom_drawer_an_showtime";
    public static String KEY_LAST_ANNOUNCEMENT_TIME = "key_last_announcement_time";
    public static final String KEY_LAST_SHOW_TIME = "bottom_drawer_last_showtime";
    public static final String KEY_LAST_SUGGEST_SHOW_TIME = "bottom_drawer_last_sg_showtime";
    public static String KEY_LAST_TIME_APP_CHECK_CALLED = "key_last_time_app_check_called";
    public static String KEY_LIVE_LAYER_SHOWED = "key_live_layer_hint_shown_before";
    public static String KEY_MASTER_THEME_COLOR = "key_master_theme_color";
    public static String KEY_MASTER_THEME_Media = "key_master_theme_media";
    public static final String KEY_PRE_SHOW_DONE = "bottom_drawer_pre_show_down";
    NVContext context;
    LanguageManager languageManager;
    SharedPreferences sharedPreferences;

    public long getAnnouncementLastReadTime() {
        return getAnnouncementLastReadTime(getExplorerLanguageCode());
    }

    public long getLastAnnouncementTime() {
        return getLastAnnouncementTime(getExplorerLanguageCode());
    }

    public long getLastAnnouncementToastTime() {
        return getLastAnnouncementToastTime(getExplorerLanguageCode());
    }

    public void saveAnnouncementLastReadTime(long j6) {
        saveAnnouncementLastReadTime(getExplorerLanguageCode(), j6);
    }

    public void saveLastAnnouncementTime(long j6) {
        saveLastAnnouncementTime(getExplorerLanguageCode(), j6);
    }

    public void saveLastAnnouncementToastTime(long j6) {
        saveLastAnnouncementToastTime(getExplorerLanguageCode(), j6);
    }

    public void explorerLanguageChanged(boolean z6) {
        this.sharedPreferences.edit().putBoolean(KEY_EXPLORER_LANGUAGE_CHANGED, z6).apply();
    }

    public int getBirthdateForceFreq(String str) {
        Integer num = (Integer) JacksonUtils.readMapAs(this.sharedPreferences.getString(KEY_FORCE_UPDATE_BIRTHDATE_COUNT_MAP, "{}"), String.class, Integer.class).get(str);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public long getBirthdateForceTimestamp(String str) {
        Long l = (Long) JacksonUtils.readMapAs(this.sharedPreferences.getString(KEY_FORCE_UPDATE_BIRTHDATE_TIMESTAMP_MAP, "{}"), String.class, Long.class).get(str);
        if (l == null) {
            return 0L;
        }
        return l.longValue();
    }

    public int getCommunityTabExp() {
        return this.sharedPreferences.getInt(KEY_COMMUNITY_TAB_EXP, -1);
    }

    public String getExplorerLanguageCode() {
        return ((ContentLanguageService) this.context.getService("content_language")).getRequestPrefLanguageWithLocalAsDefault();
    }

    public int getLandingPos() {
        return this.sharedPreferences.getInt(KEY_LANDING_POS, -1);
    }

    public String getLastAnnouncementId() {
        return this.sharedPreferences.getString("bottom_drawer_last_an_id", null);
    }

    public long getLastSuggestCommunityShowTime() {
        return this.sharedPreferences.getLong("bottom_drawer_last_sg_showtime", 0L);
    }

    public long getLastTimeAppCheckCalled() {
        return this.sharedPreferences.getLong(KEY_LAST_TIME_APP_CHECK_CALLED, 0L);
    }

    public boolean getLiverLayerShownBefore() {
        return this.sharedPreferences.getBoolean(KEY_LIVE_LAYER_SHOWED, false);
    }

    public List<Media> getMasterMediaList() {
        String string = this.sharedPreferences.getString(KEY_MASTER_THEME_Media, null);
        if (string == null) {
            return null;
        }
        return JacksonUtils.readListAs(string, Media.class);
    }

    public int getMasterThemeColor() {
        return this.sharedPreferences.getInt(KEY_MASTER_THEME_COLOR, 0);
    }

    public boolean isExplorerLanguageChanged() {
        return this.sharedPreferences.getBoolean(KEY_EXPLORER_LANGUAGE_CHANGED, false);
    }

    public boolean isLanguageHintShowBefore() {
        return this.sharedPreferences.getBoolean(KEY_LANGUAGE_HINT, false);
    }

    public boolean isPreWorkDoneForBottomDrawer() {
        return this.sharedPreferences.getBoolean("bottom_drawer_pre_show_down", false);
    }

    public void saveBottomDrawerGlobalShownTime(long j6) {
        this.sharedPreferences.edit().putLong("bottom_drawer_last_showtime", j6).commit();
    }

    public void saveCommunityTabExp(int i10) {
        this.sharedPreferences.edit().putInt(KEY_COMMUNITY_TAB_EXP, i10).apply();
    }

    public void saveLandingPos(Integer num) {
        this.sharedPreferences.edit().putInt(KEY_LANDING_POS, num == null ? -1 : num.intValue()).apply();
    }

    public void saveLastAnnouncementShownId(String str) {
        this.sharedPreferences.edit().putString("bottom_drawer_last_an_id", str).apply();
    }

    public void saveLastSuggestCommunityShowTime(long j6) {
        this.sharedPreferences.edit().putLong("bottom_drawer_last_sg_showtime", j6).apply();
    }

    public void saveLiverLayerShownBefore(boolean z6) {
        this.sharedPreferences.edit().putBoolean(KEY_LIVE_LAYER_SHOWED, z6).commit();
    }

    public void setBirthdateForceFreq(String str, int i10) {
        HashMap mapAs = JacksonUtils.readMapAs(this.sharedPreferences.getString(KEY_FORCE_UPDATE_BIRTHDATE_COUNT_MAP, "{}"), String.class, Integer.class);
        mapAs.put(str, Integer.valueOf(i10));
        this.sharedPreferences.edit().putString(KEY_FORCE_UPDATE_BIRTHDATE_COUNT_MAP, JacksonUtils.writeAsString(mapAs)).apply();
    }

    public void setBirthdateForceTimestamp(String str) {
        HashMap mapAs = JacksonUtils.readMapAs(this.sharedPreferences.getString(KEY_FORCE_UPDATE_BIRTHDATE_TIMESTAMP_MAP, "{}"), String.class, Long.class);
        mapAs.put(str, Long.valueOf(Calendar.getInstance().getTime().getTime()));
        this.sharedPreferences.edit().putString(KEY_FORCE_UPDATE_BIRTHDATE_TIMESTAMP_MAP, JacksonUtils.writeAsString(mapAs)).apply();
    }

    public void setCurExplorerLanguageShowed() {
        this.sharedPreferences.edit().putBoolean(KEY_CUR_LANGUAGE_INFO_SHOWED, true).apply();
    }

    public void setKeyMasterThemeColor(int i10) {
        this.sharedPreferences.edit().putInt(KEY_MASTER_THEME_COLOR, i10).apply();
    }

    public void setLanguageShowed() {
        this.sharedPreferences.edit().putBoolean(KEY_LANGUAGE_HINT, true).apply();
    }

    public void setMasterThemeMediaList(List<Media> list) {
        if (list == null || list.size() == 0) {
            this.sharedPreferences.edit().putString(KEY_MASTER_THEME_Media, null).apply();
        } else {
            this.sharedPreferences.edit().putString(KEY_MASTER_THEME_Media, JacksonUtils.writeAsString(list)).apply();
        }
    }

    public void setPreWorkDoneForBottomDrawer(boolean z6) {
        this.sharedPreferences.edit().putBoolean("bottom_drawer_pre_show_down", z6).apply();
    }

    public boolean shouldShowLanguageInfo() {
        return !this.sharedPreferences.getBoolean(KEY_CUR_LANGUAGE_INFO_SHOWED, false);
    }

    public void updateLastTimeAppCheckCalled() {
        this.sharedPreferences.edit().putLong(KEY_LAST_TIME_APP_CHECK_CALLED, new Date().getTime()).apply();
    }

    public PreferencesHelper(NVContext nVContext) {
        this.context = nVContext;
        this.sharedPreferences = (SharedPreferences) nVContext.getService(IncubatorApplication.PREFS_SERVICE_KEY);
        this.languageManager = (LanguageManager) nVContext.getService("language");
    }

    private long getAnnouncementLastReadTime(String str) {
        return this.sharedPreferences.getLong(str + "_" + KEY_ANNOUNCEMENT_LAST_OPEN_TIME, 0L);
    }

    private long getLastAnnouncementTime(String str) {
        return this.sharedPreferences.getLong(str + "_" + KEY_LAST_ANNOUNCEMENT_TIME, 0L);
    }

    private long getLastAnnouncementToastTime(String str) {
        return this.sharedPreferences.getLong(str + "_bottom_drawer_an_showtime", 0L);
    }

    private void saveAnnouncementLastReadTime(String str, long j6) {
        this.sharedPreferences.edit().putLong(str + "_" + KEY_ANNOUNCEMENT_LAST_OPEN_TIME, j6).apply();
    }

    private void saveLastAnnouncementTime(String str, long j6) {
        this.sharedPreferences.edit().putLong(str + "_" + KEY_LAST_ANNOUNCEMENT_TIME, j6).apply();
    }

    private void saveLastAnnouncementToastTime(String str, long j6) {
        this.sharedPreferences.edit().putLong(str + "_bottom_drawer_an_showtime", j6).apply();
    }

    public void updateBirthdateForceFreq(String str) {
        setBirthdateForceFreq(str, getBirthdateForceFreq(str) + 1);
    }
}
