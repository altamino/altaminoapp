package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* loaded from: classes2.dex */
public final class zzcd extends zzip<zzcd> {
    private static volatile zzcd[] zzww;
    public String name = null;
    public Boolean zzwx = null;
    public Boolean zzwy = null;
    public Integer zzwz = null;

    public static zzcd[] zzje() {
        if (zzww == null) {
            synchronized (zzit.zzanl) {
                if (zzww == null) {
                    zzww = new zzcd[0];
                }
            }
        }
        return zzww;
    }

    public zzcd() {
        this.zzand = null;
        this.zzanm = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzcd)) {
            return false;
        }
        zzcd zzcdVar = (zzcd) obj;
        String str = this.name;
        if (str == null) {
            if (zzcdVar.name != null) {
                return false;
            }
        } else if (!str.equals(zzcdVar.name)) {
            return false;
        }
        Boolean bool = this.zzwx;
        if (bool == null) {
            if (zzcdVar.zzwx != null) {
                return false;
            }
        } else if (!bool.equals(zzcdVar.zzwx)) {
            return false;
        }
        Boolean bool2 = this.zzwy;
        if (bool2 == null) {
            if (zzcdVar.zzwy != null) {
                return false;
            }
        } else if (!bool2.equals(zzcdVar.zzwy)) {
            return false;
        }
        Integer num = this.zzwz;
        if (num == null) {
            if (zzcdVar.zzwz != null) {
                return false;
            }
        } else if (!num.equals(zzcdVar.zzwz)) {
            return false;
        }
        zzir zzirVar = this.zzand;
        if (zzirVar == null || zzirVar.isEmpty()) {
            zzir zzirVar2 = zzcdVar.zzand;
            return zzirVar2 == null || zzirVar2.isEmpty();
        }
        return this.zzand.equals(zzcdVar.zzand);
    }

    public final int hashCode() {
        int iHashCode = (zzcd.class.getName().hashCode() + 527) * 31;
        String str = this.name;
        int iHashCode2 = 0;
        int iHashCode3 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Boolean bool = this.zzwx;
        int iHashCode4 = (iHashCode3 + (bool == null ? 0 : bool.hashCode())) * 31;
        Boolean bool2 = this.zzwy;
        int iHashCode5 = (iHashCode4 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Integer num = this.zzwz;
        int iHashCode6 = (iHashCode5 + (num == null ? 0 : num.hashCode())) * 31;
        zzir zzirVar = this.zzand;
        if (zzirVar != null && !zzirVar.isEmpty()) {
            iHashCode2 = this.zzand.hashCode();
        }
        return iHashCode6 + iHashCode2;
    }

    @Override // com.google.android.gms.internal.measurement.zzip, com.google.android.gms.internal.measurement.zziv
    public final void zza(zzin zzinVar) throws IOException {
        String str = this.name;
        if (str != null) {
            zzinVar.zzb(1, str);
        }
        Boolean bool = this.zzwx;
        if (bool != null) {
            zzinVar.zzb(2, bool.booleanValue());
        }
        Boolean bool2 = this.zzwy;
        if (bool2 != null) {
            zzinVar.zzb(3, bool2.booleanValue());
        }
        Integer num = this.zzwz;
        if (num != null) {
            zzinVar.zzc(4, num.intValue());
        }
        super.zza(zzinVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzip, com.google.android.gms.internal.measurement.zziv
    protected final int zzja() {
        int iZzja = super.zzja();
        String str = this.name;
        if (str != null) {
            iZzja += zzin.zzc(1, str);
        }
        Boolean bool = this.zzwx;
        if (bool != null) {
            bool.booleanValue();
            iZzja += zzin.zzaj(2) + 1;
        }
        Boolean bool2 = this.zzwy;
        if (bool2 != null) {
            bool2.booleanValue();
            iZzja += zzin.zzaj(3) + 1;
        }
        Integer num = this.zzwz;
        return num != null ? iZzja + zzin.zzg(4, num.intValue()) : iZzja;
    }

    @Override // com.google.android.gms.internal.measurement.zziv
    public final /* synthetic */ zziv zza(zzim zzimVar) throws IOException {
        while (true) {
            int iZzkj = zzimVar.zzkj();
            if (iZzkj == 0) {
                return this;
            }
            if (iZzkj == 10) {
                this.name = zzimVar.readString();
            } else if (iZzkj == 16) {
                this.zzwx = Boolean.valueOf(zzimVar.zzkp());
            } else if (iZzkj == 24) {
                this.zzwy = Boolean.valueOf(zzimVar.zzkp());
            } else if (iZzkj != 32) {
                if (!super.zza(zzimVar, iZzkj)) {
                    return this;
                }
            } else {
                this.zzwz = Integer.valueOf(zzimVar.zzlb());
            }
        }
    }
}
