package com.google.protobuf;

import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.security.PrivilegedExceptionAction;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes9.dex */
final class t0 {
    private static final long BOOLEAN_ARRAY_BASE_OFFSET;
    private static final long BOOLEAN_ARRAY_INDEX_SCALE;
    private static final long BUFFER_ADDRESS_OFFSET;
    private static final int BYTE_ARRAY_ALIGNMENT;
    static final long BYTE_ARRAY_BASE_OFFSET;
    private static final long DOUBLE_ARRAY_BASE_OFFSET;
    private static final long DOUBLE_ARRAY_INDEX_SCALE;
    private static final long FLOAT_ARRAY_BASE_OFFSET;
    private static final long FLOAT_ARRAY_INDEX_SCALE;
    private static final long INT_ARRAY_BASE_OFFSET;
    private static final long INT_ARRAY_INDEX_SCALE;
    static final boolean IS_BIG_ENDIAN;
    private static final long LONG_ARRAY_BASE_OFFSET;
    private static final long LONG_ARRAY_INDEX_SCALE;
    private static final long OBJECT_ARRAY_BASE_OFFSET;
    private static final long OBJECT_ARRAY_INDEX_SCALE;
    private static final int STRIDE = 8;
    private static final int STRIDE_ALIGNMENT_MASK = 7;
    private static final Unsafe UNSAFE = getUnsafe();
    private static final Class<?> MEMORY_CLASS = com.google.protobuf.b.getMemoryClass();
    private static final boolean IS_ANDROID_64 = determineAndroidSupportByAddressSize(Long.TYPE);
    private static final boolean IS_ANDROID_32 = determineAndroidSupportByAddressSize(Integer.TYPE);
    private static final e MEMORY_ACCESSOR = getMemoryAccessor();
    private static final boolean HAS_UNSAFE_BYTEBUFFER_OPERATIONS = supportsUnsafeByteBufferOperations();
    private static final boolean HAS_UNSAFE_ARRAY_OPERATIONS = supportsUnsafeArrayOperations();

    static class a implements PrivilegedExceptionAction<Unsafe> {
        @Override // java.security.PrivilegedExceptionAction
        public Unsafe run() throws Exception {
            for (java.lang.reflect.Field field : Unsafe.class.getDeclaredFields()) {
                field.setAccessible(true);
                Object obj = field.get(null);
                if (Unsafe.class.isInstance(obj)) {
                    return (Unsafe) Unsafe.class.cast(obj);
                }
            }
            return null;
        }

        a() {
        }
    }

    private static final class b extends e {
        private static final long SMALL_ADDRESS_MASK = -1;

        private static int smallAddress(long j6) {
            return (int) j6;
        }

        @Override // com.google.protobuf.t0.e
        public void copyMemory(long j6, byte[] bArr, long j10, long j11) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.protobuf.t0.e
        public byte getByte(Object obj, long j6) {
            return t0.IS_BIG_ENDIAN ? t0.getByteBigEndian(obj, j6) : t0.getByteLittleEndian(obj, j6);
        }

        @Override // com.google.protobuf.t0.e
        public Object getStaticObject(java.lang.reflect.Field field) {
            try {
                return field.get(null);
            } catch (IllegalAccessException unused) {
                return null;
            }
        }

        @Override // com.google.protobuf.t0.e
        public void putByte(Object obj, long j6, byte b7) {
            if (t0.IS_BIG_ENDIAN) {
                t0.putByteBigEndian(obj, j6, b7);
            } else {
                t0.putByteLittleEndian(obj, j6, b7);
            }
        }

        @Override // com.google.protobuf.t0.e
        public boolean supportsUnsafeByteBufferOperations() {
            return false;
        }

        @Override // com.google.protobuf.t0.e
        public void copyMemory(byte[] bArr, long j6, long j10, long j11) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.protobuf.t0.e
        public boolean getBoolean(Object obj, long j6) {
            return t0.IS_BIG_ENDIAN ? t0.getBooleanBigEndian(obj, j6) : t0.getBooleanLittleEndian(obj, j6);
        }

