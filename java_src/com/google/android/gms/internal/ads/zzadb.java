package com.google.android.gms.internal.ads;

@zzard
/* loaded from: classes2.dex */
public final class zzadb {
    public static boolean zza(zzadi zzadiVar, zzadg zzadgVar, String... strArr) {
        if (zzadiVar == null || zzadgVar == null || !zzadiVar.zzcxq || zzadgVar == null) {
            return false;
        }
        return zzadiVar.zza(zzadgVar, com.google.android.gms.ads.internal.zzk.zzln().elapsedRealtime(), strArr);
    }

    public static zzadg zzb(zzadi zzadiVar) {
        if (zzadiVar == null) {
            return null;
        }
        return zzadiVar.zzfa(com.google.android.gms.ads.internal.zzk.zzln().elapsedRealtime());
    }
}
