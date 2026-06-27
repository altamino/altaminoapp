package com.google.android.gms.internal.ads;

import java.io.IOException;

/* loaded from: classes2.dex */
public final class zzdso extends zzdrr<zzdso> {
    public Integer zzhrv = null;
    public String mimeType = null;
    public byte[] zzhsu = null;

    public zzdso() {
        this.zzhno = null;
        this.zzhnx = -1;
    }

    @Override // com.google.android.gms.internal.ads.zzdrr, com.google.android.gms.internal.ads.zzdrw
    public final void zza(zzdrp zzdrpVar) throws IOException {
        Integer num = this.zzhrv;
        if (num != null) {
            zzdrpVar.zzx(1, num.intValue());
        }
        String str = this.mimeType;
        if (str != null) {
            zzdrpVar.zzf(2, str);
        }
        byte[] bArr = this.zzhsu;
        if (bArr != null) {
            zzdrpVar.zza(3, bArr);
        }
        super.zza(zzdrpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdrr, com.google.android.gms.internal.ads.zzdrw
    protected final int zzor() {
        int iZzor = super.zzor();
        Integer num = this.zzhrv;
        if (num != null) {
            iZzor += zzdrp.zzab(1, num.intValue());
        }
        String str = this.mimeType;
        if (str != null) {
            iZzor += zzdrp.zzg(2, str);
        }
        byte[] bArr = this.zzhsu;
        return bArr != null ? iZzor + zzdrp.zzb(3, bArr) : iZzor;
    }
}
