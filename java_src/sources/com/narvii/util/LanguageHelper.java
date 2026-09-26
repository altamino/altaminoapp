package com.narvii.util;

import com.narvii.app.NVContext;
import com.narvii.language.LanguageManager;

/* JADX INFO: loaded from: classes6.dex */
public class LanguageHelper {
    public static String getUserSelectedLanguageCode(NVContext nVContext) {
        PreferencesHelper preferencesHelper = new PreferencesHelper(nVContext);
        return preferencesHelper.getExplorerLanguageCode() != null ? preferencesHelper.getExplorerLanguageCode() : ((LanguageManager) nVContext.getService("language")).getLocalCode();
    }
}
