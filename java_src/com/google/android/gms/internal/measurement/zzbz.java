package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* loaded from: classes2.dex */
public final class zzbz extends zzip<zzbz> {
    private static volatile zzbz[] zzwf;
    public zzcc zzwg = null;
    public zzca zzwh = null;
    public Boolean zzwi = null;
    public String zzwj = null;

    public static zzbz[] zzjc() {
        if (zzwf == null) {
            synchronized (zzit.zzanl) {
                if (zzwf == null) {
                    zzwf = new zzbz[0];
                }
            }
        }
        return zzwf;
    }

    public zzbz() {
        this.zzand = null;
        this.zzanm = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbz)) {
            return false;
        }
        zzbz zzbzVar = (zzbz) obj;
        zzcc zzccVar = this.zzwg;
        if (zzccVar == null) {
            if (zzbzVar.zzwg != null) {
                return false;
            }
        } else if (!zzccVar.equals(zzbzVar.zzwg)) {
            return false;
        }
        zzca zzcaVar = this.zzwh;
        if (zzcaVar == null) {
            if (zzbzVar.zzwh != null) {
                return false;
            }
        } else if (!zzcaVar.equals(zzbzVar.zzwh)) {
            return false;
        }
        Boolean bool = this.zzwi;
        if (bool == null) {
            if (zzbzVar.zzwi != null) {
                return false;
            }
        } else if (!bool.equals(zzbzVar.zzwi)) {
            return false;
        }
        String str = this.zzwj;
        if (str == null) {
            if (zzbzVar.zzwj != null) {
                return false;
            }
        } else if (!str.equals(zzbzVar.zzwj)) {
            return false;
        }
        zzir zzirVar = this.zzand;
        if (zzirVar == null || zzirVar.isEmpty()) {
            zzir zzirVar2 = zzbzVar.zzand;
            return zzirVar2 == null || zzirVar2.isEmpty();
        }
        return this.zzand.equals(zzbzVar.zzand);
    }

    public final int hashCode() {
        int iHashCode = zzbz.class.getName().hashCode() + 527;
        zzcc zzccVar = this.zzwg;
        int iHashCode2 = 0;
        int iHashCode3 = (iHashCode * 31) + (zzccVar == null ? 0 : zzccVar.hashCode());
        zzca zzcaVar = this.zzwh;
        int iHashCode4 = ((iHashCode3 * 31) + (zzcaVar == null ? 0 : zzcaVar.hashCode())) * 31;
        Boolean bool = this.zzwi;
        int iHashCode5 = (iHashCode4 + (bool == null ? 0 : bool.hashCode())) * 31;
        String str = this.zzwj;
        int iHashCode6 = (iHashCode5 + (str == null ? 0 : str.hashCode())) * 31;
        zzir zzirVar = this.zzand;
        if (zzirVar != null && !zzirVar.isEmpty()) {
            iHashCode2 = this.zzand.hashCode();
        }
        return iHashCode6 + iHashCode2;
    }

    @Override // com.google.android.gms.internal.measurement.zzip, com.google.android.gms.internal.measurement.zziv
    public final void zza(zzin zzinVar) throws IOException {
        zzcc zzccVar = this.zzwg;
        if (zzccVar != null) {
            zzinVar.zza(1, zzccVar);
        }
        zzca zzcaVar = this.zzwh;
        if (zzcaVar != null) {
            zzinVar.zza(2, zzcaVar);
        }
        Boolean bool = this.zzwi;
        if (bool != null) {
            zzinVar.zzb(3, bool.booleanValue());
        }
        String str = this.zzwj;
        if (str != null) {
            zzinVar.zzb(4, str);
        }
        super.zza(zzinVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzip, com.google.android.gms.internal.measurement.zziv
    protected final int zzja() {
        int iZzja = super.zzja();
        zzcc zzccVar = this.zzwg;
        if (zzccVar != null) {
            iZzja += zzin.zzb(1, zzccVar);
        }
        zzca zzcaVar = this.zzwh;
        if (zzcaVar != null) {
            iZzja += zzin.zzb(2, zzcaVar);
        }
        Boolean bool = this.zzwi;
        if (bool != null) {
            bool.booleanValue();
            iZzja += zzin.zzaj(3) + 1;
        }
        String str = this.zzwj;
        return str != null ? iZzja + zzin.zzc(4, str) : iZzja;
    }

    @Override // com.google.android.gms.internal.measurement.zziv
    public final /* synthetic */ zziv zza(zzim zzimVar) throws IOException {
        while (true) {
            int iZzkj = zzimVar.zzkj();
            if (iZzkj == 0) {
                return this;
            }
            if (iZzkj == 10) {
                if (this.zzwg == null) {
                    this.zzwg = new zzcc();
                }
                zzimVar.zza(this.zzwg);
            } else if (iZzkj == 18) {
                if (this.zzwh == null) {
                    this.zzwh = new zzca();
                }
                zzimVar.zza(this.zzwh);
            } else if (iZzkj == 24) {
                this.zzwi = Boolean.valueOf(zzimVar.zzkp());
            } else if (iZzkj != 34) {
                if (!super.zza(zzimVar, iZzkj)) {
                    return this;
                }
            } else {
                this.zzwj = zzimVar.readString();
            }
        }
    }
}
