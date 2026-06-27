package com.narvii.util;

import android.content.SharedPreferences;
import com.narvii.app.NVContext;
import com.narvii.language.ContentLanguageService;
import com.narvii.language.LanguageManager;
import com.narvii.model.Media;
import java.util.List;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes3.dex */
public class PreferencesHelper {
    public static String DEFAULT_LANGUAGE_CODE = "en";
    public static String KEY_ANNOUNCEMENT_LAST_OPEN_TIME = "key_announcement_last_open_time";
    public static String KEY_COMMUNITY_TAB_EXP = "key_community_tab_exp";
    public static String KEY_CONTENT_LANGUAGE = "content_language";
    public static String KEY_CUR_LANGUAGE_INFO_SHOWED = "key_current_language_info_showed";
    public static String KEY_EXPLORER_LANGUAGE = "key_explorer_language";
    public static String KEY_EXPLORER_LANGUAGE_CHANGED = "key_explorer_language_changed";
    public static String KEY_EXPLORER_RETURN_LANGUAGE = "key_explorer_return_language";
    public static String KEY_LANDING_POS = "key_master_landing_pos";
    public static String KEY_LANGUAGE_HINT = "key_language_hint_show_before";
    public static final String KEY_LAST_ANNOUNCEMENT_ID = "bottom_drawer_last_an_id";
    public static final String KEY_LAST_ANNOUNCEMENT_SHOW_TIME = "bottom_drawer_an_showtime";
    public static String KEY_LAST_ANNOUNCEMENT_TIME = "key_last_announcement_time";
    public static final String KEY_LAST_SHOW_TIME = "bottom_drawer_last_showtime";
    public static final String KEY_LAST_SUGGEST_SHOW_TIME = "bottom_drawer_last_sg_showtime";
    public static String KEY_LIVE_LAYER_ISSHOWING = "key_live_layer_hint_isShowing_before";
    public static String KEY_LIVE_LAYER_SHOWED = "key_live_layer_hint_shown_before";
    public static String KEY_MASTER_THEME_COLOR = "key_master_theme_color";
    public static String KEY_MASTER_THEME_Media = "key_master_theme_media";
    public static final String KEY_PRE_SHOW_DONE = "bottom_drawer_pre_show_down";
    NVContext context;
    LanguageManager languageManager;
    SharedPreferences sharedPreferences;

    public PreferencesHelper(NVContext nVContext) {
        this.context = nVContext;
        this.sharedPreferences = (SharedPreferences) nVContext.getService("prefs");
        this.languageManager = (LanguageManager) nVContext.getService(IjkMediaMeta.IJKM_KEY_LANGUAGE);
    }

    public String getExplorerLanguageCode() {
        return ((ContentLanguageService) this.context.getService("content_language")).getRequestPrefLanguageWithLocalAsDefault();
    }

    public boolean isExplorerLanguageChanged() {
        return this.sharedPreferences.getBoolean(KEY_EXPLORER_LANGUAGE_CHANGED, false);
    }

    public void explorerLanguageChanged(boolean z) {
        this.sharedPreferences.edit().putBoolean(KEY_EXPLORER_LANGUAGE_CHANGED, z).apply();
    }

    public long getAnnouncementLastReadTime() {
        return getAnnouncementLastReadTime(getExplorerLanguageCode());
    }

    public void saveAnnouncementLastReadTime(long j) {
        saveAnnouncementLastReadTime(getExplorerLanguageCode(), j);
    }

    private long getAnnouncementLastReadTime(String str) {
        return this.sharedPreferences.getLong(str + "_" + KEY_ANNOUNCEMENT_LAST_OPEN_TIME, 0L);
    }

    private void saveAnnouncementLastReadTime(String str, long j) {
        this.sharedPreferences.edit().putLong(str + "_" + KEY_ANNOUNCEMENT_LAST_OPEN_TIME, j).apply();
    }

    public long getLastAnnouncementTime() {
        return getLastAnnouncementTime(getExplorerLanguageCode());
    }

    public void saveLastAnnouncementTime(long j) {
        saveLastAnnouncementTime(getExplorerLanguageCode(), j);
    }

    private long getLastAnnouncementTime(String str) {
        return this.sharedPreferences.getLong(str + "_" + KEY_LAST_ANNOUNCEMENT_TIME, 0L);
    }

