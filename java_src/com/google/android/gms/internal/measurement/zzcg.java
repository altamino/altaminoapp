package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* loaded from: classes2.dex */
public final class zzcg extends zzip<zzcg> {
    public zzch[] zzxl = zzch.zzjg();

    public zzcg() {
        this.zzand = null;
        this.zzanm = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzcg)) {
            return false;
        }
        zzcg zzcgVar = (zzcg) obj;
        if (!zzit.equals(this.zzxl, zzcgVar.zzxl)) {
            return false;
        }
        zzir zzirVar = this.zzand;
        if (zzirVar == null || zzirVar.isEmpty()) {
            zzir zzirVar2 = zzcgVar.zzand;
            return zzirVar2 == null || zzirVar2.isEmpty();
        }
        return this.zzand.equals(zzcgVar.zzand);
    }

    public final int hashCode() {
        int iHashCode = (((zzcg.class.getName().hashCode() + 527) * 31) + zzit.hashCode(this.zzxl)) * 31;
        zzir zzirVar = this.zzand;
        return iHashCode + ((zzirVar == null || zzirVar.isEmpty()) ? 0 : this.zzand.hashCode());
    }

    @Override // com.google.android.gms.internal.measurement.zzip, com.google.android.gms.internal.measurement.zziv
    public final void zza(zzin zzinVar) throws IOException {
        zzch[] zzchVarArr = this.zzxl;
        if (zzchVarArr != null && zzchVarArr.length > 0) {
            int i = 0;
            while (true) {
                zzch[] zzchVarArr2 = this.zzxl;
                if (i >= zzchVarArr2.length) {
                    break;
                }
                zzch zzchVar = zzchVarArr2[i];
                if (zzchVar != null) {
                    zzinVar.zza(1, zzchVar);
                }
                i++;
            }
        }
        super.zza(zzinVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzip, com.google.android.gms.internal.measurement.zziv
    protected final int zzja() {
        int iZzja = super.zzja();
        zzch[] zzchVarArr = this.zzxl;
        if (zzchVarArr != null && zzchVarArr.length > 0) {
            int i = 0;
            while (true) {
                zzch[] zzchVarArr2 = this.zzxl;
                if (i >= zzchVarArr2.length) {
                    break;
                }
                zzch zzchVar = zzchVarArr2[i];
                if (zzchVar != null) {
                    iZzja += zzin.zzb(1, zzchVar);
                }
                i++;
            }
        }
        return iZzja;
    }

    @Override // com.google.android.gms.internal.measurement.zziv
    public final /* synthetic */ zziv zza(zzim zzimVar) throws IOException {
        while (true) {
            int iZzkj = zzimVar.zzkj();
            if (iZzkj == 0) {
                return this;
            }
            if (iZzkj != 10) {
                if (!super.zza(zzimVar, iZzkj)) {
                    return this;
                }
            } else {
                int iZzb = zziy.zzb(zzimVar, 10);
                zzch[] zzchVarArr = this.zzxl;
                int length = zzchVarArr == null ? 0 : zzchVarArr.length;
                zzch[] zzchVarArr2 = new zzch[iZzb + length];
                if (length != 0) {
                    System.arraycopy(this.zzxl, 0, zzchVarArr2, 0, length);
                }
                while (length < zzchVarArr2.length - 1) {
                    zzchVarArr2[length] = new zzch();
                    zzimVar.zza(zzchVarArr2[length]);
                    zzimVar.zzkj();
                    length++;
                }
                zzchVarArr2[length] = new zzch();
                zzimVar.zza(zzchVarArr2[length]);
                this.zzxl = zzchVarArr2;
            }
        }
    }
}
