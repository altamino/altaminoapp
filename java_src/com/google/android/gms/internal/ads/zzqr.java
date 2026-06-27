package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzqr {
    private int length;
    private int[] zzahp;
    private long[] zzahq;
    private long[] zzahs;
    private int zzajq = 1000;
    private int[] zzajr;
    private int[] zzbjs;
    private zznx[] zzbjt;
    private zzlh[] zzbju;
    private int zzbjv;
    private int zzbjw;
    private int zzbjx;
    private long zzbjy;
    private long zzbjz;
    private boolean zzbka;
    private boolean zzbkb;
    private zzlh zzbkc;

    public zzqr() {
        int i = this.zzajq;
        this.zzbjs = new int[i];
        this.zzahq = new long[i];
        this.zzahs = new long[i];
        this.zzajr = new int[i];
        this.zzahp = new int[i];
        this.zzbjt = new zznx[i];
        this.zzbju = new zzlh[i];
        this.zzbjy = Long.MIN_VALUE;
        this.zzbjz = Long.MIN_VALUE;
        this.zzbkb = true;
        this.zzbka = true;
    }

    public final void zzjh() {
        this.zzbjv = 0;
        this.zzbjw = 0;
        this.zzbjx = 0;
        this.length = 0;
        this.zzbka = true;
    }

    public final void zzji() {
        this.zzbjy = Long.MIN_VALUE;
        this.zzbjz = Long.MIN_VALUE;
    }

    public final int zzjj() {
        return this.zzbjv + this.length;
    }

    public final synchronized boolean zzjk() {
        return this.length != 0;
    }

    public final synchronized zzlh zzjl() {
        if (this.zzbkb) {
            return null;
        }
        return this.zzbkc;
    }

    public final synchronized long zzje() {
        return Math.max(this.zzbjy, this.zzbjz);
    }

    public final synchronized int zza(zzlj zzljVar, zznd zzndVar, boolean z, boolean z2, zzlh zzlhVar, zzqs zzqsVar) {
        if (!zzjk()) {
            if (z2) {
                zzndVar.setFlags(4);
                return -4;
            }
            if (this.zzbkc == null || (!z && this.zzbkc == zzlhVar)) {
                return -3;
            }
            zzljVar.zzaue = this.zzbkc;
            return -5;
        }
        if (!z && this.zzbju[this.zzbjw] == zzlhVar) {
            if (zzndVar.zzde == null) {
                return -3;
            }
            zzndVar.zzaga = this.zzahs[this.zzbjw];
            zzndVar.setFlags(this.zzajr[this.zzbjw]);
            zzqsVar.size = this.zzahp[this.zzbjw];
            zzqsVar.zzajx = this.zzahq[this.zzbjw];
            zzqsVar.zzbbj = this.zzbjt[this.zzbjw];
            this.zzbjy = Math.max(this.zzbjy, zzndVar.zzaga);
            this.length--;
            this.zzbjw++;
            this.zzbjv++;
            if (this.zzbjw == this.zzajq) {
                this.zzbjw = 0;
            }
            zzqsVar.zzbkd = this.length > 0 ? this.zzahq[this.zzbjw] : zzqsVar.zzajx + zzqsVar.size;
            return -4;
        }
        zzljVar.zzaue = this.zzbju[this.zzbjw];
        return -5;
    }

    public final synchronized long zzjm() {
        if (!zzjk()) {
            return -1L;
        }
        int i = ((this.zzbjw + this.length) - 1) % this.zzajq;
        this.zzbjw = (this.zzbjw + this.length) % this.zzajq;
        this.zzbjv += this.length;
        this.length = 0;
        return this.zzahq[i] + this.zzahp[i];
    }

    public final synchronized long zzg(long j, boolean z) {
        if (zzjk() && j >= this.zzahs[this.zzbjw]) {
            if (j > this.zzbjz && !z) {
                return -1L;
            }
            int i = this.zzbjw;
            int i2 = -1;
            int i3 = 0;
            while (i != this.zzbjx && this.zzahs[i] <= j) {
                if ((this.zzajr[i] & 1) != 0) {
                    i2 = i3;
                }
                i = (i + 1) % this.zzajq;
                i3++;
            }
            if (i2 == -1) {
                return -1L;
            }
            this.zzbjw = (this.zzbjw + i2) % this.zzajq;
            this.zzbjv += i2;
            this.length -= i2;
            return this.zzahq[this.zzbjw];
        }
        return -1L;
    }

    public final synchronized boolean zzg(zzlh zzlhVar) {
        if (zzlhVar == null) {
            this.zzbkb = true;
            return false;
        }
        this.zzbkb = false;
        if (zzsy.zza(zzlhVar, this.zzbkc)) {
            return false;
        }
        this.zzbkc = zzlhVar;
        return true;
    }

    public final synchronized void zza(long j, int i, long j2, int i2, zznx zznxVar) {
        if (this.zzbka) {
            if ((i & 1) == 0) {
                return;
            } else {
                this.zzbka = false;
            }
        }
        zzsk.checkState(!this.zzbkb);
        zzep(j);
        this.zzahs[this.zzbjx] = j;
        this.zzahq[this.zzbjx] = j2;
        this.zzahp[this.zzbjx] = i2;
        this.zzajr[this.zzbjx] = i;
        this.zzbjt[this.zzbjx] = zznxVar;
        this.zzbju[this.zzbjx] = this.zzbkc;
        this.zzbjs[this.zzbjx] = 0;
        this.length++;
        if (this.length == this.zzajq) {
            int i3 = this.zzajq + 1000;
            int[] iArr = new int[i3];
            long[] jArr = new long[i3];
            long[] jArr2 = new long[i3];
            int[] iArr2 = new int[i3];
            int[] iArr3 = new int[i3];
            zznx[] zznxVarArr = new zznx[i3];
            zzlh[] zzlhVarArr = new zzlh[i3];
            int i4 = this.zzajq - this.zzbjw;
            System.arraycopy(this.zzahq, this.zzbjw, jArr, 0, i4);
            System.arraycopy(this.zzahs, this.zzbjw, jArr2, 0, i4);
            System.arraycopy(this.zzajr, this.zzbjw, iArr2, 0, i4);
            System.arraycopy(this.zzahp, this.zzbjw, iArr3, 0, i4);
            System.arraycopy(this.zzbjt, this.zzbjw, zznxVarArr, 0, i4);
            System.arraycopy(this.zzbju, this.zzbjw, zzlhVarArr, 0, i4);
            System.arraycopy(this.zzbjs, this.zzbjw, iArr, 0, i4);
            int i5 = this.zzbjw;
            System.arraycopy(this.zzahq, 0, jArr, i4, i5);
            System.arraycopy(this.zzahs, 0, jArr2, i4, i5);
            System.arraycopy(this.zzajr, 0, iArr2, i4, i5);
            System.arraycopy(this.zzahp, 0, iArr3, i4, i5);
            System.arraycopy(this.zzbjt, 0, zznxVarArr, i4, i5);
            System.arraycopy(this.zzbju, 0, zzlhVarArr, i4, i5);
            System.arraycopy(this.zzbjs, 0, iArr, i4, i5);
            this.zzahq = jArr;
            this.zzahs = jArr2;
            this.zzajr = iArr2;
            this.zzahp = iArr3;
            this.zzbjt = zznxVarArr;
            this.zzbju = zzlhVarArr;
            this.zzbjs = iArr;
            this.zzbjw = 0;
            this.zzbjx = this.zzajq;
            this.length = this.zzajq;
            this.zzajq = i3;
            return;
        }
        this.zzbjx++;
        if (this.zzbjx == this.zzajq) {
            this.zzbjx = 0;
        }
    }

    public final synchronized void zzep(long j) {
        this.zzbjz = Math.max(this.zzbjz, j);
    }
}
