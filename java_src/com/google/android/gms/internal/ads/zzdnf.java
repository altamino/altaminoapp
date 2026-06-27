package com.google.android.gms.internal.ads;

import java.io.IOException;

/* loaded from: classes2.dex */
final class zzdnf extends zzdnd {
    private final byte[] buffer;
    private int limit;
    private int pos;
    private final boolean zzhde;
    private int zzhdf;
    private int zzhdg;
    private int zzhdh;
    private int zzhdi;

    private zzdnf(byte[] bArr, int i, int i2, boolean z) {
        super();
        this.zzhdi = Integer.MAX_VALUE;
        this.buffer = bArr;
        this.limit = i2 + i;
        this.pos = i;
        this.zzhdg = this.pos;
        this.zzhde = z;
    }

    @Override // com.google.android.gms.internal.ads.zzdnd
    public final int zzavu() throws IOException {
        if (zzawk()) {
            this.zzhdh = 0;
            return 0;
        }
        this.zzhdh = zzawm();
        int i = this.zzhdh;
        if ((i >>> 3) != 0) {
            return i;
        }
        throw zzdok.zzayg();
    }

    @Override // com.google.android.gms.internal.ads.zzdnd
    public final void zzfp(int i) throws zzdok {
        if (this.zzhdh != i) {
            throw zzdok.zzayh();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdnd
    public final boolean zzfq(int i) throws IOException {
        int iZzavu;
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
                throw zzdok.zzayf();
            }
            while (i3 < 10) {
                if (zzawr() < 0) {
                    i3++;
                }
            }
            throw zzdok.zzayf();
            return true;
        }
        if (i2 == 1) {
            zzfu(8);
            return true;
        }
        if (i2 == 2) {
            zzfu(zzawm());
            return true;
        }
        if (i2 != 3) {
            if (i2 == 4) {
                return false;
            }
            if (i2 == 5) {
                zzfu(4);
                return true;
            }
            throw zzdok.zzayi();
        }
        do {
            iZzavu = zzavu();
            if (iZzavu == 0) {
                break;
            }
        } while (zzfq(iZzavu));
        zzfp(((i >>> 3) << 3) | 4);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzdnd
    public final double readDouble() throws IOException {
        return Double.longBitsToDouble(zzawp());
    }

    @Override // com.google.android.gms.internal.ads.zzdnd
    public final float readFloat() throws IOException {
        return Float.intBitsToFloat(zzawo());
    }

    @Override // com.google.android.gms.internal.ads.zzdnd
    public final long zzavv() throws IOException {
        return zzawn();
    }

    @Override // com.google.android.gms.internal.ads.zzdnd
    public final long zzavw() throws IOException {
        return zzawn();
    }

    @Override // com.google.android.gms.internal.ads.zzdnd
    public final int zzavx() throws IOException {
        return zzawm();
    }

    @Override // com.google.android.gms.internal.ads.zzdnd
    public final long zzavy() throws IOException {
        return zzawp();
    }

    @Override // com.google.android.gms.internal.ads.zzdnd
    public final int zzavz() throws IOException {
        return zzawo();
    }

    @Override // com.google.android.gms.internal.ads.zzdnd
    public final boolean zzawa() throws IOException {
        return zzawn() != 0;
    }

    @Override // com.google.android.gms.internal.ads.zzdnd
    public final String readString() throws IOException {
        int iZzawm = zzawm();
        if (iZzawm > 0) {
            int i = this.limit;
            int i2 = this.pos;
            if (iZzawm <= i - i2) {
                String str = new String(this.buffer, i2, iZzawm, zzdod.UTF_8);
                this.pos += iZzawm;
                return str;
            }
        }
        if (iZzawm == 0) {
            return "";
        }
        if (iZzawm < 0) {
            throw zzdok.zzaye();
        }
        throw zzdok.zzayd();
    }

    @Override // com.google.android.gms.internal.ads.zzdnd
    public final String zzawb() throws IOException {
        int iZzawm = zzawm();
        if (iZzawm > 0) {
            int i = this.limit;
            int i2 = this.pos;
            if (iZzawm <= i - i2) {
                String strZzn = zzdrb.zzn(this.buffer, i2, iZzawm);
                this.pos += iZzawm;
                return strZzn;
            }
        }
        if (iZzawm == 0) {
            return "";
        }
        if (iZzawm <= 0) {
            throw zzdok.zzaye();
        }
        throw zzdok.zzayd();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0033  */
    @Override // com.google.android.gms.internal.ads.zzdnd
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzdmr zzawc() throws java.io.IOException {
        /*
            r3 = this;
            int r0 = r3.zzawm()
            if (r0 <= 0) goto L19
            int r1 = r3.limit
            int r2 = r3.pos
            int r1 = r1 - r2
            if (r0 > r1) goto L19
            byte[] r1 = r3.buffer
            com.google.android.gms.internal.ads.zzdmr r1 = com.google.android.gms.internal.ads.zzdmr.zzi(r1, r2, r0)
            int r2 = r3.pos
            int r2 = r2 + r0
            r3.pos = r2
            return r1
        L19:
            if (r0 != 0) goto L1e
            com.google.android.gms.internal.ads.zzdmr r0 = com.google.android.gms.internal.ads.zzdmr.zzhcr
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
            byte[] r0 = com.google.android.gms.internal.ads.zzdod.zzhia
        L39:
            com.google.android.gms.internal.ads.zzdmr r0 = com.google.android.gms.internal.ads.zzdmr.zzaa(r0)
            return r0
        L3e:
            com.google.android.gms.internal.ads.zzdok r0 = com.google.android.gms.internal.ads.zzdok.zzaye()
            throw r0
        L43:
            com.google.android.gms.internal.ads.zzdok r0 = com.google.android.gms.internal.ads.zzdok.zzayd()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdnf.zzawc():com.google.android.gms.internal.ads.zzdmr");
    }

    @Override // com.google.android.gms.internal.ads.zzdnd
    public final int zzawd() throws IOException {
        return zzawm();
    }

    @Override // com.google.android.gms.internal.ads.zzdnd
    public final int zzawe() throws IOException {
        return zzawm();
    }

    @Override // com.google.android.gms.internal.ads.zzdnd
    public final int zzawf() throws IOException {
        return zzawo();
    }

    @Override // com.google.android.gms.internal.ads.zzdnd
    public final long zzawg() throws IOException {
        return zzawp();
    }

    @Override // com.google.android.gms.internal.ads.zzdnd
    public final int zzawh() throws IOException {
        return zzdnd.zzft(zzawm());
    }

    @Override // com.google.android.gms.internal.ads.zzdnd
    public final long zzawi() throws IOException {
        return zzdnd.zzfi(zzawn());
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0066, code lost:
    
        if (r2[r3] >= 0) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int zzawm() throws java.io.IOException {
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
            long r0 = r5.zzawj()
            int r1 = (int) r0
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdnf.zzawm():int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00b0, code lost:
    
        if (r2[r0] >= 0) goto L39;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final long zzawn() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 186
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdnf.zzawn():long");
    }

    @Override // com.google.android.gms.internal.ads.zzdnd
    final long zzawj() throws IOException {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            j |= (r3 & 127) << i;
            if ((zzawr() & 128) == 0) {
                return j;
            }
        }
        throw zzdok.zzayf();
    }

    private final int zzawo() throws IOException {
        int i = this.pos;
        if (this.limit - i < 4) {
            throw zzdok.zzayd();
        }
        byte[] bArr = this.buffer;
        this.pos = i + 4;
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    private final long zzawp() throws IOException {
        int i = this.pos;
        if (this.limit - i < 8) {
            throw zzdok.zzayd();
        }
        byte[] bArr = this.buffer;
        this.pos = i + 8;
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    @Override // com.google.android.gms.internal.ads.zzdnd
    public final int zzfr(int i) throws zzdok {
        if (i < 0) {
            throw zzdok.zzaye();
        }
        int iZzawl = i + zzawl();
        int i2 = this.zzhdi;
        if (iZzawl > i2) {
            throw zzdok.zzayd();
        }
        this.zzhdi = iZzawl;
        zzawq();
        return i2;
    }

    private final void zzawq() {
        this.limit += this.zzhdf;
        int i = this.limit;
        int i2 = i - this.zzhdg;
        int i3 = this.zzhdi;
        if (i2 > i3) {
            this.zzhdf = i2 - i3;
            this.limit = i - this.zzhdf;
        } else {
            this.zzhdf = 0;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdnd
    public final void zzfs(int i) {
        this.zzhdi = i;
        zzawq();
    }

    @Override // com.google.android.gms.internal.ads.zzdnd
    public final boolean zzawk() throws IOException {
        return this.pos == this.limit;
    }

    @Override // com.google.android.gms.internal.ads.zzdnd
    public final int zzawl() {
        return this.pos - this.zzhdg;
    }

    private final byte zzawr() throws IOException {
        int i = this.pos;
        if (i == this.limit) {
            throw zzdok.zzayd();
        }
        byte[] bArr = this.buffer;
        this.pos = i + 1;
        return bArr[i];
    }

    private final void zzfu(int i) throws IOException {
        if (i >= 0) {
            int i2 = this.limit;
            int i3 = this.pos;
            if (i <= i2 - i3) {
                this.pos = i3 + i;
                return;
            }
        }
        if (i < 0) {
            throw zzdok.zzaye();
        }
        throw zzdok.zzayd();
    }
}
