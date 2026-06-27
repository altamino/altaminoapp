package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzbl;
import java.io.IOException;

/* loaded from: classes2.dex */
public final class zzcc extends zzip<zzcc> {
    public zzbl.zzb.EnumC0021zzb zzws = null;
    public String zzwt = null;
    public Boolean zzwu = null;
    public String[] zzwv = zziy.zzanv;

    public zzcc() {
        this.zzand = null;
        this.zzanm = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzcc)) {
            return false;
        }
        zzcc zzccVar = (zzcc) obj;
        zzbl.zzb.EnumC0021zzb enumC0021zzb = this.zzws;
        if (enumC0021zzb == null) {
            if (zzccVar.zzws != null) {
                return false;
            }
        } else if (!enumC0021zzb.equals(zzccVar.zzws)) {
            return false;
        }
        String str = this.zzwt;
        if (str == null) {
            if (zzccVar.zzwt != null) {
                return false;
            }
        } else if (!str.equals(zzccVar.zzwt)) {
            return false;
        }
        Boolean bool = this.zzwu;
        if (bool == null) {
            if (zzccVar.zzwu != null) {
                return false;
            }
        } else if (!bool.equals(zzccVar.zzwu)) {
            return false;
        }
        if (!zzit.equals(this.zzwv, zzccVar.zzwv)) {
            return false;
        }
        zzir zzirVar = this.zzand;
        if (zzirVar == null || zzirVar.isEmpty()) {
            zzir zzirVar2 = zzccVar.zzand;
            return zzirVar2 == null || zzirVar2.isEmpty();
        }
        return this.zzand.equals(zzccVar.zzand);
    }

    public final int hashCode() {
        int iHashCode = (zzcc.class.getName().hashCode() + 527) * 31;
        zzbl.zzb.EnumC0021zzb enumC0021zzb = this.zzws;
        int iHashCode2 = 0;
        int iHashCode3 = (iHashCode + (enumC0021zzb == null ? 0 : enumC0021zzb.hashCode())) * 31;
        String str = this.zzwt;
        int iHashCode4 = (iHashCode3 + (str == null ? 0 : str.hashCode())) * 31;
        Boolean bool = this.zzwu;
        int iHashCode5 = (((iHashCode4 + (bool == null ? 0 : bool.hashCode())) * 31) + zzit.hashCode(this.zzwv)) * 31;
        zzir zzirVar = this.zzand;
        if (zzirVar != null && !zzirVar.isEmpty()) {
            iHashCode2 = this.zzand.hashCode();
        }
        return iHashCode5 + iHashCode2;
    }

    @Override // com.google.android.gms.internal.measurement.zzip, com.google.android.gms.internal.measurement.zziv
    public final void zza(zzin zzinVar) throws IOException {
        zzbl.zzb.EnumC0021zzb enumC0021zzb = this.zzws;
        if (enumC0021zzb != null && enumC0021zzb != null) {
            zzinVar.zzc(1, enumC0021zzb.zzgp());
        }
        String str = this.zzwt;
        if (str != null) {
            zzinVar.zzb(2, str);
        }
        Boolean bool = this.zzwu;
        if (bool != null) {
            zzinVar.zzb(3, bool.booleanValue());
        }
        String[] strArr = this.zzwv;
        if (strArr != null && strArr.length > 0) {
            int i = 0;
            while (true) {
                String[] strArr2 = this.zzwv;
                if (i >= strArr2.length) {
                    break;
                }
                String str2 = strArr2[i];
                if (str2 != null) {
                    zzinVar.zzb(4, str2);
                }
                i++;
            }
        }
        super.zza(zzinVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzip, com.google.android.gms.internal.measurement.zziv
    protected final int zzja() {
        int iZzja = super.zzja();
        zzbl.zzb.EnumC0021zzb enumC0021zzb = this.zzws;
        if (enumC0021zzb != null && enumC0021zzb != null) {
            iZzja += zzin.zzg(1, enumC0021zzb.zzgp());
        }
        String str = this.zzwt;
        if (str != null) {
            iZzja += zzin.zzc(2, str);
        }
        Boolean bool = this.zzwu;
        if (bool != null) {
            bool.booleanValue();
            iZzja += zzin.zzaj(3) + 1;
        }
        String[] strArr = this.zzwv;
        if (strArr == null || strArr.length <= 0) {
            return iZzja;
        }
        int i = 0;
        int iZzcp = 0;
        int i2 = 0;
        while (true) {
            String[] strArr2 = this.zzwv;
            if (i >= strArr2.length) {
                return iZzja + iZzcp + (i2 * 1);
            }
            String str2 = strArr2[i];
            if (str2 != null) {
                i2++;
                iZzcp += zzin.zzcp(str2);
            }
            i++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zziv
    public final /* synthetic */ zziv zza(zzim zzimVar) throws IOException {
        while (true) {
            int iZzkj = zzimVar.zzkj();
            if (iZzkj == 0) {
                return this;
            }
            if (iZzkj == 8) {
                int position = zzimVar.getPosition();
                int iZzlb = zzimVar.zzlb();
                switch (iZzlb) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                        this.zzws = zzbl.zzb.EnumC0021zzb.zzg(iZzlb);
                        break;
                    default:
                        zzimVar.zzbj(position);
                        zza(zzimVar, iZzkj);
                        break;
                }
            } else if (iZzkj == 18) {
                this.zzwt = zzimVar.readString();
            } else if (iZzkj == 24) {
                this.zzwu = Boolean.valueOf(zzimVar.zzkp());
            } else if (iZzkj != 34) {
                if (!super.zza(zzimVar, iZzkj)) {
                    return this;
                }
            } else {
                int iZzb = zziy.zzb(zzimVar, 34);
                String[] strArr = this.zzwv;
                int length = strArr == null ? 0 : strArr.length;
                String[] strArr2 = new String[iZzb + length];
                if (length != 0) {
                    System.arraycopy(this.zzwv, 0, strArr2, 0, length);
                }
                while (length < strArr2.length - 1) {
                    strArr2[length] = zzimVar.readString();
                    zzimVar.zzkj();
                    length++;
                }
                strArr2[length] = zzimVar.readString();
                this.zzwv = strArr2;
            }
        }
    }
}
