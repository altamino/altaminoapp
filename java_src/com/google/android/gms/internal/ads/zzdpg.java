package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzdpg implements zzdpf {
    zzdpg() {
    }

    @Override // com.google.android.gms.internal.ads.zzdpf
    public final Map<?, ?> zzae(Object obj) {
        return (zzdpe) obj;
    }

    @Override // com.google.android.gms.internal.ads.zzdpf
    public final zzdpd<?, ?> zzaj(Object obj) {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.ads.zzdpf
    public final Map<?, ?> zzaf(Object obj) {
        return (zzdpe) obj;
    }

    @Override // com.google.android.gms.internal.ads.zzdpf
    public final boolean zzag(Object obj) {
        return !((zzdpe) obj).isMutable();
    }

    @Override // com.google.android.gms.internal.ads.zzdpf
    public final Object zzah(Object obj) {
        ((zzdpe) obj).zzavj();
        return obj;
    }

    @Override // com.google.android.gms.internal.ads.zzdpf
    public final Object zzai(Object obj) {
        return zzdpe.zzayt().zzayu();
    }

    @Override // com.google.android.gms.internal.ads.zzdpf
    public final Object zzc(Object obj, Object obj2) {
        zzdpe zzdpeVarZzayu = (zzdpe) obj;
        zzdpe zzdpeVar = (zzdpe) obj2;
        if (!zzdpeVar.isEmpty()) {
            if (!zzdpeVarZzayu.isMutable()) {
                zzdpeVarZzayu = zzdpeVarZzayu.zzayu();
            }
            zzdpeVarZzayu.zza(zzdpeVar);
        }
        return zzdpeVarZzayu;
    }

    @Override // com.google.android.gms.internal.ads.zzdpf
    public final int zzb(int i, Object obj, Object obj2) {
        zzdpe zzdpeVar = (zzdpe) obj;
        if (zzdpeVar.isEmpty()) {
            return 0;
        }
        Iterator it = zzdpeVar.entrySet().iterator();
        if (!it.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it.next();
        entry.getKey();
        entry.getValue();
        throw new NoSuchMethodError();
    }
}
