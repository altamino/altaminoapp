package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* loaded from: classes2.dex */
public final class zzim {
    private final byte[] buffer;
    private int zzach;
    private int zzacn;
    private int zzacp;
    private final int zzamw;
    private final int zzamx;
    private int zzamy;
    private int zzamz;
    private zzeb zzana;
    private int zzacq = Integer.MAX_VALUE;
    private int zzaci = 64;
    private int zzacj = 67108864;

    public static zzim zzj(byte[] bArr, int i, int i2) {
        return new zzim(bArr, 0, i2);
    }

    public final int zzkj() throws IOException {
        if (this.zzamz == this.zzamy) {
            this.zzacp = 0;
            return 0;
        }
        this.zzacp = zzlb();
        int i = this.zzacp;
        if (i != 0) {
            return i;
        }
        throw new zziu("Protocol message contained an invalid tag (zero).");
    }

    public final void zzu(int i) throws zziu {
        if (this.zzacp != i) {
            throw new zziu("Protocol message end-group tag did not match expected tag.");
        }
    }

    public final boolean zzv(int i) throws IOException {
        int iZzkj;
        int i2 = i & 7;
        if (i2 == 0) {
            zzlb();
            return true;
        }
        if (i2 == 1) {
            zzlg();
            zzlg();
            zzlg();
            zzlg();
            zzlg();
            zzlg();
            zzlg();
            zzlg();
            return true;
        }
        if (i2 == 2) {
            zzz(zzlb());
            return true;
        }
        if (i2 == 3) {
            do {
                iZzkj = zzkj();
                if (iZzkj == 0) {
                    break;
                }
            } while (zzv(iZzkj));
            zzu(((i >>> 3) << 3) | 4);
            return true;
        }
        if (i2 == 4) {
            return false;
        }
        if (i2 == 5) {
            zzlg();
            zzlg();
            zzlg();
            zzlg();
            return true;
        }
        throw new zziu("Protocol message tag had invalid wire type.");
    }

    public final boolean zzkp() throws IOException {
        return zzlb() != 0;
    }

    public final String readString() throws IOException {
        int iZzlb = zzlb();
        if (iZzlb < 0) {
            throw zziu.zzph();
        }
        int i = this.zzamy;
        int i2 = this.zzamz;
        if (iZzlb > i - i2) {
            throw zziu.zzpg();
        }
        String str = new String(this.buffer, i2, iZzlb, zzit.UTF_8);
        this.zzamz += iZzlb;
        return str;
    }

    public final void zza(zziv zzivVar) throws IOException {
        int iZzlb = zzlb();
        if (this.zzach >= this.zzaci) {
            throw new zziu("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
        }
        int iZzx = zzx(iZzlb);
        this.zzach++;
        zzivVar.zza(this);
        zzu(0);
        this.zzach--;
        zzy(iZzx);
    }

    public final int zzlb() throws IOException {
        int i;
        byte bZzlg = zzlg();
        if (bZzlg >= 0) {
            return bZzlg;
        }
        int i2 = bZzlg & 127;
        byte bZzlg2 = zzlg();
        if (bZzlg2 >= 0) {
            i = bZzlg2 << 7;
        } else {
            i2 |= (bZzlg2 & 127) << 7;
            byte bZzlg3 = zzlg();
            if (bZzlg3 >= 0) {
                i = bZzlg3 << 14;
            } else {
                i2 |= (bZzlg3 & 127) << 14;
                byte bZzlg4 = zzlg();
                if (bZzlg4 < 0) {
                    int i3 = i2 | ((bZzlg4 & 127) << 21);
                    byte bZzlg5 = zzlg();
                    int i4 = i3 | (bZzlg5 << 28);
                    if (bZzlg5 >= 0) {
                        return i4;
                    }
                    for (int i5 = 0; i5 < 5; i5++) {
                        if (zzlg() >= 0) {
                            return i4;
                        }
                    }
                    throw zziu.zzpi();
                }
                i = bZzlg4 << 21;
            }
        }
        return i2 | i;
    }

    public final long zzlc() throws IOException {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            j |= (r3 & 127) << i;
            if ((zzlg() & 128) == 0) {
                return j;
            }
        }
        throw zziu.zzpi();
    }

