package com.google.android.gms.internal.ads;

import android.support.v4.util.SimpleArrayMap;

/* loaded from: classes2.dex */
public final class zzbze {
    zzafl zzfow;
    zzafi zzfox;
    zzafx zzfoy;
    zzafu zzfoz;
    zzaje zzfpa;
    final SimpleArrayMap<String, zzafr> zzfpb = new SimpleArrayMap<>();
    final SimpleArrayMap<String, zzafo> zzfpc = new SimpleArrayMap<>();

    public final zzbze zzb(zzafl zzaflVar) {
        this.zzfow = zzaflVar;
        return this;
    }

    public final zzbze zzb(zzafi zzafiVar) {
        this.zzfox = zzafiVar;
        return this;
    }

    public final zzbze zzb(zzafx zzafxVar) {
        this.zzfoy = zzafxVar;
        return this;
    }

    public final zzbze zza(zzafu zzafuVar) {
        this.zzfoz = zzafuVar;
        return this;
    }

    public final zzbze zzb(zzaje zzajeVar) {
        this.zzfpa = zzajeVar;
        return this;
    }

    public final zzbze zzb(String str, zzafr zzafrVar, zzafo zzafoVar) {
        this.zzfpb.put(str, zzafrVar);
        this.zzfpc.put(str, zzafoVar);
        return this;
    }

    public final zzbzc zzaip() {
        return new zzbzc(this);
    }
}
