package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzbl;
import java.io.IOException;

/* loaded from: classes2.dex */
public final class zzca extends zzip<zzca> {
    public zzbl.zza.zzb zzwk = null;
    public Boolean zzwl = null;
    public String zzwm = null;
    public String zzwn = null;
    public String zzwo = null;

    public zzca() {
        this.zzand = null;
        this.zzanm = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzca)) {
            return false;
        }
        zzca zzcaVar = (zzca) obj;
        zzbl.zza.zzb zzbVar = this.zzwk;
        if (zzbVar == null) {
            if (zzcaVar.zzwk != null) {
                return false;
            }
        } else if (!zzbVar.equals(zzcaVar.zzwk)) {
            return false;
        }
        Boolean bool = this.zzwl;
        if (bool == null) {
            if (zzcaVar.zzwl != null) {
                return false;
            }
        } else if (!bool.equals(zzcaVar.zzwl)) {
            return false;
        }
        String str = this.zzwm;
        if (str == null) {
            if (zzcaVar.zzwm != null) {
                return false;
            }
        } else if (!str.equals(zzcaVar.zzwm)) {
            return false;
        }
        String str2 = this.zzwn;
        if (str2 == null) {
            if (zzcaVar.zzwn != null) {
                return false;
            }
        } else if (!str2.equals(zzcaVar.zzwn)) {
            return false;
        }
        String str3 = this.zzwo;
        if (str3 == null) {
            if (zzcaVar.zzwo != null) {
                return false;
            }
        } else if (!str3.equals(zzcaVar.zzwo)) {
            return false;
        }
        zzir zzirVar = this.zzand;
        if (zzirVar == null || zzirVar.isEmpty()) {
            zzir zzirVar2 = zzcaVar.zzand;
            return zzirVar2 == null || zzirVar2.isEmpty();
        }
        return this.zzand.equals(zzcaVar.zzand);
    }

    public final int hashCode() {
        int iHashCode = (zzca.class.getName().hashCode() + 527) * 31;
        zzbl.zza.zzb zzbVar = this.zzwk;
        int iHashCode2 = 0;
        int iHashCode3 = (iHashCode + (zzbVar == null ? 0 : zzbVar.hashCode())) * 31;
        Boolean bool = this.zzwl;
        int iHashCode4 = (iHashCode3 + (bool == null ? 0 : bool.hashCode())) * 31;
        String str = this.zzwm;
        int iHashCode5 = (iHashCode4 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.zzwn;
        int iHashCode6 = (iHashCode5 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.zzwo;
        int iHashCode7 = (iHashCode6 + (str3 == null ? 0 : str3.hashCode())) * 31;
        zzir zzirVar = this.zzand;
        if (zzirVar != null && !zzirVar.isEmpty()) {
            iHashCode2 = this.zzand.hashCode();
        }
        return iHashCode7 + iHashCode2;
    }

    @Override // com.google.android.gms.internal.measurement.zzip, com.google.android.gms.internal.measurement.zziv
    public final void zza(zzin zzinVar) throws IOException {
        zzbl.zza.zzb zzbVar = this.zzwk;
        if (zzbVar != null && zzbVar != null) {
            zzinVar.zzc(1, zzbVar.zzgp());
        }
        Boolean bool = this.zzwl;
        if (bool != null) {
            zzinVar.zzb(2, bool.booleanValue());
        }
        String str = this.zzwm;
        if (str != null) {
            zzinVar.zzb(3, str);
        }
        String str2 = this.zzwn;
        if (str2 != null) {
            zzinVar.zzb(4, str2);
        }
        String str3 = this.zzwo;
        if (str3 != null) {
            zzinVar.zzb(5, str3);
        }
        super.zza(zzinVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzip, com.google.android.gms.internal.measurement.zziv
    protected final int zzja() {
        int iZzja = super.zzja();
        zzbl.zza.zzb zzbVar = this.zzwk;
        if (zzbVar != null && zzbVar != null) {
            iZzja += zzin.zzg(1, zzbVar.zzgp());
        }
        Boolean bool = this.zzwl;
        if (bool != null) {
            bool.booleanValue();
            iZzja += zzin.zzaj(2) + 1;
        }
        String str = this.zzwm;
        if (str != null) {
            iZzja += zzin.zzc(3, str);
        }
        String str2 = this.zzwn;
        if (str2 != null) {
            iZzja += zzin.zzc(4, str2);
        }
        String str3 = this.zzwo;
        return str3 != null ? iZzja + zzin.zzc(5, str3) : iZzja;
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
                if (iZzlb == 0 || iZzlb == 1 || iZzlb == 2 || iZzlb == 3 || iZzlb == 4) {
                    this.zzwk = zzbl.zza.zzb.zze(iZzlb);
                } else {
                    zzimVar.zzbj(position);
                    zza(zzimVar, iZzkj);
                }
            } else if (iZzkj == 16) {
                this.zzwl = Boolean.valueOf(zzimVar.zzkp());
            } else if (iZzkj == 26) {
                this.zzwm = zzimVar.readString();
            } else if (iZzkj == 34) {
                this.zzwn = zzimVar.readString();
            } else if (iZzkj != 42) {
                if (!super.zza(zzimVar, iZzkj)) {
                    return this;
                }
            } else {
                this.zzwo = zzimVar.readString();
            }
        }
    }
}
