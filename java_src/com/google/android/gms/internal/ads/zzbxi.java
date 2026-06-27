package com.google.android.gms.internal.ads;

import java.util.Map;

/* loaded from: classes2.dex */
final class zzbxi implements zzbpe<zzbph> {
    private final zzbzc zzfgz;
    private final Map<String, zzcjv<zzbph>> zzfit;
    private final Map<String, zzcjv<zzbyn>> zzflz;
    private final Map<String, zzclw<zzbyn>> zzfma;
    private final zzdtu<zzbpe<zzbnf>> zzfmb;

    zzbxi(Map<String, zzcjv<zzbph>> map, Map<String, zzcjv<zzbyn>> map2, Map<String, zzclw<zzbyn>> map3, zzdtu<zzbpe<zzbnf>> zzdtuVar, zzbzc zzbzcVar) {
        this.zzfit = map;
        this.zzflz = map2;
        this.zzfma = map3;
        this.zzfmb = zzdtuVar;
        this.zzfgz = zzbzcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbpe
    public final zzcjv<zzbph> zze(int i, String str) {
        zzcjv<zzbnf> zzcjvVarZze;
        zzcjv<zzbph> zzcjvVar = this.zzfit.get(str);
        if (zzcjvVar != null) {
            return zzcjvVar;
        }
        if (i == 1) {
            if (this.zzfgz.zzail() == null || (zzcjvVarZze = this.zzfmb.get().zze(i, str)) == null) {
                return null;
            }
            return zzbph.zza(zzcjvVarZze);
        }
        if (i != 4) {
            return null;
        }
        zzclw<zzbyn> zzclwVar = this.zzfma.get(str);
        if (zzclwVar != null) {
            return zzbph.zza((zzclw<? extends zzbpc>) zzclwVar);
        }
        zzcjv<zzbyn> zzcjvVar2 = this.zzflz.get(str);
        if (zzcjvVar2 != null) {
            return zzbph.zza(zzcjvVar2);
        }
        return null;
    }
}