        @Override // com.google.protobuf.t0.e
        public int getInt(long j6) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.protobuf.t0.e
        public long getLong(long j6) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.protobuf.t0.e
        public void putBoolean(Object obj, long j6, boolean z6) {
            if (t0.IS_BIG_ENDIAN) {
                t0.putBooleanBigEndian(obj, j6, z6);
            } else {
                t0.putBooleanLittleEndian(obj, j6, z6);
            }
        }

        @Override // com.google.protobuf.t0.e
        public void putInt(long j6, int i10) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.protobuf.t0.e
        public void putLong(long j6, long j10) {
            throw new UnsupportedOperationException();
        }

        b(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.protobuf.t0.e
        public double getDouble(Object obj, long j6) {
            return Double.longBitsToDouble(getLong(obj, j6));
        }

        @Override // com.google.protobuf.t0.e
        public float getFloat(Object obj, long j6) {
            return Float.intBitsToFloat(getInt(obj, j6));
        }

        @Override // com.google.protobuf.t0.e
        public void putDouble(Object obj, long j6, double d) {
            putLong(obj, j6, Double.doubleToLongBits(d));
        }

        @Override // com.google.protobuf.t0.e
        public void putFloat(Object obj, long j6, float f) {
            putInt(obj, j6, Float.floatToIntBits(f));
        }

        @Override // com.google.protobuf.t0.e
        public byte getByte(long j6) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.protobuf.t0.e
        public void putByte(long j6, byte b7) {
            throw new UnsupportedOperationException();
        }
    }

    private static final class c extends e {
        @Override // com.google.protobuf.t0.e
        public void copyMemory(long j6, byte[] bArr, long j10, long j11) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.protobuf.t0.e
        public byte getByte(Object obj, long j6) {
            return t0.IS_BIG_ENDIAN ? t0.getByteBigEndian(obj, j6) : t0.getByteLittleEndian(obj, j6);
        }

        @Override // com.google.protobuf.t0.e
        public Object getStaticObject(java.lang.reflect.Field field) {
            try {
                return field.get(null);
            } catch (IllegalAccessException unused) {
                return null;
            }
        }

        @Override // com.google.protobuf.t0.e
        public void putByte(Object obj, long j6, byte b7) {
            if (t0.IS_BIG_ENDIAN) {
                t0.putByteBigEndian(obj, j6, b7);
            } else {
                t0.putByteLittleEndian(obj, j6, b7);
            }
        }

        @Override // com.google.protobuf.t0.e
        public boolean supportsUnsafeByteBufferOperations() {
            return false;
        }

        @Override // com.google.protobuf.t0.e
        public void copyMemory(byte[] bArr, long j6, long j10, long j11) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.protobuf.t0.e
        public boolean getBoolean(Object obj, long j6) {
            return t0.IS_BIG_ENDIAN ? t0.getBooleanBigEndian(obj, j6) : t0.getBooleanLittleEndian(obj, j6);
        }

        @Override // com.google.protobuf.t0.e
        public int getInt(long j6) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.protobuf.t0.e
        public long getLong(long j6) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.protobuf.t0.e
        public void putBoolean(Object obj, long j6, boolean z6) {
            if (t0.IS_BIG_ENDIAN) {
                t0.putBooleanBigEndian(obj, j6, z6);
            } else {
                t0.putBooleanLittleEndian(obj, j6, z6);
            }
        }

        @Override // com.google.protobuf.t0.e
        public void putInt(long j6, int i10) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.protobuf.t0.e
        public void putLong(long j6, long j10) {
            throw new UnsupportedOperationException();
        }