    private void saveLastAnnouncementTime(String str, long j) {
        this.sharedPreferences.edit().putLong(str + "_" + KEY_LAST_ANNOUNCEMENT_TIME, j).apply();
    }

    public long getLastAnnouncementToastTime() {
        return getLastAnnouncementToastTime(getExplorerLanguageCode());
    }

    public void saveLastAnnouncementToastTime(long j) {
        saveLastAnnouncementToastTime(getExplorerLanguageCode(), j);
    }

    private long getLastAnnouncementToastTime(String str) {
        return this.sharedPreferences.getLong(str + "_bottom_drawer_an_showtime", 0L);
    }

    private void saveLastAnnouncementToastTime(String str, long j) {
        this.sharedPreferences.edit().putLong(str + "_bottom_drawer_an_showtime", j).apply();
    }

    public int getMasterThemeColor() {
        return this.sharedPreferences.getInt(KEY_MASTER_THEME_COLOR, 0);
    }

    public void setKeyMasterThemeColor(int i) {
        this.sharedPreferences.edit().putInt(KEY_MASTER_THEME_COLOR, i).apply();
    }

    public List<Media> getMasterMediaList() {
        String string = this.sharedPreferences.getString(KEY_MASTER_THEME_Media, null);
        if (string == null) {
            return null;
        }
        return JacksonUtils.readListAs(string, Media.class);
    }

    public void setMasterThemeMediaList(List<Media> list) {
        if (list == null || list.size() == 0) {
            this.sharedPreferences.edit().putString(KEY_MASTER_THEME_Media, null).apply();
        } else {
            this.sharedPreferences.edit().putString(KEY_MASTER_THEME_Media, JacksonUtils.writeAsString(list)).apply();
        }
    }

    public boolean isPreWorkDoneForBottomDrawer() {
        return this.sharedPreferences.getBoolean("bottom_drawer_pre_show_down", false);
    }

    public void setPreWorkDoneForBottomDrawer(boolean z) {
        this.sharedPreferences.edit().putBoolean("bottom_drawer_pre_show_down", z).apply();
    }

    public void saveBottomDrawerGlobalShownTime(long j) {
        this.sharedPreferences.edit().putLong("bottom_drawer_last_showtime", j).commit();
    }

    public void saveLastAnnouncementShownId(String str) {
        this.sharedPreferences.edit().putString("bottom_drawer_last_an_id", str).apply();
    }

    public String getLastAnnouncementId() {
        return this.sharedPreferences.getString("bottom_drawer_last_an_id", null);
    }

    public void saveLastSuggestCommunityShowTime(long j) {
        this.sharedPreferences.edit().putLong("bottom_drawer_last_sg_showtime", j).apply();
    }

    public long getLastSuggestCommunityShowTime() {
        return this.sharedPreferences.getLong("bottom_drawer_last_sg_showtime", 0L);
    }

    public boolean shouldShowLanguageInfo() {
        return !this.sharedPreferences.getBoolean(KEY_CUR_LANGUAGE_INFO_SHOWED, false);
    }

    public void setCurExplorerLanguageShowed() {
        this.sharedPreferences.edit().putBoolean(KEY_CUR_LANGUAGE_INFO_SHOWED, true).apply();
    }

    public boolean getLiverLayerShownBefore() {
        return this.sharedPreferences.getBoolean(KEY_LIVE_LAYER_SHOWED, false);
    }

    public void saveLiverLayerShownBefore(boolean z) {
        this.sharedPreferences.edit().putBoolean(KEY_LIVE_LAYER_SHOWED, z).commit();
    }

    public boolean isLanguageHintShowBefore() {
        return this.sharedPreferences.getBoolean(KEY_LANGUAGE_HINT, false);
    }

    public void setLanguageShowed() {
        this.sharedPreferences.edit().putBoolean(KEY_LANGUAGE_HINT, true).apply();
    }

    public void saveLandingPos(Integer num) {
        this.sharedPreferences.edit().putInt(KEY_LANDING_POS, num == null ? -1 : num.intValue()).apply();
    }

    public int getLandingPos() {
        return this.sharedPreferences.getInt(KEY_LANDING_POS, -1);
    }

    public void saveCommunityTabExp(int i) {
        this.sharedPreferences.edit().putInt(KEY_COMMUNITY_TAB_EXP, i).apply();
    }

    public int getCommunityTabExp() {
        return this.sharedPreferences.getInt(KEY_COMMUNITY_TAB_EXP, -1);
    }
}
