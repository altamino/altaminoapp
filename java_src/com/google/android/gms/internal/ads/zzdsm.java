package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrz;
import java.io.IOException;

/* loaded from: classes2.dex */
public final class zzdsm extends zzdrr<zzdsm> {
    private zzdrz.zzb.zzd.C0013zzb zzhsp = null;
    public zzdsl[] zzhsq = zzdsl.zzbaz();
    private byte[] zzhsr = null;
    private byte[] zzhss = null;
    private Integer zzhst = null;

    public zzdsm() {
        this.zzhno = null;
        this.zzhnx = -1;
    }

    @Override // com.google.android.gms.internal.ads.zzdrr, com.google.android.gms.internal.ads.zzdrw
    public final void zza(zzdrp zzdrpVar) throws IOException {
        zzdsl[] zzdslVarArr = this.zzhsq;
        if (zzdslVarArr != null && zzdslVarArr.length > 0) {
            int i = 0;
            while (true) {
                zzdsl[] zzdslVarArr2 = this.zzhsq;
                if (i >= zzdslVarArr2.length) {
                    break;
                }
                zzdsl zzdslVar = zzdslVarArr2[i];
                if (zzdslVar != null) {
                    zzdrpVar.zza(2, zzdslVar);
                }
                i++;
            }
        }
        super.zza(zzdrpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdrr, com.google.android.gms.internal.ads.zzdrw
    protected final int zzor() {
        int iZzor = super.zzor();
        zzdsl[] zzdslVarArr = this.zzhsq;
        if (zzdslVarArr != null && zzdslVarArr.length > 0) {
            int i = 0;
            while (true) {
                zzdsl[] zzdslVarArr2 = this.zzhsq;
                if (i >= zzdslVarArr2.length) {
                    break;
                }
                zzdsl zzdslVar = zzdslVarArr2[i];
                if (zzdslVar != null) {
                    iZzor += zzdrp.zzb(2, zzdslVar);
                }
                i++;
            }
        }
        return iZzor;
    }
}
