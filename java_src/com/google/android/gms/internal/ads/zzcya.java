package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzcya {
    public static void zzc(Throwable th, String str) {
        int iZze = zzcgm.zze(th);
        StringBuilder sb = new StringBuilder(31);
        sb.append("Ad failed to load : ");
        sb.append(iZze);
        zzbad.zzeo(sb.toString());
        zzawz.zza(str, th);
        if (zzcgm.zze(th) == 3) {
            return;
        }
        com.google.android.gms.ads.internal.zzk.zzlk().zzb(th, str);
    }

    public static void zze(Context context, boolean z) {
        if (z) {
            zzbad.zzeo("This request is sent from a test device.");
            return;
        }
        zzyt.zzpa();
        String strZzbe = zzazt.zzbe(context);
        StringBuilder sb = new StringBuilder(String.valueOf(strZzbe).length() + 71);
        sb.append("Use AdRequest.Builder.addTestDevice(\"");
        sb.append(strZzbe);
        sb.append("\") to get test ads on this device.");
        zzbad.zzeo(sb.toString());
    }
}
