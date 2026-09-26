package com.google.firebase.remoteconfig.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.util.Log;
import androidx.annotation.Keep;
import androidx.core.content.pm.PackageInfoCompat;
import com.google.android.gms.common.util.AndroidUtilsLight;
import com.google.android.gms.common.util.Hex;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.http.entity.mime.MIME;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes8.dex */
public class ConfigFetchHttpClient {
    private static final String API_KEY_HEADER = "X-Goog-Api-Key";
    private static final String ETAG_HEADER = "ETag";
    private static final Pattern GMP_APP_ID_PATTERN = Pattern.compile("^[^:]+:([0-9]+):(android|ios|web):([0-9a-f]+)");
    private static final String IF_NONE_MATCH_HEADER = "If-None-Match";
    private static final String INSTALLATIONS_AUTH_TOKEN_HEADER = "X-Goog-Firebase-Installations-Auth";
    private static final String ISO_DATE_PATTERN = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'";
    private static final String X_ANDROID_CERT_HEADER = "X-Android-Cert";
    private static final String X_ANDROID_PACKAGE_HEADER = "X-Android-Package";
    private static final String X_GOOGLE_GFE_CAN_RETRY = "X-Google-GFE-Can-Retry";
    private final String apiKey;
    private final String appId;
    private final long connectTimeoutInSeconds;
    private final Context context;
    private final String namespace;
    private final String projectNumber;
    private final long readTimeoutInSeconds;

    private boolean a(JSONObject jSONObject) {
        try {
            return !jSONObject.get("state").equals("NO_CHANGE");
        } catch (JSONException unused) {
            return true;
        }
    }

    private String h(String str, String str2) {
        return String.format("https://firebaseremoteconfig.googleapis.com/v1/projects/%s/namespaces/%s:fetch", str, str2);
    }

    private void l(HttpURLConnection httpURLConnection, byte[] bArr) throws IOException {
        httpURLConnection.setFixedLengthStreamingMode(bArr.length);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(httpURLConnection.getOutputStream());
        bufferedOutputStream.write(bArr);
        bufferedOutputStream.flush();
        bufferedOutputStream.close();
    }

    private void m(HttpURLConnection httpURLConnection, String str, String str2, Map<String, String> map) {
        httpURLConnection.setDoOutput(true);
        TimeUnit timeUnit = TimeUnit.SECONDS;
        httpURLConnection.setConnectTimeout((int) timeUnit.toMillis(this.connectTimeoutInSeconds));
        httpURLConnection.setReadTimeout((int) timeUnit.toMillis(this.readTimeoutInSeconds));
        httpURLConnection.setRequestProperty(IF_NONE_MATCH_HEADER, str);
        j(httpURLConnection, str2);
        k(httpURLConnection, map);
    }

    private String b(long j6) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(ISO_DATE_PATTERN, Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        return simpleDateFormat.format(Long.valueOf(j6));
    }

    private JSONObject c(String str, String str2, Map<String, String> map, Long l) throws c5.h {
        HashMap map2 = new HashMap();
        if (str == null) {
            throw new c5.h("Fetch failed: Firebase installation id is null.");
        }
        map2.put("appInstanceId", str);
        map2.put("appInstanceIdToken", str2);
        map2.put("appId", this.appId);
        Locale locale = this.context.getResources().getConfiguration().locale;
        map2.put("countryCode", locale.getCountry());
        int i10 = Build.VERSION.SDK_INT;
        map2.put("languageCode", locale.toLanguageTag());
        map2.put("platformVersion", Integer.toString(i10));
        map2.put("timeZone", TimeZone.getDefault().getID());
        try {
            PackageInfo packageInfo = this.context.getPackageManager().getPackageInfo(this.context.getPackageName(), 0);
            if (packageInfo != null) {
                map2.put("appVersion", packageInfo.versionName);
                map2.put("appBuild", Long.toString(PackageInfoCompat.a(packageInfo)));
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        map2.put("packageName", this.context.getPackageName());
        map2.put("sdkVersion", "21.6.0");
        map2.put("analyticsUserProperties", new JSONObject(map));
        if (l != null) {
            map2.put("firstOpenTime", b(l.longValue()));
        }
        return new JSONObject(map2);
    }

    private static g e(JSONObject jSONObject, Date date) throws c5.h {
        JSONObject jSONObject2;
        JSONArray jSONArray;
        JSONObject jSONObject3;
        try {
            g.b bVarD = g.l().d(date);
            JSONArray jSONArray2 = null;
            try {
                jSONObject2 = jSONObject.getJSONObject("entries");
            } catch (JSONException unused) {
                jSONObject2 = null;
            }
            if (jSONObject2 != null) {
                bVarD = bVarD.b(jSONObject2);
            }
            try {
                jSONArray = jSONObject.getJSONArray("experimentDescriptions");
            } catch (JSONException unused2) {
                jSONArray = null;
            }
            if (jSONArray != null) {
                bVarD = bVarD.c(jSONArray);
            }
            try {
                jSONObject3 = jSONObject.getJSONObject("personalizationMetadata");
            } catch (JSONException unused3) {
                jSONObject3 = null;
            }
            if (jSONObject3 != null) {
                bVarD = bVarD.e(jSONObject3);
            }
            String string = jSONObject.has("templateVersion") ? jSONObject.getString("templateVersion") : null;
            if (string != null) {
                bVarD.g(Long.parseLong(string));
            }
            try {
                jSONArray2 = jSONObject.getJSONArray("rolloutMetadata");
            } catch (JSONException unused4) {
            }
            if (jSONArray2 != null) {
                bVarD = bVarD.f(jSONArray2);
            }
            return bVarD.a();
        } catch (JSONException e) {
            throw new c5.h("Fetch failed: fetch response could not be parsed.", e);
        }
    }

    private static String f(String str) {
        Matcher matcher = GMP_APP_ID_PATTERN.matcher(str);
        if (matcher.matches()) {
            return matcher.group(1);
        }
        return null;
    }

    private JSONObject g(URLConnection uRLConnection) throws JSONException, IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(uRLConnection.getInputStream(), "utf-8"));
        StringBuilder sb = new StringBuilder();
        while (true) {
            int i10 = bufferedReader.read();
            if (i10 == -1) {
                return new JSONObject(sb.toString());
            }
            sb.append((char) i10);
        }
    }

