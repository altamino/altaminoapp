package com.google.android.gms.internal.ads;

import android.util.Log;

@zzard
/* loaded from: classes2.dex */
public final class zzawz extends zzbad {
    public static void zzds(String str) {
        if (zzvj()) {
            Log.v("Ads", str);
        }
    }

    public static void zza(String str, Throwable th) {
        if (zzvj()) {
            Log.v("Ads", str, th);
        }
    }

    public static boolean zzvj() {
        if (zzbad.isLoggable(2)) {
            return ((Boolean) zzyt.zzpe().zzd(zzacu.zzcqg)).booleanValue();
        }
        return false;
    }
}
