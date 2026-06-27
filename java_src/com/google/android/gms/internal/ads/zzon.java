package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzon {
    public int index;
    public final int length;
    public long zzajx;
    public int zzbei;
    private final boolean zzbej;
    private final zzst zzbek;
    private final zzst zzbel;
    private int zzbem;
    private int zzben;

    public zzon(zzst zzstVar, zzst zzstVar2, boolean z) {
        this.zzbel = zzstVar;
        this.zzbek = zzstVar2;
        this.zzbej = z;
        zzstVar2.setPosition(12);
        this.length = zzstVar2.zzgg();
        zzstVar.setPosition(12);
        this.zzben = zzstVar.zzgg();
        zzsk.checkState(zzstVar.readInt() == 1, "first_chunk must be 1");
        this.index = -1;
    }

    public final boolean zzil() {
        int i = this.index + 1;
        this.index = i;
        if (i == this.length) {
            return false;
        }
        this.zzajx = this.zzbej ? this.zzbek.zzgh() : this.zzbek.zzge();
        if (this.index == this.zzbem) {
            this.zzbei = this.zzbel.zzgg();
            this.zzbel.zzac(4);
            int i2 = this.zzben - 1;
            this.zzben = i2;
            this.zzbem = i2 > 0 ? this.zzbel.zzgg() - 1 : -1;
        }
        return true;
    }
}
