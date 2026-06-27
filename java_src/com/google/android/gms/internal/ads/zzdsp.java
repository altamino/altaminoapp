package com.google.android.gms.internal.ads;

import java.io.IOException;

/* loaded from: classes2.dex */
public final class zzdsp extends zzdrr<zzdsp> {
    private static volatile zzdsp[] zzhsv;
    public Integer zzhsw = null;
    public String url = null;
    public zzdsm zzhsx = null;
    private zzdsn zzhsy = null;
    private Integer zzhsz = null;
    private int[] zzhta = zzdry.zzhjo;
    private String zzhtb = null;
    public Integer zzhtc = null;
    public String[] zzhtd = zzdry.zzhog;

    public static zzdsp[] zzbba() {
        if (zzhsv == null) {
            synchronized (zzdrv.zzhnw) {
                if (zzhsv == null) {
                    zzhsv = new zzdsp[0];
                }
            }
        }
        return zzhsv;
    }

    public zzdsp() {
        this.zzhno = null;
        this.zzhnx = -1;
    }

    @Override // com.google.android.gms.internal.ads.zzdrr, com.google.android.gms.internal.ads.zzdrw
    public final void zza(zzdrp zzdrpVar) throws IOException {
        zzdrpVar.zzx(1, this.zzhsw.intValue());
        String str = this.url;
        if (str != null) {
            zzdrpVar.zzf(2, str);
        }
        zzdsm zzdsmVar = this.zzhsx;
        if (zzdsmVar != null) {
            zzdrpVar.zza(3, zzdsmVar);
        }
        int[] iArr = this.zzhta;
        int i = 0;
        if (iArr != null && iArr.length > 0) {
            int i2 = 0;
            while (true) {
                int[] iArr2 = this.zzhta;
                if (i2 >= iArr2.length) {
                    break;
                }
                zzdrpVar.zzx(6, iArr2[i2]);
                i2++;
            }
        }
        Integer num = this.zzhtc;
        if (num != null) {
            zzdrpVar.zzx(8, num.intValue());
        }
        String[] strArr = this.zzhtd;
        if (strArr != null && strArr.length > 0) {
            while (true) {
                String[] strArr2 = this.zzhtd;
                if (i >= strArr2.length) {
                    break;
                }
                String str2 = strArr2[i];
                if (str2 != null) {
                    zzdrpVar.zzf(9, str2);
                }
                i++;
            }
        }
        super.zza(zzdrpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdrr, com.google.android.gms.internal.ads.zzdrw
    protected final int zzor() {
        int[] iArr;
        int iZzor = super.zzor() + zzdrp.zzab(1, this.zzhsw.intValue());
        String str = this.url;
        if (str != null) {
            iZzor += zzdrp.zzg(2, str);
        }
        zzdsm zzdsmVar = this.zzhsx;
        if (zzdsmVar != null) {
            iZzor += zzdrp.zzb(3, zzdsmVar);
        }
        int[] iArr2 = this.zzhta;
        int i = 0;
        if (iArr2 != null && iArr2.length > 0) {
            int i2 = 0;
            int iZzge = 0;
            while (true) {
                iArr = this.zzhta;
                if (i2 >= iArr.length) {
                    break;
                }
                iZzge += zzdrp.zzge(iArr[i2]);
                i2++;
            }
            iZzor = iZzor + iZzge + (iArr.length * 1);
        }
        Integer num = this.zzhtc;
        if (num != null) {
            iZzor += zzdrp.zzab(8, num.intValue());
        }
        String[] strArr = this.zzhtd;
        if (strArr == null || strArr.length <= 0) {
            return iZzor;
        }
        int iZzgx = 0;
        int i3 = 0;
        while (true) {
            String[] strArr2 = this.zzhtd;
            if (i >= strArr2.length) {
                return iZzor + iZzgx + (i3 * 1);
            }
            String str2 = strArr2[i];
            if (str2 != null) {
                i3++;
                iZzgx += zzdrp.zzgx(str2);
            }
            i++;
        }
    }
}
