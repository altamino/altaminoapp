package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class zznm implements zzno {
    private static final byte[] zzaht = new byte[4096];
    private long zzahv;
    private final zzrv zzazi;
    private final long zzazj;
    private byte[] zzazk = new byte[65536];
    private int zzazl;
    private int zzazm;

    public zznm(zzrv zzrvVar, long j, long j2) {
        this.zzazi = zzrvVar;
        this.zzahv = j;
        this.zzazj = j2;
    }

    @Override // com.google.android.gms.internal.ads.zzno
    public final int read(byte[] bArr, int i, int i2) throws InterruptedException, IOException {
        int iZzd = zzd(bArr, i, i2);
        if (iZzd == 0) {
            iZzd = zza(bArr, i, i2, 0, true);
        }
        zzau(iZzd);
        return iZzd;
    }

    @Override // com.google.android.gms.internal.ads.zzno
    public final boolean zza(byte[] bArr, int i, int i2, boolean z) throws InterruptedException, IOException {
        int iZzd = zzd(bArr, i, i2);
        while (iZzd < i2 && iZzd != -1) {
            iZzd = zza(bArr, i, i2, iZzd, z);
        }
        zzau(iZzd);
        return iZzd != -1;
    }

    @Override // com.google.android.gms.internal.ads.zzno
    public final void readFully(byte[] bArr, int i, int i2) throws InterruptedException, IOException {
        zza(bArr, i, i2, false);
    }

    @Override // com.google.android.gms.internal.ads.zzno
    public final int zzaq(int i) throws InterruptedException, IOException {
        int iZzas = zzas(i);
        if (iZzas == 0) {
            byte[] bArr = zzaht;
            iZzas = zza(bArr, 0, Math.min(i, bArr.length), 0, true);
        }
        zzau(iZzas);
        return iZzas;
    }

    @Override // com.google.android.gms.internal.ads.zzno
    public final void zzr(int i) throws InterruptedException, IOException {
        int iZzas = zzas(i);
        while (iZzas < i && iZzas != -1) {
            byte[] bArr = zzaht;
            iZzas = zza(bArr, -iZzas, Math.min(i, bArr.length + iZzas), iZzas, false);
        }
        zzau(iZzas);
    }

    @Override // com.google.android.gms.internal.ads.zzno
    public final void zzc(byte[] bArr, int i, int i2) throws InterruptedException, IOException {
        if (zze(i2, false)) {
            System.arraycopy(this.zzazk, this.zzazl - i2, bArr, i, i2);
        }
    }

    private final boolean zze(int i, boolean z) throws InterruptedException, IOException {
        int i2 = this.zzazl + i;
        byte[] bArr = this.zzazk;
        if (i2 > bArr.length) {
            this.zzazk = Arrays.copyOf(this.zzazk, zzsy.zzd(bArr.length << 1, 65536 + i2, i2 + 524288));
        }
        int iMin = Math.min(this.zzazm - this.zzazl, i);
        while (iMin < i) {
            iMin = zza(this.zzazk, this.zzazl, i, iMin, false);
            if (iMin == -1) {
                return false;
            }
        }
        this.zzazl += i;
        this.zzazm = Math.max(this.zzazm, this.zzazl);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzno
    public final void zzar(int i) throws InterruptedException, IOException {
        zze(i, false);
    }

    @Override // com.google.android.gms.internal.ads.zzno
    public final void zzig() {
        this.zzazl = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzno
    public final long getPosition() {
        return this.zzahv;
    }

    @Override // com.google.android.gms.internal.ads.zzno
    public final long getLength() {
        return this.zzazj;
    }

    private final int zzas(int i) {
        int iMin = Math.min(this.zzazm, i);
        zzat(iMin);
        return iMin;
    }

    private final int zzd(byte[] bArr, int i, int i2) {
        int i3 = this.zzazm;
        if (i3 == 0) {
            return 0;
        }
        int iMin = Math.min(i3, i2);
        System.arraycopy(this.zzazk, 0, bArr, i, iMin);
        zzat(iMin);
        return iMin;
    }

    private final void zzat(int i) {
        this.zzazm -= i;
        this.zzazl = 0;
        byte[] bArr = this.zzazk;
        int i2 = this.zzazm;
        if (i2 < bArr.length - 524288) {
            bArr = new byte[i2 + 65536];
        }
        System.arraycopy(this.zzazk, i, bArr, 0, this.zzazm);
        this.zzazk = bArr;
    }

    private final int zza(byte[] bArr, int i, int i2, int i3, boolean z) throws InterruptedException, IOException {
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        int i4 = this.zzazi.read(bArr, i + i3, i2 - i3);
        if (i4 != -1) {
            return i3 + i4;
        }
        if (i3 == 0 && z) {
            return -1;
        }
        throw new EOFException();
    }

    private final void zzau(int i) {
        if (i != -1) {
            this.zzahv += i;
        }
    }
}
