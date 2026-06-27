package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzez;
import java.io.IOException;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzeo extends zzen<Object> {
    zzeo() {
    }

    @Override // com.google.android.gms.internal.measurement.zzen
    final boolean zze(zzgh zzghVar) {
        return zzghVar instanceof zzez.zzc;
    }

    @Override // com.google.android.gms.internal.measurement.zzen
    final zzeq<Object> zzg(Object obj) {
        return ((zzez.zzc) obj).zzagt;
    }

    @Override // com.google.android.gms.internal.measurement.zzen
    final zzeq<Object> zzh(Object obj) {
        return ((zzez.zzc) obj).zzms();
    }

    @Override // com.google.android.gms.internal.measurement.zzen
    final void zzi(Object obj) {
        zzg(obj).zzjz();
    }

    @Override // com.google.android.gms.internal.measurement.zzen
    final <UT, UB> UB zza(zzgx zzgxVar, Object obj, zzem zzemVar, zzeq<Object> zzeqVar, UB ub, zzhq<UT, UB> zzhqVar) throws IOException {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.measurement.zzen
    final int zza(Map.Entry<?, ?> entry) {
        entry.getKey();
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.measurement.zzen
    final void zza(zzil zzilVar, Map.Entry<?, ?> entry) throws IOException {
        entry.getKey();
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.measurement.zzen
    final Object zza(zzem zzemVar, zzgh zzghVar, int i) {
        return zzemVar.zza(zzghVar, i);
    }

    @Override // com.google.android.gms.internal.measurement.zzen
    final void zza(zzgx zzgxVar, Object obj, zzem zzemVar, zzeq<Object> zzeqVar) throws IOException {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.measurement.zzen
    final void zza(zzdp zzdpVar, Object obj, zzem zzemVar, zzeq<Object> zzeqVar) throws IOException {
        throw new NoSuchMethodError();
    }
}
