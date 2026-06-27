package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzbr;
import java.io.IOException;

/* loaded from: classes2.dex */
public final class zzce extends zzip<zzce> {
    public Long zzxa = null;
    public String zzch = null;
    private Integer zzxb = null;
    public zzbr.zza[] zzxc = new zzbr.zza[0];
    public zzcd[] zzxd = zzcd.zzje();
    public zzbx[] zzxe = zzbx.zziz();
    private String zzxf = null;
    public Boolean zzxg = null;

    public zzce() {
        this.zzand = null;
        this.zzanm = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzce)) {
            return false;
        }
        zzce zzceVar = (zzce) obj;
        Long l = this.zzxa;
        if (l == null) {
            if (zzceVar.zzxa != null) {
                return false;
            }
        } else if (!l.equals(zzceVar.zzxa)) {
            return false;
        }
        String str = this.zzch;
        if (str == null) {
            if (zzceVar.zzch != null) {
                return false;
            }
        } else if (!str.equals(zzceVar.zzch)) {
            return false;
        }
        Integer num = this.zzxb;
        if (num == null) {
            if (zzceVar.zzxb != null) {
                return false;
            }
        } else if (!num.equals(zzceVar.zzxb)) {
            return false;
        }
        if (!zzit.equals(this.zzxc, zzceVar.zzxc) || !zzit.equals(this.zzxd, zzceVar.zzxd) || !zzit.equals(this.zzxe, zzceVar.zzxe)) {
            return false;
        }
        String str2 = this.zzxf;
        if (str2 == null) {
            if (zzceVar.zzxf != null) {
                return false;
            }
        } else if (!str2.equals(zzceVar.zzxf)) {
            return false;
        }
        Boolean bool = this.zzxg;
        if (bool == null) {
            if (zzceVar.zzxg != null) {
                return false;
            }
        } else if (!bool.equals(zzceVar.zzxg)) {
            return false;
        }
        zzir zzirVar = this.zzand;
        if (zzirVar == null || zzirVar.isEmpty()) {
            zzir zzirVar2 = zzceVar.zzand;
            return zzirVar2 == null || zzirVar2.isEmpty();
        }
        return this.zzand.equals(zzceVar.zzand);
    }

    public final int hashCode() {
        int iHashCode = (zzce.class.getName().hashCode() + 527) * 31;
        Long l = this.zzxa;
        int iHashCode2 = 0;
        int iHashCode3 = (iHashCode + (l == null ? 0 : l.hashCode())) * 31;
        String str = this.zzch;
        int iHashCode4 = (iHashCode3 + (str == null ? 0 : str.hashCode())) * 31;
        Integer num = this.zzxb;
        int iHashCode5 = (((((((iHashCode4 + (num == null ? 0 : num.hashCode())) * 31) + zzit.hashCode(this.zzxc)) * 31) + zzit.hashCode(this.zzxd)) * 31) + zzit.hashCode(this.zzxe)) * 31;
        String str2 = this.zzxf;
        int iHashCode6 = (iHashCode5 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Boolean bool = this.zzxg;
        int iHashCode7 = (iHashCode6 + (bool == null ? 0 : bool.hashCode())) * 31;
        zzir zzirVar = this.zzand;
        if (zzirVar != null && !zzirVar.isEmpty()) {
            iHashCode2 = this.zzand.hashCode();
        }
        return iHashCode7 + iHashCode2;
    }

    @Override // com.google.android.gms.internal.measurement.zzip, com.google.android.gms.internal.measurement.zziv
    public final void zza(zzin zzinVar) throws IOException {
        Long l = this.zzxa;
        if (l != null) {
            zzinVar.zzi(1, l.longValue());
        }
        String str = this.zzch;
        if (str != null) {
            zzinVar.zzb(2, str);
        }
        Integer num = this.zzxb;
        if (num != null) {
            zzinVar.zzc(3, num.intValue());
        }
        zzbr.zza[] zzaVarArr = this.zzxc;
        int i = 0;
        if (zzaVarArr != null && zzaVarArr.length > 0) {
            int i2 = 0;
            while (true) {
                zzbr.zza[] zzaVarArr2 = this.zzxc;
                if (i2 >= zzaVarArr2.length) {
                    break;
                }
                zzbr.zza zzaVar = zzaVarArr2[i2];
                if (zzaVar != null) {
                    zzinVar.zze(4, zzaVar);
                }
                i2++;
            }
        }
        zzcd[] zzcdVarArr = this.zzxd;
        if (zzcdVarArr != null && zzcdVarArr.length > 0) {
            int i3 = 0;
            while (true) {
                zzcd[] zzcdVarArr2 = this.zzxd;
                if (i3 >= zzcdVarArr2.length) {
                    break;
                }
                zzcd zzcdVar = zzcdVarArr2[i3];
                if (zzcdVar != null) {
                    zzinVar.zza(5, zzcdVar);
                }
                i3++;
            }
        }
        zzbx[] zzbxVarArr = this.zzxe;
        if (zzbxVarArr != null && zzbxVarArr.length > 0) {
            while (true) {
                zzbx[] zzbxVarArr2 = this.zzxe;
                if (i >= zzbxVarArr2.length) {
                    break;
                }
                zzbx zzbxVar = zzbxVarArr2[i];
                if (zzbxVar != null) {
                    zzinVar.zza(6, zzbxVar);
                }
                i++;
            }
        }
        String str2 = this.zzxf;
        if (str2 != null) {
            zzinVar.zzb(7, str2);
        }
        Boolean bool = this.zzxg;
        if (bool != null) {
            zzinVar.zzb(8, bool.booleanValue());
        }
        super.zza(zzinVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzip, com.google.android.gms.internal.measurement.zziv
    protected final int zzja() {
        int iZzja = super.zzja();
        Long l = this.zzxa;
        if (l != null) {
            iZzja += zzin.zzd(1, l.longValue());
        }
        String str = this.zzch;
        if (str != null) {
            iZzja += zzin.zzc(2, str);
        }
        Integer num = this.zzxb;
        if (num != null) {
            iZzja += zzin.zzg(3, num.intValue());
        }
        zzbr.zza[] zzaVarArr = this.zzxc;
        int i = 0;
        if (zzaVarArr != null && zzaVarArr.length > 0) {
            int iZzc = iZzja;
            int i2 = 0;
            while (true) {
                zzbr.zza[] zzaVarArr2 = this.zzxc;
                if (i2 >= zzaVarArr2.length) {
                    break;
                }
                zzbr.zza zzaVar = zzaVarArr2[i2];
                if (zzaVar != null) {
                    iZzc += zzeg.zzc(4, zzaVar);
                }
                i2++;
            }
            iZzja = iZzc;
        }
        zzcd[] zzcdVarArr = this.zzxd;
        if (zzcdVarArr != null && zzcdVarArr.length > 0) {
            int iZzb = iZzja;
            int i3 = 0;
            while (true) {
                zzcd[] zzcdVarArr2 = this.zzxd;
                if (i3 >= zzcdVarArr2.length) {
                    break;
                }
                zzcd zzcdVar = zzcdVarArr2[i3];
                if (zzcdVar != null) {
                    iZzb += zzin.zzb(5, zzcdVar);
                }
                i3++;
            }
            iZzja = iZzb;
        }
        zzbx[] zzbxVarArr = this.zzxe;
        if (zzbxVarArr != null && zzbxVarArr.length > 0) {
            while (true) {
                zzbx[] zzbxVarArr2 = this.zzxe;
                if (i >= zzbxVarArr2.length) {
                    break;
                }
                zzbx zzbxVar = zzbxVarArr2[i];
                if (zzbxVar != null) {
                    iZzja += zzin.zzb(6, zzbxVar);
                }
                i++;
            }
        }
        String str2 = this.zzxf;
        if (str2 != null) {
            iZzja += zzin.zzc(7, str2);
        }
        Boolean bool = this.zzxg;
        if (bool == null) {
            return iZzja;
        }
        bool.booleanValue();
        return iZzja + zzin.zzaj(8) + 1;
    }

    @Override // com.google.android.gms.internal.measurement.zziv
    public final /* synthetic */ zziv zza(zzim zzimVar) throws IOException {
        while (true) {
            int iZzkj = zzimVar.zzkj();
            if (iZzkj == 0) {
                return this;
            }
            if (iZzkj == 8) {
                this.zzxa = Long.valueOf(zzimVar.zzlc());
            } else if (iZzkj == 18) {
                this.zzch = zzimVar.readString();
            } else if (iZzkj == 24) {
                this.zzxb = Integer.valueOf(zzimVar.zzlb());
            } else if (iZzkj == 34) {
                int iZzb = zziy.zzb(zzimVar, 34);
                zzbr.zza[] zzaVarArr = this.zzxc;
                int length = zzaVarArr == null ? 0 : zzaVarArr.length;
                zzbr.zza[] zzaVarArr2 = new zzbr.zza[iZzb + length];
                if (length != 0) {
                    System.arraycopy(this.zzxc, 0, zzaVarArr2, 0, length);
                }
                while (length < zzaVarArr2.length - 1) {
                    zzaVarArr2[length] = (zzbr.zza) zzimVar.zza(zzbr.zza.zzgs());
                    zzimVar.zzkj();
                    length++;
                }
                zzaVarArr2[length] = (zzbr.zza) zzimVar.zza(zzbr.zza.zzgs());
                this.zzxc = zzaVarArr2;
            } else if (iZzkj == 42) {
                int iZzb2 = zziy.zzb(zzimVar, 42);
                zzcd[] zzcdVarArr = this.zzxd;
                int length2 = zzcdVarArr == null ? 0 : zzcdVarArr.length;
                zzcd[] zzcdVarArr2 = new zzcd[iZzb2 + length2];
                if (length2 != 0) {
                    System.arraycopy(this.zzxd, 0, zzcdVarArr2, 0, length2);
                }
                while (length2 < zzcdVarArr2.length - 1) {
                    zzcdVarArr2[length2] = new zzcd();
                    zzimVar.zza(zzcdVarArr2[length2]);
                    zzimVar.zzkj();
                    length2++;
                }
                zzcdVarArr2[length2] = new zzcd();
                zzimVar.zza(zzcdVarArr2[length2]);
                this.zzxd = zzcdVarArr2;
            } else if (iZzkj == 50) {
                int iZzb3 = zziy.zzb(zzimVar, 50);
                zzbx[] zzbxVarArr = this.zzxe;
                int length3 = zzbxVarArr == null ? 0 : zzbxVarArr.length;
                zzbx[] zzbxVarArr2 = new zzbx[iZzb3 + length3];
                if (length3 != 0) {
                    System.arraycopy(this.zzxe, 0, zzbxVarArr2, 0, length3);
                }
                while (length3 < zzbxVarArr2.length - 1) {
                    zzbxVarArr2[length3] = new zzbx();
                    zzimVar.zza(zzbxVarArr2[length3]);
                    zzimVar.zzkj();
                    length3++;
                }
                zzbxVarArr2[length3] = new zzbx();
                zzimVar.zza(zzbxVarArr2[length3]);
                this.zzxe = zzbxVarArr2;
            } else if (iZzkj == 58) {
                this.zzxf = zzimVar.readString();
            } else if (iZzkj != 64) {
                if (!super.zza(zzimVar, iZzkj)) {
                    return this;
                }
            } else {
                this.zzxg = Boolean.valueOf(zzimVar.zzkp());
            }
        }
    }
}
