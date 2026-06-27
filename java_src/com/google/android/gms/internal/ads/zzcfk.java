package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* loaded from: classes2.dex */
public final class zzcfk implements zzczz {
    private final Clock zzbsa;
    private final zzcfi zzfur;
    private final Map<zzczs, Long> zzfuq = new HashMap();
    private final Map<zzczs, zzcfl> zzfus = new HashMap();

    public zzcfk(zzcfi zzcfiVar, Set<zzcfl> set, Clock clock) {
        this.zzfur = zzcfiVar;
        for (zzcfl zzcflVar : set) {
            this.zzfus.put(zzcflVar.zzfuu, zzcflVar);
        }
        this.zzbsa = clock;
    }

    @Override // com.google.android.gms.internal.ads.zzczz
    public final void zza(zzczs zzczsVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzczz
    public final void zzb(zzczs zzczsVar, String str) {
        this.zzfuq.put(zzczsVar, Long.valueOf(this.zzbsa.elapsedRealtime()));
    }

    @Override // com.google.android.gms.internal.ads.zzczz
    public final void zza(zzczs zzczsVar, String str, Throwable th) {
        if (this.zzfuq.containsKey(zzczsVar)) {
            long jElapsedRealtime = this.zzbsa.elapsedRealtime() - this.zzfuq.get(zzczsVar).longValue();
            Map<String, String> mapZzqy = this.zzfur.zzqy();
            String strValueOf = String.valueOf(str);
            String strConcat = strValueOf.length() != 0 ? "task.".concat(strValueOf) : new String("task.");
            String strValueOf2 = String.valueOf(Long.toString(jElapsedRealtime));
            mapZzqy.put(strConcat, strValueOf2.length() != 0 ? "f.".concat(strValueOf2) : new String("f."));
        }
        if (this.zzfus.containsKey(zzczsVar)) {
            zza(zzczsVar, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzczz
    public final void zzc(zzczs zzczsVar, String str) {
        if (this.zzfuq.containsKey(zzczsVar)) {
            long jElapsedRealtime = this.zzbsa.elapsedRealtime() - this.zzfuq.get(zzczsVar).longValue();
            Map<String, String> mapZzqy = this.zzfur.zzqy();
            String strValueOf = String.valueOf(str);
            String strConcat = strValueOf.length() != 0 ? "task.".concat(strValueOf) : new String("task.");
            String strValueOf2 = String.valueOf(Long.toString(jElapsedRealtime));
            mapZzqy.put(strConcat, strValueOf2.length() != 0 ? "s.".concat(strValueOf2) : new String("s."));
        }
        if (this.zzfus.containsKey(zzczsVar)) {
            zza(zzczsVar, true);
        }
    }

    private final void zza(zzczs zzczsVar, boolean z) {
        zzczs zzczsVar2 = this.zzfus.get(zzczsVar).zzfut;
        String str = z ? "s." : "f.";
        if (this.zzfuq.containsKey(zzczsVar2)) {
            long jElapsedRealtime = this.zzbsa.elapsedRealtime() - this.zzfuq.get(zzczsVar2).longValue();
            Map<String, String> mapZzqy = this.zzfur.zzqy();
            String strValueOf = String.valueOf(this.zzfus.get(zzczsVar).label);
            String strConcat = strValueOf.length() != 0 ? "label.".concat(strValueOf) : new String("label.");
            String strValueOf2 = String.valueOf(Long.toString(jElapsedRealtime));
            mapZzqy.put(strConcat, strValueOf2.length() != 0 ? str.concat(strValueOf2) : new String(str));
        }
    }
}
