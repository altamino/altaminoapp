package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* loaded from: classes2.dex */
public final class zzrz implements zzrt {
    private final int zzaph;
    private int zzapi;
    private final boolean zzbme;
    private final byte[] zzbmf;
    private final zzrs[] zzbmg;
    private int zzbmh;
    private int zzbmi;
    private zzrs[] zzbmj;

    public zzrz(boolean z, int i) {
        this(true, 65536, 0);
    }

    private zzrz(boolean z, int i, int i2) {
        zzsk.checkArgument(true);
        zzsk.checkArgument(true);
        this.zzbme = true;
        this.zzaph = 65536;
        this.zzbmi = 0;
        this.zzbmj = new zzrs[100];
        this.zzbmf = null;
        this.zzbmg = new zzrs[1];
    }

    public final synchronized void reset() {
        if (this.zzbme) {
            zzbl(0);
        }
    }

    public final synchronized void zzbl(int i) {
        boolean z = i < this.zzbmh;
        this.zzbmh = i;
        if (z) {
            zzn();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzrt
    public final synchronized zzrs zzjt() {
        zzrs zzrsVar;
        this.zzapi++;
        if (this.zzbmi > 0) {
            zzrs[] zzrsVarArr = this.zzbmj;
            int i = this.zzbmi - 1;
            this.zzbmi = i;
            zzrsVar = zzrsVarArr[i];
            this.zzbmj[this.zzbmi] = null;
        } else {
            zzrsVar = new zzrs(new byte[this.zzaph], 0);
        }
        return zzrsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzrt
    public final synchronized void zza(zzrs zzrsVar) {
        this.zzbmg[0] = zzrsVar;
        zza(this.zzbmg);
    }

    @Override // com.google.android.gms.internal.ads.zzrt
    public final synchronized void zza(zzrs[] zzrsVarArr) {
        if (this.zzbmi + zzrsVarArr.length >= this.zzbmj.length) {
            this.zzbmj = (zzrs[]) Arrays.copyOf(this.zzbmj, Math.max(this.zzbmj.length << 1, this.zzbmi + zzrsVarArr.length));
        }
        for (zzrs zzrsVar : zzrsVarArr) {
            zzsk.checkArgument(zzrsVar.data == null || zzrsVar.data.length == this.zzaph);
            zzrs[] zzrsVarArr2 = this.zzbmj;
            int i = this.zzbmi;
            this.zzbmi = i + 1;
            zzrsVarArr2[i] = zzrsVar;
        }
        this.zzapi -= zzrsVarArr.length;
        notifyAll();
    }

    @Override // com.google.android.gms.internal.ads.zzrt
    public final synchronized void zzn() {
        int iMax = Math.max(0, zzsy.zzb(this.zzbmh, this.zzaph) - this.zzapi);
        if (iMax >= this.zzbmi) {
            return;
        }
        Arrays.fill(this.zzbmj, iMax, this.zzbmi, (Object) null);
        this.zzbmi = iMax;
    }

    public final synchronized int zzga() {
        return this.zzapi * this.zzaph;
    }

    @Override // com.google.android.gms.internal.ads.zzrt
    public final int zzfz() {
        return this.zzaph;
    }
}
