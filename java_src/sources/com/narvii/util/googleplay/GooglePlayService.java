package com.narvii.util.googleplay;

import android.content.Intent;
import android.content.SharedPreferences;
import android.text.TextUtils;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.app.incubator.IncubatorApplication;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.http.ProxyStack;
import com.narvii.volley.util.HurlConnectionHelper;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes6.dex */
public class GooglePlayService {
    public static final String PUBLISH_CHANGED = "com.narvii.action.GOOGLE_PLAY_PUBLISH_CHANGED";
    private NVContext context;
    private SharedPreferences prefs;

    public String getLatestVersion() {
        return this.prefs.getString("latestGooglePlayVersion", "1.0.0");
    }

    public void update(long j6) {
        if (j6 > 0) {
            long j10 = this.prefs.getLong("lastGooglePlayCheckTime", 0L);
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis > j10 && jCurrentTimeMillis < j10 + j6) {
                return;
            }
        }
        this.prefs.edit().putLong("lastGooglePlayCheckTime", System.currentTimeMillis()).apply();
        final String packageName = this.context.getContext().getPackageName();
        new Thread("googleplay") { // from class: com.narvii.util.googleplay.GooglePlayService.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                int i10;
                InputStream inputStream = null;
                try {
                    try {
                        HttpURLConnection httpURLConnectionCreateConnection = new ProxyStack(NVApplication.instance()).createConnection(new URL("https://play.google.com/store/apps/details?id=" + packageName));
                        httpURLConnectionCreateConnection.setRequestProperty("User-Agent", "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36");
                        httpURLConnectionCreateConnection.setRequestProperty("Accept", "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8");
                        httpURLConnectionCreateConnection.setRequestProperty("Accept-Language", "en-US");
                        inputStream = HurlConnectionHelper.getInputStream(httpURLConnectionCreateConnection);
                        byte[] bArr = new byte[4096];
                        Pattern patternCompile = Pattern.compile(">([12]\\.[\\d]{1,2}\\.(?:[\\d]{1,2}\\.)?[\\d]{5})<");
                        int i11 = 0;
                        do {
                            i10 = inputStream.read(bArr, i11 + 2048, 2048 - i11);
                            i11 += i10 == -1 ? 0 : i10;
                            if (i11 >= 2048 || i10 == -1) {
                                try {
                                    Matcher matcher = patternCompile.matcher(new String(bArr, 0, i11 + 2048));
                                    if (matcher.find()) {
                                        final String strGroup = matcher.group(1);
                                        Log.i("google play publish version " + strGroup);
                                        if (TextUtils.isEmpty(strGroup)) {
                                            break;
                                        }
                                        if (!strGroup.equals(GooglePlayService.this.getLatestVersion())) {
                                            Utils.post(new Runnable() { // from class: com.narvii.util.googleplay.GooglePlayService.1.1
                                                @Override // java.lang.Runnable
                                                public void run() {
                                                    GooglePlayService.this.prefs.edit().putString("latestGooglePlayVersion", strGroup).apply();
                                                    LocalBroadcastManager.b(GooglePlayService.this.context.getContext()).d(new Intent(GooglePlayService.PUBLISH_CHANGED));
                                                }
                                            });
                                            break;
                                        }
                                        return;
                                        System.arraycopy(bArr, 2048, bArr, 0, 2048);
                                        i11 = 0;
                                    } else {
                                        System.arraycopy(bArr, 2048, bArr, 0, 2048);
                                        i11 = 0;
                                    }
                                } catch (Exception unused) {
                                }
                            }
                        } while (i10 != -1);
                        httpURLConnectionCreateConnection.disconnect();
                    } catch (Exception e) {
                        Log.w("fail to fetch google play page", e);
                    }
                } finally {
                    Utils.safeClose(inputStream);
                }
            }
        }.start();
    }

    public GooglePlayService(NVContext nVContext) {
        this.context = nVContext;
        this.prefs = (SharedPreferences) nVContext.getService(IncubatorApplication.PREFS_SERVICE_KEY);
    }
}
