package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzim {
    private int[] zzahp;
    private long[] zzahq;
    private long[] zzahs;
    private int zzajq = 1000;
    private int[] zzajr;
    private byte[][] zzajs;
    private int zzajt;
    private int zzaju;
    private int zzajv;
    private int zzajw;

    public zzim() {
        int i = this.zzajq;
        this.zzahq = new long[i];
        this.zzahs = new long[i];
        this.zzajr = new int[i];
        this.zzahp = new int[i];
        this.zzajs = new byte[i][];
    }

    public final void clear() {
        this.zzaju = 0;
        this.zzajv = 0;
        this.zzajw = 0;
        this.zzajt = 0;
    }

    public final synchronized boolean zza(zzhm zzhmVar, zzin zzinVar) {
        if (this.zzajt == 0) {
            return false;
        }
        zzhmVar.zzaga = this.zzahs[this.zzajv];
        zzhmVar.size = this.zzahp[this.zzajv];
        zzhmVar.flags = this.zzajr[this.zzajv];
        zzinVar.zzajx = this.zzahq[this.zzajv];
        zzinVar.zzajy = this.zzajs[this.zzajv];
        return true;
    }

    public final synchronized long zzfv() {
        this.zzajt--;
        int i = this.zzajv;
        this.zzajv = i + 1;
        this.zzaju++;
        if (this.zzajv == this.zzajq) {
            this.zzajv = 0;
        }
        if (this.zzajt > 0) {
            return this.zzahq[this.zzajv];
        }
        return this.zzahp[i] + this.zzahq[i];
    }

    public final synchronized long zzdv(long j) {
        if (this.zzajt != 0 && j >= this.zzahs[this.zzajv]) {
            if (j > this.zzahs[(this.zzajw == 0 ? this.zzajq : this.zzajw) - 1]) {
                return -1L;
            }
            int i = this.zzajv;
            int i2 = -1;
            int i3 = 0;
            while (i != this.zzajw && this.zzahs[i] <= j) {
                if ((this.zzajr[i] & 1) != 0) {
                    i2 = i3;
                }
                i = (i + 1) % this.zzajq;
                i3++;
            }
            if (i2 == -1) {
                return -1L;
            }
            this.zzajt -= i2;
            this.zzajv = (this.zzajv + i2) % this.zzajq;
            this.zzaju += i2;
            return this.zzahq[this.zzajv];
        }
        return -1L;
    }

    public final synchronized void zza(long j, int i, long j2, int i2, byte[] bArr) {
        this.zzahs[this.zzajw] = j;
        this.zzahq[this.zzajw] = j2;
        this.zzahp[this.zzajw] = i2;
        this.zzajr[this.zzajw] = i;
        this.zzajs[this.zzajw] = bArr;
        this.zzajt++;
        if (this.zzajt == this.zzajq) {
            int i3 = this.zzajq + 1000;
            long[] jArr = new long[i3];
            long[] jArr2 = new long[i3];
            int[] iArr = new int[i3];
            int[] iArr2 = new int[i3];
            byte[][] bArr2 = new byte[i3][];
            int i4 = this.zzajq - this.zzajv;
            System.arraycopy(this.zzahq, this.zzajv, jArr, 0, i4);
            System.arraycopy(this.zzahs, this.zzajv, jArr2, 0, i4);
            System.arraycopy(this.zzajr, this.zzajv, iArr, 0, i4);
            System.arraycopy(this.zzahp, this.zzajv, iArr2, 0, i4);
            System.arraycopy(this.zzajs, this.zzajv, bArr2, 0, i4);
            int i5 = this.zzajv;
            System.arraycopy(this.zzahq, 0, jArr, i4, i5);
            System.arraycopy(this.zzahs, 0, jArr2, i4, i5);
            System.arraycopy(this.zzajr, 0, iArr, i4, i5);
            System.arraycopy(this.zzahp, 0, iArr2, i4, i5);
            System.arraycopy(this.zzajs, 0, bArr2, i4, i5);
            this.zzahq = jArr;
            this.zzahs = jArr2;
            this.zzajr = iArr;
            this.zzahp = iArr2;
            this.zzajs = bArr2;
            this.zzajv = 0;
            this.zzajw = this.zzajq;
            this.zzajt = this.zzajq;
            this.zzajq = i3;
            return;
        }
        this.zzajw++;
        if (this.zzajw == this.zzajq) {
            this.zzajw = 0;
        }
    }
}
