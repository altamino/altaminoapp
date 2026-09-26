package com.google.android.gms.internal.play_billing;

/* JADX INFO: loaded from: classes10.dex */
final class zzdq extends zzdt {
    private final int zzc;

    @Override // com.google.android.gms.internal.play_billing.zzdt
    protected final int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.play_billing.zzdt, com.google.android.gms.internal.play_billing.zzdw
    public final int zzd() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.play_billing.zzdt, com.google.android.gms.internal.play_billing.zzdw
    public final byte zza(int i10) {
        int i11 = this.zzc;
        if (((i11 - (i10 + 1)) | i10) >= 0) {
            return this.zza[i10];
        }
        if (i10 < 0) {
            throw new ArrayIndexOutOfBoundsException("Index < 0: " + i10);
        }
        throw new ArrayIndexOutOfBoundsException("Index > length: " + i10 + ", " + i11);
    }

    @Override // com.google.android.gms.internal.play_billing.zzdt, com.google.android.gms.internal.play_billing.zzdw
    final byte zzb(int i10) {
        return this.zza[i10];
    }

    zzdq(byte[] bArr, int i10, int i11) {
        super(bArr);
        zzdw.zzj(0, i11, bArr.length);
        this.zzc = i11;
    }
}
