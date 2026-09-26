package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes6.dex */
final class zzhq extends zzhw {
    private final int zzc;
    private final int zzd;

    @Override // com.google.android.gms.internal.measurement.zzhw, com.google.android.gms.internal.measurement.zzhm
    public final int zzb() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.measurement.zzhw
    protected final int zze() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.measurement.zzhw, com.google.android.gms.internal.measurement.zzhm
    final byte zzb(int i10) {
        return this.zzb[this.zzc + i10];
    }

    zzhq(byte[] bArr, int i10, int i11) {
        super(bArr);
        zzhm.zza(i10, i10 + i11, bArr.length);
        this.zzc = i10;
        this.zzd = i11;
    }

    @Override // com.google.android.gms.internal.measurement.zzhw, com.google.android.gms.internal.measurement.zzhm
    public final byte zza(int i10) {
        int iZzb = zzb();
        if (((iZzb - (i10 + 1)) | i10) < 0) {
            if (i10 < 0) {
                throw new ArrayIndexOutOfBoundsException("Index < 0: " + i10);
            }
            throw new ArrayIndexOutOfBoundsException("Index > length: " + i10 + ", " + iZzb);
        }
        return this.zzb[this.zzc + i10];
    }
}
