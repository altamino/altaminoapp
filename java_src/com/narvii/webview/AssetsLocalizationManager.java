package com.narvii.webview;

import com.narvii.app.NVContext;
import com.narvii.language.LanguageManager;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes3.dex */
public class AssetsLocalizationManager {
    public static final String FILE_HTML = ".html";
    public static final String FILE_JSON = ".json";
    String assetsDir;
    NVContext nvContext;

    public AssetsLocalizationManager(NVContext nVContext, String str) {
        this.nvContext = nVContext;
        this.assetsDir = str;
    }

    public String getLocalAssetHtmlPath() {
        return "file:///android_asset/" + this.assetsDir + "/" + getLocalFileName(FILE_HTML);
    }

    private String getLocalFileName(String str) {
        String str2 = "en" + str;
        String str3 = ((LanguageManager) this.nvContext.getService(IjkMediaMeta.IJKM_KEY_LANGUAGE)).getLocalCode() + str;
        try {
            if (Arrays.asList(this.nvContext.getContext().getResources().getAssets().list(this.assetsDir)).contains(this.assetsDir + "." + str3)) {
                str2 = str3;
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return this.assetsDir + "." + str2;
    }

    public InputStream getLocalAssetFileInputStream(String str) {
        String localFileName = getLocalFileName(str);
        try {
            return this.nvContext.getContext().getAssets().open(this.assetsDir + "/" + localFileName);
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }
}
