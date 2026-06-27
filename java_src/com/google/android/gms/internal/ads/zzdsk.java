package com.google.android.gms.internal.ads;

import java.io.IOException;

/* loaded from: classes2.dex */
public final class zzdsk extends zzdrr<zzdsk> {
    public String zzdrr = null;

    public zzdsk() {
        this.zzhno = null;
        this.zzhnx = -1;
    }

    @Override // com.google.android.gms.internal.ads.zzdrr, com.google.android.gms.internal.ads.zzdrw
    public final void zza(zzdrp zzdrpVar) throws IOException {
        String str = this.zzdrr;
        if (str != null) {
            zzdrpVar.zzf(1, str);
        }
        super.zza(zzdrpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdrr, com.google.android.gms.internal.ads.zzdrw
    protected final int zzor() {
        int iZzor = super.zzor();
        String str = this.zzdrr;
        return str != null ? iZzor + zzdrp.zzg(1, str) : iZzor;
    }
}
