package com.google.android.gms.internal.play_billing;

import java.util.AbstractMap;

/* JADX INFO: loaded from: classes9.dex */
final class zzam extends zzaf {
    final /* synthetic */ zzan zza;

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zza.zzc;
    }

    @Override // com.google.android.gms.internal.play_billing.zzac
    public final boolean zzf() {
        return true;
    }

    zzam(zzan zzanVar) {
        this.zza = zzanVar;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i10) {
        zzx.zza(i10, this.zza.zzc, "index");
        zzan zzanVar = this.zza;
        int i11 = i10 + i10;
        Object obj = zzanVar.zzb[i11];
        obj.getClass();
        Object obj2 = zzanVar.zzb[i11 + 1];
        obj2.getClass();
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }
}
