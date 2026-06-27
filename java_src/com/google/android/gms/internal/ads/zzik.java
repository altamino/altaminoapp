package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.concurrent.LinkedBlockingDeque;

/* loaded from: classes2.dex */
final class zzik {
    private final zzjl zzajg;
    private final int zzajh;
    private final zzim zzaji = new zzim();
    private final LinkedBlockingDeque<zzjk> zzajj = new LinkedBlockingDeque<>();
    private final zzin zzajk = new zzin();
    private final zzkm zzajl = new zzkm(32);
    private long zzajm;
    private long zzajn;
    private zzjk zzajo;
    private int zzajp;

    public zzik(zzjl zzjlVar) {
        this.zzajg = zzjlVar;
        this.zzajh = zzjlVar.zzfz();
        this.zzajp = this.zzajh;
    }

    public final void clear() {
        this.zzaji.clear();
        while (!this.zzajj.isEmpty()) {
            this.zzajg.zza(this.zzajj.remove());
        }
        this.zzajm = 0L;
        this.zzajn = 0L;
        this.zzajo = null;
        this.zzajp = this.zzajh;
    }

    public final boolean zzb(zzhm zzhmVar) {
        return this.zzaji.zza(zzhmVar, this.zzajk);
    }

    public final void zzfs() {
        zzdu(this.zzaji.zzfv());
    }

    public final boolean zzds(long j) {
        long jZzdv = this.zzaji.zzdv(j);
        if (jZzdv == -1) {
            return false;
        }
        zzdu(jZzdv);
        return true;
    }

    public final boolean zzc(zzhm zzhmVar) {
        int unsignedShort;
        if (!this.zzaji.zza(zzhmVar, this.zzajk)) {
            return false;
        }
        if (zzhmVar.zzeo()) {
            zzin zzinVar = this.zzajk;
            long j = zzinVar.zzajx;
            zza(j, this.zzajl.data, 1);
            long j2 = j + 1;
            byte b = this.zzajl.data[0];
            boolean z = (b & 128) != 0;
            int i = b & 127;
            zzgb zzgbVar = zzhmVar.zzafz;
            if (zzgbVar.iv == null) {
                zzgbVar.iv = new byte[16];
            }
            zza(j2, zzhmVar.zzafz.iv, i);
            long j3 = j2 + i;
            if (z) {
                zza(j3, this.zzajl.data, 2);
                j3 += 2;
                this.zzajl.setPosition(0);
                unsignedShort = this.zzajl.readUnsignedShort();
            } else {
                unsignedShort = 1;
            }
            int[] iArr = zzhmVar.zzafz.numBytesOfClearData;
            if (iArr == null || iArr.length < unsignedShort) {
                iArr = new int[unsignedShort];
            }
            int[] iArr2 = iArr;
            int[] iArr3 = zzhmVar.zzafz.numBytesOfEncryptedData;
            if (iArr3 == null || iArr3.length < unsignedShort) {
                iArr3 = new int[unsignedShort];
            }
            int[] iArr4 = iArr3;
            if (z) {
                int i2 = unsignedShort * 6;
                zzkm zzkmVar = this.zzajl;
                if (zzkmVar.limit() < i2) {
                    zzkmVar.zzb(new byte[i2], i2);
                }
                zza(j3, this.zzajl.data, i2);
                j3 += i2;
                this.zzajl.setPosition(0);
                for (int i3 = 0; i3 < unsignedShort; i3++) {
                    iArr2[i3] = this.zzajl.readUnsignedShort();
                    iArr4[i3] = this.zzajl.zzgg();
                }
            } else {
                iArr2[0] = 0;
                iArr4[0] = zzhmVar.size - ((int) (j3 - zzinVar.zzajx));
            }
            zzgb zzgbVar2 = zzhmVar.zzafz;
            zzgbVar2.set(unsignedShort, iArr2, iArr4, zzinVar.zzajy, zzgbVar2.iv, 1);
            long j4 = zzinVar.zzajx;
            int i4 = (int) (j3 - j4);
            zzinVar.zzajx = j4 + i4;
            zzhmVar.size -= i4;
        }
        ByteBuffer byteBuffer = zzhmVar.zzde;
        if (byteBuffer == null || byteBuffer.capacity() < zzhmVar.size) {
            int i5 = zzhmVar.size;
        }
        ByteBuffer byteBuffer2 = zzhmVar.zzde;
        if (byteBuffer2 != null) {
            long j5 = this.zzajk.zzajx;
            int i6 = zzhmVar.size;
            while (i6 > 0) {
                zzdu(j5);
                int i7 = (int) (j5 - this.zzajm);
                int iMin = Math.min(i6, this.zzajh - i7);
                byteBuffer2.put(this.zzajj.peek().data, i7 + 0, iMin);
                j5 += iMin;
                i6 -= iMin;
            }
        }
        zzdu(this.zzaji.zzfv());
        return true;
    }

    private final void zza(long j, byte[] bArr, int i) {
        long j2 = j;
        int i2 = 0;
        while (i2 < i) {
            zzdu(j2);
            int i3 = (int) (j2 - this.zzajm);
            int iMin = Math.min(i - i2, this.zzajh - i3);
            System.arraycopy(this.zzajj.peek().data, i3 + 0, bArr, i2, iMin);
            j2 += iMin;
            i2 += iMin;
        }
    }

    private final void zzdu(long j) {
        int i = ((int) (j - this.zzajm)) / this.zzajh;
        for (int i2 = 0; i2 < i; i2++) {
            this.zzajg.zza(this.zzajj.remove());
            this.zzajm += this.zzajh;
        }
    }

    public final long zzft() {
        return this.zzajn;
    }

    public final int zzb(zzie zzieVar, int i) throws InterruptedException, IOException {
        zzfu();
        int iMin = Math.min(i, this.zzajh - this.zzajp);
        zzieVar.readFully(this.zzajo.data, this.zzajp + 0, iMin);
        this.zzajp += iMin;
        this.zzajn += iMin;
        return iMin;
    }

    public final void zzb(zzkm zzkmVar, int i) {
        int i2 = i;
        while (i2 > 0) {
            zzfu();
            int iMin = Math.min(i2, this.zzajh - this.zzajp);
            zzkmVar.zzb(this.zzajo.data, this.zzajp + 0, iMin);
            this.zzajp += iMin;
            i2 -= iMin;
        }
        this.zzajn += i;
    }

    public final void zza(long j, int i, long j2, int i2, byte[] bArr) {
        this.zzaji.zza(j, i, j2, i2, bArr);
    }

    private final void zzfu() {
        if (this.zzajp == this.zzajh) {
            this.zzajp = 0;
            this.zzajo = this.zzajg.zzfy();
            this.zzajj.add(this.zzajo);
        }
    }
}
