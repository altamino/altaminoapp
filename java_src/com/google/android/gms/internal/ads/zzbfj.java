package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;

@zzard
/* loaded from: classes2.dex */
final class zzbfj implements zzrv {
    private Uri uri;
    private final long zzegg;
    private long zzegi;
    private final zzrv zzehm;
    private final zzrv zzehn;

    zzbfj(zzrv zzrvVar, int i, zzrv zzrvVar2) {
        this.zzehm = zzrvVar;
        this.zzegg = i;
        this.zzehn = zzrvVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzrv
    public final long zza(zzry zzryVar) throws IOException {
        zzry zzryVar2;
        zzry zzryVar3;
        this.uri = zzryVar.uri;
        long j = zzryVar.zzahv;
        long j2 = this.zzegg;
        if (j >= j2) {
            zzryVar2 = null;
        } else {
            long j3 = zzryVar.zzcd;
            zzryVar2 = new zzry(zzryVar.uri, j, j3 != -1 ? Math.min(j3, j2 - j) : j2 - j, null);
        }
        long j4 = zzryVar.zzcd;
        if (j4 == -1 || zzryVar.zzahv + j4 > this.zzegg) {
            long jMax = Math.max(this.zzegg, zzryVar.zzahv);
            long j5 = zzryVar.zzcd;
            zzryVar3 = new zzry(zzryVar.uri, jMax, j5 != -1 ? Math.min(j5, (zzryVar.zzahv + j5) - this.zzegg) : -1L, null);
        } else {
            zzryVar3 = null;
        }
        long jZza = zzryVar2 != null ? this.zzehm.zza(zzryVar2) : 0L;
        long jZza2 = zzryVar3 != null ? this.zzehn.zza(zzryVar3) : 0L;
        this.zzegi = zzryVar.zzahv;
        if (jZza == -1 || jZza2 == -1) {
            return -1L;
        }
        return jZza + jZza2;
    }

    @Override // com.google.android.gms.internal.ads.zzrv
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        long j = this.zzegi;
        long j2 = this.zzegg;
        if (j < j2) {
            i3 = this.zzehm.read(bArr, i, (int) Math.min(i2, j2 - j));
            this.zzegi += i3;
        } else {
            i3 = 0;
        }
        if (this.zzegi < this.zzegg) {
            return i3;
        }
        int i4 = this.zzehn.read(bArr, i + i3, i2 - i3);
        int i5 = i3 + i4;
        this.zzegi += i4;
        return i5;
    }

    @Override // com.google.android.gms.internal.ads.zzrv
    public final Uri getUri() {
        return this.uri;
    }

    @Override // com.google.android.gms.internal.ads.zzrv
    public final void close() throws IOException {
        this.zzehm.close();
        this.zzehn.close();
    }
}