    private String i() {
        try {
            Context context = this.context;
            byte[] packageCertificateHashBytes = AndroidUtilsLight.getPackageCertificateHashBytes(context, context.getPackageName());
            if (packageCertificateHashBytes != null) {
                return Hex.bytesToStringUppercase(packageCertificateHashBytes, false);
            }
            Log.e(com.google.firebase.remoteconfig.a.TAG, "Could not get fingerprint hash for package: " + this.context.getPackageName());
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e(com.google.firebase.remoteconfig.a.TAG, "No such package: " + this.context.getPackageName(), e);
            return null;
        }
    }

    private void j(HttpURLConnection httpURLConnection, String str) {
        httpURLConnection.setRequestProperty(API_KEY_HEADER, this.apiKey);
        httpURLConnection.setRequestProperty(X_ANDROID_PACKAGE_HEADER, this.context.getPackageName());
        httpURLConnection.setRequestProperty(X_ANDROID_CERT_HEADER, i());
        httpURLConnection.setRequestProperty(X_GOOGLE_GFE_CAN_RETRY, "yes");
        httpURLConnection.setRequestProperty(INSTALLATIONS_AUTH_TOKEN_HEADER, str);
        httpURLConnection.setRequestProperty(MIME.CONTENT_TYPE, "application/json");
        httpURLConnection.setRequestProperty("Accept", "application/json");
    }

    HttpURLConnection d() throws c5.i {
        try {
            return (HttpURLConnection) new URL(h(this.projectNumber, this.namespace)).openConnection();
        } catch (IOException e) {
            throw new c5.i(e.getMessage());
        }
    }

    public ConfigFetchHttpClient(Context context, String str, String str2, String str3, long j6, long j10) {
        this.context = context;
        this.appId = str;
        this.apiKey = str2;
        this.projectNumber = f(str);
        this.namespace = str3;
        this.connectTimeoutInSeconds = j6;
        this.readTimeoutInSeconds = j10;
    }

    private void k(HttpURLConnection httpURLConnection, Map<String, String> map) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
        }
    }

    @Keep
    m.a fetch(HttpURLConnection httpURLConnection, String str, String str2, Map<String, String> map, String str3, Map<String, String> map2, Long l, Date date) throws c5.i {
        m(httpURLConnection, str3, str2, map2);
        try {
            try {
                l(httpURLConnection, c(str, str2, map, l).toString().getBytes("utf-8"));
                httpURLConnection.connect();
                int responseCode = httpURLConnection.getResponseCode();
                if (responseCode == 200) {
                    String headerField = httpURLConnection.getHeaderField(ETAG_HEADER);
                    JSONObject jSONObjectG = g(httpURLConnection);
                    httpURLConnection.disconnect();
                    try {
                        httpURLConnection.getInputStream().close();
                    } catch (IOException unused) {
                    }
                    g gVarE = e(jSONObjectG, date);
                    if (!a(jSONObjectG)) {
                        return m.a.a(date, gVarE);
                    }
                    return m.a.b(gVarE, headerField);
                }
                throw new c5.l(responseCode, httpURLConnection.getResponseMessage());
            } catch (Throwable th) {
                httpURLConnection.disconnect();
                try {
                    httpURLConnection.getInputStream().close();
                } catch (IOException unused2) {
                }
                throw th;
            }
        } catch (IOException | JSONException e) {
            throw new c5.h("The client had an error while calling the backend!", e);
        }
    }
}
