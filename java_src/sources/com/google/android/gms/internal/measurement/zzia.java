package com.google.android.gms.internal.measurement;

import com.google.common.base.c;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
final class zzia extends zzib {
    private final byte[] zzd;
    private final boolean zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private int zzi;
    private int zzj;
    private int zzk;

    private final void zzaa() {
        int i10 = this.zzf + this.zzg;
        this.zzf = i10;
        int i11 = i10 - this.zzi;
        int i12 = this.zzk;
        if (i11 <= i12) {
            this.zzg = 0;
            return;
        }
        int i13 = i11 - i12;
        this.zzg = i13;
        this.zzf = i10 - i13;
    }

    @Override // com.google.android.gms.internal.measurement.zzib
    public final double zza() throws IOException {
        return Double.longBitsToDouble(zzy());
    }

    @Override // com.google.android.gms.internal.measurement.zzib
    public final float zzb() throws IOException {
        return Float.intBitsToFloat(zzw());
    }

    @Override // com.google.android.gms.internal.measurement.zzib
    public final int zzc() {
        return this.zzh - this.zzi;
    }

    @Override // com.google.android.gms.internal.measurement.zzib
    public final int zzd() throws IOException {
        return zzx();
    }

    @Override // com.google.android.gms.internal.measurement.zzib
    public final int zzf() throws IOException {
        return zzx();
    }

    @Override // com.google.android.gms.internal.measurement.zzib
    public final boolean zzt() throws IOException {
        return this.zzh == this.zzf;
    }

    private zzia(byte[] bArr, int i10, int i11, boolean z6) {
        super();
        this.zzk = Integer.MAX_VALUE;
        this.zzd = bArr;
        this.zzf = i11 + i10;
        this.zzh = i10;
        this.zzi = i10;
        this.zze = z6;
    }

    private final void zzf(int i10) throws IOException {
        if (i10 >= 0) {
            int i11 = this.zzf;
            int i12 = this.zzh;
            if (i10 <= i11 - i12) {
                this.zzh = i12 + i10;
                return;
            }
        }
        if (i10 >= 0) {
            throw zzji.zzh();
        }
        throw zzji.zzf();
    }

    private final byte zzv() throws IOException {
        int i10 = this.zzh;
        if (i10 == this.zzf) {
            throw zzji.zzh();
        }
        byte[] bArr = this.zzd;
        this.zzh = i10 + 1;
        return bArr[i10];
    }

