package com.google.android.gms.internal.ads;

import java.io.IOException;

/* loaded from: classes2.dex */
public final class zzxo extends zzdrr<zzxo> {
    public Integer zzcfo = null;
    public Integer zzcfp = null;
    public Integer zzcfq = null;

    public zzxo() {
        this.zzhno = null;
        this.zzhnx = -1;
    }

    @Override // com.google.android.gms.internal.ads.zzdrr, com.google.android.gms.internal.ads.zzdrw
    public final void zza(zzdrp zzdrpVar) throws IOException {
        Integer num = this.zzcfo;
        if (num != null) {
            zzdrpVar.zzx(1, num.intValue());
        }
        Integer num2 = this.zzcfp;
        if (num2 != null) {
            zzdrpVar.zzx(2, num2.intValue());
        }
        Integer num3 = this.zzcfq;
        if (num3 != null) {
            zzdrpVar.zzx(3, num3.intValue());
        }
        super.zza(zzdrpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdrr, com.google.android.gms.internal.ads.zzdrw
    protected final int zzor() {
        int iZzor = super.zzor();
        Integer num = this.zzcfo;
        if (num != null) {
            iZzor += zzdrp.zzab(1, num.intValue());
        }
        Integer num2 = this.zzcfp;
        if (num2 != null) {
            iZzor += zzdrp.zzab(2, num2.intValue());
        }
        Integer num3 = this.zzcfq;
        return num3 != null ? iZzor + zzdrp.zzab(3, num3.intValue()) : iZzor;
    }
}
