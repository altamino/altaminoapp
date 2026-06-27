package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;

/* loaded from: classes2.dex */
class zzct implements zzcv {
    protected final zzby zzl;

    zzct(zzby zzbyVar) {
        Preconditions.checkNotNull(zzbyVar);
        this.zzl = zzbyVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzcv
    public zzq zzag() {
        return this.zzl.zzag();
    }

    public zzt zzaf() {
        return this.zzl.zzaf();
    }

    public zzbf zzae() {
        return this.zzl.zzae();
    }

    @Override // com.google.android.gms.measurement.internal.zzcv
    public zzau zzad() {
        return this.zzl.zzad();
    }

    @Override // com.google.android.gms.measurement.internal.zzcv
    public zzbt zzac() {
        return this.zzl.zzac();
    }

    public zzgd zzab() {
        return this.zzl.zzab();
    }

    public zzas zzaa() {
        return this.zzl.zzaa();
    }

    @Override // com.google.android.gms.measurement.internal.zzcv
    public Context getContext() {
        return this.zzl.getContext();
    }

    @Override // com.google.android.gms.measurement.internal.zzcv
    public Clock zzz() {
        return this.zzl.zzz();
    }

    public zzad zzy() {
        return this.zzl.zzy();
    }

    public void zzq() {
        this.zzl.zzac().zzq();
    }

    public void zzp() {
        this.zzl.zzac().zzp();
    }

    public void zzo() {
        this.zzl.zzo();
    }

    public void zzn() {
        this.zzl.zzn();
    }
}
