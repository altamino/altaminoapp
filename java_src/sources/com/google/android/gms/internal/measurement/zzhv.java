package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes6.dex */
final class zzhv {
    private final zzig zza;
    private final byte[] zzb;

    public final zzig zzb() {
        return this.zza;
    }

    private zzhv(int i10) {
        byte[] bArr = new byte[i10];
        this.zzb = bArr;
        this.zza = zzig.zzb(bArr);
    }

    public final zzhm zza() {
        this.zza.zzb();
        return new zzhw(this.zzb);
    }
}
