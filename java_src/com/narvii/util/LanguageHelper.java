package com.narvii.util;

import com.narvii.app.NVContext;
import com.narvii.language.LanguageManager;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes3.dex */
public class LanguageHelper {
    public static String getUserSelectedLanguageCode(NVContext nVContext) {
        PreferencesHelper preferencesHelper = new PreferencesHelper(nVContext);
        if (preferencesHelper.getExplorerLanguageCode() != null) {
            return preferencesHelper.getExplorerLanguageCode();
        }
        return ((LanguageManager) nVContext.getService(IjkMediaMeta.IJKM_KEY_LANGUAGE)).getLocalCode();
    }
}
