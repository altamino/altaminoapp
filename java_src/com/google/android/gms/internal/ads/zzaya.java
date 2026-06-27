package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioManager;

@zzard
/* loaded from: classes2.dex */
public final class zzaya {
    private boolean zzdmj = false;
    private float zzdmd = 1.0f;

    public final synchronized void setAppVolume(float f) {
        this.zzdmd = f;
    }

    public final synchronized float zzpq() {
        if (!zzwj()) {
            return 1.0f;
        }
        return this.zzdmd;
    }

    public final synchronized void setAppMuted(boolean z) {
        this.zzdmj = z;
    }

    public final synchronized boolean zzpr() {
        return this.zzdmj;
    }

    private final synchronized boolean zzwj() {
        return this.zzdmd >= 0.0f;
    }

    public static float zzba(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager == null) {
            return 0.0f;
        }
        int streamMaxVolume = audioManager.getStreamMaxVolume(3);
        int streamVolume = audioManager.getStreamVolume(3);
        if (streamMaxVolume == 0) {
            return 0.0f;
        }
        return streamVolume / streamMaxVolume;
    }
}
