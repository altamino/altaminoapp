package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzoq implements zzoo {
    private final int zzand;
    private final zzst zzbea;
    private final int zzbeq;

    public zzoq(zzol zzolVar) {
        this.zzbea = zzolVar.zzbea;
        this.zzbea.setPosition(12);
        this.zzbeq = this.zzbea.zzgg();
        this.zzand = this.zzbea.zzgg();
    }

    @Override // com.google.android.gms.internal.ads.zzoo
    public final int zzim() {
        return this.zzand;
    }

    @Override // com.google.android.gms.internal.ads.zzoo
    public final int zzin() {
        int i = this.zzbeq;
        return i == 0 ? this.zzbea.zzgg() : i;
    }

    @Override // com.google.android.gms.internal.ads.zzoo
    public final boolean zzio() {
        return this.zzbeq != 0;
    }
}
