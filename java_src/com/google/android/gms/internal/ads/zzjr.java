package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* loaded from: classes2.dex */
public final class zzjr implements zzjl {
    private final int zzaph;
    private int zzapi;
    private int zzapj;
    private zzjk[] zzapk;

    public zzjr(int i) {
        zzkh.checkArgument(true);
        this.zzaph = 262144;
        this.zzapk = new zzjk[100];
    }

    @Override // com.google.android.gms.internal.ads.zzjl
    public final synchronized zzjk zzfy() {
        this.zzapi++;
        if (this.zzapj <= 0) {
            return new zzjk(new byte[this.zzaph], 0);
        }
        zzjk[] zzjkVarArr = this.zzapk;
        int i = this.zzapj - 1;
        this.zzapj = i;
        return zzjkVarArr[i];
    }

    @Override // com.google.android.gms.internal.ads.zzjl
    public final synchronized void zza(zzjk zzjkVar) {
        zzkh.checkArgument(zzjkVar.data.length == this.zzaph);
        this.zzapi--;
        if (this.zzapj == this.zzapk.length) {
            this.zzapk = (zzjk[]) Arrays.copyOf(this.zzapk, this.zzapk.length << 1);
        }
        zzjk[] zzjkVarArr = this.zzapk;
        int i = this.zzapj;
        this.zzapj = i + 1;
        zzjkVarArr[i] = zzjkVar;
        notifyAll();
    }

    public final synchronized void zzz(int i) {
        int iMax = Math.max(0, zzkq.zzb(0, this.zzaph) - this.zzapi);
        if (iMax < this.zzapj) {
            Arrays.fill(this.zzapk, iMax, this.zzapj, (Object) null);
            this.zzapj = iMax;
        }
    }

    private final synchronized int zzga() {
        return this.zzapi * this.zzaph;
    }

    @Override // com.google.android.gms.internal.ads.zzjl
    public final int zzfz() {
        return this.zzaph;
    }

    public final synchronized void zzaa(int i) throws InterruptedException {
        while (zzga() > i) {
            wait();
        }
    }
}