        c(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.protobuf.t0.e
        public double getDouble(Object obj, long j6) {
            return Double.longBitsToDouble(getLong(obj, j6));
        }

        @Override // com.google.protobuf.t0.e
        public float getFloat(Object obj, long j6) {
            return Float.intBitsToFloat(getInt(obj, j6));
        }

        @Override // com.google.protobuf.t0.e
        public void putDouble(Object obj, long j6, double d) {
            putLong(obj, j6, Double.doubleToLongBits(d));
        }

        @Override // com.google.protobuf.t0.e
        public void putFloat(Object obj, long j6, float f) {
            putInt(obj, j6, Float.floatToIntBits(f));
        }

        @Override // com.google.protobuf.t0.e
        public byte getByte(long j6) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.protobuf.t0.e
        public void putByte(long j6, byte b7) {
            throw new UnsupportedOperationException();
        }
    }

    private static final class d extends e {
        @Override // com.google.protobuf.t0.e
        public void copyMemory(long j6, byte[] bArr, long j10, long j11) {
            this.unsafe.copyMemory((Object) null, j6, bArr, t0.BYTE_ARRAY_BASE_OFFSET + j10, j11);
        }

        @Override // com.google.protobuf.t0.e
        public byte getByte(Object obj, long j6) {
            return this.unsafe.getByte(obj, j6);
        }

        @Override // com.google.protobuf.t0.e
        public void putByte(Object obj, long j6, byte b7) {
            this.unsafe.putByte(obj, j6, b7);
        }

        @Override // com.google.protobuf.t0.e
        public void copyMemory(byte[] bArr, long j6, long j10, long j11) {
            this.unsafe.copyMemory(bArr, t0.BYTE_ARRAY_BASE_OFFSET + j6, (Object) null, j10, j11);
        }

        @Override // com.google.protobuf.t0.e
        public boolean getBoolean(Object obj, long j6) {
            return this.unsafe.getBoolean(obj, j6);
        }

        @Override // com.google.protobuf.t0.e
        public byte getByte(long j6) {
            return this.unsafe.getByte(j6);
        }

        @Override // com.google.protobuf.t0.e
        public double getDouble(Object obj, long j6) {
            return this.unsafe.getDouble(obj, j6);
        }

        @Override // com.google.protobuf.t0.e
        public float getFloat(Object obj, long j6) {
            return this.unsafe.getFloat(obj, j6);
        }

        @Override // com.google.protobuf.t0.e
        public int getInt(long j6) {
            return this.unsafe.getInt(j6);
        }

        @Override // com.google.protobuf.t0.e
        public long getLong(long j6) {
            return this.unsafe.getLong(j6);
        }

        @Override // com.google.protobuf.t0.e
        public Object getStaticObject(java.lang.reflect.Field field) {
            return getObject(this.unsafe.staticFieldBase(field), this.unsafe.staticFieldOffset(field));
        }

        @Override // com.google.protobuf.t0.e
        public void putBoolean(Object obj, long j6, boolean z6) {
            this.unsafe.putBoolean(obj, j6, z6);
        }

        @Override // com.google.protobuf.t0.e
        public void putByte(long j6, byte b7) {
            this.unsafe.putByte(j6, b7);
        }

        @Override // com.google.protobuf.t0.e
        public void putDouble(Object obj, long j6, double d) {
            this.unsafe.putDouble(obj, j6, d);
        }

        @Override // com.google.protobuf.t0.e
        public void putFloat(Object obj, long j6, float f) {
            this.unsafe.putFloat(obj, j6, f);
        }

        @Override // com.google.protobuf.t0.e
        public void putInt(long j6, int i10) {
            this.unsafe.putInt(j6, i10);
        }

        @Override // com.google.protobuf.t0.e
        public void putLong(long j6, long j10) {
            this.unsafe.putLong(j6, j10);
        }

