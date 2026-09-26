package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes6.dex */
public abstract class zzig extends zzhn {
    private static final Logger zzb = Logger.getLogger(zzig.class.getName());
    private static final boolean zzc = zzmg.zzc();
    zzij zza;

    private static class zza extends zzig {
        private final byte[] zzb;
        private final int zzc;
        private final int zzd;
        private int zze;

        zza(byte[] bArr, int i10, int i11) {
            super();
            if (bArr == null) {
                throw new NullPointerException("buffer");
            }
            if (((bArr.length - i11) | i11) < 0) {
                throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), 0, Integer.valueOf(i11)));
            }
            this.zzb = bArr;
            this.zzc = 0;
            this.zze = 0;
            this.zzd = i11;
        }

        private final void zzc(byte[] bArr, int i10, int i11) throws IOException {
            try {
                System.arraycopy(bArr, i10, this.zzb, this.zze, i11);
                this.zze += i11;
            } catch (IndexOutOfBoundsException e) {
                throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zze), Integer.valueOf(this.zzd), Integer.valueOf(i11)), e);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzig
        public final int zza() {
            return this.zzd - this.zze;
        }

        @Override // com.google.android.gms.internal.measurement.zzig
        public final void zzb(byte[] bArr, int i10, int i11) throws IOException {
            zzc(i11);
            zzc(bArr, 0, i11);
        }

        @Override // com.google.android.gms.internal.measurement.zzig
        public final void zzd(int i10, int i11) throws IOException {
            zzc(i10, 0);
            zzc(i11);
        }

        @Override // com.google.android.gms.internal.measurement.zzig
        public final void zza(byte b7) throws IOException {
            try {
                byte[] bArr = this.zzb;
                int i10 = this.zze;
                this.zze = i10 + 1;
                bArr[i10] = b7;
            } catch (IndexOutOfBoundsException e) {
                throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zze), Integer.valueOf(this.zzd), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzig
        public final void zzb(int i10, int i11) throws IOException {
            zzc(i10, 0);
            zzb(i11);
        }

        @Override // com.google.android.gms.internal.measurement.zzig
        public final void zzc(int i10, int i11) throws IOException {
            zzc((i10 << 3) | i11);
        }

        @Override // com.google.android.gms.internal.measurement.zzig
        public final void zza(int i10, boolean z6) throws IOException {
            zzc(i10, 0);
            zza(z6 ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.android.gms.internal.measurement.zzig
        public final void zzb(int i10) throws IOException {
            if (i10 >= 0) {
                zzc(i10);
            } else {
                zzb(i10);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzig
        public final void zzc(int i10) throws IOException {
            while ((i10 & (-128)) != 0) {
                try {
                    byte[] bArr = this.zzb;
                    int i11 = this.zze;
                    this.zze = i11 + 1;
                    bArr[i11] = (byte) ((i10 & 127) | 128);
                    i10 >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zze), Integer.valueOf(this.zzd), 1), e);
                }
            }
            byte[] bArr2 = this.zzb;
            int i12 = this.zze;
            this.zze = i12 + 1;
            bArr2[i12] = (byte) i10;
        }

        @Override // com.google.android.gms.internal.measurement.zzig
        public final void zza(int i10, zzhm zzhmVar) throws IOException {
            zzc(i10, 2);
            zza(zzhmVar);
        }

        @Override // com.google.android.gms.internal.measurement.zzig
        public final void zzb(int i10, zzhm zzhmVar) throws IOException {
            zzc(1, 3);
            zzd(2, i10);
            zza(3, zzhmVar);
            zzc(1, 4);
        }

        @Override // com.google.android.gms.internal.measurement.zzig
        public final void zza(zzhm zzhmVar) throws IOException {
            zzc(zzhmVar.zzb());
            zzhmVar.zza(this);
        }

        @Override // com.google.android.gms.internal.measurement.zzig
        public final void zza(int i10, int i11) throws IOException {
            zzc(i10, 5);
            zza(i11);
        }

        @Override // com.google.android.gms.internal.measurement.zzig
        public final void zzb(int i10, long j6) throws IOException {
            zzc(i10, 0);
            zzb(j6);
        }

        @Override // com.google.android.gms.internal.measurement.zzig
        public final void zza(int i10) throws IOException {
            try {
                byte[] bArr = this.zzb;
                int i11 = this.zze;
                bArr[i11] = (byte) i10;
                bArr[i11 + 1] = (byte) (i10 >> 8);
                bArr[i11 + 2] = (byte) (i10 >> 16);
                this.zze = i11 + 4;
                bArr[i11 + 3] = (byte) (i10 >>> 24);
            } catch (IndexOutOfBoundsException e) {
                throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zze), Integer.valueOf(this.zzd), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzig
        public final void zzb(long j6) throws IOException {
            if (zzig.zzc && zza() >= 10) {
                while ((j6 & (-128)) != 0) {
                    byte[] bArr = this.zzb;
                    int i10 = this.zze;
                    this.zze = i10 + 1;
                    zzmg.zza(bArr, i10, (byte) ((((int) j6) & 127) | 128));
                    j6 >>>= 7;
                }
                byte[] bArr2 = this.zzb;
                int i11 = this.zze;
                this.zze = i11 + 1;
                zzmg.zza(bArr2, i11, (byte) j6);
                return;
            }
            while ((j6 & (-128)) != 0) {
                try {
                    byte[] bArr3 = this.zzb;
                    int i12 = this.zze;
                    this.zze = i12 + 1;
                    bArr3[i12] = (byte) ((((int) j6) & 127) | 128);
                    j6 >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zze), Integer.valueOf(this.zzd), 1), e);
                }
            }
            byte[] bArr4 = this.zzb;
            int i13 = this.zze;
            this.zze = i13 + 1;
            bArr4[i13] = (byte) j6;
        }

        @Override // com.google.android.gms.internal.measurement.zzig
        public final void zza(int i10, long j6) throws IOException {
            zzc(i10, 1);
            zza(j6);
        }

        @Override // com.google.android.gms.internal.measurement.zzig
        public final void zza(long j6) throws IOException {
            try {
                byte[] bArr = this.zzb;
                int i10 = this.zze;
                bArr[i10] = (byte) j6;
                bArr[i10 + 1] = (byte) (j6 >> 8);
                bArr[i10 + 2] = (byte) (j6 >> 16);
                bArr[i10 + 3] = (byte) (j6 >> 24);
                bArr[i10 + 4] = (byte) (j6 >> 32);
                bArr[i10 + 5] = (byte) (j6 >> 40);
                bArr[i10 + 6] = (byte) (j6 >> 48);
                this.zze = i10 + 8;
                bArr[i10 + 7] = (byte) (j6 >> 56);
            } catch (IndexOutOfBoundsException e) {
                throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zze), Integer.valueOf(this.zzd), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzhn
        public final void zza(byte[] bArr, int i10, int i11) throws IOException {
            zzc(bArr, i10, i11);
        }

        @Override // com.google.android.gms.internal.measurement.zzig
        final void zza(int i10, zzkj zzkjVar, zzlb zzlbVar) throws IOException {
            zzc(i10, 2);
            zzc(((zzhd) zzkjVar).zza(zzlbVar));
            zzlbVar.zza(zzkjVar, this.zza);
        }

        @Override // com.google.android.gms.internal.measurement.zzig
        public final void zza(zzkj zzkjVar) throws IOException {
            zzc(zzkjVar.zzbw());
            zzkjVar.zza(this);
        }

        @Override // com.google.android.gms.internal.measurement.zzig
        public final void zza(int i10, zzkj zzkjVar) throws IOException {
            zzc(1, 3);
            zzd(2, i10);
            zzc(3, 2);
            zza(zzkjVar);
            zzc(1, 4);
        }

        @Override // com.google.android.gms.internal.measurement.zzig
        public final void zza(int i10, String str) throws IOException {
            zzc(i10, 2);
            zza(str);
        }

        @Override // com.google.android.gms.internal.measurement.zzig
        public final void zza(String str) throws IOException {
            int i10 = this.zze;
            try {
                int iZzj = zzig.zzj(str.length() * 3);
                int iZzj2 = zzig.zzj(str.length());
                if (iZzj2 == iZzj) {
                    int i11 = i10 + iZzj2;
                    this.zze = i11;
                    int iZza = zzmh.zza(str, this.zzb, i11, zza());
                    this.zze = i10;
                    zzc((iZza - i10) - iZzj2);
                    this.zze = iZza;
                    return;
                }
                zzc(zzmh.zza(str));
                this.zze = zzmh.zza(str, this.zzb, this.zze, zza());
            } catch (zzmk e) {
                this.zze = i10;
                zza(str, e);
            } catch (IndexOutOfBoundsException e2) {
                throw new zzb(e2);
            }
        }
    }

    public static class zzb extends IOException {
        zzb() {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.");
        }

        zzb(Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
        }

        zzb(String str, Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.: " + str, th);
        }
    }

    public static int zza(double d) {
        return 8;
    }

    public static int zzb(int i10, boolean z6) {
        return zzj(i10 << 3) + 1;
    }

    public static int zzc(long j6) {
        return 8;
    }

    public static int zzd(int i10) {
        return zzf(i10);
    }

    public static int zze(int i10) {
        return 4;
    }

    public static int zzf(int i10, int i11) {
        return zzj(i10 << 3) + 4;
    }

    public static int zzg(int i10) {
        return 4;
    }

    public static int zzh(int i10, int i11) {
        return zzj(i10 << 3) + 4;
    }

    private static long zzi(long j6) {
        return (j6 >> 63) ^ (j6 << 1);
    }

    public static int zzj(int i10) {
        if ((i10 & (-128)) == 0) {
            return 1;
        }
        if ((i10 & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i10) == 0) {
            return 3;
        }
        return (i10 & (-268435456)) == 0 ? 4 : 5;
    }

    private static int zzl(int i10) {
        return (i10 >> 31) ^ (i10 << 1);
    }

    public abstract int zza();

    public abstract void zza(byte b7) throws IOException;

    public abstract void zza(int i10) throws IOException;

    public abstract void zza(int i10, int i11) throws IOException;

    public abstract void zza(int i10, long j6) throws IOException;

    public abstract void zza(int i10, zzhm zzhmVar) throws IOException;

    public abstract void zza(int i10, zzkj zzkjVar) throws IOException;

    abstract void zza(int i10, zzkj zzkjVar, zzlb zzlbVar) throws IOException;

    public abstract void zza(int i10, String str) throws IOException;

    public abstract void zza(int i10, boolean z6) throws IOException;

    public abstract void zza(long j6) throws IOException;

    public abstract void zza(zzhm zzhmVar) throws IOException;

    public abstract void zza(zzkj zzkjVar) throws IOException;

    public abstract void zza(String str) throws IOException;

    public abstract void zzb(int i10) throws IOException;

    public abstract void zzb(int i10, int i11) throws IOException;

    public abstract void zzb(int i10, long j6) throws IOException;

    public abstract void zzb(int i10, zzhm zzhmVar) throws IOException;

    public abstract void zzb(long j6) throws IOException;

    abstract void zzb(byte[] bArr, int i10, int i11) throws IOException;

    public abstract void zzc(int i10) throws IOException;

    public abstract void zzc(int i10, int i11) throws IOException;

    public abstract void zzd(int i10, int i11) throws IOException;

    public final void zzk(int i10, int i11) throws IOException {
        zzd(i10, zzl(i11));
    }

    private zzig() {
    }

    public static int zza(float f) {
        return 4;
    }

    public static int zzb(zzhm zzhmVar) {
        int iZzb = zzhmVar.zzb();
        return zzj(iZzb) + iZzb;
    }

    public static int zzd(int i10, long j6) {
        return zzj(i10 << 3) + zzg(j6);
    }

    public static int zze(long j6) {
        return 8;
    }

    public static int zzf(int i10) {
        if (i10 >= 0) {
            return zzj(i10);
        }
        return 10;
    }

    public static int zzg(long j6) {
        int i10;
        if (((-128) & j6) == 0) {
            return 1;
        }
        if (j6 < 0) {
            return 10;
        }
        if (((-34359738368L) & j6) != 0) {
            j6 >>>= 28;
            i10 = 6;
        } else {
            i10 = 2;
        }
        if (((-2097152) & j6) != 0) {
            i10 += 2;
            j6 >>>= 14;
        }
        return (j6 & (-16384)) != 0 ? i10 + 1 : i10;
    }

    public static int zzh(int i10) {
        return zzj(zzl(i10));
    }

    public static int zzi(int i10, int i11) {
        return zzj(i10 << 3) + zzj(zzl(i11));
    }

    public static int zzj(int i10, int i11) {
        return zzj(i10 << 3) + zzj(i11);
    }

    public final void zzk(int i10) throws IOException {
        zzc(zzl(i10));
    }

    public static int zza(boolean z6) {
        return 1;
    }

    public static int zzc(int i10, zzhm zzhmVar) {
        int iZzj = zzj(i10 << 3);
        int iZzb = zzhmVar.zzb();
        return iZzj + zzj(iZzb) + iZzb;
    }

    public static int zze(int i10, int i11) {
        return zzj(i10 << 3) + zzf(i11);
    }

    public static int zzf(int i10, long j6) {
        return zzj(i10 << 3) + zzg(zzi(j6));
    }

    public static int zzg(int i10, int i11) {
        return zzj(i10 << 3) + zzf(i11);
    }

    public final void zzh(int i10, long j6) throws IOException {
        zzb(i10, zzi(j6));
    }

    public static int zza(byte[] bArr) {
        int length = bArr.length;
        return zzj(length) + length;
    }

    @Deprecated
    static int zzb(int i10, zzkj zzkjVar, zzlb zzlbVar) {
        return (zzj(i10 << 3) << 1) + ((zzhd) zzkjVar).zza(zzlbVar);
    }

    public static int zzd(long j6) {
        return zzg(j6);
    }

    public static int zzi(int i10) {
        return zzj(i10 << 3);
    }

    public final void zzh(long j6) throws IOException {
        zzb(zzi(j6));
    }

    public static int zzd(int i10, zzhm zzhmVar) {
        return (zzj(8) << 1) + zzj(2, i10) + zzc(3, zzhmVar);
    }

    public static int zze(int i10, long j6) {
        return zzj(i10 << 3) + 8;
    }

    public static int zzf(long j6) {
        return zzg(zzi(j6));
    }

    public static int zzg(int i10, long j6) {
        return zzj(i10 << 3) + zzg(j6);
    }

    public static int zza(int i10, double d) {
        return zzj(i10 << 3) + 8;
    }

    @Deprecated
    public static int zzb(zzkj zzkjVar) {
        return zzkjVar.zzbw();
    }

    public static int zzc(int i10, long j6) {
        return zzj(i10 << 3) + 8;
    }

    public static int zza(int i10, float f) {
        return zzj(i10 << 3) + 4;
    }

    public static int zzb(int i10, zzjn zzjnVar) {
        int iZzj = zzj(i10 << 3);
        int iZzb = zzjnVar.zzb();
        return iZzj + zzj(iZzb) + iZzb;
    }

    static int zzc(int i10, zzkj zzkjVar, zzlb zzlbVar) {
        return zzj(i10 << 3) + zza(zzkjVar, zzlbVar);
    }

    public static int zza(int i10, zzjn zzjnVar) {
        return (zzj(8) << 1) + zzj(2, i10) + zzb(3, zzjnVar);
    }

    public static int zzc(zzkj zzkjVar) {
        int iZzbw = zzkjVar.zzbw();
        return zzj(iZzbw) + iZzbw;
    }

    public static int zzb(int i10, zzkj zzkjVar) {
        return (zzj(8) << 1) + zzj(2, i10) + zzj(24) + zzc(zzkjVar);
    }

    public static int zza(zzjn zzjnVar) {
        int iZzb = zzjnVar.zzb();
        return zzj(iZzb) + iZzb;
    }

    static int zza(zzkj zzkjVar, zzlb zzlbVar) {
        int iZza = ((zzhd) zzkjVar).zza(zzlbVar);
        return zzj(iZza) + iZza;
    }

    public static int zzb(int i10, String str) {
        return zzj(i10 << 3) + zzb(str);
    }

    final void zza(String str, zzmk zzmkVar) throws IOException {
        zzb.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) zzmkVar);
        byte[] bytes = str.getBytes(zziz.zza);
        try {
            zzc(bytes.length);
            zza(bytes, 0, bytes.length);
        } catch (IndexOutOfBoundsException e) {
            throw new zzb(e);
        }
    }

    public static int zzb(String str) {
        int length;
        try {
            length = zzmh.zza(str);
        } catch (zzmk unused) {
            length = str.getBytes(zziz.zza).length;
        }
        return zzj(length) + length;
    }

    public static zzig zzb(byte[] bArr) {
        return new zza(bArr, 0, bArr.length);
    }

    public final void zzb() {
        if (zza() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    public final void zzb(boolean z6) throws IOException {
        zza(z6 ? (byte) 1 : (byte) 0);
    }

    public final void zzb(int i10, double d) throws IOException {
        zza(i10, Double.doubleToRawLongBits(d));
    }

    public final void zzb(double d) throws IOException {
        zza(Double.doubleToRawLongBits(d));
    }

    public final void zzb(int i10, float f) throws IOException {
        zza(i10, Float.floatToRawIntBits(f));
    }

    public final void zzb(float f) throws IOException {
        zza(Float.floatToRawIntBits(f));
    }
}
