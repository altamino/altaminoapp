package com.narvii.language;

import android.content.SharedPreferences;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.util.Callback;
import com.narvii.util.EventDispatcher;
import com.narvii.util.JacksonUtils;
import com.narvii.util.PreferencesHelper;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes.dex */
public class ContentLanguageService {
    private AccountService accountService;
    private NVContext context;
    private SharedPreferences devicePrefs;
    private EventDispatcher<LanguageChangeListener> eventDispatcher = new EventDispatcher<>();
    private LanguageManager languageManager;
    private SharedPreferences sharedPreferences;

    public ContentLanguageService(NVContext nVContext) {
        this.accountService = (AccountService) nVContext.getService("account");
        this.sharedPreferences = this.accountService.getPrefs();
        this.devicePrefs = (SharedPreferences) nVContext.getService("prefs");
        this.languageManager = (LanguageManager) nVContext.getService(IjkMediaMeta.IJKM_KEY_LANGUAGE);
        this.context = nVContext;
    }

    public String languageUserSelected() {
        SharedPreferences sharedPreferences = this.sharedPreferences;
        if (sharedPreferences == null) {
            return null;
        }
        return sharedPreferences.getString(PreferencesHelper.KEY_EXPLORER_LANGUAGE, null);
    }

    public String languageStoredInThisDevice() {
        SharedPreferences sharedPreferences = this.devicePrefs;
        if (sharedPreferences == null) {
            return null;
        }
        return sharedPreferences.getString(PreferencesHelper.KEY_CONTENT_LANGUAGE, null);
    }

    public String getRequestPrefLanguageWithLocalAsDefault() {
        return getRequestPrefLanguage(false);
    }

    public String getRequestPrefLanguageWithEnAsDefault() {
        return getRequestPrefLanguage(true);
    }

    private String getRequestPrefLanguage(boolean z) {
        String strLanguageUserSelected = languageUserSelected();
        if (strLanguageUserSelected != null) {
            return strLanguageUserSelected;
        }
        String strLanguageStoredInThisDevice = languageStoredInThisDevice();
        if (strLanguageStoredInThisDevice != null) {
            return strLanguageStoredInThisDevice;
        }
        String suggestedLanguage = getSuggestedLanguage();
        if (suggestedLanguage != null) {
            return suggestedLanguage;
        }
        if (z) {
            return PreferencesHelper.DEFAULT_LANGUAGE_CODE;
        }
        return this.languageManager.getLocalCode();
    }

    public String getLanguageShowCode() {
        SharedPreferences sharedPreferences = this.sharedPreferences;
        return sharedPreferences == null ? PreferencesHelper.DEFAULT_LANGUAGE_CODE : sharedPreferences.getString(PreferencesHelper.KEY_EXPLORER_LANGUAGE, PreferencesHelper.DEFAULT_LANGUAGE_CODE);
    }

    private String getSuggestedLanguage() {
        SharedPreferences sharedPreferences = this.sharedPreferences;
        return sharedPreferences == null ? PreferencesHelper.DEFAULT_LANGUAGE_CODE : sharedPreferences.getString(PreferencesHelper.KEY_EXPLORER_RETURN_LANGUAGE, null);
    }

    public void saveSuggestLanguage(String str) {
        if (this.sharedPreferences == null || Utils.isEqualsNotNull(getSuggestedLanguage(), str)) {
            return;
        }
        this.sharedPreferences.edit().putString(PreferencesHelper.KEY_EXPLORER_RETURN_LANGUAGE, str).apply();
    }

    public void saveLanguageCode(String str) {
        saveLanguageCode(str, true);
    }

    public void saveDeviceStoredLanguage(String str) {
        SharedPreferences sharedPreferences = this.devicePrefs;
        if (sharedPreferences != null) {
            sharedPreferences.edit().putString(PreferencesHelper.KEY_CONTENT_LANGUAGE, str).apply();
        }
    }

    public void saveLanguageCode(final String str, boolean z) {
        saveDeviceStoredLanguage(str);
        if (this.sharedPreferences == null || Utils.isEqualsNotNull(languageUserSelected(), str)) {
            return;
        }
        ApiService apiService = (ApiService) this.context.getService("api");
        AccountService accountService = (AccountService) this.context.getService("account");
        if (accountService.hasAccount()) {
            ApiRequest.Builder builderPath = new ApiRequest.Builder().post().global().path("/account/" + accountService.getUserId());
            ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
            ObjectNode objectNodeCreateObjectNode2 = JacksonUtils.createObjectNode();
            objectNodeCreateObjectNode2.put("contentLanguage", str);
            objectNodeCreateObjectNode.put("extensions", objectNodeCreateObjectNode2);
            builderPath.body(objectNodeCreateObjectNode);
            apiService.exec(builderPath.build(), ApiResponseListener.IGNORE_RESPONSE_LISTENER);
        }
        this.sharedPreferences.edit().putString(PreferencesHelper.KEY_EXPLORER_LANGUAGE, str).apply();
        if (z) {
            this.eventDispatcher.dispatch(new Callback() { // from class: com.narvii.language.-$$Lambda$ContentLanguageService$mqzJ7edp7XXhuJ8her7XlqZStdA
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    ((LanguageChangeListener) obj).onLanguageChanged(str);
                }
            });
        }
    }

    public void registerLanguageChangeListener(LanguageChangeListener languageChangeListener) {
        if (languageChangeListener == null) {
            return;
        }
        this.eventDispatcher.addListener(languageChangeListener);
    }

    public void unRegisterLanguageChangeListener(LanguageChangeListener languageChangeListener) {
        if (languageChangeListener == null) {
            return;
        }
        this.eventDispatcher.removeListener(languageChangeListener);
    }
}
