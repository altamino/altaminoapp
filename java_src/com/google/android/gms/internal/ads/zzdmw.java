package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzdmw extends zzdnb {
    private final int zzhcv;
    private final int zzhcw;

    zzdmw(byte[] bArr, int i, int i2) {
        super(bArr);
        zzdmr.zzg(i, i + i2, bArr.length);
        this.zzhcv = i;
        this.zzhcw = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzdnb, com.google.android.gms.internal.ads.zzdmr
    public final byte zzfm(int i) {
        int size = size();
        if (((size - (i + 1)) | i) >= 0) {
            return this.zzhcy[this.zzhcv + i];
        }
        if (i < 0) {
            StringBuilder sb = new StringBuilder(22);
            sb.append("Index < 0: ");
            sb.append(i);
            throw new ArrayIndexOutOfBoundsException(sb.toString());
        }
        StringBuilder sb2 = new StringBuilder(40);
        sb2.append("Index > length: ");
        sb2.append(i);
        sb2.append(", ");
        sb2.append(size);
        throw new ArrayIndexOutOfBoundsException(sb2.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzdnb, com.google.android.gms.internal.ads.zzdmr
    final byte zzfn(int i) {
        return this.zzhcy[this.zzhcv + i];
    }

    @Override // com.google.android.gms.internal.ads.zzdnb, com.google.android.gms.internal.ads.zzdmr
    public final int size() {
        return this.zzhcw;
    }

    @Override // com.google.android.gms.internal.ads.zzdnb
    protected final int zzavr() {
        return this.zzhcv;
    }

    @Override // com.google.android.gms.internal.ads.zzdnb, com.google.android.gms.internal.ads.zzdmr
    protected final void zza(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.zzhcy, zzavr(), bArr, 0, i3);
    }
}
