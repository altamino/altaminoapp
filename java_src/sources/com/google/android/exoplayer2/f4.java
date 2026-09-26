package com.google.android.exoplayer2;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.PowerManager;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes11.dex */
final class f4 {
    private static final String TAG = "WakeLockManager";
    private static final String WAKE_LOCK_TAG = "ExoPlayer:WakeLockManager";
    private boolean enabled;

    @Nullable
    private final PowerManager powerManager;
    private boolean stayAwake;

    @Nullable
    private PowerManager.WakeLock wakeLock;

    @SuppressLint({"WakelockTimeout"})
    private void c() {
        PowerManager.WakeLock wakeLock = this.wakeLock;
        if (wakeLock == null) {
            return;
        }
        if (this.enabled && this.stayAwake) {
            wakeLock.acquire();
        } else {
            wakeLock.release();
        }
    }

    public void a(boolean z6) {
        if (z6 && this.wakeLock == null) {
            PowerManager powerManager = this.powerManager;
            if (powerManager == null) {
                com.google.android.exoplayer2.util.t.i(TAG, "PowerManager is null, therefore not creating the WakeLock.");
                return;
            } else {
                PowerManager.WakeLock wakeLockNewWakeLock = powerManager.newWakeLock(1, WAKE_LOCK_TAG);
                this.wakeLock = wakeLockNewWakeLock;
                wakeLockNewWakeLock.setReferenceCounted(false);
            }
        }
        this.enabled = z6;
        c();
    }

    public void b(boolean z6) {
        this.stayAwake = z6;
        c();
    }

    public f4(Context context) {
        this.powerManager = (PowerManager) context.getApplicationContext().getSystemService("power");
    }
}
