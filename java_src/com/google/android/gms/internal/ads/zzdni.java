package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public abstract class zzdni extends zzdmq {
    private static final Logger logger = Logger.getLogger(zzdni.class.getName());
    private static final boolean zzhdn = zzdqz.zzbac();
    zzdnk zzhdo;

    static final class zzb extends zza {
        private final ByteBuffer zzhdp;
        private int zzhdq;

        zzb(ByteBuffer byteBuffer) {
            super(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining());
            this.zzhdp = byteBuffer;
            this.zzhdq = byteBuffer.position();
        }

        @Override // com.google.android.gms.internal.ads.zzdni.zza, com.google.android.gms.internal.ads.zzdni
        public final void flush() {
            this.zzhdp.position(this.zzhdq + zzawx());
        }
    }

    public static zzdni zzab(byte[] bArr) {
        return new zza(bArr, 0, bArr.length);
    }

    public static int zzbg(boolean z) {
        return 1;
    }

    public static int zzc(double d) {
        return 8;
    }

    public static int zzfn(long j) {
        int i;
        if (((-128) & j) == 0) {
            return 1;
        }
        if (j < 0) {
            return 10;
        }
        if (((-34359738368L) & j) != 0) {
            i = 6;
            j >>>= 28;
        } else {
            i = 2;
        }
        if (((-2097152) & j) != 0) {
            i += 2;
            j >>>= 14;
        }
        return (j & (-16384)) != 0 ? i + 1 : i;
    }

    public static int zzfp(long j) {
        return 8;
    }

    public static int zzfq(long j) {
        return 8;
    }

    private static long zzfr(long j) {
        return (j >> 63) ^ (j << 1);
    }

    public static int zzgf(int i) {
        if ((i & (-128)) == 0) {
            return 1;
        }
        if ((i & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i) == 0) {
            return 3;
        }
        return (i & (-268435456)) == 0 ? 4 : 5;
    }

    public static int zzgh(int i) {
        return 4;
    }

    public static int zzgi(int i) {
        return 4;
    }

    private static int zzgk(int i) {
        return (i >> 31) ^ (i << 1);
    }

    public static int zzh(float f) {
        return 4;
    }

    public abstract void flush() throws IOException;

    public abstract void write(byte[] bArr, int i, int i2) throws IOException;

    public abstract void zza(int i, zzdmr zzdmrVar) throws IOException;

    public abstract void zza(int i, zzdpk zzdpkVar) throws IOException;

    abstract void zza(int i, zzdpk zzdpkVar, zzdqb zzdqbVar) throws IOException;

    abstract void zza(zzdpk zzdpkVar, zzdqb zzdqbVar) throws IOException;

    public abstract void zzaa(int i, int i2) throws IOException;

    public abstract int zzawu();

    public abstract void zzb(int i, zzdmr zzdmrVar) throws IOException;

    public abstract void zzb(int i, zzdpk zzdpkVar) throws IOException;

    public abstract void zzcz(zzdmr zzdmrVar) throws IOException;

    public abstract void zzd(byte b) throws IOException;

    public abstract void zzf(int i, String str) throws IOException;

    public abstract void zzfj(long j) throws IOException;

    public abstract void zzfl(long j) throws IOException;

    public abstract void zzfz(int i) throws IOException;

    public abstract void zzga(int i) throws IOException;

    public abstract void zzgc(int i) throws IOException;

    public abstract void zzgw(String str) throws IOException;

    public abstract void zzh(int i, long j) throws IOException;

    public abstract void zzi(int i, boolean z) throws IOException;

    public abstract void zzj(int i, long j) throws IOException;

    public abstract void zzj(zzdpk zzdpkVar) throws IOException;

    abstract void zzk(byte[] bArr, int i, int i2) throws IOException;

    public abstract void zzw(int i, int i2) throws IOException;

    public abstract void zzx(int i, int i2) throws IOException;

    public abstract void zzy(int i, int i2) throws IOException;

    public static class zzc extends IOException {
        zzc() {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.");
        }

        /* JADX WARN: Illegal instructions before constructor call */
        zzc(String str) {
            String strValueOf = String.valueOf(str);
            super(strValueOf.length() != 0 ? "CodedOutputStream was writing to a flat byte array and ran out of space.: ".concat(strValueOf) : new String("CodedOutputStream was writing to a flat byte array and ran out of space.: "));
        }

        zzc(Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        zzc(String str, Throwable th) {
            String strValueOf = String.valueOf(str);
            super(strValueOf.length() != 0 ? "CodedOutputStream was writing to a flat byte array and ran out of space.: ".concat(strValueOf) : new String("CodedOutputStream was writing to a flat byte array and ran out of space.: "), th);
        }
    }

    public static zzdni zzm(ByteBuffer byteBuffer) {
        if (byteBuffer.hasArray()) {
            return new zzb(byteBuffer);
        }
        if (byteBuffer.isDirect() && !byteBuffer.isReadOnly()) {
            if (zzdqz.zzbad()) {
                return new zze(byteBuffer);
            }
            return new zzd(byteBuffer);
        }
        throw new IllegalArgumentException("ByteBuffer is read-only");
    }

    static final class zzd extends zzdni {
        private final ByteBuffer zzaxl;
        private final int zzhdq;
        private final ByteBuffer zzhdr;

        zzd(ByteBuffer byteBuffer) {
            super();
            this.zzhdr = byteBuffer;
            this.zzaxl = byteBuffer.duplicate().order(ByteOrder.LITTLE_ENDIAN);
            this.zzhdq = byteBuffer.position();
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzw(int i, int i2) throws IOException {
            zzga((i << 3) | i2);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzx(int i, int i2) throws IOException {
            zzw(i, 0);
            zzfz(i2);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzy(int i, int i2) throws IOException {
            zzw(i, 0);
            zzga(i2);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzaa(int i, int i2) throws IOException {
            zzw(i, 5);
            zzgc(i2);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzh(int i, long j) throws IOException {
            zzw(i, 0);
            zzfj(j);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzj(int i, long j) throws IOException {
            zzw(i, 1);
            zzfl(j);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzi(int i, boolean z) throws IOException {
            zzw(i, 0);
            zzd(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzf(int i, String str) throws IOException {
            zzw(i, 2);
            zzgw(str);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zza(int i, zzdmr zzdmrVar) throws IOException {
            zzw(i, 2);
            zzcz(zzdmrVar);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zza(int i, zzdpk zzdpkVar) throws IOException {
            zzw(i, 2);
            zzj(zzdpkVar);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        final void zza(int i, zzdpk zzdpkVar, zzdqb zzdqbVar) throws IOException {
            zzw(i, 2);
            zza(zzdpkVar, zzdqbVar);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzb(int i, zzdpk zzdpkVar) throws IOException {
            zzw(1, 3);
            zzy(2, i);
            zza(3, zzdpkVar);
            zzw(1, 4);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzb(int i, zzdmr zzdmrVar) throws IOException {
            zzw(1, 3);
            zzy(2, i);
            zza(3, zzdmrVar);
            zzw(1, 4);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzj(zzdpk zzdpkVar) throws IOException {
            zzga(zzdpkVar.zzaxj());
            zzdpkVar.zzb(this);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        final void zza(zzdpk zzdpkVar, zzdqb zzdqbVar) throws IOException {
            zzdmi zzdmiVar = (zzdmi) zzdpkVar;
            int iZzavg = zzdmiVar.zzavg();
            if (iZzavg == -1) {
                iZzavg = zzdqbVar.zzak(zzdmiVar);
                zzdmiVar.zzfi(iZzavg);
            }
            zzga(iZzavg);
            zzdqbVar.zza(zzdpkVar, this.zzhdo);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzd(byte b) throws IOException {
            try {
                this.zzaxl.put(b);
            } catch (BufferOverflowException e) {
                throw new zzc(e);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzcz(zzdmr zzdmrVar) throws IOException {
            zzga(zzdmrVar.size());
            zzdmrVar.zza(this);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzk(byte[] bArr, int i, int i2) throws IOException {
            zzga(i2);
            write(bArr, 0, i2);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzfz(int i) throws IOException {
            if (i >= 0) {
                zzga(i);
            } else {
                zzfj(i);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzga(int i) throws IOException {
            while ((i & (-128)) != 0) {
                try {
                    this.zzaxl.put((byte) ((i & 127) | 128));
                    i >>>= 7;
                } catch (BufferOverflowException e) {
                    throw new zzc(e);
                }
            }
            this.zzaxl.put((byte) i);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzgc(int i) throws IOException {
            try {
                this.zzaxl.putInt(i);
            } catch (BufferOverflowException e) {
                throw new zzc(e);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzfj(long j) throws IOException {
            while (((-128) & j) != 0) {
                try {
                    this.zzaxl.put((byte) ((((int) j) & 127) | 128));
                    j >>>= 7;
                } catch (BufferOverflowException e) {
                    throw new zzc(e);
                }
            }
            this.zzaxl.put((byte) j);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzfl(long j) throws IOException {
            try {
                this.zzaxl.putLong(j);
            } catch (BufferOverflowException e) {
                throw new zzc(e);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void write(byte[] bArr, int i, int i2) throws IOException {
            try {
                this.zzaxl.put(bArr, i, i2);
            } catch (IndexOutOfBoundsException e) {
                throw new zzc(e);
            } catch (BufferOverflowException e2) {
                throw new zzc(e2);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdmq
        public final void zzh(byte[] bArr, int i, int i2) throws IOException {
            write(bArr, i, i2);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzgw(String str) throws IOException {
            int iPosition = this.zzaxl.position();
            try {
                int iZzgf = zzdni.zzgf(str.length() * 3);
                int iZzgf2 = zzdni.zzgf(str.length());
                if (iZzgf2 == iZzgf) {
                    int iPosition2 = this.zzaxl.position() + iZzgf2;
                    this.zzaxl.position(iPosition2);
                    zzgy(str);
                    int iPosition3 = this.zzaxl.position();
                    this.zzaxl.position(iPosition);
                    zzga(iPosition3 - iPosition2);
                    this.zzaxl.position(iPosition3);
                    return;
                }
                zzga(zzdrb.zza(str));
                zzgy(str);
            } catch (zzdrf e) {
                this.zzaxl.position(iPosition);
                zza(str, e);
            } catch (IllegalArgumentException e2) {
                throw new zzc(e2);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void flush() {
            this.zzhdr.position(this.zzaxl.position());
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final int zzawu() {
            return this.zzaxl.remaining();
        }

        private final void zzgy(String str) throws IOException {
            try {
                zzdrb.zza(str, this.zzaxl);
            } catch (IndexOutOfBoundsException e) {
                throw new zzc(e);
            }
        }
    }

    static final class zze extends zzdni {
        private long zzahv;
        private final ByteBuffer zzaxl;
        private final ByteBuffer zzhdr;
        private final long zzhds;
        private final long zzhdt;
        private final long zzhdu;
        private final long zzhdv;

        zze(ByteBuffer byteBuffer) {
            super();
            this.zzhdr = byteBuffer;
            this.zzaxl = byteBuffer.duplicate().order(ByteOrder.LITTLE_ENDIAN);
            this.zzhds = zzdqz.zzn(byteBuffer);
            this.zzhdt = this.zzhds + byteBuffer.position();
            this.zzhdu = this.zzhds + byteBuffer.limit();
            this.zzhdv = this.zzhdu - 10;
            this.zzahv = this.zzhdt;
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzw(int i, int i2) throws IOException {
            zzga((i << 3) | i2);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzx(int i, int i2) throws IOException {
            zzw(i, 0);
            zzfz(i2);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzy(int i, int i2) throws IOException {
            zzw(i, 0);
            zzga(i2);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzaa(int i, int i2) throws IOException {
            zzw(i, 5);
            zzgc(i2);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzh(int i, long j) throws IOException {
            zzw(i, 0);
            zzfj(j);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzj(int i, long j) throws IOException {
            zzw(i, 1);
            zzfl(j);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzi(int i, boolean z) throws IOException {
            zzw(i, 0);
            zzd(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzf(int i, String str) throws IOException {
            zzw(i, 2);
            zzgw(str);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zza(int i, zzdmr zzdmrVar) throws IOException {
            zzw(i, 2);
            zzcz(zzdmrVar);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zza(int i, zzdpk zzdpkVar) throws IOException {
            zzw(i, 2);
            zzj(zzdpkVar);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        final void zza(int i, zzdpk zzdpkVar, zzdqb zzdqbVar) throws IOException {
            zzw(i, 2);
            zza(zzdpkVar, zzdqbVar);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzb(int i, zzdpk zzdpkVar) throws IOException {
            zzw(1, 3);
            zzy(2, i);
            zza(3, zzdpkVar);
            zzw(1, 4);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzb(int i, zzdmr zzdmrVar) throws IOException {
            zzw(1, 3);
            zzy(2, i);
            zza(3, zzdmrVar);
            zzw(1, 4);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzj(zzdpk zzdpkVar) throws IOException {
            zzga(zzdpkVar.zzaxj());
            zzdpkVar.zzb(this);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        final void zza(zzdpk zzdpkVar, zzdqb zzdqbVar) throws IOException {
            zzdmi zzdmiVar = (zzdmi) zzdpkVar;
            int iZzavg = zzdmiVar.zzavg();
            if (iZzavg == -1) {
                iZzavg = zzdqbVar.zzak(zzdmiVar);
                zzdmiVar.zzfi(iZzavg);
            }
            zzga(iZzavg);
            zzdqbVar.zza(zzdpkVar, this.zzhdo);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzd(byte b) throws IOException {
            long j = this.zzahv;
            if (j >= this.zzhdu) {
                throw new zzc(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(j), Long.valueOf(this.zzhdu), 1));
            }
            this.zzahv = 1 + j;
            zzdqz.zza(j, b);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzcz(zzdmr zzdmrVar) throws IOException {
            zzga(zzdmrVar.size());
            zzdmrVar.zza(this);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzk(byte[] bArr, int i, int i2) throws IOException {
            zzga(i2);
            write(bArr, 0, i2);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzfz(int i) throws IOException {
            if (i >= 0) {
                zzga(i);
            } else {
                zzfj(i);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzga(int i) throws IOException {
            if (this.zzahv <= this.zzhdv) {
                while ((i & (-128)) != 0) {
                    long j = this.zzahv;
                    this.zzahv = j + 1;
                    zzdqz.zza(j, (byte) ((i & 127) | 128));
                    i >>>= 7;
                }
                long j2 = this.zzahv;
                this.zzahv = 1 + j2;
                zzdqz.zza(j2, (byte) i);
                return;
            }
            while (true) {
                long j3 = this.zzahv;
                if (j3 >= this.zzhdu) {
                    throw new zzc(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(j3), Long.valueOf(this.zzhdu), 1));
                }
                if ((i & (-128)) == 0) {
                    this.zzahv = 1 + j3;
                    zzdqz.zza(j3, (byte) i);
                    return;
                } else {
                    this.zzahv = j3 + 1;
                    zzdqz.zza(j3, (byte) ((i & 127) | 128));
                    i >>>= 7;
                }
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzgc(int i) throws IOException {
            this.zzaxl.putInt((int) (this.zzahv - this.zzhds), i);
            this.zzahv += 4;
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzfj(long j) throws IOException {
            if (this.zzahv <= this.zzhdv) {
                while ((j & (-128)) != 0) {
                    long j2 = this.zzahv;
                    this.zzahv = j2 + 1;
                    zzdqz.zza(j2, (byte) ((((int) j) & 127) | 128));
                    j >>>= 7;
                }
                long j3 = this.zzahv;
                this.zzahv = 1 + j3;
                zzdqz.zza(j3, (byte) j);
                return;
            }
            while (true) {
                long j4 = this.zzahv;
                if (j4 >= this.zzhdu) {
                    throw new zzc(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(j4), Long.valueOf(this.zzhdu), 1));
                }
                if ((j & (-128)) == 0) {
                    this.zzahv = 1 + j4;
                    zzdqz.zza(j4, (byte) j);
                    return;
                } else {
                    this.zzahv = j4 + 1;
                    zzdqz.zza(j4, (byte) ((((int) j) & 127) | 128));
                    j >>>= 7;
                }
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzfl(long j) throws IOException {
            this.zzaxl.putLong((int) (this.zzahv - this.zzhds), j);
            this.zzahv += 8;
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void write(byte[] bArr, int i, int i2) throws IOException {
            if (bArr != null && i >= 0 && i2 >= 0 && bArr.length - i2 >= i) {
                long j = i2;
                long j2 = this.zzhdu - j;
                long j3 = this.zzahv;
                if (j2 >= j3) {
                    zzdqz.zza(bArr, i, j3, j);
                    this.zzahv += j;
                    return;
                }
            }
            if (bArr == null) {
                throw new NullPointerException("value");
            }
            throw new zzc(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(this.zzahv), Long.valueOf(this.zzhdu), Integer.valueOf(i2)));
        }

        @Override // com.google.android.gms.internal.ads.zzdmq
        public final void zzh(byte[] bArr, int i, int i2) throws IOException {
            write(bArr, i, i2);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzgw(String str) throws IOException {
            long j = this.zzahv;
            try {
                int iZzgf = zzdni.zzgf(str.length() * 3);
                int iZzgf2 = zzdni.zzgf(str.length());
                if (iZzgf2 == iZzgf) {
                    int i = ((int) (this.zzahv - this.zzhds)) + iZzgf2;
                    this.zzaxl.position(i);
                    zzdrb.zza(str, this.zzaxl);
                    int iPosition = this.zzaxl.position() - i;
                    zzga(iPosition);
                    this.zzahv += iPosition;
                    return;
                }
                int iZza = zzdrb.zza(str);
                zzga(iZza);
                zzfs(this.zzahv);
                zzdrb.zza(str, this.zzaxl);
                this.zzahv += iZza;
            } catch (zzdrf e) {
                this.zzahv = j;
                zzfs(this.zzahv);
                zza(str, e);
            } catch (IllegalArgumentException e2) {
                throw new zzc(e2);
            } catch (IndexOutOfBoundsException e3) {
                throw new zzc(e3);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void flush() {
            this.zzhdr.position((int) (this.zzahv - this.zzhds));
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final int zzawu() {
            return (int) (this.zzhdu - this.zzahv);
        }

        private final void zzfs(long j) {
            this.zzaxl.position((int) (j - this.zzhds));
        }
    }

    static class zza extends zzdni {
        private final byte[] buffer;
        private final int limit;
        private final int offset;
        private int position;

        zza(byte[] bArr, int i, int i2) {
            super();
            if (bArr == null) {
                throw new NullPointerException("buffer");
            }
            int i3 = i + i2;
            if ((i | i2 | (bArr.length - i3)) < 0) {
                throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
            }
            this.buffer = bArr;
            this.offset = i;
            this.position = i;
            this.limit = i3;
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public void flush() {
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzw(int i, int i2) throws IOException {
            zzga((i << 3) | i2);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzx(int i, int i2) throws IOException {
            zzw(i, 0);
            zzfz(i2);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzy(int i, int i2) throws IOException {
            zzw(i, 0);
            zzga(i2);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzaa(int i, int i2) throws IOException {
            zzw(i, 5);
            zzgc(i2);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzh(int i, long j) throws IOException {
            zzw(i, 0);
            zzfj(j);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzj(int i, long j) throws IOException {
            zzw(i, 1);
            zzfl(j);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzi(int i, boolean z) throws IOException {
            zzw(i, 0);
            zzd(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzf(int i, String str) throws IOException {
            zzw(i, 2);
            zzgw(str);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zza(int i, zzdmr zzdmrVar) throws IOException {
            zzw(i, 2);
            zzcz(zzdmrVar);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzcz(zzdmr zzdmrVar) throws IOException {
            zzga(zzdmrVar.size());
            zzdmrVar.zza(this);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzk(byte[] bArr, int i, int i2) throws IOException {
            zzga(i2);
            write(bArr, 0, i2);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zza(int i, zzdpk zzdpkVar) throws IOException {
            zzw(i, 2);
            zzj(zzdpkVar);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        final void zza(int i, zzdpk zzdpkVar, zzdqb zzdqbVar) throws IOException {
            zzw(i, 2);
            zzdmi zzdmiVar = (zzdmi) zzdpkVar;
            int iZzavg = zzdmiVar.zzavg();
            if (iZzavg == -1) {
                iZzavg = zzdqbVar.zzak(zzdmiVar);
                zzdmiVar.zzfi(iZzavg);
            }
            zzga(iZzavg);
            zzdqbVar.zza(zzdpkVar, this.zzhdo);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzb(int i, zzdpk zzdpkVar) throws IOException {
            zzw(1, 3);
            zzy(2, i);
            zza(3, zzdpkVar);
            zzw(1, 4);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzb(int i, zzdmr zzdmrVar) throws IOException {
            zzw(1, 3);
            zzy(2, i);
            zza(3, zzdmrVar);
            zzw(1, 4);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzj(zzdpk zzdpkVar) throws IOException {
            zzga(zzdpkVar.zzaxj());
            zzdpkVar.zzb(this);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        final void zza(zzdpk zzdpkVar, zzdqb zzdqbVar) throws IOException {
            zzdmi zzdmiVar = (zzdmi) zzdpkVar;
            int iZzavg = zzdmiVar.zzavg();
            if (iZzavg == -1) {
                iZzavg = zzdqbVar.zzak(zzdmiVar);
                zzdmiVar.zzfi(iZzavg);
            }
            zzga(iZzavg);
            zzdqbVar.zza(zzdpkVar, this.zzhdo);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzd(byte b) throws IOException {
            try {
                byte[] bArr = this.buffer;
                int i = this.position;
                this.position = i + 1;
                bArr[i] = b;
            } catch (IndexOutOfBoundsException e) {
                throw new zzc(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzfz(int i) throws IOException {
            if (i >= 0) {
                zzga(i);
            } else {
                zzfj(i);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzga(int i) throws IOException {
            if (zzdni.zzhdn && zzawu() >= 10) {
                while ((i & (-128)) != 0) {
                    byte[] bArr = this.buffer;
                    int i2 = this.position;
                    this.position = i2 + 1;
                    zzdqz.zza(bArr, i2, (byte) ((i & 127) | 128));
                    i >>>= 7;
                }
                byte[] bArr2 = this.buffer;
                int i3 = this.position;
                this.position = i3 + 1;
                zzdqz.zza(bArr2, i3, (byte) i);
                return;
            }
            while ((i & (-128)) != 0) {
                try {
                    byte[] bArr3 = this.buffer;
                    int i4 = this.position;
                    this.position = i4 + 1;
                    bArr3[i4] = (byte) ((i & 127) | 128);
                    i >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new zzc(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e);
                }
            }
            byte[] bArr4 = this.buffer;
            int i5 = this.position;
            this.position = i5 + 1;
            bArr4[i5] = (byte) i;
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzgc(int i) throws IOException {
            try {
                byte[] bArr = this.buffer;
                int i2 = this.position;
                this.position = i2 + 1;
                bArr[i2] = (byte) i;
                byte[] bArr2 = this.buffer;
                int i3 = this.position;
                this.position = i3 + 1;
                bArr2[i3] = (byte) (i >> 8);
                byte[] bArr3 = this.buffer;
                int i4 = this.position;
                this.position = i4 + 1;
                bArr3[i4] = (byte) (i >> 16);
                byte[] bArr4 = this.buffer;
                int i5 = this.position;
                this.position = i5 + 1;
                bArr4[i5] = (byte) (i >>> 24);
            } catch (IndexOutOfBoundsException e) {
                throw new zzc(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzfj(long j) throws IOException {
            if (zzdni.zzhdn && zzawu() >= 10) {
                while ((j & (-128)) != 0) {
                    byte[] bArr = this.buffer;
                    int i = this.position;
                    this.position = i + 1;
                    zzdqz.zza(bArr, i, (byte) ((((int) j) & 127) | 128));
                    j >>>= 7;
                }
                byte[] bArr2 = this.buffer;
                int i2 = this.position;
                this.position = i2 + 1;
                zzdqz.zza(bArr2, i2, (byte) j);
                return;
            }
            while ((j & (-128)) != 0) {
                try {
                    byte[] bArr3 = this.buffer;
                    int i3 = this.position;
                    this.position = i3 + 1;
                    bArr3[i3] = (byte) ((((int) j) & 127) | 128);
                    j >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new zzc(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e);
                }
            }
            byte[] bArr4 = this.buffer;
            int i4 = this.position;
            this.position = i4 + 1;
            bArr4[i4] = (byte) j;
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzfl(long j) throws IOException {
            try {
                byte[] bArr = this.buffer;
                int i = this.position;
                this.position = i + 1;
                bArr[i] = (byte) j;
                byte[] bArr2 = this.buffer;
                int i2 = this.position;
                this.position = i2 + 1;
                bArr2[i2] = (byte) (j >> 8);
                byte[] bArr3 = this.buffer;
                int i3 = this.position;
                this.position = i3 + 1;
                bArr3[i3] = (byte) (j >> 16);
                byte[] bArr4 = this.buffer;
                int i4 = this.position;
                this.position = i4 + 1;
                bArr4[i4] = (byte) (j >> 24);
                byte[] bArr5 = this.buffer;
                int i5 = this.position;
                this.position = i5 + 1;
                bArr5[i5] = (byte) (j >> 32);
                byte[] bArr6 = this.buffer;
                int i6 = this.position;
                this.position = i6 + 1;
                bArr6[i6] = (byte) (j >> 40);
                byte[] bArr7 = this.buffer;
                int i7 = this.position;
                this.position = i7 + 1;
                bArr7[i7] = (byte) (j >> 48);
                byte[] bArr8 = this.buffer;
                int i8 = this.position;
                this.position = i8 + 1;
                bArr8[i8] = (byte) (j >> 56);
            } catch (IndexOutOfBoundsException e) {
                throw new zzc(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void write(byte[] bArr, int i, int i2) throws IOException {
            try {
                System.arraycopy(bArr, i, this.buffer, this.position, i2);
                this.position += i2;
            } catch (IndexOutOfBoundsException e) {
                throw new zzc(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), Integer.valueOf(i2)), e);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdmq
        public final void zzh(byte[] bArr, int i, int i2) throws IOException {
            write(bArr, i, i2);
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final void zzgw(String str) throws IOException {
            int i = this.position;
            try {
                int iZzgf = zzdni.zzgf(str.length() * 3);
                int iZzgf2 = zzdni.zzgf(str.length());
                if (iZzgf2 == iZzgf) {
                    this.position = i + iZzgf2;
                    int iZza = zzdrb.zza(str, this.buffer, this.position, zzawu());
                    this.position = i;
                    zzga((iZza - i) - iZzgf2);
                    this.position = iZza;
                    return;
                }
                zzga(zzdrb.zza(str));
                this.position = zzdrb.zza(str, this.buffer, this.position, zzawu());
            } catch (zzdrf e) {
                this.position = i;
                zza(str, e);
            } catch (IndexOutOfBoundsException e2) {
                throw new zzc(e2);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdni
        public final int zzawu() {
            return this.limit - this.position;
        }

        public final int zzawx() {
            return this.position - this.offset;
        }
    }

    private zzdni() {
    }

    public final void zzz(int i, int i2) throws IOException {
        zzy(i, zzgk(i2));
    }

    public final void zzi(int i, long j) throws IOException {
        zzh(i, zzfr(j));
    }

    public final void zza(int i, float f) throws IOException {
        zzaa(i, Float.floatToRawIntBits(f));
    }

    public final void zzb(int i, double d) throws IOException {
        zzj(i, Double.doubleToRawLongBits(d));
    }

    public final void zzgb(int i) throws IOException {
        zzga(zzgk(i));
    }

    public final void zzfk(long j) throws IOException {
        zzfj(zzfr(j));
    }

    public final void zzg(float f) throws IOException {
        zzgc(Float.floatToRawIntBits(f));
    }

    public final void zzb(double d) throws IOException {
        zzfl(Double.doubleToRawLongBits(d));
    }

    public final void zzbf(boolean z) throws IOException {
        zzd(z ? (byte) 1 : (byte) 0);
    }

    public static int zzab(int i, int i2) {
        return zzgd(i) + zzge(i2);
    }

    public static int zzac(int i, int i2) {
        return zzgd(i) + zzgf(i2);
    }

    public static int zzad(int i, int i2) {
        return zzgd(i) + zzgf(zzgk(i2));
    }

    public static int zzae(int i, int i2) {
        return zzgd(i) + 4;
    }

    public static int zzaf(int i, int i2) {
        return zzgd(i) + 4;
    }

    public static int zzk(int i, long j) {
        return zzgd(i) + zzfn(j);
    }

    public static int zzl(int i, long j) {
        return zzgd(i) + zzfn(j);
    }

    public static int zzm(int i, long j) {
        return zzgd(i) + zzfn(zzfr(j));
    }

    public static int zzn(int i, long j) {
        return zzgd(i) + 8;
    }

    public static int zzo(int i, long j) {
        return zzgd(i) + 8;
    }

    public static int zzb(int i, float f) {
        return zzgd(i) + 4;
    }

    public static int zzc(int i, double d) {
        return zzgd(i) + 8;
    }

    public static int zzj(int i, boolean z) {
        return zzgd(i) + 1;
    }

    public static int zzag(int i, int i2) {
        return zzgd(i) + zzge(i2);
    }

    public static int zzg(int i, String str) {
        return zzgd(i) + zzgx(str);
    }

    public static int zzc(int i, zzdmr zzdmrVar) {
        int iZzgd = zzgd(i);
        int size = zzdmrVar.size();
        return iZzgd + zzgf(size) + size;
    }

    public static int zza(int i, zzdor zzdorVar) {
        int iZzgd = zzgd(i);
        int iZzaxj = zzdorVar.zzaxj();
        return iZzgd + zzgf(iZzaxj) + iZzaxj;
    }

    public static int zzc(int i, zzdpk zzdpkVar) {
        return zzgd(i) + zzk(zzdpkVar);
    }

    static int zzb(int i, zzdpk zzdpkVar, zzdqb zzdqbVar) {
        return zzgd(i) + zzb(zzdpkVar, zzdqbVar);
    }

    public static int zzd(int i, zzdpk zzdpkVar) {
        return (zzgd(1) << 1) + zzac(2, i) + zzc(3, zzdpkVar);
    }

    public static int zzd(int i, zzdmr zzdmrVar) {
        return (zzgd(1) << 1) + zzac(2, i) + zzc(3, zzdmrVar);
    }

    public static int zzb(int i, zzdor zzdorVar) {
        return (zzgd(1) << 1) + zzac(2, i) + zza(3, zzdorVar);
    }

    public static int zzgd(int i) {
        return zzgf(i << 3);
    }

    public static int zzge(int i) {
        if (i >= 0) {
            return zzgf(i);
        }
        return 10;
    }

    public static int zzgg(int i) {
        return zzgf(zzgk(i));
    }

    public static int zzfm(long j) {
        return zzfn(j);
    }

    public static int zzfo(long j) {
        return zzfn(zzfr(j));
    }

    public static int zzgj(int i) {
        return zzge(i);
    }

    public static int zzgx(String str) {
        int length;
        try {
            length = zzdrb.zza(str);
        } catch (zzdrf unused) {
            length = str.getBytes(zzdod.UTF_8).length;
        }
        return zzgf(length) + length;
    }

    public static int zza(zzdor zzdorVar) {
        int iZzaxj = zzdorVar.zzaxj();
        return zzgf(iZzaxj) + iZzaxj;
    }

    public static int zzda(zzdmr zzdmrVar) {
        int size = zzdmrVar.size();
        return zzgf(size) + size;
    }

    public static int zzac(byte[] bArr) {
        int length = bArr.length;
        return zzgf(length) + length;
    }

    public static int zzk(zzdpk zzdpkVar) {
        int iZzaxj = zzdpkVar.zzaxj();
        return zzgf(iZzaxj) + iZzaxj;
    }

    static int zzb(zzdpk zzdpkVar, zzdqb zzdqbVar) {
        zzdmi zzdmiVar = (zzdmi) zzdpkVar;
        int iZzavg = zzdmiVar.zzavg();
        if (iZzavg == -1) {
            iZzavg = zzdqbVar.zzak(zzdmiVar);
            zzdmiVar.zzfi(iZzavg);
        }
        return zzgf(iZzavg) + iZzavg;
    }

    public final void zzawv() {
        if (zzawu() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    final void zza(String str, zzdrf zzdrfVar) throws IOException {
        logger.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) zzdrfVar);
        byte[] bytes = str.getBytes(zzdod.UTF_8);
        try {
            zzga(bytes.length);
            zzh(bytes, 0, bytes.length);
        } catch (zzc e) {
            throw e;
        } catch (IndexOutOfBoundsException e2) {
            throw new zzc(e2);
        }
    }

    @Deprecated
    static int zzc(int i, zzdpk zzdpkVar, zzdqb zzdqbVar) {
        int iZzgd = zzgd(i) << 1;
        zzdmi zzdmiVar = (zzdmi) zzdpkVar;
        int iZzavg = zzdmiVar.zzavg();
        if (iZzavg == -1) {
            iZzavg = zzdqbVar.zzak(zzdmiVar);
            zzdmiVar.zzfi(iZzavg);
        }
        return iZzgd + iZzavg;
    }

    @Deprecated
    public static int zzl(zzdpk zzdpkVar) {
        return zzdpkVar.zzaxj();
    }

    @Deprecated
    public static int zzgl(int i) {
        return zzgf(i);
    }
}
