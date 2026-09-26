package com.google.android.exoplayer2;

import android.content.Context;
import android.net.wifi.WifiManager;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes11.dex */
final class g4 {
    private static final String TAG = "WifiLockManager";
    private static final String WIFI_LOCK_TAG = "ExoPlayer:WifiLockManager";
    private boolean enabled;
    private boolean stayAwake;

    @Nullable
    private WifiManager.WifiLock wifiLock;

    @Nullable
    private final WifiManager wifiManager;

    private void c() {
        WifiManager.WifiLock wifiLock = this.wifiLock;
        if (wifiLock == null) {
            return;
        }
        if (this.enabled && this.stayAwake) {
            wifiLock.acquire();
        } else {
            wifiLock.release();
        }
    }

    public void a(boolean z6) {
        if (z6 && this.wifiLock == null) {
            WifiManager wifiManager = this.wifiManager;
            if (wifiManager == null) {
                com.google.android.exoplayer2.util.t.i(TAG, "WifiManager is null, therefore not creating the WifiLock.");
                return;
            } else {
                WifiManager.WifiLock wifiLockCreateWifiLock = wifiManager.createWifiLock(3, WIFI_LOCK_TAG);
                this.wifiLock = wifiLockCreateWifiLock;
                wifiLockCreateWifiLock.setReferenceCounted(false);
            }
        }
        this.enabled = z6;
        c();
    }

    public void b(boolean z6) {
        this.stayAwake = z6;
        c();
    }

    public g4(Context context) {
        this.wifiManager = (WifiManager) context.getApplicationContext().getSystemService("wifi");
    }
}
