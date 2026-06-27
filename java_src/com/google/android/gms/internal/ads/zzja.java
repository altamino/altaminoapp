package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Stack;

/* loaded from: classes2.dex */
final class zzja implements zzjd {
    private final byte[] zzanf = new byte[8];
    private final Stack<zzjc> zzang = new Stack<>();
    private final zzjf zzanh = new zzjf();
    private zzje zzani;
    private int zzanj;
    private int zzank;
    private long zzanl;

    zzja() {
    }

    @Override // com.google.android.gms.internal.ads.zzjd
    public final void zza(zzje zzjeVar) {
        this.zzani = zzjeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzjd
    public final void reset() {
        this.zzanj = 0;
        this.zzang.clear();
        this.zzanh.reset();
    }

    @Override // com.google.android.gms.internal.ads.zzjd
    public final boolean zza(zzie zzieVar) throws InterruptedException, IOException {
        double dLongBitsToDouble;
        zzkh.checkState(this.zzani != null);
        while (true) {
            if (!this.zzang.isEmpty() && zzieVar.getPosition() >= this.zzang.peek().zzanm) {
                this.zzani.zzy(this.zzang.pop().zzank);
                return true;
            }
            if (this.zzanj == 0) {
                long jZza = this.zzanh.zza(zzieVar, true, false);
                if (jZza == -1) {
                    return false;
                }
                this.zzank = (int) jZza;
                this.zzanj = 1;
            }
            if (this.zzanj == 1) {
                this.zzanl = this.zzanh.zza(zzieVar, false, true);
                this.zzanj = 2;
            }
            int iZzx = this.zzani.zzx(this.zzank);
            if (iZzx != 0) {
                if (iZzx == 1) {
                    long position = zzieVar.getPosition();
                    this.zzang.add(new zzjc(this.zzank, this.zzanl + position));
                    this.zzani.zzb(this.zzank, position, this.zzanl);
                    this.zzanj = 0;
                    return true;
                }
                if (iZzx == 2) {
                    long j = this.zzanl;
                    if (j > 8) {
                        StringBuilder sb = new StringBuilder(42);
                        sb.append("Invalid integer size: ");
                        sb.append(j);
                        throw new IllegalStateException(sb.toString());
                    }
                    this.zzani.zzc(this.zzank, zzc(zzieVar, (int) j));
                    this.zzanj = 0;
                    return true;
                }
                if (iZzx == 3) {
                    long j2 = this.zzanl;
                    if (j2 > 2147483647L) {
                        StringBuilder sb2 = new StringBuilder(41);
                        sb2.append("String element size: ");
                        sb2.append(j2);
                        throw new IllegalStateException(sb2.toString());
                    }
                    zzje zzjeVar = this.zzani;
                    int i = this.zzank;
                    int i2 = (int) j2;
                    byte[] bArr = new byte[i2];
                    zzieVar.readFully(bArr, 0, i2);
                    zzjeVar.zza(i, new String(bArr, Charset.forName(C.UTF8_NAME)));
                    this.zzanj = 0;
                    return true;
                }
                if (iZzx == 4) {
                    this.zzani.zza(this.zzank, (int) this.zzanl, zzieVar);
                    this.zzanj = 0;
                    return true;
                }
                if (iZzx == 5) {
                    long j3 = this.zzanl;
                    if (j3 != 4 && j3 != 8) {
                        StringBuilder sb3 = new StringBuilder(40);
                        sb3.append("Invalid float size: ");
                        sb3.append(j3);
                        throw new IllegalStateException(sb3.toString());
                    }
                    zzje zzjeVar2 = this.zzani;
                    int i3 = this.zzank;
                    int i4 = (int) this.zzanl;
                    long jZzc = zzc(zzieVar, i4);
                    if (i4 == 4) {
                        dLongBitsToDouble = Float.intBitsToFloat((int) jZzc);
                    } else {
                        dLongBitsToDouble = Double.longBitsToDouble(jZzc);
                    }
                    zzjeVar2.zza(i3, dLongBitsToDouble);
                    this.zzanj = 0;
                    return true;
                }
                StringBuilder sb4 = new StringBuilder(32);
                sb4.append("Invalid element type ");
                sb4.append(iZzx);
                throw new IllegalStateException(sb4.toString());
            }
            zzieVar.zzr((int) this.zzanl);
            this.zzanj = 0;
        }
    }

    private final long zzc(zzie zzieVar, int i) throws InterruptedException, IOException {
        zzieVar.readFully(this.zzanf, 0, i);
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            j = (j << 8) | (this.zzanf[i2] & 255);
        }
        return j;
    }
}