    private final int zzw() throws IOException {
        int i10 = this.zzh;
        if (this.zzf - i10 < 4) {
            throw zzji.zzh();
        }
        byte[] bArr = this.zzd;
        this.zzh = i10 + 4;
        return ((bArr[i10 + 3] & 255) << 24) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16);
    }

    private final int zzx() throws IOException {
        int i10;
        int i11 = this.zzh;
        int i12 = this.zzf;
        if (i12 != i11) {
            byte[] bArr = this.zzd;
            int i13 = i11 + 1;
            byte b7 = bArr[i11];
            if (b7 >= 0) {
                this.zzh = i13;
                return b7;
            }
            if (i12 - i13 >= 9) {
                int i14 = i11 + 2;
                int i15 = (bArr[i13] << 7) ^ b7;
                if (i15 < 0) {
                    i10 = i15 ^ (-128);
                } else {
                    int i16 = i11 + 3;
                    int i17 = (bArr[i14] << c.SO) ^ i15;
                    if (i17 >= 0) {
                        i10 = i17 ^ 16256;
                    } else {
                        int i18 = i11 + 4;
                        int i19 = i17 ^ (bArr[i16] << c.NAK);
                        if (i19 < 0) {
                            i10 = (-2080896) ^ i19;
                        } else {
                            i16 = i11 + 5;
                            byte b10 = bArr[i18];
                            int i20 = (i19 ^ (b10 << c.FS)) ^ 266354560;
                            if (b10 < 0) {
                                i18 = i11 + 6;
                                if (bArr[i16] < 0) {
                                    i16 = i11 + 7;
                                    if (bArr[i18] < 0) {
                                        i18 = i11 + 8;
                                        if (bArr[i16] < 0) {
                                            i16 = i11 + 9;
                                            if (bArr[i18] < 0) {
                                                int i21 = i11 + 10;
                                                if (bArr[i16] >= 0) {
                                                    i14 = i21;
                                                    i10 = i20;
                                                }
                                            }
                                        }
                                    }
                                }
                                i10 = i20;
                            }
                            i10 = i20;
                        }
                        i14 = i18;
                    }
                    i14 = i16;
                }
                this.zzh = i14;
                return i10;
            }
        }
        return (int) zzm();
    }

    private final long zzy() throws IOException {
        int i10 = this.zzh;
        if (this.zzf - i10 < 8) {
            throw zzji.zzh();
        }
        byte[] bArr = this.zzd;
        this.zzh = i10 + 8;
        return ((((long) bArr[i10 + 7]) & 255) << 56) | (((long) bArr[i10]) & 255) | ((((long) bArr[i10 + 1]) & 255) << 8) | ((((long) bArr[i10 + 2]) & 255) << 16) | ((((long) bArr[i10 + 3]) & 255) << 24) | ((((long) bArr[i10 + 4]) & 255) << 32) | ((((long) bArr[i10 + 5]) & 255) << 40) | ((((long) bArr[i10 + 6]) & 255) << 48);
    }

    private final long zzz() throws IOException {
        long j6;
        long j10;
        long j11;
        int i10 = this.zzh;
        int i11 = this.zzf;
        if (i11 != i10) {
            byte[] bArr = this.zzd;
            int i12 = i10 + 1;
            byte b7 = bArr[i10];
            if (b7 >= 0) {
                this.zzh = i12;
                return b7;
            }
            if (i11 - i12 >= 9) {
                int i13 = i10 + 2;
                int i14 = (bArr[i12] << 7) ^ b7;
                if (i14 < 0) {
                    j6 = i14 ^ (-128);
                } else {
                    int i15 = i10 + 3;
                    int i16 = (bArr[i13] << c.SO) ^ i14;
                    if (i16 >= 0) {
                        j6 = i16 ^ 16256;
                        i13 = i15;
                    } else {
                        int i17 = i10 + 4;
                        int i18 = i16 ^ (bArr[i15] << c.NAK);
                        if (i18 < 0) {
                            long j12 = (-2080896) ^ i18;
                            i13 = i17;
                            j6 = j12;
                        } else {
                            long j13 = i18;
                            i13 = i10 + 5;
                            long j14 = j13 ^ (((long) bArr[i17]) << 28);
                            if (j14 >= 0) {
                                j11 = 266354560;
                            } else {
                                int i19 = i10 + 6;
                                long j15 = j14 ^ (((long) bArr[i13]) << 35);
                                if (j15 < 0) {
                                    j10 = -34093383808L;
                                } else {
                                    i13 = i10 + 7;
                                    j14 = j15 ^ (((long) bArr[i19]) << 42);
                                    if (j14 >= 0) {
                                        j11 = 4363953127296L;
                                    } else {
                                        i19 = i10 + 8;
                                        j15 = j14 ^ (((long) bArr[i13]) << 49);
                                        if (j15 < 0) {
                                            j10 = -558586000294016L;
                                        } else {
                                            i13 = i10 + 9;
                                            long j16 = (j15 ^ (((long) bArr[i19]) << 56)) ^ 71499008037633920L;
                                            if (j16 < 0) {
                                                int i20 = i10 + 10;
                                                if (bArr[i13] >= 0) {
                                                    i13 = i20;
                                                }
                                            }
                                            j6 = j16;
                                        }
                                    }
                                }
                                j6 = j15 ^ j10;
                                i13 = i19;
                            }
                            j6 = j14 ^ j11;
                        }
                    }
                }
                this.zzh = i13;
                return j6;
            }
        }
        return zzm();
    }

    @Override // com.google.android.gms.internal.measurement.zzib
    public final int zza(int i10) throws zzji {
        if (i10 < 0) {
            throw zzji.zzf();
        }
        int iZzc = i10 + zzc();
        if (iZzc < 0) {
            throw zzji.zzg();
        }
        int i11 = this.zzk;
        if (iZzc > i11) {
            throw zzji.zzh();
        }
        this.zzk = iZzc;
        zzaa();
        return i11;
    }

    @Override // com.google.android.gms.internal.measurement.zzib
    public final void zzb(int i10) throws zzji {
        if (this.zzj != i10) {
            throw zzji.zzb();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzib
    public final void zzc(int i10) {
        this.zzk = i10;
        zzaa();
    }

    @Override // com.google.android.gms.internal.measurement.zzib
    public final boolean zzd(int i10) throws IOException {
        int iZzi;
        int i11 = i10 & 7;
        int i12 = 0;
        if (i11 == 0) {
            if (this.zzf - this.zzh < 10) {
                while (i12 < 10) {
                    if (zzv() < 0) {
                        i12++;
                    }
                }
                throw zzji.zze();
            }
            while (i12 < 10) {
                byte[] bArr = this.zzd;
                int i13 = this.zzh;
                this.zzh = i13 + 1;
                if (bArr[i13] < 0) {
                    i12++;
                }
            }
            throw zzji.zze();
            return true;
        }
        if (i11 == 1) {
            zzf(8);
            return true;
        }
        if (i11 == 2) {
            zzf(zzx());
            return true;
        }
        if (i11 != 3) {
            if (i11 == 4) {
                return false;
            }
            if (i11 != 5) {
                throw zzji.zza();
            }
            zzf(4);
            return true;
        }
        do {
            iZzi = zzi();
            if (iZzi == 0) {
                break;
            }
        } while (zzd(iZzi));
        zzb(((i10 >>> 3) << 3) | 4);
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzib
    final long zzm() throws IOException {
        long j6 = 0;
        for (int i10 = 0; i10 < 64; i10 += 7) {
            byte bZzv = zzv();
            j6 |= ((long) (bZzv & 127)) << i10;
            if ((bZzv & 128) == 0) {
                return j6;
            }
        }
        throw zzji.zze();
    }

    @Override // com.google.android.gms.internal.measurement.zzib
    public final int zze() throws IOException {
        return zzw();
    }

    @Override // com.google.android.gms.internal.measurement.zzib
    public final int zzg() throws IOException {
        return zzw();
    }

    @Override // com.google.android.gms.internal.measurement.zzib
    public final int zzh() throws IOException {
        return zzib.zze(zzx());
    }

    @Override // com.google.android.gms.internal.measurement.zzib
    public final int zzi() throws IOException {
        if (zzt()) {
            this.zzj = 0;
            return 0;
        }
        int iZzx = zzx();
        this.zzj = iZzx;
        if ((iZzx >>> 3) != 0) {
            return iZzx;
        }
        throw zzji.zzc();
    }

    @Override // com.google.android.gms.internal.measurement.zzib
    public final int zzj() throws IOException {
        return zzx();
    }

    @Override // com.google.android.gms.internal.measurement.zzib
    public final long zzk() throws IOException {
        return zzy();
    }

    @Override // com.google.android.gms.internal.measurement.zzib
    public final long zzl() throws IOException {
        return zzz();
    }

    @Override // com.google.android.gms.internal.measurement.zzib
    public final long zzn() throws IOException {
        return zzy();
    }

    @Override // com.google.android.gms.internal.measurement.zzib
    public final long zzo() throws IOException {
        return zzib.zza(zzz());
    }

    @Override // com.google.android.gms.internal.measurement.zzib
    public final long zzp() throws IOException {
        return zzz();
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0031 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:16:0x0033 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:17:0x0035  */
    /* JADX WARN: Code duplicated, block: B:20:0x003c  */
    /* JADX WARN: Code duplicated, block: B:22:0x0041  */
    @Override // com.google.android.gms.internal.measurement.zzib
    public final zzhm zzq() throws IOException {
        byte[] bArrCopyOfRange;
        int iZzx = zzx();
        if (iZzx > 0) {
            int i10 = this.zzf;
            int i11 = this.zzh;
            if (iZzx <= i10 - i11) {
                zzhm zzhmVarZza = zzhm.zza(this.zzd, i11, iZzx);
                this.zzh += iZzx;
                return zzhmVarZza;
            }
        }
        if (iZzx == 0) {
            return zzhm.zza;
        }
        if (iZzx > 0) {
            int i12 = this.zzf;
            int i13 = this.zzh;
            if (iZzx <= i12 - i13) {
                int i14 = iZzx + i13;
                this.zzh = i14;
                bArrCopyOfRange = Arrays.copyOfRange(this.zzd, i13, i14);
            } else if (iZzx <= 0) {
                if (iZzx == 0) {
                    bArrCopyOfRange = zziz.zzb;
                } else {
                    throw zzji.zzf();
                }
            } else {
                throw zzji.zzh();
            }
        } else if (iZzx <= 0) {
            if (iZzx == 0) {
                bArrCopyOfRange = zziz.zzb;
            } else {
                throw zzji.zzf();
            }
        } else {
            throw zzji.zzh();
        }
        return zzhm.zza(bArrCopyOfRange);
    }

    @Override // com.google.android.gms.internal.measurement.zzib
    public final String zzr() throws IOException {
        int iZzx = zzx();
        if (iZzx > 0) {
            int i10 = this.zzf;
            int i11 = this.zzh;
            if (iZzx <= i10 - i11) {
                String str = new String(this.zzd, i11, iZzx, zziz.zza);
                this.zzh += iZzx;
                return str;
            }
        }
        if (iZzx == 0) {
            return "";
        }
        if (iZzx < 0) {
            throw zzji.zzf();
        }
        throw zzji.zzh();
    }

    @Override // com.google.android.gms.internal.measurement.zzib
    public final String zzs() throws IOException {
        int iZzx = zzx();
        if (iZzx > 0) {
            int i10 = this.zzf;
            int i11 = this.zzh;
            if (iZzx <= i10 - i11) {
                String strZzb = zzmh.zzb(this.zzd, i11, iZzx);
                this.zzh += iZzx;
                return strZzb;
            }
        }
        if (iZzx == 0) {
            return "";
        }
        if (iZzx <= 0) {
            throw zzji.zzf();
        }
        throw zzji.zzh();
    }

    @Override // com.google.android.gms.internal.measurement.zzib
    public final boolean zzu() throws IOException {
        if (zzz() != 0) {
            return true;
        }
        return false;
    }
}
