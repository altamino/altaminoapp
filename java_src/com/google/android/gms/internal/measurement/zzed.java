package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* loaded from: classes2.dex */
final class zzed extends zzeb {
    private final byte[] buffer;
    private int limit;
    private int pos;
    private final boolean zzacm;
    private int zzacn;
    private int zzaco;
    private int zzacp;
    private int zzacq;

    private zzed(byte[] bArr, int i, int i2, boolean z) {
        super();
        this.zzacq = Integer.MAX_VALUE;
        this.buffer = bArr;
        this.limit = i2 + i;
        this.pos = i;
        this.zzaco = this.pos;
        this.zzacm = z;
    }

    @Override // com.google.android.gms.internal.measurement.zzeb
    public final int zzkj() throws IOException {
        if (zzkz()) {
            this.zzacp = 0;
            return 0;
        }
        this.zzacp = zzlb();
        int i = this.zzacp;
        if ((i >>> 3) != 0) {
            return i;
        }
        throw zzfh.zzmx();
    }

    @Override // com.google.android.gms.internal.measurement.zzeb
    public final void zzu(int i) throws zzfh {
        if (this.zzacp != i) {
            throw zzfh.zzmy();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzeb
    public final boolean zzv(int i) throws IOException {
        int iZzkj;
        int i2 = i & 7;
        int i3 = 0;
        if (i2 == 0) {
            if (this.limit - this.pos >= 10) {
                while (i3 < 10) {
                    byte[] bArr = this.buffer;
                    int i4 = this.pos;
                    this.pos = i4 + 1;
                    if (bArr[i4] < 0) {
                        i3++;
                    }
                }
                throw zzfh.zzmw();
            }
            while (i3 < 10) {
                if (zzlg() < 0) {
                    i3++;
                }
            }
            throw zzfh.zzmw();
            return true;
        }
        if (i2 == 1) {
            zzz(8);
            return true;
        }
        if (i2 == 2) {
            zzz(zzlb());
            return true;
        }
        if (i2 != 3) {
            if (i2 == 4) {
                return false;
            }
            if (i2 == 5) {
                zzz(4);
                return true;
            }
            throw zzfh.zzmz();
        }
        do {
            iZzkj = zzkj();
            if (iZzkj == 0) {
                break;
            }
        } while (zzv(iZzkj));
        zzu(((i >>> 3) << 3) | 4);
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzeb
    public final double readDouble() throws IOException {
        return Double.longBitsToDouble(zzle());
    }

    @Override // com.google.android.gms.internal.measurement.zzeb
    public final float readFloat() throws IOException {
        return Float.intBitsToFloat(zzld());
    }

    @Override // com.google.android.gms.internal.measurement.zzeb
    public final long zzkk() throws IOException {
        return zzlc();
    }

    @Override // com.google.android.gms.internal.measurement.zzeb
    public final long zzkl() throws IOException {
        return zzlc();
    }

    @Override // com.google.android.gms.internal.measurement.zzeb
    public final int zzkm() throws IOException {
        return zzlb();
    }

    @Override // com.google.android.gms.internal.measurement.zzeb
    public final long zzkn() throws IOException {
        return zzle();
    }

    @Override // com.google.android.gms.internal.measurement.zzeb
    public final int zzko() throws IOException {
        return zzld();
    }

    @Override // com.google.android.gms.internal.measurement.zzeb
    public final boolean zzkp() throws IOException {
        return zzlc() != 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzeb
    public final String readString() throws IOException {
        int iZzlb = zzlb();
        if (iZzlb > 0) {
            int i = this.limit;
            int i2 = this.pos;
            if (iZzlb <= i - i2) {
                String str = new String(this.buffer, i2, iZzlb, zzfb.UTF_8);
                this.pos += iZzlb;
                return str;
            }
        }
        if (iZzlb == 0) {
            return "";
        }
        if (iZzlb < 0) {
            throw zzfh.zzmv();
        }
        throw zzfh.zzmu();
    }

    @Override // com.google.android.gms.internal.measurement.zzeb
    public final String zzkq() throws IOException {
        int iZzlb = zzlb();
        if (iZzlb > 0) {
            int i = this.limit;
            int i2 = this.pos;
            if (iZzlb <= i - i2) {
                String strZzh = zzhy.zzh(this.buffer, i2, iZzlb);
                this.pos += iZzlb;
                return strZzh;
            }
        }
        if (iZzlb == 0) {
            return "";
        }
        if (iZzlb <= 0) {
            throw zzfh.zzmv();
        }
        throw zzfh.zzmu();
    }

    @Override // com.google.android.gms.internal.measurement.zzeb
    public final <T extends zzgh> T zza(zzgs<T> zzgsVar, zzem zzemVar) throws IOException {
        int iZzlb = zzlb();
        if (this.zzach >= this.zzaci) {
            throw zzfh.zzna();
        }
        int iZzx = zzx(iZzlb);
        this.zzach++;
        T tZza = zzgsVar.zza(this, zzemVar);
        zzu(0);
        this.zzach--;
        zzy(iZzx);
        return tZza;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0033  */
    @Override // com.google.android.gms.internal.measurement.zzeb
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.measurement.zzdp zzkr() throws java.io.IOException {
        /*
            r3 = this;
            int r0 = r3.zzlb()
            if (r0 <= 0) goto L19
            int r1 = r3.limit
            int r2 = r3.pos
            int r1 = r1 - r2
            if (r0 > r1) goto L19
            byte[] r1 = r3.buffer
            com.google.android.gms.internal.measurement.zzdp r1 = com.google.android.gms.internal.measurement.zzdp.zzb(r1, r2, r0)
            int r2 = r3.pos
            int r2 = r2 + r0
            r3.pos = r2
            return r1
        L19:
            if (r0 != 0) goto L1e
            com.google.android.gms.internal.measurement.zzdp r0 = com.google.android.gms.internal.measurement.zzdp.zzaby
            return r0
        L1e:
            if (r0 <= 0) goto L33
            int r1 = r3.limit
            int r2 = r3.pos
            int r1 = r1 - r2
            if (r0 > r1) goto L33
            int r0 = r0 + r2
            r3.pos = r0
            byte[] r0 = r3.buffer
            int r1 = r3.pos
            byte[] r0 = java.util.Arrays.copyOfRange(r0, r2, r1)
            goto L39
        L33:
            if (r0 > 0) goto L43
            if (r0 != 0) goto L3e
            byte[] r0 = com.google.android.gms.internal.measurement.zzfb.zzahk
        L39:
            com.google.android.gms.internal.measurement.zzdp r0 = com.google.android.gms.internal.measurement.zzdp.zzg(r0)
            return r0
        L3e:
            com.google.android.gms.internal.measurement.zzfh r0 = com.google.android.gms.internal.measurement.zzfh.zzmv()
            throw r0
        L43:
            com.google.android.gms.internal.measurement.zzfh r0 = com.google.android.gms.internal.measurement.zzfh.zzmu()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzed.zzkr():com.google.android.gms.internal.measurement.zzdp");
    }

    @Override // com.google.android.gms.internal.measurement.zzeb
    public final int zzks() throws IOException {
        return zzlb();
    }

    @Override // com.google.android.gms.internal.measurement.zzeb
    public final int zzkt() throws IOException {
        return zzlb();
    }

    @Override // com.google.android.gms.internal.measurement.zzeb
    public final int zzku() throws IOException {
        return zzld();
    }

    @Override // com.google.android.gms.internal.measurement.zzeb
    public final long zzkv() throws IOException {
        return zzle();
    }

    @Override // com.google.android.gms.internal.measurement.zzeb
    public final int zzkw() throws IOException {
        return zzeb.zzaa(zzlb());
    }

    @Override // com.google.android.gms.internal.measurement.zzeb
    public final long zzkx() throws IOException {
        return zzeb.zzap(zzlc());
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0066, code lost:
    
        if (r2[r3] >= 0) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int zzlb() throws java.io.IOException {
        /*
            r5 = this;
            int r0 = r5.pos
            int r1 = r5.limit
            if (r1 == r0) goto L6b
            byte[] r2 = r5.buffer
            int r3 = r0 + 1
            r0 = r2[r0]
            if (r0 < 0) goto L11
            r5.pos = r3
            return r0
        L11:
            int r1 = r1 - r3
            r4 = 9
            if (r1 < r4) goto L6b
            int r1 = r3 + 1
            r3 = r2[r3]
            int r3 = r3 << 7
            r0 = r0 ^ r3
            if (r0 >= 0) goto L22
            r0 = r0 ^ (-128(0xffffffffffffff80, float:NaN))
            goto L68
        L22:
            int r3 = r1 + 1
            r1 = r2[r1]
            int r1 = r1 << 14
            r0 = r0 ^ r1
            if (r0 < 0) goto L2f
            r0 = r0 ^ 16256(0x3f80, float:2.278E-41)
        L2d:
            r1 = r3
            goto L68
        L2f:
            int r1 = r3 + 1
            r3 = r2[r3]
            int r3 = r3 << 21
            r0 = r0 ^ r3
            if (r0 >= 0) goto L3d
            r2 = -2080896(0xffffffffffe03f80, float:NaN)
            r0 = r0 ^ r2
            goto L68
        L3d:
            int r3 = r1 + 1
            r1 = r2[r1]
            int r4 = r1 << 28
            r0 = r0 ^ r4
            r4 = 266354560(0xfe03f80, float:2.2112565E-29)
            r0 = r0 ^ r4
            if (r1 >= 0) goto L2d
            int r1 = r3 + 1
            r3 = r2[r3]
            if (r3 >= 0) goto L68
            int r3 = r1 + 1
            r1 = r2[r1]
            if (r1 >= 0) goto L2d
            int r1 = r3 + 1
            r3 = r2[r3]
            if (r3 >= 0) goto L68
            int r3 = r1 + 1
            r1 = r2[r1]
            if (r1 >= 0) goto L2d
            int r1 = r3 + 1
            r2 = r2[r3]
            if (r2 < 0) goto L6b
        L68:
            r5.pos = r1
            return r0
        L6b:
            long r0 = r5.zzky()
            int r1 = (int) r0
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzed.zzlb():int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00b0, code lost:
    
        if (r2[r0] >= 0) goto L39;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final long zzlc() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 186
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzed.zzlc():long");
    }

    @Override // com.google.android.gms.internal.measurement.zzeb
    final long zzky() throws IOException {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            j |= (r3 & 127) << i;
            if ((zzlg() & 128) == 0) {
                return j;
            }
        }
        throw zzfh.zzmw();
    }

    private final int zzld() throws IOException {
        int i = this.pos;
        if (this.limit - i < 4) {
            throw zzfh.zzmu();
        }
        byte[] bArr = this.buffer;
        this.pos = i + 4;
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    private final long zzle() throws IOException {
        int i = this.pos;
        if (this.limit - i < 8) {
            throw zzfh.zzmu();
        }
        byte[] bArr = this.buffer;
        this.pos = i + 8;
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    @Override // com.google.android.gms.internal.measurement.zzeb
    public final int zzx(int i) throws zzfh {
        if (i < 0) {
            throw zzfh.zzmv();
        }
        int iZzla = i + zzla();
        int i2 = this.zzacq;
        if (iZzla > i2) {
            throw zzfh.zzmu();
        }
        this.zzacq = iZzla;
        zzlf();
        return i2;
    }

    private final void zzlf() {
        this.limit += this.zzacn;
        int i = this.limit;
        int i2 = i - this.zzaco;
        int i3 = this.zzacq;
        if (i2 > i3) {
            this.zzacn = i2 - i3;
            this.limit = i - this.zzacn;
        } else {
            this.zzacn = 0;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzeb
    public final void zzy(int i) {
        this.zzacq = i;
        zzlf();
    }

    @Override // com.google.android.gms.internal.measurement.zzeb
    public final boolean zzkz() throws IOException {
        return this.pos == this.limit;
    }

    @Override // com.google.android.gms.internal.measurement.zzeb
    public final int zzla() {
        return this.pos - this.zzaco;
    }

    private final byte zzlg() throws IOException {
        int i = this.pos;
        if (i == this.limit) {
            throw zzfh.zzmu();
        }
        byte[] bArr = this.buffer;
        this.pos = i + 1;
        return bArr[i];
    }

    @Override // com.google.android.gms.internal.measurement.zzeb
    public final void zzz(int i) throws IOException {
        if (i >= 0) {
            int i2 = this.limit;
            int i3 = this.pos;
            if (i <= i2 - i3) {
                this.pos = i3 + i;
                return;
            }
        }
        if (i < 0) {
            throw zzfh.zzmv();
        }
        throw zzfh.zzmu();
    }
}
