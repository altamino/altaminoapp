package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzwt;
import java.io.IOException;

/* loaded from: classes2.dex */
public final class zzxj extends zzdrr<zzxj> {
    public Integer zzcee = null;
    private zzwx zzcef = null;
    private zzwt.zzb zzceg = null;
    public zzxk zzceh = null;
    private zzwt.zza[] zzcei = new zzwt.zza[0];
    private zzwt.zzc zzcej = null;
    private zzwt.zzj zzcek = null;
    private zzwt.zzh zzcel = null;
    private zzwt.zze zzcem = null;
    private zzwt.zzf zzcen = null;
    private zzxp[] zzceo = zzxp.zzos();

    public zzxj() {
        this.zzhno = null;
        this.zzhnx = -1;
    }

    @Override // com.google.android.gms.internal.ads.zzdrr, com.google.android.gms.internal.ads.zzdrw
    public final void zza(zzdrp zzdrpVar) throws IOException {
        Integer num = this.zzcee;
        if (num != null) {
            zzdrpVar.zzx(7, num.intValue());
        }
        zzxk zzxkVar = this.zzceh;
        if (zzxkVar != null) {
            zzdrpVar.zza(10, zzxkVar);
        }
        zzwt.zza[] zzaVarArr = this.zzcei;
        int i = 0;
        if (zzaVarArr != null && zzaVarArr.length > 0) {
            int i2 = 0;
            while (true) {
                zzwt.zza[] zzaVarArr2 = this.zzcei;
                if (i2 >= zzaVarArr2.length) {
                    break;
                }
                zzwt.zza zzaVar = zzaVarArr2[i2];
                if (zzaVar != null) {
                    zzdrpVar.zze(11, zzaVar);
                }
                i2++;
            }
        }
        zzxp[] zzxpVarArr = this.zzceo;
        if (zzxpVarArr != null && zzxpVarArr.length > 0) {
            while (true) {
                zzxp[] zzxpVarArr2 = this.zzceo;
                if (i >= zzxpVarArr2.length) {
                    break;
                }
                zzxp zzxpVar = zzxpVarArr2[i];
                if (zzxpVar != null) {
                    zzdrpVar.zza(17, zzxpVar);
                }
                i++;
            }
        }
        super.zza(zzdrpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdrr, com.google.android.gms.internal.ads.zzdrw
    protected final int zzor() {
        int iZzor = super.zzor();
        Integer num = this.zzcee;
        if (num != null) {
            iZzor += zzdrp.zzab(7, num.intValue());
        }
        zzxk zzxkVar = this.zzceh;
        if (zzxkVar != null) {
            iZzor += zzdrp.zzb(10, zzxkVar);
        }
        zzwt.zza[] zzaVarArr = this.zzcei;
        int i = 0;
        if (zzaVarArr != null && zzaVarArr.length > 0) {
            int iZzc = iZzor;
            int i2 = 0;
            while (true) {
                zzwt.zza[] zzaVarArr2 = this.zzcei;
                if (i2 >= zzaVarArr2.length) {
                    break;
                }
                zzwt.zza zzaVar = zzaVarArr2[i2];
                if (zzaVar != null) {
                    iZzc += zzdni.zzc(11, zzaVar);
                }
                i2++;
            }
            iZzor = iZzc;
        }
        zzxp[] zzxpVarArr = this.zzceo;
        if (zzxpVarArr != null && zzxpVarArr.length > 0) {
            while (true) {
                zzxp[] zzxpVarArr2 = this.zzceo;
                if (i >= zzxpVarArr2.length) {
                    break;
                }
                zzxp zzxpVar = zzxpVarArr2[i];
                if (zzxpVar != null) {
                    iZzor += zzdrp.zzb(17, zzxpVar);
                }
                i++;
            }
        }
        return iZzor;
    }
}
