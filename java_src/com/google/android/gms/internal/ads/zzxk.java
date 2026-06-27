package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzwt;
import java.io.IOException;

/* loaded from: classes2.dex */
public final class zzxk extends zzdrr<zzxk> {
    public String zzcep = null;
    private zzwt.zza[] zzceq = new zzwt.zza[0];
    private zzwx zzcer = null;
    private zzwx zzces = null;
    private zzwx zzcet = null;

    public zzxk() {
        this.zzhno = null;
        this.zzhnx = -1;
    }

    @Override // com.google.android.gms.internal.ads.zzdrr, com.google.android.gms.internal.ads.zzdrw
    public final void zza(zzdrp zzdrpVar) throws IOException {
        String str = this.zzcep;
        if (str != null) {
            zzdrpVar.zzf(1, str);
        }
        zzwt.zza[] zzaVarArr = this.zzceq;
        if (zzaVarArr != null && zzaVarArr.length > 0) {
            int i = 0;
            while (true) {
                zzwt.zza[] zzaVarArr2 = this.zzceq;
                if (i >= zzaVarArr2.length) {
                    break;
                }
                zzwt.zza zzaVar = zzaVarArr2[i];
                if (zzaVar != null) {
                    zzdrpVar.zze(2, zzaVar);
                }
                i++;
            }
        }
        super.zza(zzdrpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdrr, com.google.android.gms.internal.ads.zzdrw
    protected final int zzor() {
        int iZzor = super.zzor();
        String str = this.zzcep;
        if (str != null) {
            iZzor += zzdrp.zzg(1, str);
        }
        zzwt.zza[] zzaVarArr = this.zzceq;
        if (zzaVarArr != null && zzaVarArr.length > 0) {
            int i = 0;
            while (true) {
                zzwt.zza[] zzaVarArr2 = this.zzceq;
                if (i >= zzaVarArr2.length) {
                    break;
                }
                zzwt.zza zzaVar = zzaVarArr2[i];
                if (zzaVar != null) {
                    iZzor += zzdni.zzc(2, zzaVar);
                }
                i++;
            }
        }
        return iZzor;
    }
}
