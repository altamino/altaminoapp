package com.google.android.gms.internal.measurement;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes5.dex */
final class zzmg {
    static final boolean zza;
    private static final Unsafe zzb;
    private static final Class<?> zzc;
    private static final boolean zzd;
    private static final boolean zze;
    private static final zzc zzf;
    private static final boolean zzg;
    private static final boolean zzh;
    private static final long zzi;
    private static final long zzj;
    private static final long zzk;
    private static final long zzl;
    private static final long zzm;
    private static final long zzn;
    private static final long zzo;
    private static final long zzp;
    private static final long zzq;
    private static final long zzr;
    private static final long zzs;
    private static final long zzt;
    private static final long zzu;
    private static final long zzv;
    private static final int zzw;

    private static final class zza extends zzc {
        @Override // com.google.android.gms.internal.measurement.zzmg.zzc
        public final double zza(Object obj, long j6) {
            return Double.longBitsToDouble(zze(obj, j6));
        }

        @Override // com.google.android.gms.internal.measurement.zzmg.zzc
        public final void zza(Object obj, long j6, boolean z6) {
            if (zzmg.zza) {
                zzmg.zza(obj, j6, z6);
            } else {
                zzmg.zzb(obj, j6, z6);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzmg.zzc
        public final boolean zzc(Object obj, long j6) {
            return zzmg.zza ? zzmg.zzf(obj, j6) : zzmg.zzg(obj, j6);
        }

        zza(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.measurement.zzmg.zzc
        public final float zzb(Object obj, long j6) {
            return Float.intBitsToFloat(zzd(obj, j6));
        }

        @Override // com.google.android.gms.internal.measurement.zzmg.zzc
        public final void zza(Object obj, long j6, byte b7) {
            if (!zzmg.zza) {
                zzmg.zzd(obj, j6, b7);
            } else {
                zzmg.zzc(obj, j6, b7);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzmg.zzc
        public final void zza(Object obj, long j6, double d) {
            zza(obj, j6, Double.doubleToLongBits(d));
        }

        @Override // com.google.android.gms.internal.measurement.zzmg.zzc
        public final void zza(Object obj, long j6, float f) {
            zza(obj, j6, Float.floatToIntBits(f));
        }
    }

    private static final class zzb extends zzc {
        @Override // com.google.android.gms.internal.measurement.zzmg.zzc
        public final double zza(Object obj, long j6) {
            return Double.longBitsToDouble(zze(obj, j6));
        }

        @Override // com.google.android.gms.internal.measurement.zzmg.zzc
        public final void zza(Object obj, long j6, boolean z6) {
            if (zzmg.zza) {
                zzmg.zza(obj, j6, z6);
            } else {
                zzmg.zzb(obj, j6, z6);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzmg.zzc
        public final boolean zzc(Object obj, long j6) {
            return zzmg.zza ? zzmg.zzf(obj, j6) : zzmg.zzg(obj, j6);
        }

        zzb(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.measurement.zzmg.zzc
        public final float zzb(Object obj, long j6) {
            return Float.intBitsToFloat(zzd(obj, j6));
        }

        @Override // com.google.android.gms.internal.measurement.zzmg.zzc
        public final void zza(Object obj, long j6, byte b7) {
            if (!zzmg.zza) {
                zzmg.zzd(obj, j6, b7);
            } else {
                zzmg.zzc(obj, j6, b7);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzmg.zzc
        public final void zza(Object obj, long j6, double d) {
            zza(obj, j6, Double.doubleToLongBits(d));
        }

        @Override // com.google.android.gms.internal.measurement.zzmg.zzc
        public final void zza(Object obj, long j6, float f) {
            zza(obj, j6, Float.floatToIntBits(f));
        }
    }

    private static abstract class zzc {
        Unsafe zza;

        public abstract double zza(Object obj, long j6);

        public abstract void zza(Object obj, long j6, byte b7);

        public abstract void zza(Object obj, long j6, double d);

        public abstract void zza(Object obj, long j6, float f);

        public final void zza(Object obj, long j6, int i10) {
            this.zza.putInt(obj, j6, i10);
        }

        public abstract void zza(Object obj, long j6, boolean z6);

        public abstract float zzb(Object obj, long j6);

        public final boolean zzb() {
            Unsafe unsafe = this.zza;
            if (unsafe == null) {
                return false;
            }
            try {
                Class<?> cls = unsafe.getClass();
                cls.getMethod("objectFieldOffset", Field.class);
                cls.getMethod("getLong", Object.class, Long.TYPE);
                return zzmg.zze() != null;
            } catch (Throwable th) {
                zzmg.zza(th);
                return false;
            }
        }

        public abstract boolean zzc(Object obj, long j6);

        public final void zza(Object obj, long j6, long j10) {
            this.zza.putLong(obj, j6, j10);
        }

        public final int zzd(Object obj, long j6) {
            return this.zza.getInt(obj, j6);
        }

        public final long zze(Object obj, long j6) {
            return this.zza.getLong(obj, j6);
        }

        zzc(Unsafe unsafe) {
            this.zza = unsafe;
        }

        public final boolean zza() {
            Unsafe unsafe = this.zza;
            if (unsafe == null) {
                return false;
            }
            try {
                Class<?> cls = unsafe.getClass();
                cls.getMethod("objectFieldOffset", Field.class);
                cls.getMethod("arrayBaseOffset", Class.class);
                cls.getMethod("arrayIndexScale", Class.class);
                Class<?> cls2 = Long.TYPE;
                cls.getMethod("getInt", Object.class, cls2);
                cls.getMethod("putInt", Object.class, cls2, Integer.TYPE);
                cls.getMethod("getLong", Object.class, cls2);
                cls.getMethod("putLong", Object.class, cls2, cls2);
                cls.getMethod("getObject", Object.class, cls2);
                cls.getMethod("putObject", Object.class, cls2, Object.class);
                return true;
            } catch (Throwable th) {
                zzmg.zza(th);
                return false;
            }
        }
    }

    private zzmg() {
    }

    static boolean zzc() {
        return zzh;
    }

    static boolean zzd() {
        return zzg;
    }

    static Object zze(Object obj, long j6) {
        return zzf.zza.getObject(obj, j6);
    }

    static float zzb(Object obj, long j6) {
        return zzf.zzb(obj, j6);
    }

    private static int zzc(Class<?> cls) {
        if (zzh) {
            return zzf.zza.arrayIndexScale(cls);
        }
        return -1;
    }

    static long zzd(Object obj, long j6) {
        return zzf.zze(obj, j6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Field zze() {
        Field fieldZza = zza((Class<?>) Buffer.class, "effectiveDirectAddress");
        if (fieldZza != null) {
            return fieldZza;
        }
        Field fieldZza2 = zza((Class<?>) Buffer.class, "address");
        if (fieldZza2 == null || fieldZza2.getType() != Long.TYPE) {
            return null;
        }
        return fieldZza2;
    }

    static /* synthetic */ boolean zzf(Object obj, long j6) {
        return ((byte) (zzc(obj, (-4) & j6) >>> ((int) (((~j6) & 3) << 3)))) != 0;
    }

    static /* synthetic */ boolean zzg(Object obj, long j6) {
        return ((byte) (zzc(obj, (-4) & j6) >>> ((int) ((j6 & 3) << 3)))) != 0;
    }

    static boolean zzh(Object obj, long j6) {
        return zzf.zzc(obj, j6);
    }

    /* JADX WARN: Code duplicated, block: B:8:0x002e  */
    static {
        zzc zzbVar;
        boolean zZzb;
        boolean zZza;
        long jObjectFieldOffset;
        Unsafe unsafeZzb = zzb();
        zzb = unsafeZzb;
        zzc = zzhj.zza();
        boolean zZzd = zzd(Long.TYPE);
        zzd = zZzd;
        boolean zZzd2 = zzd(Integer.TYPE);
        zze = zZzd2;
        if (unsafeZzb != null) {
            if (zZzd) {
                zzbVar = new zza(unsafeZzb);
            } else if (zZzd2) {
                zzbVar = new zzb(unsafeZzb);
            } else {
                zzbVar = null;
            }
        } else {
            zzbVar = null;
        }
        zzf = zzbVar;
        boolean z6 = false;
        if (zzbVar == null) {
            zZzb = false;
        } else {
            zZzb = zzbVar.zzb();
        }
        zzg = zZzb;
        if (zzbVar == null) {
            zZza = false;
        } else {
            zZza = zzbVar.zza();
        }
        zzh = zZza;
        long jZzb = zzb(byte[].class);
        zzi = jZzb;
        zzj = zzb(boolean[].class);
        zzk = zzc(boolean[].class);
        zzl = zzb(int[].class);
        zzm = zzc(int[].class);
        zzn = zzb(long[].class);
        zzo = zzc(long[].class);
        zzp = zzb(float[].class);
        zzq = zzc(float[].class);
        zzr = zzb(double[].class);
        zzs = zzc(double[].class);
        zzt = zzb(Object[].class);
        zzu = zzc(Object[].class);
        Field fieldZze = zze();
        if (fieldZze != null && zzbVar != null) {
            jObjectFieldOffset = zzbVar.zza.objectFieldOffset(fieldZze);
        } else {
            jObjectFieldOffset = -1;
        }
        zzv = jObjectFieldOffset;
        zzw = (int) (jZzb & 7);
        if (ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN) {
            z6 = true;
        }
        zza = z6;
    }

    static double zza(Object obj, long j6) {
        return zzf.zza(obj, j6);
    }

    private static int zzb(Class<?> cls) {
        if (zzh) {
            return zzf.zza.arrayBaseOffset(cls);
        }
        return -1;
    }

    static int zzc(Object obj, long j6) {
        return zzf.zzd(obj, j6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzd(Object obj, long j6, byte b7) {
        long j10 = (-4) & j6;
        int i10 = (((int) j6) & 3) << 3;
        zza(obj, j10, ((255 & b7) << i10) | (zzc(obj, j10) & (~(255 << i10))));
    }

    static <T> T zza(Class<T> cls) {
        try {
            return (T) zzb.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    static Unsafe zzb() {
        try {
            return (Unsafe) AccessController.doPrivileged(new zzmf());
        } catch (Throwable unused) {
            return null;
        }
    }

    static void zzc(Object obj, long j6, boolean z6) {
        zzf.zza(obj, j6, z6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzc(Object obj, long j6, byte b7) {
        long j10 = (-4) & j6;
        int iZzc = zzc(obj, j10);
        int i10 = ((~((int) j6)) & 3) << 3;
        zza(obj, j10, ((255 & b7) << i10) | (iZzc & (~(255 << i10))));
    }

    private static boolean zzd(Class<?> cls) {
        try {
            Class<?> cls2 = zzc;
            Class<?> cls3 = Boolean.TYPE;
            cls2.getMethod("peekLong", cls, cls3);
            cls2.getMethod("pokeLong", cls, Long.TYPE, cls3);
            Class<?> cls4 = Integer.TYPE;
            cls2.getMethod("pokeInt", cls, cls4, cls3);
            cls2.getMethod("peekInt", cls, cls3);
            cls2.getMethod("pokeByte", cls, Byte.TYPE);
            cls2.getMethod("peekByte", cls);
            cls2.getMethod("pokeByteArray", cls, byte[].class, cls4, cls4);
            cls2.getMethod("peekByteArray", cls, byte[].class, cls4, cls4);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    private static Field zza(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    static /* synthetic */ void zzb(Object obj, long j6, boolean z6) {
        zzd(obj, j6, z6 ? (byte) 1 : (byte) 0);
    }

    static /* synthetic */ void zza(Throwable th) {
        Logger.getLogger(zzmg.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "logMissingMethod", "platform method missing - proto runtime falling back to safer methods: " + String.valueOf(th));
    }

    static /* synthetic */ void zza(Object obj, long j6, boolean z6) {
        zzc(obj, j6, z6 ? (byte) 1 : (byte) 0);
    }

    static void zza(byte[] bArr, long j6, byte b7) {
        zzf.zza((Object) bArr, zzi + j6, b7);
    }

    static void zza(Object obj, long j6, double d) {
        zzf.zza(obj, j6, d);
    }

    static void zza(Object obj, long j6, float f) {
        zzf.zza(obj, j6, f);
    }

    static void zza(Object obj, long j6, int i10) {
        zzf.zza(obj, j6, i10);
    }

    static void zza(Object obj, long j6, long j10) {
        zzf.zza(obj, j6, j10);
    }

    static void zza(Object obj, long j6, Object obj2) {
        zzf.zza.putObject(obj, j6, obj2);
    }
}
