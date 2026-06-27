package com.google.android.gms.internal.ads;

import java.io.IOException;

@zzard
/* loaded from: classes2.dex */
final class zzbej implements zzjp {
    private final zzjp zzegf;
    private final long zzegg;
    private final zzjp zzegh;
    private long zzegi;

    zzbej(zzjp zzjpVar, int i, zzjp zzjpVar2) {
        this.zzegf = zzjpVar;
        this.zzegg = i;
        this.zzegh = zzjpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzjp
    public final long zza(zzjq zzjqVar) throws IOException {
        zzjq zzjqVar2;
        zzjq zzjqVar3;
        long j = zzjqVar.zzahv;
        long j2 = this.zzegg;
        if (j >= j2) {
            zzjqVar2 = null;
        } else {
            long j3 = zzjqVar.zzcd;
            zzjqVar2 = new zzjq(zzjqVar.uri, j, j3 != -1 ? Math.min(j3, j2 - j) : j2 - j, null);
        }
        long j4 = zzjqVar.zzcd;
        if (j4 == -1 || zzjqVar.zzahv + j4 > this.zzegg) {
            long jMax = Math.max(this.zzegg, zzjqVar.zzahv);
            long j5 = zzjqVar.zzcd;
            zzjqVar3 = new zzjq(zzjqVar.uri, jMax, j5 != -1 ? Math.min(j5, (zzjqVar.zzahv + j5) - this.zzegg) : -1L, null);
        } else {
            zzjqVar3 = null;
        }
        long jZza = zzjqVar2 != null ? this.zzegf.zza(zzjqVar2) : 0L;
        long jZza2 = zzjqVar3 != null ? this.zzegh.zza(zzjqVar3) : 0L;
        this.zzegi = zzjqVar.zzahv;
        if (jZza == -1 || jZza2 == -1) {
            return -1L;
        }
        return jZza + jZza2;
    }

    @Override // com.google.android.gms.internal.ads.zzjp
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        long j = this.zzegi;
        long j2 = this.zzegg;
        if (j < j2) {
            i3 = this.zzegf.read(bArr, i, (int) Math.min(i2, j2 - j));
            this.zzegi += i3;
        } else {
            i3 = 0;
        }
        if (this.zzegi < this.zzegg) {
            return i3;
        }
        int i4 = this.zzegh.read(bArr, i + i3, i2 - i3);
        int i5 = i3 + i4;
        this.zzegi += i4;
        return i5;
    }

    @Override // com.google.android.gms.internal.ads.zzjp
    public final void close() throws IOException {
        this.zzegf.close();
        this.zzegh.close();
    }
}
