package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzwt;
import java.io.IOException;

/* loaded from: classes2.dex */
public final class zzxl extends zzdrr<zzxl> {
    public String zzceu = null;
    private zzwt.zzn zzcev = null;
    private Integer zzcew = null;
    public zzxo zzcex = null;
    private Integer zzcey = null;
    private zzwx zzcez = null;
    private zzwx zzcfa = null;
    private zzwx zzcfb = null;

    public zzxl() {
        this.zzhno = null;
        this.zzhnx = -1;
    }

    @Override // com.google.android.gms.internal.ads.zzdrr, com.google.android.gms.internal.ads.zzdrw
    public final void zza(zzdrp zzdrpVar) throws IOException {
        String str = this.zzceu;
        if (str != null) {
            zzdrpVar.zzf(1, str);
        }
        zzxo zzxoVar = this.zzcex;
        if (zzxoVar != null) {
            zzdrpVar.zza(4, zzxoVar);
        }
        super.zza(zzdrpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdrr, com.google.android.gms.internal.ads.zzdrw
    protected final int zzor() {
        int iZzor = super.zzor();
        String str = this.zzceu;
        if (str != null) {
            iZzor += zzdrp.zzg(1, str);
        }
        zzxo zzxoVar = this.zzcex;
        return zzxoVar != null ? iZzor + zzdrp.zzb(4, zzxoVar) : iZzor;
    }
}
