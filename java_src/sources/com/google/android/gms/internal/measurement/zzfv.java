package com.google.android.gms.internal.measurement;

import android.content.Context;
import com.google.common.base.l;
import com.google.common.base.u;

/* JADX INFO: loaded from: classes7.dex */
final class zzfv extends zzgu {
    private final Context zza;
    private final u<l<zzgh>> zzb;

    public final boolean equals(Object obj) {
        u<l<zzgh>> uVar;
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzgu) {
            zzgu zzguVar = (zzgu) obj;
            if (this.zza.equals(zzguVar.zza()) && ((uVar = this.zzb) != null ? uVar.equals(zzguVar.zzb()) : zzguVar.zzb() == null)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.zzgu
    final Context zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.measurement.zzgu
    final u<l<zzgh>> zzb() {
        return this.zzb;
    }

    public final int hashCode() {
        int iHashCode = (this.zza.hashCode() ^ 1000003) * 1000003;
        u<l<zzgh>> uVar = this.zzb;
        return iHashCode ^ (uVar == null ? 0 : uVar.hashCode());
    }

    public final String toString() {
        return "FlagsContext{context=" + String.valueOf(this.zza) + ", hermeticFileOverrides=" + String.valueOf(this.zzb) + "}";
    }

    zzfv(Context context, u<l<zzgh>> uVar) {
        if (context != null) {
            this.zza = context;
            this.zzb = uVar;
            return;
        }
        throw new NullPointerException("Null context");
    }
}
