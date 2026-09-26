package com.google.android.gms.measurement.internal;

import androidx.collection.LruCache;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes10.dex */
final class zzgv extends LruCache<String, com.google.android.gms.internal.measurement.zzb> {
    private final /* synthetic */ zzgp zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzgv(zzgp zzgpVar, int i10) {
        super(20);
        this.zza = zzgpVar;
    }

    @Override // androidx.collection.LruCache
    protected final /* synthetic */ com.google.android.gms.internal.measurement.zzb create(String str) {
        String str2 = str;
        Preconditions.checkNotEmpty(str2);
        return zzgp.zza(this.zza, str2);
    }
}