        @Override // com.google.protobuf.t0.e
        public boolean supportsUnsafeArrayOperations() {
            if (!super.supportsUnsafeArrayOperations()) {
                return false;
            }
            try {
                Class<?> cls = this.unsafe.getClass();
                Class<?> cls2 = Long.TYPE;
                cls.getMethod("getByte", Object.class, cls2);
                cls.getMethod("putByte", Object.class, cls2, Byte.TYPE);
                cls.getMethod("getBoolean", Object.class, cls2);
                cls.getMethod("putBoolean", Object.class, cls2, Boolean.TYPE);
                cls.getMethod("getFloat", Object.class, cls2);
                cls.getMethod("putFloat", Object.class, cls2, Float.TYPE);
                cls.getMethod("getDouble", Object.class, cls2);
                cls.getMethod("putDouble", Object.class, cls2, Double.TYPE);
                return true;
            } catch (Throwable th) {
                t0.logMissingMethod(th);
                return false;
            }
        }

        @Override // com.google.protobuf.t0.e
        public boolean supportsUnsafeByteBufferOperations() {
            if (!super.supportsUnsafeByteBufferOperations()) {
                return false;
            }
            try {
                Class<?> cls = this.unsafe.getClass();
                Class<?> cls2 = Long.TYPE;
                cls.getMethod("getByte", cls2);
                cls.getMethod("putByte", cls2, Byte.TYPE);
                cls.getMethod("getInt", cls2);
                cls.getMethod("putInt", cls2, Integer.TYPE);
                cls.getMethod("getLong", cls2);
                cls.getMethod("putLong", cls2, cls2);
                cls.getMethod("copyMemory", cls2, cls2, cls2);
                cls.getMethod("copyMemory", Object.class, cls2, Object.class, cls2, cls2);
                return true;
            } catch (Throwable th) {
                t0.logMissingMethod(th);
                return false;
            }
        }

        d(Unsafe unsafe) {
            super(unsafe);
        }
    }

    private static abstract class e {
        Unsafe unsafe;

        public abstract void copyMemory(long j6, byte[] bArr, long j10, long j11);

        public abstract void copyMemory(byte[] bArr, long j6, long j10, long j11);

        public abstract boolean getBoolean(Object obj, long j6);

        public abstract byte getByte(long j6);

        public abstract byte getByte(Object obj, long j6);

        public abstract double getDouble(Object obj, long j6);

        public abstract float getFloat(Object obj, long j6);

        public abstract int getInt(long j6);

        public final int getInt(Object obj, long j6) {
            return this.unsafe.getInt(obj, j6);
        }

        public abstract long getLong(long j6);

        public final long getLong(Object obj, long j6) {
            return this.unsafe.getLong(obj, j6);
        }

        public abstract Object getStaticObject(java.lang.reflect.Field field);

        public abstract void putBoolean(Object obj, long j6, boolean z6);

        public abstract void putByte(long j6, byte b7);

        public abstract void putByte(Object obj, long j6, byte b7);

        public abstract void putDouble(Object obj, long j6, double d);

        public abstract void putFloat(Object obj, long j6, float f);

        public abstract void putInt(long j6, int i10);

        public final void putInt(Object obj, long j6, int i10) {
            this.unsafe.putInt(obj, j6, i10);
        }

        public abstract void putLong(long j6, long j10);

        public final void putLong(Object obj, long j6, long j10) {
            this.unsafe.putLong(obj, j6, j10);
        }

        public final int arrayBaseOffset(Class<?> cls) {
            return this.unsafe.arrayBaseOffset(cls);
        }

        public final int arrayIndexScale(Class<?> cls) {
            return this.unsafe.arrayIndexScale(cls);
        }

        public final Object getObject(Object obj, long j6) {
            return this.unsafe.getObject(obj, j6);
        }

        public final long objectFieldOffset(java.lang.reflect.Field field) {
            return this.unsafe.objectFieldOffset(field);
        }

        public final void putObject(Object obj, long j6, Object obj2) {
            this.unsafe.putObject(obj, j6, obj2);
        }

        public boolean supportsUnsafeArrayOperations() {
            Unsafe unsafe = this.unsafe;
            if (unsafe == null) {
                return false;
            }
            try {
                Class<?> cls = unsafe.getClass();
                cls.getMethod("objectFieldOffset", java.lang.reflect.Field.class);
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
                t0.logMissingMethod(th);
                return false;
            }
        }

