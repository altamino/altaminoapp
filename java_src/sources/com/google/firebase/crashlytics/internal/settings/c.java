package com.google.firebase.crashlytics.internal.settings;

import android.text.TextUtils;
import com.google.firebase.crashlytics.internal.common.r;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
class c implements k {
    static final String ACCEPT_JSON_VALUE = "application/json";
    static final String ANDROID_CLIENT_TYPE = "android";
    static final String BUILD_VERSION_PARAM = "build_version";
    static final String CRASHLYTICS_USER_AGENT = "Crashlytics Android SDK/";
    static final String DISPLAY_VERSION_PARAM = "display_version";
    static final String HEADER_ACCEPT = "Accept";
    static final String HEADER_CLIENT_TYPE = "X-CRASHLYTICS-API-CLIENT-TYPE";
    static final String HEADER_CLIENT_VERSION = "X-CRASHLYTICS-API-CLIENT-VERSION";
    static final String HEADER_DEVICE_MODEL = "X-CRASHLYTICS-DEVICE-MODEL";
    static final String HEADER_GOOGLE_APP_ID = "X-CRASHLYTICS-GOOGLE-APP-ID";
    static final String HEADER_INSTALLATION_ID = "X-CRASHLYTICS-INSTALLATION-ID";
    static final String HEADER_OS_BUILD_VERSION = "X-CRASHLYTICS-OS-BUILD-VERSION";
    static final String HEADER_OS_DISPLAY_VERSION = "X-CRASHLYTICS-OS-DISPLAY-VERSION";
    static final String HEADER_USER_AGENT = "User-Agent";
    static final String INSTANCE_PARAM = "instance";
    static final String SOURCE_PARAM = "source";
    private final com.google.firebase.crashlytics.internal.g logger;
    private final d4.b requestFactory;
    private final String url;

    public c(String str, d4.b bVar) {
        this(str, bVar, com.google.firebase.crashlytics.internal.g.f());
    }

    boolean h(int i10) {
        return i10 == 200 || i10 == 201 || i10 == 202 || i10 == 203;
    }

    c(String str, d4.b bVar, com.google.firebase.crashlytics.internal.g gVar) {
        if (str == null) {
            throw new IllegalArgumentException("url must not be null.");
        }
        this.logger = gVar;
        this.requestFactory = bVar;
        this.url = str;
    }

    private d4.a b(d4.a aVar, j jVar) {
        c(aVar, HEADER_GOOGLE_APP_ID, jVar.googleAppId);
        c(aVar, HEADER_CLIENT_TYPE, ANDROID_CLIENT_TYPE);
        c(aVar, HEADER_CLIENT_VERSION, r.i());
        c(aVar, HEADER_ACCEPT, ACCEPT_JSON_VALUE);
        c(aVar, HEADER_DEVICE_MODEL, jVar.deviceModel);
        c(aVar, HEADER_OS_BUILD_VERSION, jVar.osBuildVersion);
        c(aVar, HEADER_OS_DISPLAY_VERSION, jVar.osDisplayVersion);
        c(aVar, HEADER_INSTALLATION_ID, jVar.installIdProvider.a().c());
        return aVar;
    }

    private void c(d4.a aVar, String str, String str2) {
        if (str2 != null) {
            aVar.d(str, str2);
        }
    }

    private JSONObject e(String str) {
        try {
            return new JSONObject(str);
        } catch (Exception e) {
            this.logger.l("Failed to parse settings JSON from " + this.url, e);
            this.logger.k("Settings response " + str);
            return null;
        }
    }

    private Map<String, String> f(j jVar) {
        HashMap map = new HashMap();
        map.put(BUILD_VERSION_PARAM, jVar.buildVersion);
        map.put(DISPLAY_VERSION_PARAM, jVar.displayVersion);
        map.put("source", Integer.toString(jVar.source));
        String str = jVar.instanceId;
        if (!TextUtils.isEmpty(str)) {
            map.put(INSTANCE_PARAM, str);
        }
        return map;
    }

    @Override // com.google.firebase.crashlytics.internal.settings.k
    public JSONObject a(j jVar, boolean z6) {
        if (!z6) {
            throw new RuntimeException("An invalid data collection token was used.");
        }
        try {
            Map<String, String> mapF = f(jVar);
            d4.a aVarB = b(d(mapF), jVar);
            this.logger.b("Requesting settings from " + this.url);
            this.logger.i("Settings query params were: " + mapF);
            return g(aVarB.c());
        } catch (IOException e) {
            this.logger.e("Settings request failed.", e);
            return null;
        }
    }

    protected d4.a d(Map<String, String> map) {
        return this.requestFactory.a(this.url, map).d(HEADER_USER_AGENT, CRASHLYTICS_USER_AGENT + r.i()).d("X-CRASHLYTICS-DEVELOPER-TOKEN", "470fa2b4ae81cd56ecbcda9735803434cec591fa");
    }

    JSONObject g(d4.c cVar) {
        int iB = cVar.b();
        this.logger.i("Settings response code was: " + iB);
        if (h(iB)) {
            return e(cVar.a());
        }
        this.logger.d("Settings request failed; (status: " + iB + ") from " + this.url);
        return null;
    }
}
