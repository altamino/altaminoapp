package com.google.android.gms.internal.ads;

import java.io.IOException;

/* loaded from: classes2.dex */
public class zzic implements zzip {
    private volatile zzhj zzado;
    private final zzik zzahw;
    private final zzhm zzahx = new zzhm(0);
    private boolean zzahy = true;
    private long zzahz = Long.MIN_VALUE;
    private long zzaia = Long.MIN_VALUE;
    private volatile long zzaib = Long.MIN_VALUE;

    public zzic(zzjl zzjlVar) {
        this.zzahw = new zzik(zzjlVar);
    }

    public final void clear() {
        this.zzahw.clear();
        this.zzahy = true;
        this.zzahz = Long.MIN_VALUE;
        this.zzaia = Long.MIN_VALUE;
        this.zzaib = Long.MIN_VALUE;
    }

    public final boolean zzfd() {
        return this.zzado != null;
    }

    public final zzhj zzfe() {
        return this.zzado;
    }

    public final long zzff() {
        return this.zzaib;
    }

    public final boolean isEmpty() {
        return !zzfg();
    }

    public final boolean zza(zzhm zzhmVar) {
        if (!zzfg()) {
            return false;
        }
        this.zzahw.zzc(zzhmVar);
        this.zzahy = false;
        this.zzahz = zzhmVar.zzaga;
        return true;
    }

    public final void zzdr(long j) {
        while (this.zzahw.zzb(this.zzahx) && this.zzahx.zzaga < j) {
            this.zzahw.zzfs();
            this.zzahy = true;
        }
        this.zzahz = Long.MIN_VALUE;
    }

    public final boolean zzds(long j) {
        return this.zzahw.zzds(j);
    }

    private final boolean zzfg() {
        boolean zZzb = this.zzahw.zzb(this.zzahx);
        if (this.zzahy) {
            while (zZzb && !this.zzahx.zzep()) {
                this.zzahw.zzfs();
                zZzb = this.zzahw.zzb(this.zzahx);
            }
        }
        if (!zZzb) {
            return false;
        }
        long j = this.zzaia;
        return j == Long.MIN_VALUE || this.zzahx.zzaga < j;
    }

    @Override // com.google.android.gms.internal.ads.zzip
    public final void zza(zzhj zzhjVar) {
        this.zzado = zzhjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzip
    public final int zza(zzie zzieVar, int i) throws InterruptedException, IOException {
        return this.zzahw.zzb(zzieVar, i);
    }

    @Override // com.google.android.gms.internal.ads.zzip
    public final void zza(zzkm zzkmVar, int i) {
        this.zzahw.zzb(zzkmVar, i);
    }

    @Override // com.google.android.gms.internal.ads.zzip
    public void zza(long j, int i, int i2, int i3, byte[] bArr) {
        this.zzaib = Math.max(this.zzaib, j);
        zzik zzikVar = this.zzahw;
        zzikVar.zza(j, i, (zzikVar.zzft() - i2) - i3, i2, bArr);
    }
}
