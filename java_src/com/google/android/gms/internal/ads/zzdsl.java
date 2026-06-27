package com.google.android.gms.internal.ads;

import java.io.IOException;

/* loaded from: classes2.dex */
public final class zzdsl extends zzdrr<zzdsl> {
    private static volatile zzdsl[] zzhsm;
    public byte[] zzhsn = null;
    public byte[] zzhso = null;

    public static zzdsl[] zzbaz() {
        if (zzhsm == null) {
            synchronized (zzdrv.zzhnw) {
                if (zzhsm == null) {
                    zzhsm = new zzdsl[0];
                }
            }
        }
        return zzhsm;
    }

    public zzdsl() {
        this.zzhno = null;
        this.zzhnx = -1;
    }

    @Override // com.google.android.gms.internal.ads.zzdrr, com.google.android.gms.internal.ads.zzdrw
    public final void zza(zzdrp zzdrpVar) throws IOException {
        zzdrpVar.zza(1, this.zzhsn);
        byte[] bArr = this.zzhso;
        if (bArr != null) {
            zzdrpVar.zza(2, bArr);
        }
        super.zza(zzdrpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdrr, com.google.android.gms.internal.ads.zzdrw
    protected final int zzor() {
        int iZzor = super.zzor() + zzdrp.zzb(1, this.zzhsn);
        byte[] bArr = this.zzhso;
        return bArr != null ? iZzor + zzdrp.zzb(2, bArr) : iZzor;
    }
}
