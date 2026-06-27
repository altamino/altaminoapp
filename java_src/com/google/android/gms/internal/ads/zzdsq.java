package com.google.android.gms.internal.ads;

import java.io.IOException;

/* loaded from: classes2.dex */
public final class zzdsq extends zzdrr<zzdsq> {
    public String zzhte = null;
    public Long zzhtf = null;
    public Boolean zzhtg = null;

    public zzdsq() {
        this.zzhno = null;
        this.zzhnx = -1;
    }

    @Override // com.google.android.gms.internal.ads.zzdrr, com.google.android.gms.internal.ads.zzdrw
    public final void zza(zzdrp zzdrpVar) throws IOException {
        String str = this.zzhte;
        if (str != null) {
            zzdrpVar.zzf(1, str);
        }
        Long l = this.zzhtf;
        if (l != null) {
            long jLongValue = l.longValue();
            zzdrpVar.zzw(2, 0);
            zzdrpVar.zzfv(jLongValue);
        }
        Boolean bool = this.zzhtg;
        if (bool != null) {
            zzdrpVar.zzi(3, bool.booleanValue());
        }
        super.zza(zzdrpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdrr, com.google.android.gms.internal.ads.zzdrw
    protected final int zzor() {
        int iZzor = super.zzor();
        String str = this.zzhte;
        if (str != null) {
            iZzor += zzdrp.zzg(1, str);
        }
        Long l = this.zzhtf;
        if (l != null) {
            iZzor += zzdrp.zzgd(2) + zzdrp.zzfw(l.longValue());
        }
        Boolean bool = this.zzhtg;
        if (bool == null) {
            return iZzor;
        }
        bool.booleanValue();
        return iZzor + zzdrp.zzgd(3) + 1;
    }
}
