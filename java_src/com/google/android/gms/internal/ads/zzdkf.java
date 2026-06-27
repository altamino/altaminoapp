package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzdkf {
    private final zzdlj zzgyw;
    private final zzdlj zzgyx;

    public zzdkf(byte[] bArr, byte[] bArr2) {
        this.zzgyw = zzdlj.zzv(bArr);
        this.zzgyx = zzdlj.zzv(bArr2);
    }

    public final byte[] zzauw() {
        zzdlj zzdljVar = this.zzgyw;
        if (zzdljVar == null) {
            return null;
        }
        return zzdljVar.getBytes();
    }

    public final byte[] zzaux() {
        zzdlj zzdljVar = this.zzgyx;
        if (zzdljVar == null) {
            return null;
        }
        return zzdljVar.getBytes();
    }
}
