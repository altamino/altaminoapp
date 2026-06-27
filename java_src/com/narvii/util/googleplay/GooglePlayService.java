package com.narvii.util.googleplay;

import android.content.Intent;
import android.content.SharedPreferences;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.http.ProxyStack;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public class GooglePlayService {
    public static final String PUBLISH_CHANGED = "com.narvii.action.GOOGLE_PLAY_PUBLISH_CHANGED";
    private NVContext context;
    private SharedPreferences prefs;

    public GooglePlayService(NVContext nVContext) {
        this.context = nVContext;
        this.prefs = (SharedPreferences) nVContext.getService("prefs");
    }

    public String getLatestVersion() {
        return this.prefs.getString("latestGooglePlayVersion", "1.0.0");
    }

    public void update(long j) {
        if (j > 0) {
            long j2 = this.prefs.getLong("lastGooglePlayCheckTime", 0L);
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis > j2 && jCurrentTimeMillis < j2 + j) {
                return;
            }
        }
        this.prefs.edit().putLong("lastGooglePlayCheckTime", System.currentTimeMillis()).apply();
        final String packageName = this.context.getContext().getPackageName();
        new Thread("googleplay") { // from class: com.narvii.util.googleplay.GooglePlayService.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() throws IOException {
                int i;
                InputStream inputStream = null;
                try {
                    try {
                        HttpURLConnection httpURLConnectionCreateConnection = new ProxyStack(NVApplication.instance()).createConnection(new URL("https://play.google.com/store/apps/details?id=" + packageName));
                        httpURLConnectionCreateConnection.setRequestProperty("User-Agent", "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36");
                        httpURLConnectionCreateConnection.setRequestProperty("Accept", "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8");
                        httpURLConnectionCreateConnection.setRequestProperty("Accept-Language", "en-US");
                        inputStream = httpURLConnectionCreateConnection.getInputStream();
                        byte[] bArr = new byte[4096];
                        Pattern patternCompile = Pattern.compile(">([12]\\.[\\d]{1,2}\\.(?:[\\d]{1,2}\\.)?[\\d]{5})<");
                        int i2 = 0;
                        do {
                            i = inputStream.read(bArr, i2 + 2048, 2048 - i2);
                            i2 += i == -1 ? 0 : i;
                            if (i2 >= 2048 || i == -1) {
                                try {
                                    Matcher matcher = patternCompile.matcher(new String(bArr, 0, i2 + 2048));
                                    if (matcher.find()) {
                                        final String strGroup = matcher.group(1);
                                        Log.i("google play publish version " + strGroup);
                                        if (!TextUtils.isEmpty(strGroup)) {
                                            if (!strGroup.equals(GooglePlayService.this.getLatestVersion())) {
                                                Utils.post(new Runnable() { // from class: com.narvii.util.googleplay.GooglePlayService.1.1
                                                    @Override // java.lang.Runnable
                                                    public void run() {
                                                        GooglePlayService.this.prefs.edit().putString("latestGooglePlayVersion", strGroup).apply();
                                                        LocalBroadcastManager.getInstance(GooglePlayService.this.context.getContext()).sendBroadcast(new Intent(GooglePlayService.PUBLISH_CHANGED));
                                                    }
                                                });
                                                break;
                                            }
                                            return;
                                        }
                                        break;
                                    }
                                } catch (Exception unused) {
                                }
                                System.arraycopy(bArr, 2048, bArr, 0, 2048);
                                i2 = 0;
                            }
                        } while (i != -1);
                        httpURLConnectionCreateConnection.disconnect();
                    } finally {
                        Utils.safeClose(inputStream);
                    }
                } catch (Exception e) {
                    Log.w("fail to fetch google play page", e);
                }
            }
        }.start();
    }
}
