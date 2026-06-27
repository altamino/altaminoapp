package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdob;
import java.io.IOException;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzdnq extends zzdnp<Object> {
    zzdnq() {
    }

    @Override // com.google.android.gms.internal.ads.zzdnp
    final boolean zzm(zzdpk zzdpkVar) {
        return zzdpkVar instanceof zzdob.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzdnp
    final zzdns<Object> zzy(Object obj) {
        return ((zzdob.zzc) obj).zzhhj;
    }

    @Override // com.google.android.gms.internal.ads.zzdnp
    final zzdns<Object> zzz(Object obj) {
        zzdob.zzc zzcVar = (zzdob.zzc) obj;
        if (zzcVar.zzhhj.isImmutable()) {
            zzcVar.zzhhj = (zzdns) zzcVar.zzhhj.clone();
        }
        return zzcVar.zzhhj;
    }

    @Override // com.google.android.gms.internal.ads.zzdnp
    final void zzaa(Object obj) {
        zzy(obj).zzavj();
    }

    @Override // com.google.android.gms.internal.ads.zzdnp
    final <UT, UB> UB zza(zzdqa zzdqaVar, Object obj, zzdno zzdnoVar, zzdns<Object> zzdnsVar, UB ub, zzdqt<UT, UB> zzdqtVar) throws IOException {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.ads.zzdnp
    final int zza(Map.Entry<?, ?> entry) {
        entry.getKey();
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.ads.zzdnp
    final void zza(zzdro zzdroVar, Map.Entry<?, ?> entry) throws IOException {
        entry.getKey();
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.ads.zzdnp
    final Object zza(zzdno zzdnoVar, zzdpk zzdpkVar, int i) {
        return zzdnoVar.zza(zzdpkVar, i);
    }

    @Override // com.google.android.gms.internal.ads.zzdnp
    final void zza(zzdqa zzdqaVar, Object obj, zzdno zzdnoVar, zzdns<Object> zzdnsVar) throws IOException {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.ads.zzdnp
    final void zza(zzdmr zzdmrVar, Object obj, zzdno zzdnoVar, zzdns<Object> zzdnsVar) throws IOException {
        throw new NoSuchMethodError();
    }
}
