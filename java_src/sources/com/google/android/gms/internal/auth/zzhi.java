package com.google.android.gms.internal.auth;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes9.dex */
final class zzhi {
    static final boolean zza;
    private static final Unsafe zzb;
    private static final Class zzc;
    private static final boolean zzd;
    private static final zzhh zze;
    private static final boolean zzf;
    private static final boolean zzg;

    private zzhi() {
    }

    static boolean zzu() {
        return zzg;
    }

    static boolean zzv() {
        return zzf;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x003e  */
    static {
        boolean z6;
        boolean z10;
        zzhh zzhhVar;
        Unsafe unsafeZzg = zzg();
        zzb = unsafeZzg;
        zzc = zzdr.zza();
        Class<?> cls = Long.TYPE;
        boolean zZzs = zzs(cls);
        zzd = zZzs;
        boolean zZzs2 = zzs(Integer.TYPE);
        zzhh zzhfVar = null;
        if (unsafeZzg != null) {
            if (zZzs) {
                zzhfVar = new zzhg(unsafeZzg);
            } else if (zZzs2) {
                zzhfVar = new zzhf(unsafeZzg);
            }
        }
        zze = zzhfVar;
        if (zzhfVar == null) {
            z6 = false;
        } else {
            try {
                Class<?> cls2 = zzhfVar.zza.getClass();
                cls2.getMethod("objectFieldOffset", Field.class);
                cls2.getMethod("getLong", Object.class, cls);
                if (zzy() == null) {
                    z6 = false;
                } else {
                    z6 = true;
                }
            } catch (Throwable th) {
                zzh(th);
            }
        }
        zzf = z6;
        zzhh zzhhVar2 = zze;
        if (zzhhVar2 == null) {
            z10 = false;
        } else {
            try {
                Class<?> cls3 = zzhhVar2.zza.getClass();
                cls3.getMethod("objectFieldOffset", Field.class);
                cls3.getMethod("arrayBaseOffset", Class.class);
                cls3.getMethod("arrayIndexScale", Class.class);
                Class<?> cls4 = Long.TYPE;
                cls3.getMethod("getInt", Object.class, cls4);
                cls3.getMethod("putInt", Object.class, cls4, Integer.TYPE);
                cls3.getMethod("getLong", Object.class, cls4);
                cls3.getMethod("putLong", Object.class, cls4, cls4);
                cls3.getMethod("getObject", Object.class, cls4);
                cls3.getMethod("putObject", Object.class, cls4, Object.class);
                z10 = true;
            } catch (Throwable th2) {
                zzh(th2);
                z10 = false;
            }
        }
        zzg = z10;
        zzw(byte[].class);
        zzw(boolean[].class);
        zzx(boolean[].class);
        zzw(int[].class);
        zzx(int[].class);
        zzw(long[].class);
        zzx(long[].class);
        zzw(float[].class);
        zzx(float[].class);
        zzw(double[].class);
        zzx(double[].class);
        zzw(Object[].class);
        zzx(Object[].class);
        Field fieldZzy = zzy();
        if (fieldZzy != null && (zzhhVar = zze) != null) {
            zzhhVar.zzk(fieldZzy);
        }
        zza = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    static double zza(Object obj, long j6) {
        return zze.zza(obj, j6);
    }

    static float zzb(Object obj, long j6) {
        return zze.zzb(obj, j6);
    }

    static int zzc(Object obj, long j6) {
        return zze.zzi(obj, j6);
    }

    static long zzd(Object obj, long j6) {
        return zze.zzj(obj, j6);
    }

    static Object zze(Class cls) {
        try {
            return zzb.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    static Object zzf(Object obj, long j6) {
        return zze.zzl(obj, j6);
    }

    static Unsafe zzg() {
        try {
            return (Unsafe) AccessController.doPrivileged(new zzhe());
        } catch (Throwable unused) {
            return null;
        }
    }

    static /* bridge */ /* synthetic */ void zzh(Throwable th) {
        Logger.getLogger(zzhi.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "logMissingMethod", "platform method missing - proto runtime falling back to safer methods: ".concat(th.toString()));
    }

    static /* synthetic */ void zzi(Object obj, long j6, boolean z6) {
        long j10 = (-4) & j6;
        zzhh zzhhVar = zze;
        int iZzi = zzhhVar.zzi(obj, j10);
        int i10 = ((~((int) j6)) & 3) << 3;
        zzhhVar.zzm(obj, j10, ((z6 ? 1 : 0) << i10) | ((~(255 << i10)) & iZzi));
    }

    static /* synthetic */ void zzj(Object obj, long j6, boolean z6) {
        long j10 = (-4) & j6;
        zzhh zzhhVar = zze;
        int i10 = (((int) j6) & 3) << 3;
        zzhhVar.zzm(obj, j10, ((z6 ? 1 : 0) << i10) | ((~(255 << i10)) & zzhhVar.zzi(obj, j10)));
    }

    static void zzk(Object obj, long j6, boolean z6) {
        zze.zzc(obj, j6, z6);
    }

    static void zzl(Object obj, long j6, double d) {
        zze.zzd(obj, j6, d);
    }

    static void zzm(Object obj, long j6, float f) {
        zze.zze(obj, j6, f);
    }

    static void zzn(Object obj, long j6, int i10) {
        zze.zzm(obj, j6, i10);
    }

    static void zzo(Object obj, long j6, long j10) {
        zze.zzn(obj, j6, j10);
    }

    static void zzp(Object obj, long j6, Object obj2) {
        zze.zzo(obj, j6, obj2);
    }

    static /* bridge */ /* synthetic */ boolean zzq(Object obj, long j6) {
        return ((byte) ((zze.zzi(obj, (-4) & j6) >>> ((int) (((~j6) & 3) << 3))) & 255)) != 0;
    }

    static /* bridge */ /* synthetic */ boolean zzr(Object obj, long j6) {
        return ((byte) ((zze.zzi(obj, (-4) & j6) >>> ((int) ((j6 & 3) << 3))) & 255)) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static boolean zzs(Class cls) {
        int i10 = zzdr.zza;
        try {
            Class cls2 = zzc;
            Class cls3 = Boolean.TYPE;
            cls2.getMethod("peekLong", cls, cls3);
            cls2.getMethod("pokeLong", cls, Long.TYPE, cls3);
            Class cls4 = Integer.TYPE;
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

    static boolean zzt(Object obj, long j6) {
        return zze.zzf(obj, j6);
    }

    private static int zzw(Class cls) {
        if (zzg) {
            return zze.zzg(cls);
        }
        return -1;
    }

    private static int zzx(Class cls) {
        if (zzg) {
            return zze.zzh(cls);
        }
        return -1;
    }

    private static Field zzy() {
        int i10 = zzdr.zza;
        Field fieldZzz = zzz(Buffer.class, "effectiveDirectAddress");
        if (fieldZzz != null) {
            return fieldZzz;
        }
        Field fieldZzz2 = zzz(Buffer.class, "address");
        if (fieldZzz2 == null || fieldZzz2.getType() != Long.TYPE) {
            return null;
        }
        return fieldZzz2;
    }

    private static Field zzz(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }
}
