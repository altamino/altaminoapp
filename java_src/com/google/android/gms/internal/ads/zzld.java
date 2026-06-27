package com.google.android.gms.internal.ads;

import android.util.Log;

/* loaded from: classes2.dex */
final class zzld {
    public final int index;
    public boolean zzacs;
    private final zzlo[] zzaro;
    private final zzrp zzarp;
    private final zzlp[] zzasi;
    private final zzll zzasj;
    private final zzql zzaso;
    public final zzqj zzasw;
    public final Object zzasx;
    public final zzqw[] zzasy;
    private final boolean[] zzasz;
    public final long zzata;
    public int zzatb;
    public long zzatc;
    public boolean zzatd;
    public boolean zzate;
    public zzld zzatf;
    public zzrr zzatg;
    private zzrr zzath;

    public zzld(zzlo[] zzloVarArr, zzlp[] zzlpVarArr, long j, zzrp zzrpVar, zzll zzllVar, zzql zzqlVar, Object obj, int i, int i2, boolean z, long j2) {
        this.zzaro = zzloVarArr;
        this.zzasi = zzlpVarArr;
        this.zzata = j;
        this.zzarp = zzrpVar;
        this.zzasj = zzllVar;
        this.zzaso = zzqlVar;
        this.zzasx = zzsk.checkNotNull(obj);
        this.index = i;
        this.zzatb = i2;
        this.zzatd = z;
        this.zzatc = j2;
        this.zzasy = new zzqw[zzloVarArr.length];
        this.zzasz = new boolean[zzloVarArr.length];
        this.zzasw = zzqlVar.zza(i2, zzllVar.zzhe());
    }

    public final long zzgz() {
        return this.zzata - this.zzatc;
    }

    public final void zzd(int i, boolean z) {
        this.zzatb = i;
        this.zzatd = z;
    }

    public final boolean zzha() {
        if (this.zzacs) {
            return !this.zzate || this.zzasw.zzdu() == Long.MIN_VALUE;
        }
        return false;
    }

    public final boolean zzhb() throws zzku {
        boolean z;
        zzrr zzrrVarZza = this.zzarp.zza(this.zzasi, this.zzasw.zziz());
        zzrr zzrrVar = this.zzath;
        if (zzrrVar == null) {
            z = false;
            break;
        }
        for (int i = 0; i < zzrrVarZza.zzblz.length; i++) {
            if (!zzrrVarZza.zza(zzrrVar, i)) {
                z = false;
                break;
            }
        }
        z = true;
        if (z) {
            return false;
        }
        this.zzatg = zzrrVarZza;
        return true;
    }

    public final long zze(long j, boolean z) {
        return zza(j, false, new boolean[this.zzaro.length]);
    }

    public final long zza(long j, boolean z, boolean[] zArr) {
        zzro zzroVar = this.zzatg.zzblz;
        int i = 0;
        while (true) {
            boolean z2 = true;
            if (i >= zzroVar.length) {
                break;
            }
            boolean[] zArr2 = this.zzasz;
            if (z || !this.zzatg.zza(this.zzath, i)) {
                z2 = false;
            }
            zArr2[i] = z2;
            i++;
        }
        long jZza = this.zzasw.zza(zzroVar.zzjs(), this.zzasz, this.zzasy, zArr, j);
        this.zzath = this.zzatg;
        this.zzate = false;
        int i2 = 0;
        while (true) {
            zzqw[] zzqwVarArr = this.zzasy;
            if (i2 < zzqwVarArr.length) {
                if (zzqwVarArr[i2] != null) {
                    zzsk.checkState(zzroVar.zzbi(i2) != null);
                    this.zzate = true;
                } else {
                    zzsk.checkState(zzroVar.zzbi(i2) == null);
                }
                i2++;
            } else {
                this.zzasj.zza(this.zzaro, this.zzatg.zzbly, zzroVar);
                return jZza;
            }
        }
    }

    public final void release() {
        try {
            this.zzaso.zzb(this.zzasw);
        } catch (RuntimeException e) {
            Log.e("ExoPlayerImplInternal", "Period release failed.", e);
        }
    }
}
