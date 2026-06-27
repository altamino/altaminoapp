package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzbph {
    public final List<? extends zzbbh<? extends zzbpc>> zzfiv;

    public zzbph(List<? extends zzbbh<? extends zzbpc>> list) {
        this.zzfiv = list;
    }

    public zzbph(zzbpc zzbpcVar) {
        this.zzfiv = Collections.singletonList(zzbar.zzm(zzbpcVar));
    }

    public static zzcjv<zzbph> zza(zzclw<? extends zzbpc> zzclwVar) {
        return new zzcjw(zzclwVar, zzbpi.zzdrn);
    }

    public static zzcjv<zzbph> zza(zzcjv<? extends zzbpc> zzcjvVar) {
        return new zzcjw(zzcjvVar, zzbpj.zzdrn);
    }
}