    private zzim(byte[] bArr, int i, int i2) {
        this.buffer = bArr;
        this.zzamw = i;
        int i3 = i2 + i;
        this.zzamy = i3;
        this.zzamx = i3;
        this.zzamz = i;
    }

    public final <T extends zzez<T, ?>> T zza(zzgs<T> zzgsVar) throws IOException {
        try {
            if (this.zzana == null) {
                this.zzana = zzeb.zzd(this.buffer, this.zzamw, this.zzamx);
            }
            int iZzla = this.zzana.zzla();
            int i = this.zzamz - this.zzamw;
            if (iZzla > i) {
                throw new IOException(String.format("CodedInputStream read ahead of CodedInputByteBufferNano: %s > %s", Integer.valueOf(iZzla), Integer.valueOf(i)));
            }
            this.zzana.zzz(i - iZzla);
            this.zzana.zzw(this.zzaci - this.zzach);
            T t = (T) this.zzana.zza(zzgsVar, zzem.zzlt());
            zzv(this.zzacp);
            return t;
        } catch (zzfh e) {
            throw new zziu("", e);
        }
    }

    public final int zzx(int i) throws zziu {
        if (i < 0) {
            throw zziu.zzph();
        }
        int i2 = i + this.zzamz;
        int i3 = this.zzacq;
        if (i2 > i3) {
            throw zziu.zzpg();
        }
        this.zzacq = i2;
        zzlf();
        return i3;
    }

    private final void zzlf() {
        this.zzamy += this.zzacn;
        int i = this.zzamy;
        int i2 = this.zzacq;
        if (i > i2) {
            this.zzacn = i - i2;
            this.zzamy = i - this.zzacn;
        } else {
            this.zzacn = 0;
        }
    }

    public final void zzy(int i) {
        this.zzacq = i;
        zzlf();
    }

    public final int zzpd() {
        int i = this.zzacq;
        if (i == Integer.MAX_VALUE) {
            return -1;
        }
        return i - this.zzamz;
    }

    public final int getPosition() {
        return this.zzamz - this.zzamw;
    }

    public final byte[] zzt(int i, int i2) {
        if (i2 == 0) {
            return zziy.zzanx;
        }
        byte[] bArr = new byte[i2];
        System.arraycopy(this.buffer, this.zzamw + i, bArr, 0, i2);
        return bArr;
    }

    public final void zzbj(int i) {
        zzu(i, this.zzacp);
    }

    final void zzu(int i, int i2) {
        int i3 = this.zzamz;
        int i4 = this.zzamw;
        if (i > i3 - i4) {
            StringBuilder sb = new StringBuilder(50);
            sb.append("Position ");
            sb.append(i);
            sb.append(" is beyond current ");
            sb.append(i3 - i4);
            throw new IllegalArgumentException(sb.toString());
        }
        if (i < 0) {
            StringBuilder sb2 = new StringBuilder(24);
            sb2.append("Bad position ");
            sb2.append(i);
            throw new IllegalArgumentException(sb2.toString());
        }
        this.zzamz = i4 + i;
        this.zzacp = i2;
    }

    private final byte zzlg() throws IOException {
        int i = this.zzamz;
        if (i == this.zzamy) {
            throw zziu.zzpg();
        }
        byte[] bArr = this.buffer;
        this.zzamz = i + 1;
        return bArr[i];
    }

    private final void zzz(int i) throws IOException {
        if (i < 0) {
            throw zziu.zzph();
        }
        int i2 = this.zzamz;
        int i3 = i2 + i;
        int i4 = this.zzacq;
        if (i3 > i4) {
            zzz(i4 - i2);
            throw zziu.zzpg();
        }
        if (i <= this.zzamy - i2) {
            this.zzamz = i2 + i;
            return;
        }
        throw zziu.zzpg();
    }
}
