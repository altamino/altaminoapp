package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* loaded from: classes2.dex */
public final class zzcb extends zzip<zzcb> {
    private static volatile zzcb[] zzwp;
    public Integer zzwa = null;
    public String zzwq = null;
    public zzbz zzwr = null;
    public Boolean zzvx = null;
    public Boolean zzvy = null;

    public static zzcb[] zzjd() {
        if (zzwp == null) {
            synchronized (zzit.zzanl) {
                if (zzwp == null) {
                    zzwp = new zzcb[0];
                }
            }
        }
        return zzwp;
    }

    public zzcb() {
        this.zzand = null;
        this.zzanm = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzcb)) {
            return false;
        }
        zzcb zzcbVar = (zzcb) obj;
        Integer num = this.zzwa;
        if (num == null) {
            if (zzcbVar.zzwa != null) {
                return false;
            }
        } else if (!num.equals(zzcbVar.zzwa)) {
            return false;
        }
        String str = this.zzwq;
        if (str == null) {
            if (zzcbVar.zzwq != null) {
                return false;
            }
        } else if (!str.equals(zzcbVar.zzwq)) {
            return false;
        }
        zzbz zzbzVar = this.zzwr;
        if (zzbzVar == null) {
            if (zzcbVar.zzwr != null) {
                return false;
            }
        } else if (!zzbzVar.equals(zzcbVar.zzwr)) {
            return false;
        }
        Boolean bool = this.zzvx;
        if (bool == null) {
            if (zzcbVar.zzvx != null) {
                return false;
            }
        } else if (!bool.equals(zzcbVar.zzvx)) {
            return false;
        }
        Boolean bool2 = this.zzvy;
        if (bool2 == null) {
            if (zzcbVar.zzvy != null) {
                return false;
            }
        } else if (!bool2.equals(zzcbVar.zzvy)) {
            return false;
        }
        zzir zzirVar = this.zzand;
        if (zzirVar == null || zzirVar.isEmpty()) {
            zzir zzirVar2 = zzcbVar.zzand;
            return zzirVar2 == null || zzirVar2.isEmpty();
        }
        return this.zzand.equals(zzcbVar.zzand);
    }

    public final int hashCode() {
        int iHashCode = (zzcb.class.getName().hashCode() + 527) * 31;
        Integer num = this.zzwa;
        int iHashCode2 = 0;
        int iHashCode3 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        String str = this.zzwq;
        int iHashCode4 = iHashCode3 + (str == null ? 0 : str.hashCode());
        zzbz zzbzVar = this.zzwr;
        int iHashCode5 = ((iHashCode4 * 31) + (zzbzVar == null ? 0 : zzbzVar.hashCode())) * 31;
        Boolean bool = this.zzvx;
        int iHashCode6 = (iHashCode5 + (bool == null ? 0 : bool.hashCode())) * 31;
        Boolean bool2 = this.zzvy;
        int iHashCode7 = (iHashCode6 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        zzir zzirVar = this.zzand;
        if (zzirVar != null && !zzirVar.isEmpty()) {
            iHashCode2 = this.zzand.hashCode();
        }
        return iHashCode7 + iHashCode2;
    }

    @Override // com.google.android.gms.internal.measurement.zzip, com.google.android.gms.internal.measurement.zziv
    public final void zza(zzin zzinVar) throws IOException {
        Integer num = this.zzwa;
        if (num != null) {
            zzinVar.zzc(1, num.intValue());
        }
        String str = this.zzwq;
        if (str != null) {
            zzinVar.zzb(2, str);
        }
        zzbz zzbzVar = this.zzwr;
        if (zzbzVar != null) {
            zzinVar.zza(3, zzbzVar);
        }
        Boolean bool = this.zzvx;
        if (bool != null) {
            zzinVar.zzb(4, bool.booleanValue());
        }
        Boolean bool2 = this.zzvy;
        if (bool2 != null) {
            zzinVar.zzb(5, bool2.booleanValue());
        }
        super.zza(zzinVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzip, com.google.android.gms.internal.measurement.zziv
    protected final int zzja() {
        int iZzja = super.zzja();
        Integer num = this.zzwa;
        if (num != null) {
            iZzja += zzin.zzg(1, num.intValue());
        }
        String str = this.zzwq;
        if (str != null) {
            iZzja += zzin.zzc(2, str);
        }
        zzbz zzbzVar = this.zzwr;
        if (zzbzVar != null) {
            iZzja += zzin.zzb(3, zzbzVar);
        }
        Boolean bool = this.zzvx;
        if (bool != null) {
            bool.booleanValue();
            iZzja += zzin.zzaj(4) + 1;
        }
        Boolean bool2 = this.zzvy;
        if (bool2 == null) {
            return iZzja;
        }
        bool2.booleanValue();
        return iZzja + zzin.zzaj(5) + 1;
    }

    @Override // com.google.android.gms.internal.measurement.zziv
    public final /* synthetic */ zziv zza(zzim zzimVar) throws IOException {
        while (true) {
            int iZzkj = zzimVar.zzkj();
            if (iZzkj == 0) {
                return this;
            }
            if (iZzkj == 8) {
                this.zzwa = Integer.valueOf(zzimVar.zzlb());
            } else if (iZzkj == 18) {
                this.zzwq = zzimVar.readString();
            } else if (iZzkj == 26) {
                if (this.zzwr == null) {
                    this.zzwr = new zzbz();
                }
                zzimVar.zza(this.zzwr);
            } else if (iZzkj == 32) {
                this.zzvx = Boolean.valueOf(zzimVar.zzkp());
            } else if (iZzkj != 40) {
                if (!super.zza(zzimVar, iZzkj)) {
                    return this;
                }
            } else {
                this.zzvy = Boolean.valueOf(zzimVar.zzkp());
            }
        }
    }
}