        public boolean supportsUnsafeByteBufferOperations() {
            Unsafe unsafe = this.unsafe;
            if (unsafe == null) {
                return false;
            }
            try {
                Class<?> cls = unsafe.getClass();
                cls.getMethod("objectFieldOffset", java.lang.reflect.Field.class);
                cls.getMethod("getLong", Object.class, Long.TYPE);
                return t0.bufferAddressField() != null;
            } catch (Throwable th) {
                t0.logMissingMethod(th);
                return false;
            }
        }

        e(Unsafe unsafe) {
            this.unsafe = unsafe;
        }
    }

    static void copyMemory(byte[] bArr, long j6, long j10, long j11) {
        MEMORY_ACCESSOR.copyMemory(bArr, j6, j10, j11);
    }

    static boolean getBoolean(Object obj, long j6) {
        return MEMORY_ACCESSOR.getBoolean(obj, j6);
    }

    static byte getByte(Object obj, long j6) {
        return MEMORY_ACCESSOR.getByte(obj, j6);
    }

    static double getDouble(Object obj, long j6) {
        return MEMORY_ACCESSOR.getDouble(obj, j6);
    }

    static float getFloat(Object obj, long j6) {
        return MEMORY_ACCESSOR.getFloat(obj, j6);
    }

    static int getInt(Object obj, long j6) {
        return MEMORY_ACCESSOR.getInt(obj, j6);
    }

    static long getLong(Object obj, long j6) {
        return MEMORY_ACCESSOR.getLong(obj, j6);
    }

    static Object getObject(Object obj, long j6) {
        return MEMORY_ACCESSOR.getObject(obj, j6);
    }

    static boolean hasUnsafeArrayOperations() {
        return HAS_UNSAFE_ARRAY_OPERATIONS;
    }

    static boolean hasUnsafeByteBufferOperations() {
        return HAS_UNSAFE_BYTEBUFFER_OPERATIONS;
    }

    static boolean isAndroid64() {
        return IS_ANDROID_64;
    }

