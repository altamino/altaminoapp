package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* loaded from: classes2.dex */
public final class zzbx extends zzip<zzbx> {
    private static volatile zzbx[] zzvt;
    public Integer zzvu = null;
    public zzcb[] zzvv = zzcb.zzjd();
    public zzby[] zzvw = zzby.zzjb();
    private Boolean zzvx = null;
    private Boolean zzvy = null;

    public static zzbx[] zziz() {
        if (zzvt == null) {
            synchronized (zzit.zzanl) {
                if (zzvt == null) {
                    zzvt = new zzbx[0];
                }
            }
        }
        return zzvt;
    }

    public zzbx() {
        this.zzand = null;
        this.zzanm = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbx)) {
            return false;
        }
        zzbx zzbxVar = (zzbx) obj;
        Integer num = this.zzvu;
        if (num == null) {
            if (zzbxVar.zzvu != null) {
                return false;
            }
        } else if (!num.equals(zzbxVar.zzvu)) {
            return false;
        }
        if (!zzit.equals(this.zzvv, zzbxVar.zzvv) || !zzit.equals(this.zzvw, zzbxVar.zzvw)) {
            return false;
        }
        Boolean bool = this.zzvx;
        if (bool == null) {
            if (zzbxVar.zzvx != null) {
                return false;
            }
        } else if (!bool.equals(zzbxVar.zzvx)) {
            return false;
        }
        Boolean bool2 = this.zzvy;
        if (bool2 == null) {
            if (zzbxVar.zzvy != null) {
                return false;
            }
        } else if (!bool2.equals(zzbxVar.zzvy)) {
            return false;
        }
        zzir zzirVar = this.zzand;
        if (zzirVar == null || zzirVar.isEmpty()) {
            zzir zzirVar2 = zzbxVar.zzand;
            return zzirVar2 == null || zzirVar2.isEmpty();
        }
        return this.zzand.equals(zzbxVar.zzand);
    }

    public final int hashCode() {
        int iHashCode = (zzbx.class.getName().hashCode() + 527) * 31;
        Integer num = this.zzvu;
        int iHashCode2 = 0;
        int iHashCode3 = (((((iHashCode + (num == null ? 0 : num.hashCode())) * 31) + zzit.hashCode(this.zzvv)) * 31) + zzit.hashCode(this.zzvw)) * 31;
        Boolean bool = this.zzvx;
        int iHashCode4 = (iHashCode3 + (bool == null ? 0 : bool.hashCode())) * 31;
        Boolean bool2 = this.zzvy;
        int iHashCode5 = (iHashCode4 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        zzir zzirVar = this.zzand;
        if (zzirVar != null && !zzirVar.isEmpty()) {
            iHashCode2 = this.zzand.hashCode();
        }
        return iHashCode5 + iHashCode2;
    }

    @Override // com.google.android.gms.internal.measurement.zzip, com.google.android.gms.internal.measurement.zziv
    public final void zza(zzin zzinVar) throws IOException {
        Integer num = this.zzvu;
        if (num != null) {
            zzinVar.zzc(1, num.intValue());
        }
        zzcb[] zzcbVarArr = this.zzvv;
        int i = 0;
        if (zzcbVarArr != null && zzcbVarArr.length > 0) {
            int i2 = 0;
            while (true) {
                zzcb[] zzcbVarArr2 = this.zzvv;
                if (i2 >= zzcbVarArr2.length) {
                    break;
                }
                zzcb zzcbVar = zzcbVarArr2[i2];
                if (zzcbVar != null) {
                    zzinVar.zza(2, zzcbVar);
                }
                i2++;
            }
        }
        zzby[] zzbyVarArr = this.zzvw;
        if (zzbyVarArr != null && zzbyVarArr.length > 0) {
            while (true) {
                zzby[] zzbyVarArr2 = this.zzvw;
                if (i >= zzbyVarArr2.length) {
                    break;
                }
                zzby zzbyVar = zzbyVarArr2[i];
                if (zzbyVar != null) {
                    zzinVar.zza(3, zzbyVar);
                }
                i++;
            }
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
        Integer num = this.zzvu;
        if (num != null) {
            iZzja += zzin.zzg(1, num.intValue());
        }
        zzcb[] zzcbVarArr = this.zzvv;
        int i = 0;
        if (zzcbVarArr != null && zzcbVarArr.length > 0) {
            int iZzb = iZzja;
            int i2 = 0;
            while (true) {
                zzcb[] zzcbVarArr2 = this.zzvv;
                if (i2 >= zzcbVarArr2.length) {
                    break;
                }
                zzcb zzcbVar = zzcbVarArr2[i2];
                if (zzcbVar != null) {
                    iZzb += zzin.zzb(2, zzcbVar);
                }
                i2++;
            }
            iZzja = iZzb;
        }
        zzby[] zzbyVarArr = this.zzvw;
        if (zzbyVarArr != null && zzbyVarArr.length > 0) {
            while (true) {
                zzby[] zzbyVarArr2 = this.zzvw;
                if (i >= zzbyVarArr2.length) {
                    break;
                }
                zzby zzbyVar = zzbyVarArr2[i];
                if (zzbyVar != null) {
                    iZzja += zzin.zzb(3, zzbyVar);
                }
                i++;
            }
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
                this.zzvu = Integer.valueOf(zzimVar.zzlb());
            } else if (iZzkj == 18) {
                int iZzb = zziy.zzb(zzimVar, 18);
                zzcb[] zzcbVarArr = this.zzvv;
                int length = zzcbVarArr == null ? 0 : zzcbVarArr.length;
                zzcb[] zzcbVarArr2 = new zzcb[iZzb + length];
                if (length != 0) {
                    System.arraycopy(this.zzvv, 0, zzcbVarArr2, 0, length);
                }
                while (length < zzcbVarArr2.length - 1) {
                    zzcbVarArr2[length] = new zzcb();
                    zzimVar.zza(zzcbVarArr2[length]);
                    zzimVar.zzkj();
                    length++;
                }
                zzcbVarArr2[length] = new zzcb();
                zzimVar.zza(zzcbVarArr2[length]);
                this.zzvv = zzcbVarArr2;
            } else if (iZzkj == 26) {
                int iZzb2 = zziy.zzb(zzimVar, 26);
                zzby[] zzbyVarArr = this.zzvw;
                int length2 = zzbyVarArr == null ? 0 : zzbyVarArr.length;
                zzby[] zzbyVarArr2 = new zzby[iZzb2 + length2];
                if (length2 != 0) {
                    System.arraycopy(this.zzvw, 0, zzbyVarArr2, 0, length2);
                }
                while (length2 < zzbyVarArr2.length - 1) {
                    zzbyVarArr2[length2] = new zzby();
                    zzimVar.zza(zzbyVarArr2[length2]);
                    zzimVar.zzkj();
                    length2++;
                }
                zzbyVarArr2[length2] = new zzby();
                zzimVar.zza(zzbyVarArr2[length2]);
                this.zzvw = zzbyVarArr2;
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
