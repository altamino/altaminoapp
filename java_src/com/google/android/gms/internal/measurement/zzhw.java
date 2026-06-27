package com.google.android.gms.internal.measurement;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import libcore.io.Memory;
import sun.misc.Unsafe;

/* loaded from: classes2.dex */
final class zzhw {
    private static final boolean zzacv;
    private static final zzd zzaky;
    private static final boolean zzakz;
    private static final long zzala;
    private static final long zzalb;
    private static final long zzalc;
    private static final long zzald;
    private static final long zzale;
    private static final long zzalf;
    private static final long zzalg;
    private static final long zzalh;
    private static final long zzali;
    private static final long zzalj;
    private static final long zzalk;
    private static final long zzall;
    private static final long zzalm;
    private static final long zzaln;
    private static final boolean zzalo;
    private static final Logger logger = Logger.getLogger(zzhw.class.getName());
    private static final Unsafe zzaiz = zzow();
    private static final Class<?> zzabq = zzdk.zzkc();
    private static final boolean zzakw = zzk(Long.TYPE);
    private static final boolean zzakx = zzk(Integer.TYPE);

    private zzhw() {
    }

    static final class zzb extends zzd {
        zzb(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.measurement.zzhw.zzd
        public final void zza(long j, byte b) {
            Memory.pokeByte(j, b);
        }

        @Override // com.google.android.gms.internal.measurement.zzhw.zzd
        public final byte zzy(Object obj, long j) {
            if (zzhw.zzalo) {
                return zzhw.zzq(obj, j);
            }
            return zzhw.zzr(obj, j);
        }

        @Override // com.google.android.gms.internal.measurement.zzhw.zzd
        public final void zze(Object obj, long j, byte b) {
            if (zzhw.zzalo) {
                zzhw.zza(obj, j, b);
            } else {
                zzhw.zzb(obj, j, b);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzhw.zzd
        public final boolean zzm(Object obj, long j) {
            if (zzhw.zzalo) {
                return zzhw.zzs(obj, j);
            }
            return zzhw.zzt(obj, j);
        }

        @Override // com.google.android.gms.internal.measurement.zzhw.zzd
        public final void zza(Object obj, long j, boolean z) {
            if (zzhw.zzalo) {
                zzhw.zzb(obj, j, z);
            } else {
                zzhw.zzc(obj, j, z);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzhw.zzd
        public final float zzn(Object obj, long j) {
            return Float.intBitsToFloat(zzk(obj, j));
        }

        @Override // com.google.android.gms.internal.measurement.zzhw.zzd
        public final void zza(Object obj, long j, float f) {
            zzb(obj, j, Float.floatToIntBits(f));
        }

        @Override // com.google.android.gms.internal.measurement.zzhw.zzd
        public final double zzo(Object obj, long j) {
            return Double.longBitsToDouble(zzl(obj, j));
        }

        @Override // com.google.android.gms.internal.measurement.zzhw.zzd
        public final void zza(Object obj, long j, double d) {
            zza(obj, j, Double.doubleToLongBits(d));
        }

        @Override // com.google.android.gms.internal.measurement.zzhw.zzd
        public final void zza(byte[] bArr, long j, long j2, long j3) {
            Memory.pokeByteArray(j2, bArr, (int) j, (int) j3);
        }
    }

    static final class zzc extends zzd {
        zzc(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.measurement.zzhw.zzd
        public final void zza(long j, byte b) {
            this.zzalp.putByte(j, b);
        }

        @Override // com.google.android.gms.internal.measurement.zzhw.zzd
        public final byte zzy(Object obj, long j) {
            return this.zzalp.getByte(obj, j);
        }

        @Override // com.google.android.gms.internal.measurement.zzhw.zzd
        public final void zze(Object obj, long j, byte b) {
            this.zzalp.putByte(obj, j, b);
        }

        @Override // com.google.android.gms.internal.measurement.zzhw.zzd
        public final boolean zzm(Object obj, long j) {
            return this.zzalp.getBoolean(obj, j);
        }

        @Override // com.google.android.gms.internal.measurement.zzhw.zzd
        public final void zza(Object obj, long j, boolean z) {
            this.zzalp.putBoolean(obj, j, z);
        }

        @Override // com.google.android.gms.internal.measurement.zzhw.zzd
        public final float zzn(Object obj, long j) {
            return this.zzalp.getFloat(obj, j);
        }

        @Override // com.google.android.gms.internal.measurement.zzhw.zzd
        public final void zza(Object obj, long j, float f) {
            this.zzalp.putFloat(obj, j, f);
        }

        @Override // com.google.android.gms.internal.measurement.zzhw.zzd
        public final double zzo(Object obj, long j) {
            return this.zzalp.getDouble(obj, j);
        }

        @Override // com.google.android.gms.internal.measurement.zzhw.zzd
        public final void zza(Object obj, long j, double d) {
            this.zzalp.putDouble(obj, j, d);
        }

        @Override // com.google.android.gms.internal.measurement.zzhw.zzd
        public final void zza(byte[] bArr, long j, long j2, long j3) {
            this.zzalp.copyMemory(bArr, zzhw.zzala + j, (Object) null, j2, j3);
        }
    }

    static boolean zzou() {
        return zzacv;
    }

    static abstract class zzd {
        Unsafe zzalp;

        zzd(Unsafe unsafe) {
            this.zzalp = unsafe;
        }

        public abstract void zza(long j, byte b);

        public abstract void zza(Object obj, long j, double d);

        public abstract void zza(Object obj, long j, float f);

        public abstract void zza(Object obj, long j, boolean z);

        public abstract void zza(byte[] bArr, long j, long j2, long j3);

        public abstract void zze(Object obj, long j, byte b);

        public abstract boolean zzm(Object obj, long j);

        public abstract float zzn(Object obj, long j);

        public abstract double zzo(Object obj, long j);

        public abstract byte zzy(Object obj, long j);

        public final int zzk(Object obj, long j) {
            return this.zzalp.getInt(obj, j);
        }

        public final void zzb(Object obj, long j, int i) {
            this.zzalp.putInt(obj, j, i);
        }

        public final long zzl(Object obj, long j) {
            return this.zzalp.getLong(obj, j);
        }

        public final void zza(Object obj, long j, long j2) {
            this.zzalp.putLong(obj, j, j2);
        }
    }

    static boolean zzov() {
        return zzakz;
    }

    static final class zza extends zzd {
        zza(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.measurement.zzhw.zzd
        public final void zza(long j, byte b) {
            Memory.pokeByte((int) (j & (-1)), b);
        }

        @Override // com.google.android.gms.internal.measurement.zzhw.zzd
        public final byte zzy(Object obj, long j) {
            if (zzhw.zzalo) {
                return zzhw.zzq(obj, j);
            }
            return zzhw.zzr(obj, j);
        }

        @Override // com.google.android.gms.internal.measurement.zzhw.zzd
        public final void zze(Object obj, long j, byte b) {
            if (zzhw.zzalo) {
                zzhw.zza(obj, j, b);
            } else {
                zzhw.zzb(obj, j, b);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzhw.zzd
        public final boolean zzm(Object obj, long j) {
            if (zzhw.zzalo) {
                return zzhw.zzs(obj, j);
            }
            return zzhw.zzt(obj, j);
        }

        @Override // com.google.android.gms.internal.measurement.zzhw.zzd
        public final void zza(Object obj, long j, boolean z) {
            if (zzhw.zzalo) {
                zzhw.zzb(obj, j, z);
            } else {
                zzhw.zzc(obj, j, z);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzhw.zzd
        public final float zzn(Object obj, long j) {
            return Float.intBitsToFloat(zzk(obj, j));
        }

        @Override // com.google.android.gms.internal.measurement.zzhw.zzd
        public final void zza(Object obj, long j, float f) {
            zzb(obj, j, Float.floatToIntBits(f));
        }

        @Override // com.google.android.gms.internal.measurement.zzhw.zzd
        public final double zzo(Object obj, long j) {
            return Double.longBitsToDouble(zzl(obj, j));
        }

        @Override // com.google.android.gms.internal.measurement.zzhw.zzd
        public final void zza(Object obj, long j, double d) {
            zza(obj, j, Double.doubleToLongBits(d));
        }

        @Override // com.google.android.gms.internal.measurement.zzhw.zzd
        public final void zza(byte[] bArr, long j, long j2, long j3) {
            Memory.pokeByteArray((int) (j2 & (-1)), bArr, (int) j, (int) j3);
        }
    }

    static <T> T zzh(Class<T> cls) {
        try {
            return (T) zzaiz.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    private static int zzi(Class<?> cls) {
        if (zzacv) {
            return zzaky.zzalp.arrayBaseOffset(cls);
        }
        return -1;
    }

    private static int zzj(Class<?> cls) {
        if (zzacv) {
            return zzaky.zzalp.arrayIndexScale(cls);
        }
        return -1;
    }

    static int zzk(Object obj, long j) {
        return zzaky.zzk(obj, j);
    }

    static void zzb(Object obj, long j, int i) {
        zzaky.zzb(obj, j, i);
    }

    static long zzl(Object obj, long j) {
        return zzaky.zzl(obj, j);
    }

    static void zza(Object obj, long j, long j2) {
        zzaky.zza(obj, j, j2);
    }

    static boolean zzm(Object obj, long j) {
        return zzaky.zzm(obj, j);
    }

    static void zza(Object obj, long j, boolean z) {
        zzaky.zza(obj, j, z);
    }

    static float zzn(Object obj, long j) {
        return zzaky.zzn(obj, j);
    }

    static void zza(Object obj, long j, float f) {
        zzaky.zza(obj, j, f);
    }

    static double zzo(Object obj, long j) {
        return zzaky.zzo(obj, j);
    }

    static void zza(Object obj, long j, double d) {
        zzaky.zza(obj, j, d);
    }

    static Object zzp(Object obj, long j) {
        return zzaky.zzalp.getObject(obj, j);
    }

    static void zza(Object obj, long j, Object obj2) {
        zzaky.zzalp.putObject(obj, j, obj2);
    }

    static byte zza(byte[] bArr, long j) {
        return zzaky.zzy(bArr, zzala + j);
    }

    static void zza(byte[] bArr, long j, byte b) {
        zzaky.zze(bArr, zzala + j, b);
    }

    static void zza(byte[] bArr, long j, long j2, long j3) {
        zzaky.zza(bArr, j, j2, j3);
    }

    static void zza(long j, byte b) {
        zzaky.zza(j, b);
    }

    static long zzb(ByteBuffer byteBuffer) {
        return zzaky.zzl(byteBuffer, zzaln);
    }

    static Unsafe zzow() {
        try {
            return (Unsafe) AccessController.doPrivileged(new zzhx());
        } catch (Throwable unused) {
            return null;
        }
    }

    private static boolean zzox() {
        Unsafe unsafe = zzaiz;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            cls.getMethod("arrayBaseOffset", Class.class);
            cls.getMethod("arrayIndexScale", Class.class);
            cls.getMethod("getInt", Object.class, Long.TYPE);
            cls.getMethod("putInt", Object.class, Long.TYPE, Integer.TYPE);
            cls.getMethod("getLong", Object.class, Long.TYPE);
            cls.getMethod("putLong", Object.class, Long.TYPE, Long.TYPE);
            cls.getMethod("getObject", Object.class, Long.TYPE);
            cls.getMethod("putObject", Object.class, Long.TYPE, Object.class);
            if (zzdk.zzkb()) {
                return true;
            }
            cls.getMethod("getByte", Object.class, Long.TYPE);
            cls.getMethod("putByte", Object.class, Long.TYPE, Byte.TYPE);
            cls.getMethod("getBoolean", Object.class, Long.TYPE);
            cls.getMethod("putBoolean", Object.class, Long.TYPE, Boolean.TYPE);
            cls.getMethod("getFloat", Object.class, Long.TYPE);
            cls.getMethod("putFloat", Object.class, Long.TYPE, Float.TYPE);
            cls.getMethod("getDouble", Object.class, Long.TYPE);
            cls.getMethod("putDouble", Object.class, Long.TYPE, Double.TYPE);
            return true;
        } catch (Throwable th) {
            Logger logger2 = logger;
            Level level = Level.WARNING;
            String strValueOf = String.valueOf(th);
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 71);
            sb.append("platform method missing - proto runtime falling back to safer methods: ");
            sb.append(strValueOf);
            logger2.logp(level, "com.google.protobuf.UnsafeUtil", "supportsUnsafeArrayOperations", sb.toString());
            return false;
        }
    }

    private static boolean zzoy() {
        Unsafe unsafe = zzaiz;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            cls.getMethod("getLong", Object.class, Long.TYPE);
            if (zzoz() == null) {
                return false;
            }
            if (zzdk.zzkb()) {
                return true;
            }
            cls.getMethod("getByte", Long.TYPE);
            cls.getMethod("putByte", Long.TYPE, Byte.TYPE);
            cls.getMethod("getInt", Long.TYPE);
            cls.getMethod("putInt", Long.TYPE, Integer.TYPE);
            cls.getMethod("getLong", Long.TYPE);
            cls.getMethod("putLong", Long.TYPE, Long.TYPE);
            cls.getMethod("copyMemory", Long.TYPE, Long.TYPE, Long.TYPE);
            cls.getMethod("copyMemory", Object.class, Long.TYPE, Object.class, Long.TYPE, Long.TYPE);
            return true;
        } catch (Throwable th) {
            Logger logger2 = logger;
            Level level = Level.WARNING;
            String strValueOf = String.valueOf(th);
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 71);
            sb.append("platform method missing - proto runtime falling back to safer methods: ");
            sb.append(strValueOf);
            logger2.logp(level, "com.google.protobuf.UnsafeUtil", "supportsUnsafeByteBufferOperations", sb.toString());
            return false;
        }
    }

    private static boolean zzk(Class<?> cls) {
        if (!zzdk.zzkb()) {
            return false;
        }
        try {
            Class<?> cls2 = zzabq;
            cls2.getMethod("peekLong", cls, Boolean.TYPE);
            cls2.getMethod("pokeLong", cls, Long.TYPE, Boolean.TYPE);
            cls2.getMethod("pokeInt", cls, Integer.TYPE, Boolean.TYPE);
            cls2.getMethod("peekInt", cls, Boolean.TYPE);
            cls2.getMethod("pokeByte", cls, Byte.TYPE);
            cls2.getMethod("peekByte", cls);
            cls2.getMethod("pokeByteArray", cls, byte[].class, Integer.TYPE, Integer.TYPE);
            cls2.getMethod("peekByteArray", cls, byte[].class, Integer.TYPE, Integer.TYPE);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    private static Field zzoz() {
        Field fieldZzb;
        if (zzdk.zzkb() && (fieldZzb = zzb(Buffer.class, "effectiveDirectAddress")) != null) {
            return fieldZzb;
        }
        Field fieldZzb2 = zzb(Buffer.class, "address");
        if (fieldZzb2 == null || fieldZzb2.getType() != Long.TYPE) {
            return null;
        }
        return fieldZzb2;
    }

    private static Field zzb(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte zzq(Object obj, long j) {
        return (byte) (zzk(obj, (-4) & j) >>> ((int) (((j ^ (-1)) & 3) << 3)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte zzr(Object obj, long j) {
        return (byte) (zzk(obj, (-4) & j) >>> ((int) ((j & 3) << 3)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zza(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int i = ((((int) j) ^ (-1)) & 3) << 3;
        zzb(obj, j2, ((255 & b) << i) | (zzk(obj, j2) & ((255 << i) ^ (-1))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzb(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int i = (((int) j) & 3) << 3;
        zzb(obj, j2, ((255 & b) << i) | (zzk(obj, j2) & ((255 << i) ^ (-1))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean zzs(Object obj, long j) {
        return zzq(obj, j) != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean zzt(Object obj, long j) {
        return zzr(obj, j) != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzb(Object obj, long j, boolean z) {
        zza(obj, j, z ? (byte) 1 : (byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzc(Object obj, long j, boolean z) {
        zzb(obj, j, z ? (byte) 1 : (byte) 0);
    }

    static {
        zzd zzdVar;
        zzd zzcVar = null;
        if (zzaiz != null) {
            if (zzdk.zzkb()) {
                if (zzakw) {
                    zzcVar = new zzb(zzaiz);
                } else if (zzakx) {
                    zzcVar = new zza(zzaiz);
                }
            } else {
                zzcVar = new zzc(zzaiz);
            }
        }
        zzaky = zzcVar;
        zzakz = zzoy();
        zzacv = zzox();
        zzala = zzi(byte[].class);
        zzalb = zzi(boolean[].class);
        zzalc = zzj(boolean[].class);
        zzald = zzi(int[].class);
        zzale = zzj(int[].class);
        zzalf = zzi(long[].class);
        zzalg = zzj(long[].class);
        zzalh = zzi(float[].class);
        zzali = zzj(float[].class);
        zzalj = zzi(double[].class);
        zzalk = zzj(double[].class);
        zzall = zzi(Object[].class);
        zzalm = zzj(Object[].class);
        Field fieldZzoz = zzoz();
        zzaln = (fieldZzoz == null || (zzdVar = zzaky) == null) ? -1L : zzdVar.zzalp.objectFieldOffset(fieldZzoz);
        zzalo = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }
}