    static void putBoolean(Object obj, long j6, boolean z6) {
        MEMORY_ACCESSOR.putBoolean(obj, j6, z6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void putBooleanBigEndian(Object obj, long j6, boolean z6) {
        putByteBigEndian(obj, j6, z6 ? (byte) 1 : (byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void putBooleanLittleEndian(Object obj, long j6, boolean z6) {
        putByteLittleEndian(obj, j6, z6 ? (byte) 1 : (byte) 0);
    }

    static void putByte(Object obj, long j6, byte b7) {
        MEMORY_ACCESSOR.putByte(obj, j6, b7);
    }

    static void putDouble(Object obj, long j6, double d2) {
        MEMORY_ACCESSOR.putDouble(obj, j6, d2);
    }

    static void putFloat(Object obj, long j6, float f) {
        MEMORY_ACCESSOR.putFloat(obj, j6, f);
    }

    static void putInt(Object obj, long j6, int i10) {
        MEMORY_ACCESSOR.putInt(obj, j6, i10);
    }

    static void putLong(Object obj, long j6, long j10) {
        MEMORY_ACCESSOR.putLong(obj, j6, j10);
    }

    static void putObject(Object obj, long j6, Object obj2) {
        MEMORY_ACCESSOR.putObject(obj, j6, obj2);
    }

    static long addressOffset(ByteBuffer byteBuffer) {
        return MEMORY_ACCESSOR.getLong(byteBuffer, BUFFER_ADDRESS_OFFSET);
    }

    static <T> T allocateInstance(Class<T> cls) {
        try {
            return (T) UNSAFE.allocateInstance(cls);
        } catch (InstantiationException e2) {
            throw new IllegalStateException(e2);
        }
    }

    private static int arrayBaseOffset(Class<?> cls) {
        if (HAS_UNSAFE_ARRAY_OPERATIONS) {
            return MEMORY_ACCESSOR.arrayBaseOffset(cls);
        }
        return -1;
    }

    private static int arrayIndexScale(Class<?> cls) {
        if (HAS_UNSAFE_ARRAY_OPERATIONS) {
            return MEMORY_ACCESSOR.arrayIndexScale(cls);
        }
        return -1;
    }

    static void copyMemory(long j6, byte[] bArr, long j10, long j11) {
        MEMORY_ACCESSOR.copyMemory(j6, bArr, j10, j11);
    }

    static boolean determineAndroidSupportByAddressSize(Class<?> cls) {
        if (!com.google.protobuf.b.isOnAndroidDevice()) {
            return false;
        }
        try {
            Class<?> cls2 = MEMORY_CLASS;
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

    private static long fieldOffset(java.lang.reflect.Field field) {
        e eVar;
        if (field == null || (eVar = MEMORY_ACCESSOR) == null) {
            return -1L;
        }
        return eVar.objectFieldOffset(field);
    }

    private static int firstDifferingByteIndexNativeEndian(long j6, long j10) {
        return (IS_BIG_ENDIAN ? Long.numberOfLeadingZeros(j6 ^ j10) : Long.numberOfTrailingZeros(j6 ^ j10)) >> 3;
    }

    static boolean getBoolean(boolean[] zArr, long j6) {
        return MEMORY_ACCESSOR.getBoolean(zArr, BOOLEAN_ARRAY_BASE_OFFSET + (j6 * BOOLEAN_ARRAY_INDEX_SCALE));
    }

    static byte getByte(byte[] bArr, long j6) {
        return MEMORY_ACCESSOR.getByte(bArr, BYTE_ARRAY_BASE_OFFSET + j6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte getByteBigEndian(Object obj, long j6) {
        return (byte) ((getInt(obj, (-4) & j6) >>> ((int) (((~j6) & 3) << 3))) & 255);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte getByteLittleEndian(Object obj, long j6) {
        return (byte) ((getInt(obj, (-4) & j6) >>> ((int) ((j6 & 3) << 3))) & 255);
    }

    static double getDouble(double[] dArr, long j6) {
        return MEMORY_ACCESSOR.getDouble(dArr, DOUBLE_ARRAY_BASE_OFFSET + (j6 * DOUBLE_ARRAY_INDEX_SCALE));
    }

    static float getFloat(float[] fArr, long j6) {
        return MEMORY_ACCESSOR.getFloat(fArr, FLOAT_ARRAY_BASE_OFFSET + (j6 * FLOAT_ARRAY_INDEX_SCALE));
    }

    static int getInt(int[] iArr, long j6) {
        return MEMORY_ACCESSOR.getInt(iArr, INT_ARRAY_BASE_OFFSET + (j6 * INT_ARRAY_INDEX_SCALE));
    }

    static long getLong(long[] jArr, long j6) {
        return MEMORY_ACCESSOR.getLong(jArr, LONG_ARRAY_BASE_OFFSET + (j6 * LONG_ARRAY_INDEX_SCALE));
    }

    private static e getMemoryAccessor() {
        Unsafe unsafe = UNSAFE;
        if (unsafe == null) {
            return null;
        }
        if (!com.google.protobuf.b.isOnAndroidDevice()) {
            return new d(unsafe);
        }
        if (IS_ANDROID_64) {
            return new c(unsafe);
        }
        if (IS_ANDROID_32) {
            return new b(unsafe);
        }
        return null;
    }

    static Object getObject(Object[] objArr, long j6) {
        return MEMORY_ACCESSOR.getObject(objArr, OBJECT_ARRAY_BASE_OFFSET + (j6 * OBJECT_ARRAY_INDEX_SCALE));
    }

    static Object getStaticObject(java.lang.reflect.Field field) {
        return MEMORY_ACCESSOR.getStaticObject(field);
    }

    static Unsafe getUnsafe() {
        try {
            return (Unsafe) AccessController.doPrivileged(new a());
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void logMissingMethod(Throwable th) {
        Logger.getLogger(t0.class.getName()).log(Level.WARNING, "platform method missing - proto runtime falling back to safer methods: " + th);
    }

    static int mismatch(byte[] bArr, int i10, byte[] bArr2, int i11, int i12) {
        if (i10 < 0 || i11 < 0 || i12 < 0 || i10 + i12 > bArr.length || i11 + i12 > bArr2.length) {
            throw new IndexOutOfBoundsException();
        }
        int i13 = 0;
        if (HAS_UNSAFE_ARRAY_OPERATIONS) {
            for (int i14 = (BYTE_ARRAY_ALIGNMENT + i10) & 7; i13 < i12 && (i14 & 7) != 0; i14++) {
                if (bArr[i10 + i13] != bArr2[i11 + i13]) {
                    return i13;
                }
                i13++;
            }
            int i15 = ((i12 - i13) & (-8)) + i13;
            while (i13 < i15) {
                long j6 = BYTE_ARRAY_BASE_OFFSET;
                long j10 = i13;
                long j11 = getLong((Object) bArr, ((long) i10) + j6 + j10);
                long j12 = getLong((Object) bArr2, j6 + ((long) i11) + j10);
                if (j11 != j12) {
                    return i13 + firstDifferingByteIndexNativeEndian(j11, j12);
                }
                i13 += 8;
            }
        }
        while (i13 < i12) {
            if (bArr[i10 + i13] != bArr2[i11 + i13]) {
                return i13;
            }
            i13++;
        }
        return -1;
    }

    static long objectFieldOffset(java.lang.reflect.Field field) {
        return MEMORY_ACCESSOR.objectFieldOffset(field);
    }

    static void putBoolean(boolean[] zArr, long j6, boolean z6) {
        MEMORY_ACCESSOR.putBoolean(zArr, BOOLEAN_ARRAY_BASE_OFFSET + (j6 * BOOLEAN_ARRAY_INDEX_SCALE), z6);
    }

    static void putByte(byte[] bArr, long j6, byte b7) {
        MEMORY_ACCESSOR.putByte(bArr, BYTE_ARRAY_BASE_OFFSET + j6, b7);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void putByteBigEndian(Object obj, long j6, byte b7) {
        long j10 = (-4) & j6;
        int i10 = getInt(obj, j10);
        int i11 = ((~((int) j6)) & 3) << 3;
        putInt(obj, j10, ((255 & b7) << i11) | (i10 & (~(255 << i11))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void putByteLittleEndian(Object obj, long j6, byte b7) {
        long j10 = (-4) & j6;
        int i10 = (((int) j6) & 3) << 3;
        putInt(obj, j10, ((255 & b7) << i10) | (getInt(obj, j10) & (~(255 << i10))));
    }

    static void putDouble(double[] dArr, long j6, double d2) {
        MEMORY_ACCESSOR.putDouble(dArr, DOUBLE_ARRAY_BASE_OFFSET + (j6 * DOUBLE_ARRAY_INDEX_SCALE), d2);
    }

    static void putFloat(float[] fArr, long j6, float f) {
        MEMORY_ACCESSOR.putFloat(fArr, FLOAT_ARRAY_BASE_OFFSET + (j6 * FLOAT_ARRAY_INDEX_SCALE), f);
    }

    static void putInt(int[] iArr, long j6, int i10) {
        MEMORY_ACCESSOR.putInt(iArr, INT_ARRAY_BASE_OFFSET + (j6 * INT_ARRAY_INDEX_SCALE), i10);
    }

    static void putLong(long[] jArr, long j6, long j10) {
        MEMORY_ACCESSOR.putLong(jArr, LONG_ARRAY_BASE_OFFSET + (j6 * LONG_ARRAY_INDEX_SCALE), j10);
    }

    static void putObject(Object[] objArr, long j6, Object obj) {
        MEMORY_ACCESSOR.putObject(objArr, OBJECT_ARRAY_BASE_OFFSET + (j6 * OBJECT_ARRAY_INDEX_SCALE), obj);
    }

    private static boolean supportsUnsafeArrayOperations() {
        e eVar = MEMORY_ACCESSOR;
        if (eVar == null) {
            return false;
        }
        return eVar.supportsUnsafeArrayOperations();
    }

    private static boolean supportsUnsafeByteBufferOperations() {
        e eVar = MEMORY_ACCESSOR;
        if (eVar == null) {
            return false;
        }
        return eVar.supportsUnsafeByteBufferOperations();
    }

    static {
        boolean z6;
        long jArrayBaseOffset = arrayBaseOffset(byte[].class);
        BYTE_ARRAY_BASE_OFFSET = jArrayBaseOffset;
        BOOLEAN_ARRAY_BASE_OFFSET = arrayBaseOffset(boolean[].class);
        BOOLEAN_ARRAY_INDEX_SCALE = arrayIndexScale(boolean[].class);
        INT_ARRAY_BASE_OFFSET = arrayBaseOffset(int[].class);
        INT_ARRAY_INDEX_SCALE = arrayIndexScale(int[].class);
        LONG_ARRAY_BASE_OFFSET = arrayBaseOffset(long[].class);
        LONG_ARRAY_INDEX_SCALE = arrayIndexScale(long[].class);
        FLOAT_ARRAY_BASE_OFFSET = arrayBaseOffset(float[].class);
        FLOAT_ARRAY_INDEX_SCALE = arrayIndexScale(float[].class);
        DOUBLE_ARRAY_BASE_OFFSET = arrayBaseOffset(double[].class);
        DOUBLE_ARRAY_INDEX_SCALE = arrayIndexScale(double[].class);
        OBJECT_ARRAY_BASE_OFFSET = arrayBaseOffset(Object[].class);
        OBJECT_ARRAY_INDEX_SCALE = arrayIndexScale(Object[].class);
        BUFFER_ADDRESS_OFFSET = fieldOffset(bufferAddressField());
        BYTE_ARRAY_ALIGNMENT = (int) (jArrayBaseOffset & 7);
        if (ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN) {
            z6 = true;
        } else {
            z6 = false;
        }
        IS_BIG_ENDIAN = z6;
    }

    private t0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static java.lang.reflect.Field bufferAddressField() {
        java.lang.reflect.Field field;
        if (com.google.protobuf.b.isOnAndroidDevice() && (field = field(Buffer.class, "effectiveDirectAddress")) != null) {
            return field;
        }
        java.lang.reflect.Field field2 = field(Buffer.class, "address");
        if (field2 == null || field2.getType() != Long.TYPE) {
            return null;
        }
        return field2;
    }

    static void copyMemory(byte[] bArr, long j6, byte[] bArr2, long j10, long j11) {
        System.arraycopy(bArr, (int) j6, bArr2, (int) j10, (int) j11);
    }

    private static java.lang.reflect.Field field(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean getBooleanBigEndian(Object obj, long j6) {
        if (getByteBigEndian(obj, j6) != 0) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean getBooleanLittleEndian(Object obj, long j6) {
        if (getByteLittleEndian(obj, j6) != 0) {
            return true;
        }
        return false;
    }

    static byte getByte(long j6) {
        return MEMORY_ACCESSOR.getByte(j6);
    }

    static int getInt(long j6) {
        return MEMORY_ACCESSOR.getInt(j6);
    }

    static long getLong(long j6) {
        return MEMORY_ACCESSOR.getLong(j6);
    }

    static void putByte(long j6, byte b7) {
        MEMORY_ACCESSOR.putByte(j6, b7);
    }

    static void putInt(long j6, int i10) {
        MEMORY_ACCESSOR.putInt(j6, i10);
    }

    static void putLong(long j6, long j10) {
        MEMORY_ACCESSOR.putLong(j6, j10);
    }
}
