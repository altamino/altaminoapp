package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzwt;
import java.io.IOException;

/* loaded from: classes2.dex */
public final class zzxn extends zzdrr<zzxn> {
    private Integer zzcfc = null;
    public String zzcfd = null;
    private Integer zzcfe = null;
    private zzwx zzcff = null;
    private zzxo zzcfg = null;
    public long[] zzcfh = zzdry.zzhoc;
    public zzxl zzcfi = null;
    private zzxm zzcfj = null;
    private zzwt.zzg zzcfk = null;
    public zzxj zzcfl = null;
    public zzwt.zzi zzcfm = null;
    public zzwt.zzv zzcfn = null;

    public zzxn() {
        this.zzhno = null;
        this.zzhnx = -1;
    }

    @Override // com.google.android.gms.internal.ads.zzdrr, com.google.android.gms.internal.ads.zzdrw
    public final void zza(zzdrp zzdrpVar) throws IOException {
        String str = this.zzcfd;
        if (str != null) {
            zzdrpVar.zzf(10, str);
        }
        long[] jArr = this.zzcfh;
        if (jArr != null && jArr.length > 0) {
            int i = 0;
            while (true) {
                long[] jArr2 = this.zzcfh;
                if (i >= jArr2.length) {
                    break;
                }
                long j = jArr2[i];
                zzdrpVar.zzw(14, 0);
                zzdrpVar.zzfv(j);
                i++;
            }
        }
        zzxl zzxlVar = this.zzcfi;
        if (zzxlVar != null) {
            zzdrpVar.zza(15, zzxlVar);
        }
        zzxj zzxjVar = this.zzcfl;
        if (zzxjVar != null) {
            zzdrpVar.zza(18, zzxjVar);
        }
        zzwt.zzi zziVar = this.zzcfm;
        if (zziVar != null) {
            zzdrpVar.zze(19, zziVar);
        }
        zzwt.zzv zzvVar = this.zzcfn;
        if (zzvVar != null) {
            zzdrpVar.zze(20, zzvVar);
        }
        super.zza(zzdrpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdrr, com.google.android.gms.internal.ads.zzdrw
    protected final int zzor() {
        long[] jArr;
        int iZzor = super.zzor();
        String str = this.zzcfd;
        if (str != null) {
            iZzor += zzdrp.zzg(10, str);
        }
        long[] jArr2 = this.zzcfh;
        if (jArr2 != null && jArr2.length > 0) {
            int i = 0;
            int iZzfw = 0;
            while (true) {
                jArr = this.zzcfh;
                if (i >= jArr.length) {
                    break;
                }
                iZzfw += zzdrp.zzfw(jArr[i]);
                i++;
            }
            iZzor = iZzor + iZzfw + (jArr.length * 1);
        }
        zzxl zzxlVar = this.zzcfi;
        if (zzxlVar != null) {
            iZzor += zzdrp.zzb(15, zzxlVar);
        }
        zzxj zzxjVar = this.zzcfl;
        if (zzxjVar != null) {
            iZzor += zzdrp.zzb(18, zzxjVar);
        }
        zzwt.zzi zziVar = this.zzcfm;
        if (zziVar != null) {
            iZzor += zzdni.zzc(19, zziVar);
        }
        zzwt.zzv zzvVar = this.zzcfn;
        return zzvVar != null ? iZzor + zzdni.zzc(20, zzvVar) : iZzor;
    }
}
