package com.narvii.config;

import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.support.v4.app.NotificationCompat;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.google.android.exoplayer2.C;
import com.narvii.account.AccountService;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.PackageUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiJsonResponseListener;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

/* loaded from: classes.dex */
public abstract class ConfigService {
    public static final String ACTION_CONFIG_CHANGED = "com.narvii.action.CONFIG_CHANGED";
    public static final int DEFAULT_PAGE_SIZE_DEV = 5;
    public static final int DEFAULT_PAGE_SIZE_PRO = 25;
    private static final ObjectNode EMPTY_ROOT = JacksonUtils.createObjectNode();
    private AccountService account;
    NVContext context;
    private String imageResTargetJsonString;
    private final File latestFile;
    private final File latestFileD;
    private JsonNode latestNode;
    private JsonNode stockNode;
    private ApiRequest updatingReqeust;
    private final ApiJsonResponseListener<ApiResponse> updateListener = new ApiJsonResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.config.ConfigService.1
        @Override // com.narvii.util.http.ApiResponseListener
        public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
            if (ConfigService.this.updatingReqeust == apiRequest) {
                ConfigService.this.updatingReqeust = null;
            }
            JsonNode jsonNodeNodePath = JacksonUtils.nodePath(json(), "clientConfig");
            ConfigService.this.latestNode = jsonNodeNodePath;
            if (jsonNodeNodePath == null) {
                ConfigService.this.latestFile.delete();
                ConfigService.this.latestFileD.delete();
                return;
            }
            String string = jsonNodeNodePath.toString();
            if (Utils.isEquals(string, Utils.readStringFromFile(ConfigService.this.latestFile))) {
                ConfigService.this.latestFile.setLastModified(System.currentTimeMillis());
                return;
            }
            Utils.writeToFile(ConfigService.this.latestFile, string);
            Utils.writeToFile(ConfigService.this.latestFileD, new PackageUtils(ConfigService.this.context.getContext()).getVersionName());
            LocalBroadcastManager.getInstance(ConfigService.this.context.getContext()).sendBroadcast(new Intent(ConfigService.ACTION_CONFIG_CHANGED));
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
            if (ConfigService.this.updatingReqeust == apiRequest) {
                ConfigService.this.updatingReqeust = null;
            }
        }
    };
    private DefaultTheme defaultTheme = new DefaultTheme();

    public abstract int getCommunityId();

    protected abstract ApiRequest getConfigRequest();

    public ConfigService(NVContext nVContext) throws IOException {
        this.context = nVContext;
        try {
            InputStream inputStreamOpen = nVContext.getContext().getAssets().open("default_config.json");
            this.stockNode = JacksonUtils.DEFAULT_MAPPER.readTree(inputStreamOpen);
            inputStreamOpen.close();
        } catch (Exception unused) {
        }
        this.latestFile = new File(nVContext.getContext().getFilesDir(), "config_latest.json");
        this.latestFileD = new File(nVContext.getContext().getFilesDir(), "config_latest.d");
    }

    public String getImageResTargetJsonString() {
        if (!TextUtils.isEmpty(this.imageResTargetJsonString)) {
            return this.imageResTargetJsonString;
        }
        this.imageResTargetJsonString = loadJsonFromAsset("image_resolution_target.json");
        return this.imageResTargetJsonString;
    }

    private String loadJsonFromAsset(String str) throws IOException {
        try {
            InputStream inputStreamOpen = this.context.getContext().getAssets().open(str);
            byte[] bArr = new byte[inputStreamOpen.available()];
            inputStreamOpen.read(bArr);
            inputStreamOpen.close();
            return new String(bArr, C.UTF8_NAME);
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    public String getHost() {
        return NVApplication.MAIN_HOST;
    }

    public String getServiceHost() {
        String str = NVApplication.SERVICE_HOST;
        if (str != null) {
            return str;
        }
        return NotificationCompat.CATEGORY_SERVICE + getHost();
    }

    public int getPageSize() {
        return (NVApplication.FAKE_PRODUCTION == null && NVApplication.DEBUG) ? 5 : 25;
    }

    public ConfigTheme getTheme() {
        return this.defaultTheme;
    }

    public JsonNode getNode(String str) {
        if (this.account == null) {
            this.account = (AccountService) this.context.getService("account");
        }
        JsonNode node = getNode(JacksonUtils.nodePath(this.account.getAccountJson(), "advancedSettings"), str);
        if (node != null) {
            return node;
        }
        if (this.latestNode == null) {
            this.latestNode = readLatestNode();
        }
        JsonNode node2 = getNode(this.latestNode, str);
        return node2 != null ? node2 : getNode(this.stockNode, str);
    }

    protected static JsonNode getNode(JsonNode jsonNode, String str) {
        if (jsonNode == null) {
            return null;
        }
        int i = 0;
        while (true) {
            int iIndexOf = str.indexOf(46, i + 1);
            if (iIndexOf < 0) {
                JsonNode jsonNode2 = jsonNode.get(str.substring(i));
                if (jsonNode2 == null || jsonNode2.isNull()) {
                    return null;
                }
                return jsonNode2;
            }
            String strSubstring = str.substring(i, iIndexOf);
            int i2 = iIndexOf + 1;
            jsonNode = jsonNode.get(strSubstring);
            if (jsonNode == null || jsonNode.isNull()) {
                break;
            }
            i = i2;
        }
        return null;
    }

    public int getInt(String str, int i) {
        JsonNode node = getNode(str);
        return node == null ? i : node.asInt(i);
    }

    public int getInt(String str) {
        return getInt(str, 0);
    }

    public String getString(String str, String str2) {
        String strTextValue;
        JsonNode node = getNode(str);
        return (node == null || (strTextValue = node.textValue()) == null) ? str2 : strTextValue;
    }

    public String getString(String str) {
        return getString(str, null);
    }

    public boolean getBoolean(String str, boolean z) {
        JsonNode node = getNode(str);
        return node == null ? z : node.asBoolean(z);
    }

    public boolean getBoolean(String str) {
        return getBoolean(str, false);
    }

    private JsonNode readLatestNode() throws Throwable {
        if (this.latestFile.length() > 0) {
            try {
                if (!Utils.isEquals(new PackageUtils(this.context.getContext()).getVersionName(), Utils.readStringFromFile(this.latestFileD))) {
                    this.latestFile.delete();
                } else {
                    return JacksonUtils.DEFAULT_MAPPER.readTree(this.latestFile);
                }
            } catch (Exception e) {
                Log.e("fail to read config_latest.json", e);
                this.latestFile.delete();
            }
        }
        return EMPTY_ROOT;
    }

    public void update(long j) {
        ApiService apiService = (ApiService) this.context.getService("api");
        ApiRequest apiRequest = this.updatingReqeust;
        long jLastModified = 0;
        if (apiRequest != null) {
            if (j != 0) {
                return;
            }
            apiService.abort(apiRequest);
            this.updatingReqeust = null;
        }
        if (j != 0 && this.latestFile.isFile()) {
            jLastModified = this.latestFile.lastModified();
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis < jLastModified || jLastModified + j < jCurrentTimeMillis) {
            Log.d("config_latest.json expired, update now...");
            this.updatingReqeust = getConfigRequest();
            ApiRequest apiRequest2 = this.updatingReqeust;
            if (apiRequest2 != null) {
                apiService.exec(apiRequest2, this.updateListener);
            }
        }
    }

    /* loaded from: classes2.dex */
    private static class DefaultTheme implements ConfigTheme {
        @Override // com.narvii.config.ConfigTheme
        public int colorHighlight() {
            return -1379873;
        }

        @Override // com.narvii.config.ConfigTheme
        public int colorPrimary() {
            return -11296765;
        }

        @Override // com.narvii.config.ConfigTheme
        public Drawable drawerImage() {
            return null;
        }

        @Override // com.narvii.config.ConfigTheme
        public Drawable logoImage() {
            return null;
        }

        @Override // com.narvii.config.ConfigTheme
        public Drawable pageBackground() {
            return null;
        }

        private DefaultTheme() {
        }

        @Override // com.narvii.config.ConfigTheme
        public Drawable actionbarBackground() {
            return new ColorDrawable(colorPrimary());
        }

        @Override // com.narvii.config.ConfigTheme
        public Drawable fakeActionbarBackground() {
            return new ColorDrawable(colorPrimary());
        }
    }
}
