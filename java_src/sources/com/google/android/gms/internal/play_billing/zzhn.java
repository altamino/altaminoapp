package com.google.android.gms.internal.play_billing;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import libcore.io.Memory;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes10.dex */
final class zzhn {
    static final long zza;
    static final boolean zzb;
    private static final Unsafe zzc;
    private static final Class zzd;
    private static final boolean zze;
    private static final zzhm zzf;
    private static final boolean zzg;
    private static final boolean zzh;

    private zzhn() {
    }

    static boolean zzx() {
        return zzh;
    }

    static boolean zzy() {
        return zzg;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x003e  */
    static {
        boolean z6;
        boolean z10;
        zzhm zzhmVar;
        Unsafe unsafeZzg = zzg();
        zzc = unsafeZzg;
        int i10 = zzdi.zza;
        zzd = Memory.class;
        Class<?> cls = Long.TYPE;
        boolean zZzv = zzv(cls);
        zze = zZzv;
        boolean zZzv2 = zzv(Integer.TYPE);
        zzhm zzhkVar = null;
        if (unsafeZzg != null) {
            if (zZzv) {
                zzhkVar = new zzhl(unsafeZzg);
            } else if (zZzv2) {
                zzhkVar = new zzhk(unsafeZzg);
            }
        }
        zzf = zzhkVar;
        if (zzhkVar == null) {
            z6 = false;
        } else {
            try {
                Class<?> cls2 = zzhkVar.zza.getClass();
                cls2.getMethod("objectFieldOffset", Field.class);
                cls2.getMethod("getLong", Object.class, cls);
                if (zzB() == null) {
                    z6 = false;
                } else {
                    z6 = true;
                }
            } catch (Throwable th) {
                zzh(th);
            }
        }
        zzg = z6;
        zzhm zzhmVar2 = zzf;
        if (zzhmVar2 == null) {
            z10 = false;
        } else {
            try {
                Class<?> cls3 = zzhmVar2.zza.getClass();
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
        zzh = z10;
        zza = zzz(byte[].class);
        zzz(boolean[].class);
        zzA(boolean[].class);
        zzz(int[].class);
        zzA(int[].class);
        zzz(long[].class);
        zzA(long[].class);
        zzz(float[].class);
        zzA(float[].class);
        zzz(double[].class);
        zzA(double[].class);
        zzz(Object[].class);
        zzA(Object[].class);
        Field fieldZzB = zzB();
        if (fieldZzB != null && (zzhmVar = zzf) != null) {
            zzhmVar.zza.objectFieldOffset(fieldZzB);
        }
        zzb = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    private static int zzA(Class cls) {
        if (zzh) {
            return zzf.zza.arrayIndexScale(cls);
        }
        return -1;
    }

    private static Field zzB() {
        int i10 = zzdi.zza;
        Field fieldZzC = zzC(Buffer.class, "effectiveDirectAddress");
        if (fieldZzC != null) {
            return fieldZzC;
        }
        Field fieldZzC2 = zzC(Buffer.class, "address");
        if (fieldZzC2 == null || fieldZzC2.getType() != Long.TYPE) {
            return null;
        }
        return fieldZzC2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzD(Object obj, long j6, byte b7) {
        zzhm zzhmVar = zzf;
        long j10 = (-4) & j6;
        int i10 = zzhmVar.zza.getInt(obj, j10);
        int i11 = ((~((int) j6)) & 3) << 3;
        zzhmVar.zza.putInt(obj, j10, ((255 & b7) << i11) | (i10 & (~(255 << i11))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzE(Object obj, long j6, byte b7) {
        zzhm zzhmVar = zzf;
        long j10 = (-4) & j6;
        int i10 = (((int) j6) & 3) << 3;
        zzhmVar.zza.putInt(obj, j10, ((255 & b7) << i10) | (zzhmVar.zza.getInt(obj, j10) & (~(255 << i10))));
    }

    static double zza(Object obj, long j6) {
        return zzf.zza(obj, j6);
    }

    static float zzb(Object obj, long j6) {
        return zzf.zzb(obj, j6);
    }

    static int zzc(Object obj, long j6) {
        return zzf.zza.getInt(obj, j6);
    }

    static long zzd(Object obj, long j6) {
        return zzf.zza.getLong(obj, j6);
    }

    static Object zze(Class cls) {
        try {
            return zzc.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    static Object zzf(Object obj, long j6) {
        return zzf.zza.getObject(obj, j6);
    }

    static Unsafe zzg() {
        try {
            return (Unsafe) AccessController.doPrivileged(new zzhj());
        } catch (Throwable unused) {
            return null;
        }
    }

    static /* bridge */ /* synthetic */ void zzh(Throwable th) {
        Logger.getLogger(zzhn.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "logMissingMethod", "platform method missing - proto runtime falling back to safer methods: ".concat(th.toString()));
    }

    static void zzm(Object obj, long j6, boolean z6) {
        zzf.zzc(obj, j6, z6);
    }

    static void zzn(byte[] bArr, long j6, byte b7) {
        zzf.zzd(bArr, zza + j6, b7);
    }

    static void zzo(Object obj, long j6, double d) {
        zzf.zze(obj, j6, d);
    }

    static void zzp(Object obj, long j6, float f) {
        zzf.zzf(obj, j6, f);
    }

    static void zzq(Object obj, long j6, int i10) {
        zzf.zza.putInt(obj, j6, i10);
    }

    static void zzr(Object obj, long j6, long j10) {
        zzf.zza.putLong(obj, j6, j10);
    }

    static void zzs(Object obj, long j6, Object obj2) {
        zzf.zza.putObject(obj, j6, obj2);
    }

    static /* bridge */ /* synthetic */ boolean zzt(Object obj, long j6) {
        return ((byte) ((zzf.zza.getInt(obj, (-4) & j6) >>> ((int) (((~j6) & 3) << 3))) & 255)) != 0;
    }

    static /* bridge */ /* synthetic */ boolean zzu(Object obj, long j6) {
        return ((byte) ((zzf.zza.getInt(obj, (-4) & j6) >>> ((int) ((j6 & 3) << 3))) & 255)) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static boolean zzv(Class cls) {
        int i10 = zzdi.zza;
        try {
            Class cls2 = zzd;
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

    static boolean zzw(Object obj, long j6) {
        return zzf.zzg(obj, j6);
    }

    private static int zzz(Class cls) {
        if (zzh) {
            return zzf.zza.arrayBaseOffset(cls);
        }
        return -1;
    }

    private static Field zzC(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }
}
