package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzip;
import java.io.IOException;

/* loaded from: classes2.dex */
public abstract class zzip<M extends zzip<M>> extends zziv {
    protected zzir zzand;

    @Override // com.google.android.gms.internal.measurement.zziv
    protected int zzja() {
        if (this.zzand == null) {
            return 0;
        }
        int iZzja = 0;
        for (int i = 0; i < this.zzand.size(); i++) {
            iZzja += this.zzand.zzbn(i).zzja();
        }
        return iZzja;
    }

    @Override // com.google.android.gms.internal.measurement.zziv
    public void zza(zzin zzinVar) throws IOException {
        if (this.zzand == null) {
            return;
        }
        for (int i = 0; i < this.zzand.size(); i++) {
            this.zzand.zzbn(i).zza(zzinVar);
        }
    }

    protected final boolean zza(zzim zzimVar, int i) throws IOException {
        int position = zzimVar.getPosition();
        if (!zzimVar.zzv(i)) {
            return false;
        }
        int i2 = i >>> 3;
        zzix zzixVar = new zzix(i, zzimVar.zzt(position, zzimVar.getPosition() - position));
        zzis zzisVarZzbm = null;
        zzir zzirVar = this.zzand;
        if (zzirVar == null) {
            this.zzand = new zzir();
        } else {
            zzisVarZzbm = zzirVar.zzbm(i2);
        }
        if (zzisVarZzbm == null) {
            zzisVarZzbm = new zzis();
            this.zzand.zza(i2, zzisVarZzbm);
        }
        zzisVarZzbm.zza(zzixVar);
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zziv
    /* renamed from: zzpe */
    public final /* synthetic */ zziv clone() throws CloneNotSupportedException {
        return (zzip) clone();
    }

    @Override // com.google.android.gms.internal.measurement.zziv
    public /* synthetic */ Object clone() throws CloneNotSupportedException {
        zzip zzipVar = (zzip) super.clone();
        zzit.zza(this, zzipVar);
        return zzipVar;
    }
}
