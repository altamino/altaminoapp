package com.google.android.gms.internal.common;

/* JADX INFO: loaded from: classes8.dex */
final class zzae extends zzz {
    private final zzag zza;

    @Override // com.google.android.gms.internal.common.zzz
    protected final Object zza(int i10) {
        return this.zza.get(i10);
    }

    zzae(zzag zzagVar, int i10) {
        super(zzagVar.size(), i10);
        this.zza = zzagVar;
    }
}
