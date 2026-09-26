package com.ss.android.tea.common.applog;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.text.TextUtils;
import com.bytedance.tea.common.utility.NetworkUtils;

/* JADX INFO: loaded from: classes10.dex */
public class c0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f3124a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f3125b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f3126c;
    private boolean d;
    private String e;
    private long f;

    public boolean a() {
        if (this.f3124a == null) {
            return false;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.f3126c < 1800000 || !NetworkUtils.a(this.f3124a)) {
            return false;
        }
        String strC = c();
        if (TextUtils.isEmpty(strC) || strC.equals(this.f3125b)) {
            return false;
        }
        this.d = true;
        this.e = strC;
        this.f = jCurrentTimeMillis;
        return true;
    }

    public void b() {
        if (this.d) {
            this.d = false;
            this.f3125b = this.e;
            this.f3126c = this.f;
            SharedPreferences.Editor editorEdit = this.f3124a.getSharedPreferences("applog_stats", 0).edit();
            editorEdit.putString("last_wifi_bssid", this.f3125b);
            editorEdit.putLong("last_check_bssid_time", this.f3126c);
            com.bytedance.tea.common.utility.c.a.a(editorEdit);
        }
    }

    public String c() {
        WifiManager wifiManager;
        Context context = this.f3124a;
        if (context == null || (wifiManager = (WifiManager) context.getSystemService("wifi")) == null) {
            return null;
        }
        try {
            WifiInfo connectionInfo = wifiManager.getConnectionInfo();
            if (connectionInfo != null) {
                return connectionInfo.getBSSID();
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public c0(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f3124a = applicationContext;
        SharedPreferences sharedPreferences = applicationContext.getSharedPreferences("applog_stats", 0);
        this.f3125b = sharedPreferences.getString("last_wifi_bssid", null);
        this.f3126c = sharedPreferences.getLong("last_check_bssid_time", 0L);
    }
}
