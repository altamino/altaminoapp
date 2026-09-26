package com.google.android.gms.internal.measurement;

import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes6.dex */
final class zzhp extends zzhr {
    private int zza = 0;
    private final int zzb;
    private final /* synthetic */ zzhm zzc;

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zza < this.zzb;
    }

    zzhp(zzhm zzhmVar) {
        this.zzc = zzhmVar;
        this.zzb = zzhmVar.zzb();
    }

    @Override // com.google.android.gms.internal.measurement.zzhs
    public final byte zza() {
        int i10 = this.zza;
        if (i10 >= this.zzb) {
            throw new NoSuchElementException();
        }
        this.zza = i10 + 1;
        return this.zzc.zzb(i10);
    }
}
