package com.narvii.webview;

import androidx.annotation.NonNull;
import com.google.firebase.sessions.settings.c;
import com.narvii.app.NVContext;
import com.narvii.language.LanguageManager;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;

/* JADX INFO: loaded from: classes7.dex */
public class AssetsLocalizationManager {
    public static final String FILE_HTML = ".html";
    public static final String FILE_JSON = ".json";
    String assetsDir;
    NVContext nvContext;

    @NonNull
    private String getLocalFileName(String str) {
        String str2 = "en" + str;
        String str3 = ((LanguageManager) this.nvContext.getService("language")).getLocalCode() + str;
        try {
            if (Arrays.asList(this.nvContext.getContext().getResources().getAssets().list(this.assetsDir)).contains(this.assetsDir + "." + str3)) {
                str2 = str3;
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return this.assetsDir + "." + str2;
    }

    public String getLocalAssetHtmlPath() {
        return "file:///android_asset/" + this.assetsDir + c.FORWARD_SLASH_STRING + getLocalFileName(FILE_HTML);
    }

    public AssetsLocalizationManager(NVContext nVContext, String str) {
        this.nvContext = nVContext;
        this.assetsDir = str;
    }

    public InputStream getLocalAssetFileInputStream(String str) {
        String localFileName = getLocalFileName(str);
        try {
            return this.nvContext.getContext().getAssets().open(this.assetsDir + c.FORWARD_SLASH_STRING + localFileName);
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }
}
