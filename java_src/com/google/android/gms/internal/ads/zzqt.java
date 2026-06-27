package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes2.dex */
public final class zzqt implements zznw {
    private final int zzajh;
    private long zzajn;
    private int zzajp;
    private final zzrt zzbic;
    private zzqu zzbkh;
    private zzqu zzbki;
    private zzlh zzbkj;
    private boolean zzbkk;
    private zzlh zzbkl;
    private zzqv zzbkm;
    private final zzqr zzbke = new zzqr();
    private final zzqs zzbkf = new zzqs();
    private final zzst zzbac = new zzst(32);
    private final AtomicInteger zzbkg = new AtomicInteger();

    public zzqt(zzrt zzrtVar) {
        this.zzbic = zzrtVar;
        this.zzajh = zzrtVar.zzfz();
        int i = this.zzajh;
        this.zzajp = i;
        this.zzbkh = new zzqu(0L, i);
        this.zzbki = this.zzbkh;
    }

    public final void zzk(boolean z) {
        int andSet = this.zzbkg.getAndSet(z ? 0 : 2);
        zzjh();
        this.zzbke.zzji();
        if (andSet == 2) {
            this.zzbkj = null;
        }
    }

    public final int zzjj() {
        return this.zzbke.zzjj();
    }

    public final void disable() {
        if (this.zzbkg.getAndSet(2) == 0) {
            zzjh();
        }
    }

    public final boolean zzjk() {
        return this.zzbke.zzjk();
    }

    public final zzlh zzjl() {
        return this.zzbke.zzjl();
    }

    public final long zzje() {
        return this.zzbke.zzje();
    }

    public final void zzjn() {
        long jZzjm = this.zzbke.zzjm();
        if (jZzjm != -1) {
            zzdu(jZzjm);
        }
    }

    public final boolean zzh(long j, boolean z) {
        long jZzg = this.zzbke.zzg(j, z);
        if (jZzg == -1) {
            return false;
        }
        zzdu(jZzg);
        return true;
    }

    public final int zza(zzlj zzljVar, zznd zzndVar, boolean z, boolean z2, long j) throws IllegalStateException {
        int unsignedShort;
        int iZza = this.zzbke.zza(zzljVar, zzndVar, z, z2, this.zzbkj, this.zzbkf);
        if (iZza == -5) {
            this.zzbkj = zzljVar.zzaue;
            return -5;
        }
        if (iZza != -4) {
            if (iZza == -3) {
                return -3;
            }
            throw new IllegalStateException();
        }
        if (!zzndVar.zzic()) {
            if (zzndVar.zzaga < j) {
                zzndVar.zzal(Integer.MIN_VALUE);
            }
            if (zzndVar.zzeo()) {
                zzqs zzqsVar = this.zzbkf;
                long j2 = zzqsVar.zzajx;
                this.zzbac.reset(1);
                zza(j2, this.zzbac.data, 1);
                long j3 = j2 + 1;
                byte b = this.zzbac.data[0];
                boolean z3 = (b & 128) != 0;
                int i = b & 127;
                zzmz zzmzVar = zzndVar.zzaze;
                if (zzmzVar.iv == null) {
                    zzmzVar.iv = new byte[16];
                }
                zza(j3, zzndVar.zzaze.iv, i);
                long j4 = j3 + i;
                if (z3) {
                    this.zzbac.reset(2);
                    zza(j4, this.zzbac.data, 2);
                    j4 += 2;
                    unsignedShort = this.zzbac.readUnsignedShort();
                } else {
                    unsignedShort = 1;
                }
                int[] iArr = zzndVar.zzaze.numBytesOfClearData;
                if (iArr == null || iArr.length < unsignedShort) {
                    iArr = new int[unsignedShort];
                }
                int[] iArr2 = iArr;
                int[] iArr3 = zzndVar.zzaze.numBytesOfEncryptedData;
                if (iArr3 == null || iArr3.length < unsignedShort) {
                    iArr3 = new int[unsignedShort];
                }
                int[] iArr4 = iArr3;
                if (z3) {
                    int i2 = unsignedShort * 6;
                    this.zzbac.reset(i2);
                    zza(j4, this.zzbac.data, i2);
                    j4 += i2;
                    this.zzbac.setPosition(0);
                    for (int i3 = 0; i3 < unsignedShort; i3++) {
                        iArr2[i3] = this.zzbac.readUnsignedShort();
                        iArr4[i3] = this.zzbac.zzgg();
                    }
                } else {
                    iArr2[0] = 0;
                    iArr4[0] = zzqsVar.size - ((int) (j4 - zzqsVar.zzajx));
                }
                zznx zznxVar = zzqsVar.zzbbj;
                zzmz zzmzVar2 = zzndVar.zzaze;
                zzmzVar2.set(unsignedShort, iArr2, iArr4, zznxVar.zzazq, zzmzVar2.iv, zznxVar.zzazp);
                long j5 = zzqsVar.zzajx;
                int i4 = (int) (j4 - j5);
                zzqsVar.zzajx = j5 + i4;
                zzqsVar.size -= i4;
            }
            zzndVar.zzan(this.zzbkf.size);
            zzqs zzqsVar2 = this.zzbkf;
            long j6 = zzqsVar2.zzajx;
            ByteBuffer byteBuffer = zzndVar.zzde;
            int i5 = zzqsVar2.size;
            zzdu(j6);
            while (i5 > 0) {
                int i6 = (int) (j6 - this.zzbkh.zzbkn);
                int iMin = Math.min(i5, this.zzajh - i6);
                zzrs zzrsVar = this.zzbkh.zzbkp;
                byteBuffer.put(zzrsVar.data, zzrsVar.zzbj(i6), iMin);
                j6 += iMin;
                i5 -= iMin;
                if (j6 == this.zzbkh.zzbdz) {
                    this.zzbic.zza(zzrsVar);
                    this.zzbkh = this.zzbkh.zzjq();
                }
            }
            zzdu(this.zzbkf.zzbkd);
        }
        return -4;
    }

