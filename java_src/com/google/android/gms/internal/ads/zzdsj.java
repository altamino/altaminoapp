package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrz;
import java.io.IOException;

/* loaded from: classes2.dex */
public final class zzdsj extends zzdrr<zzdsj> {
    private String[] zzhse;
    private String zzhsf;
    private Boolean zzhsg;
    private Boolean zzhsh;
    private byte[] zzhsi;
    public zzdsq zzhsj;
    public String[] zzhsk;
    public String[] zzhsl;
    public Integer zzhrv = null;
    private zzdrz.zza.zzc zzhrw = null;
    public String url = null;
    public String zzhrx = null;
    private String zzhry = null;
    public zzdsk zzhrz = null;
    public zzdsp[] zzhsa = zzdsp.zzbba();
    public String zzhsb = null;
    public zzdso zzhsc = null;
    private Boolean zzhsd = null;

    public zzdsj() {
        String[] strArr = zzdry.zzhog;
        this.zzhse = strArr;
        this.zzhsf = null;
        this.zzhsg = null;
        this.zzhsh = null;
        this.zzhsi = null;
        this.zzhsj = null;
        this.zzhsk = strArr;
        this.zzhsl = strArr;
        this.zzhno = null;
        this.zzhnx = -1;
    }

    @Override // com.google.android.gms.internal.ads.zzdrr, com.google.android.gms.internal.ads.zzdrw
    public final void zza(zzdrp zzdrpVar) throws IOException {
        String str = this.url;
        if (str != null) {
            zzdrpVar.zzf(1, str);
        }
        String str2 = this.zzhrx;
        if (str2 != null) {
            zzdrpVar.zzf(2, str2);
        }
        zzdsp[] zzdspVarArr = this.zzhsa;
        int i = 0;
        if (zzdspVarArr != null && zzdspVarArr.length > 0) {
            int i2 = 0;
            while (true) {
                zzdsp[] zzdspVarArr2 = this.zzhsa;
                if (i2 >= zzdspVarArr2.length) {
                    break;
                }
                zzdsp zzdspVar = zzdspVarArr2[i2];
                if (zzdspVar != null) {
                    zzdrpVar.zza(4, zzdspVar);
                }
                i2++;
            }
        }
        String[] strArr = this.zzhse;
        if (strArr != null && strArr.length > 0) {
            int i3 = 0;
            while (true) {
                String[] strArr2 = this.zzhse;
                if (i3 >= strArr2.length) {
                    break;
                }
                String str3 = strArr2[i3];
                if (str3 != null) {
                    zzdrpVar.zzf(6, str3);
                }
                i3++;
            }
        }
        Integer num = this.zzhrv;
        if (num != null) {
            zzdrpVar.zzx(10, num.intValue());
        }
        zzdsk zzdskVar = this.zzhrz;
        if (zzdskVar != null) {
            zzdrpVar.zza(12, zzdskVar);
        }
        String str4 = this.zzhsb;
        if (str4 != null) {
            zzdrpVar.zzf(13, str4);
        }
        zzdso zzdsoVar = this.zzhsc;
        if (zzdsoVar != null) {
            zzdrpVar.zza(14, zzdsoVar);
        }
        zzdsq zzdsqVar = this.zzhsj;
        if (zzdsqVar != null) {
            zzdrpVar.zza(17, zzdsqVar);
        }
        String[] strArr3 = this.zzhsk;
        if (strArr3 != null && strArr3.length > 0) {
            int i4 = 0;
            while (true) {
                String[] strArr4 = this.zzhsk;
                if (i4 >= strArr4.length) {
                    break;
                }
                String str5 = strArr4[i4];
                if (str5 != null) {
                    zzdrpVar.zzf(20, str5);
                }
                i4++;
            }
        }
        String[] strArr5 = this.zzhsl;
        if (strArr5 != null && strArr5.length > 0) {
            while (true) {
                String[] strArr6 = this.zzhsl;
                if (i >= strArr6.length) {
                    break;
                }
                String str6 = strArr6[i];
                if (str6 != null) {
                    zzdrpVar.zzf(21, str6);
                }
                i++;
            }
        }
        super.zza(zzdrpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdrr, com.google.android.gms.internal.ads.zzdrw
    protected final int zzor() {
        int iZzor = super.zzor();
        String str = this.url;
        if (str != null) {
            iZzor += zzdrp.zzg(1, str);
        }
        String str2 = this.zzhrx;
        if (str2 != null) {
            iZzor += zzdrp.zzg(2, str2);
        }
        zzdsp[] zzdspVarArr = this.zzhsa;
        int i = 0;
        if (zzdspVarArr != null && zzdspVarArr.length > 0) {
            int iZzb = iZzor;
            int i2 = 0;
            while (true) {
                zzdsp[] zzdspVarArr2 = this.zzhsa;
                if (i2 >= zzdspVarArr2.length) {
                    break;
                }
                zzdsp zzdspVar = zzdspVarArr2[i2];
                if (zzdspVar != null) {
                    iZzb += zzdrp.zzb(4, zzdspVar);
                }
                i2++;
            }
            iZzor = iZzb;
        }
        String[] strArr = this.zzhse;
        if (strArr != null && strArr.length > 0) {
            int i3 = 0;
            int iZzgx = 0;
            int i4 = 0;
            while (true) {
                String[] strArr2 = this.zzhse;
                if (i3 >= strArr2.length) {
                    break;
                }
                String str3 = strArr2[i3];
                if (str3 != null) {
                    i4++;
                    iZzgx += zzdrp.zzgx(str3);
                }
                i3++;
            }
            iZzor = iZzor + iZzgx + (i4 * 1);
        }
        Integer num = this.zzhrv;
        if (num != null) {
            iZzor += zzdrp.zzab(10, num.intValue());
        }
        zzdsk zzdskVar = this.zzhrz;
        if (zzdskVar != null) {
            iZzor += zzdrp.zzb(12, zzdskVar);
        }
        String str4 = this.zzhsb;
        if (str4 != null) {
            iZzor += zzdrp.zzg(13, str4);
        }
        zzdso zzdsoVar = this.zzhsc;
        if (zzdsoVar != null) {
            iZzor += zzdrp.zzb(14, zzdsoVar);
        }
        zzdsq zzdsqVar = this.zzhsj;
        if (zzdsqVar != null) {
            iZzor += zzdrp.zzb(17, zzdsqVar);
        }
        String[] strArr3 = this.zzhsk;
        if (strArr3 != null && strArr3.length > 0) {
            int i5 = 0;
            int iZzgx2 = 0;
            int i6 = 0;
            while (true) {
                String[] strArr4 = this.zzhsk;
                if (i5 >= strArr4.length) {
                    break;
                }
                String str5 = strArr4[i5];
                if (str5 != null) {
                    i6++;
                    iZzgx2 += zzdrp.zzgx(str5);
                }
                i5++;
            }
            iZzor = iZzor + iZzgx2 + (i6 * 2);
        }
        String[] strArr5 = this.zzhsl;
        if (strArr5 == null || strArr5.length <= 0) {
            return iZzor;
        }
        int iZzgx3 = 0;
        int i7 = 0;
        while (true) {
            String[] strArr6 = this.zzhsl;
            if (i >= strArr6.length) {
                return iZzor + iZzgx3 + (i7 * 2);
            }
            String str6 = strArr6[i];
            if (str6 != null) {
                i7++;
                iZzgx3 += zzdrp.zzgx(str6);
            }
            i++;
        }
    }
}
