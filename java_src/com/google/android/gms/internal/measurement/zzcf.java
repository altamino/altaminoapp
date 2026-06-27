package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzbt;
import java.io.IOException;

/* loaded from: classes2.dex */
public final class zzcf extends zzip<zzcf> {
    private static volatile zzcf[] zzxh;
    public zzbt.zzd[] zzxi = new zzbt.zzd[0];
    public String name = null;
    public Long zzxj = null;
    public Long zzxk = null;
    public Integer count = null;

    public static zzcf[] zzjf() {
        if (zzxh == null) {
            synchronized (zzit.zzanl) {
                if (zzxh == null) {
                    zzxh = new zzcf[0];
                }
            }
        }
        return zzxh;
    }

    public zzcf() {
        this.zzand = null;
        this.zzanm = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzcf)) {
            return false;
        }
        zzcf zzcfVar = (zzcf) obj;
        if (!zzit.equals(this.zzxi, zzcfVar.zzxi)) {
            return false;
        }
        String str = this.name;
        if (str == null) {
            if (zzcfVar.name != null) {
                return false;
            }
        } else if (!str.equals(zzcfVar.name)) {
            return false;
        }
        Long l = this.zzxj;
        if (l == null) {
            if (zzcfVar.zzxj != null) {
                return false;
            }
        } else if (!l.equals(zzcfVar.zzxj)) {
            return false;
        }
        Long l2 = this.zzxk;
        if (l2 == null) {
            if (zzcfVar.zzxk != null) {
                return false;
            }
        } else if (!l2.equals(zzcfVar.zzxk)) {
            return false;
        }
        Integer num = this.count;
        if (num == null) {
            if (zzcfVar.count != null) {
                return false;
            }
        } else if (!num.equals(zzcfVar.count)) {
            return false;
        }
        zzir zzirVar = this.zzand;
        if (zzirVar == null || zzirVar.isEmpty()) {
            zzir zzirVar2 = zzcfVar.zzand;
            return zzirVar2 == null || zzirVar2.isEmpty();
        }
        return this.zzand.equals(zzcfVar.zzand);
    }

    public final int hashCode() {
        int iHashCode = (((zzcf.class.getName().hashCode() + 527) * 31) + zzit.hashCode(this.zzxi)) * 31;
        String str = this.name;
        int iHashCode2 = 0;
        int iHashCode3 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Long l = this.zzxj;
        int iHashCode4 = (iHashCode3 + (l == null ? 0 : l.hashCode())) * 31;
        Long l2 = this.zzxk;
        int iHashCode5 = (iHashCode4 + (l2 == null ? 0 : l2.hashCode())) * 31;
        Integer num = this.count;
        int iHashCode6 = (iHashCode5 + (num == null ? 0 : num.hashCode())) * 31;
        zzir zzirVar = this.zzand;
        if (zzirVar != null && !zzirVar.isEmpty()) {
            iHashCode2 = this.zzand.hashCode();
        }
        return iHashCode6 + iHashCode2;
    }

    @Override // com.google.android.gms.internal.measurement.zzip, com.google.android.gms.internal.measurement.zziv
    public final void zza(zzin zzinVar) throws IOException {
        zzbt.zzd[] zzdVarArr = this.zzxi;
        if (zzdVarArr != null && zzdVarArr.length > 0) {
            int i = 0;
            while (true) {
                zzbt.zzd[] zzdVarArr2 = this.zzxi;
                if (i >= zzdVarArr2.length) {
                    break;
                }
                zzbt.zzd zzdVar = zzdVarArr2[i];
                if (zzdVar != null) {
                    zzinVar.zze(1, zzdVar);
                }
                i++;
            }
        }
        String str = this.name;
        if (str != null) {
            zzinVar.zzb(2, str);
        }
        Long l = this.zzxj;
        if (l != null) {
            zzinVar.zzi(3, l.longValue());
        }
        Long l2 = this.zzxk;
        if (l2 != null) {
            zzinVar.zzi(4, l2.longValue());
        }
        Integer num = this.count;
        if (num != null) {
            zzinVar.zzc(5, num.intValue());
        }
        super.zza(zzinVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzip, com.google.android.gms.internal.measurement.zziv
    protected final int zzja() {
        int iZzja = super.zzja();
        zzbt.zzd[] zzdVarArr = this.zzxi;
        if (zzdVarArr != null && zzdVarArr.length > 0) {
            int i = 0;
            while (true) {
                zzbt.zzd[] zzdVarArr2 = this.zzxi;
                if (i >= zzdVarArr2.length) {
                    break;
                }
                zzbt.zzd zzdVar = zzdVarArr2[i];
                if (zzdVar != null) {
                    iZzja += zzeg.zzc(1, zzdVar);
                }
                i++;
            }
        }
        String str = this.name;
        if (str != null) {
            iZzja += zzin.zzc(2, str);
        }
        Long l = this.zzxj;
        if (l != null) {
            iZzja += zzin.zzd(3, l.longValue());
        }
        Long l2 = this.zzxk;
        if (l2 != null) {
            iZzja += zzin.zzd(4, l2.longValue());
        }
        Integer num = this.count;
        return num != null ? iZzja + zzin.zzg(5, num.intValue()) : iZzja;
    }

    public static zzcf zze(byte[] bArr) throws zziu {
        return (zzcf) zziv.zza(new zzcf(), bArr);
    }

    @Override // com.google.android.gms.internal.measurement.zziv
    public final /* synthetic */ zziv zza(zzim zzimVar) throws IOException {
        while (true) {
            int iZzkj = zzimVar.zzkj();
            if (iZzkj == 0) {
                return this;
            }
            if (iZzkj == 10) {
                int iZzb = zziy.zzb(zzimVar, 10);
                zzbt.zzd[] zzdVarArr = this.zzxi;
                int length = zzdVarArr == null ? 0 : zzdVarArr.length;
                zzbt.zzd[] zzdVarArr2 = new zzbt.zzd[iZzb + length];
                if (length != 0) {
                    System.arraycopy(this.zzxi, 0, zzdVarArr2, 0, length);
                }
                while (length < zzdVarArr2.length - 1) {
                    zzdVarArr2[length] = (zzbt.zzd) zzimVar.zza(zzbt.zzd.zzgs());
                    zzimVar.zzkj();
                    length++;
                }
                zzdVarArr2[length] = (zzbt.zzd) zzimVar.zza(zzbt.zzd.zzgs());
                this.zzxi = zzdVarArr2;
            } else if (iZzkj == 18) {
                this.name = zzimVar.readString();
            } else if (iZzkj == 24) {
                this.zzxj = Long.valueOf(zzimVar.zzlc());
            } else if (iZzkj == 32) {
                this.zzxk = Long.valueOf(zzimVar.zzlc());
            } else if (iZzkj != 40) {
                if (!super.zza(zzimVar, iZzkj)) {
                    return this;
                }
            } else {
                this.count = Integer.valueOf(zzimVar.zzlb());
            }
        }
    }
}