    private final void zza(long j, byte[] bArr, int i) {
        zzdu(j);
        int i2 = 0;
        while (i2 < i) {
            int i3 = (int) (j - this.zzbkh.zzbkn);
            int iMin = Math.min(i - i2, this.zzajh - i3);
            zzrs zzrsVar = this.zzbkh.zzbkp;
            System.arraycopy(zzrsVar.data, zzrsVar.zzbj(i3), bArr, i2, iMin);
            j += iMin;
            i2 += iMin;
            if (j == this.zzbkh.zzbdz) {
                this.zzbic.zza(zzrsVar);
                this.zzbkh = this.zzbkh.zzjq();
            }
        }
    }

    private final void zzdu(long j) {
        while (true) {
            zzqu zzquVar = this.zzbkh;
            if (j < zzquVar.zzbdz) {
                return;
            }
            this.zzbic.zza(zzquVar.zzbkp);
            this.zzbkh = this.zzbkh.zzjq();
        }
    }

    public final void zza(zzqv zzqvVar) {
        this.zzbkm = zzqvVar;
    }

    @Override // com.google.android.gms.internal.ads.zznw
    public final void zze(zzlh zzlhVar) {
        zzlh zzlhVar2 = zzlhVar == null ? null : zzlhVar;
        boolean zZzg = this.zzbke.zzg(zzlhVar2);
        this.zzbkl = zzlhVar;
        this.zzbkk = false;
        zzqv zzqvVar = this.zzbkm;
        if (zzqvVar == null || !zZzg) {
            return;
        }
        zzqvVar.zzf(zzlhVar2);
    }

    @Override // com.google.android.gms.internal.ads.zznw
    public final int zza(zzno zznoVar, int i, boolean z) throws InterruptedException, IOException {
        if (!zzjo()) {
            int iZzaq = zznoVar.zzaq(i);
            if (iZzaq != -1) {
                return iZzaq;
            }
            throw new EOFException();
        }
        try {
            int iZzbe = zzbe(i);
            zzrs zzrsVar = this.zzbki.zzbkp;
            int i2 = zznoVar.read(zzrsVar.data, zzrsVar.zzbj(this.zzajp), iZzbe);
            if (i2 == -1) {
                throw new EOFException();
            }
            this.zzajp += i2;
            this.zzajn += i2;
            return i2;
        } finally {
            zzjp();
        }
    }

    @Override // com.google.android.gms.internal.ads.zznw
    public final void zza(zzst zzstVar, int i) {
        if (!zzjo()) {
            zzstVar.zzac(i);
            return;
        }
        while (i > 0) {
            int iZzbe = zzbe(i);
            zzrs zzrsVar = this.zzbki.zzbkp;
            zzstVar.zzb(zzrsVar.data, zzrsVar.zzbj(this.zzajp), iZzbe);
            this.zzajp += iZzbe;
            this.zzajn += iZzbe;
            i -= iZzbe;
        }
        zzjp();
    }

    @Override // com.google.android.gms.internal.ads.zznw
    public final void zza(long j, int i, int i2, int i3, zznx zznxVar) {
        if (!zzjo()) {
            this.zzbke.zzep(j);
            return;
        }
        try {
            this.zzbke.zza(j, i, this.zzajn - i2, i2, zznxVar);
        } finally {
            zzjp();
        }
    }

    private final boolean zzjo() {
        return this.zzbkg.compareAndSet(0, 1);
    }

    private final void zzjp() {
        if (this.zzbkg.compareAndSet(1, 0)) {
            return;
        }
        zzjh();
    }

    private final void zzjh() {
        this.zzbke.zzjh();
        zzqu zzquVarZzjq = this.zzbkh;
        if (zzquVarZzjq.zzbko) {
            zzqu zzquVar = this.zzbki;
            boolean z = zzquVar.zzbko;
            zzrs[] zzrsVarArr = new zzrs[(z ? 1 : 0) + (((int) (zzquVar.zzbkn - zzquVarZzjq.zzbkn)) / this.zzajh)];
            for (int i = 0; i < zzrsVarArr.length; i++) {
                zzrsVarArr[i] = zzquVarZzjq.zzbkp;
                zzquVarZzjq = zzquVarZzjq.zzjq();
            }
            this.zzbic.zza(zzrsVarArr);
        }
        this.zzbkh = new zzqu(0L, this.zzajh);
        this.zzbki = this.zzbkh;
        this.zzajn = 0L;
        this.zzajp = this.zzajh;
        this.zzbic.zzn();
    }

    private final int zzbe(int i) {
        if (this.zzajp == this.zzajh) {
            this.zzajp = 0;
            zzqu zzquVar = this.zzbki;
            if (zzquVar.zzbko) {
                this.zzbki = zzquVar.zzbkq;
            }
            zzqu zzquVar2 = this.zzbki;
            zzrs zzrsVarZzjt = this.zzbic.zzjt();
            zzqu zzquVar3 = new zzqu(this.zzbki.zzbdz, this.zzajh);
            zzquVar2.zzbkp = zzrsVarZzjt;
            zzquVar2.zzbkq = zzquVar3;
            zzquVar2.zzbko = true;
        }
        return Math.min(i, this.zzajh - this.zzajp);
    }
}
