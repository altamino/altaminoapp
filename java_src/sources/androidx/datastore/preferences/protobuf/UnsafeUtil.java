package androidx.datastore.preferences.protobuf;

import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.security.PrivilegedExceptionAction;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes3.dex */
final class UnsafeUtil {
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
    private static final Logger logger = Logger.getLogger(UnsafeUtil.class.getName());
    private static final Unsafe UNSAFE = G();
    private static final Class<?> MEMORY_CLASS = Android.b();
    private static final boolean IS_ANDROID_64 = p(Long.TYPE);
    private static final boolean IS_ANDROID_32 = p(Integer.TYPE);
    private static final MemoryAccessor MEMORY_ACCESSOR = E();
    private static final boolean HAS_UNSAFE_BYTEBUFFER_OPERATIONS = X();
    private static final boolean HAS_UNSAFE_ARRAY_OPERATIONS = W();

    private static final class Android32MemoryAccessor extends MemoryAccessor {
        private static final long SMALL_ADDRESS_MASK = -1;

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public void c(long j6, byte[] bArr, long j10, long j11) {
            throw new UnsupportedOperationException();
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public void d(byte[] bArr, long j6, long j10, long j11) {
            throw new UnsupportedOperationException();
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public boolean e(Object obj, long j6) {
            return UnsafeUtil.IS_BIG_ENDIAN ? UnsafeUtil.t(obj, j6) : UnsafeUtil.u(obj, j6);
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public byte f(long j6) {
            throw new UnsupportedOperationException();
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public byte g(Object obj, long j6) {
            return UnsafeUtil.IS_BIG_ENDIAN ? UnsafeUtil.x(obj, j6) : UnsafeUtil.y(obj, j6);
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public long k(long j6) {
            throw new UnsupportedOperationException();
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public void o(Object obj, long j6, boolean z6) {
            if (UnsafeUtil.IS_BIG_ENDIAN) {
                UnsafeUtil.L(obj, j6, z6);
            } else {
                UnsafeUtil.M(obj, j6, z6);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public void p(long j6, byte b7) {
            throw new UnsupportedOperationException();
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public void q(Object obj, long j6, byte b7) {
            if (UnsafeUtil.IS_BIG_ENDIAN) {
                UnsafeUtil.P(obj, j6, b7);
            } else {
                UnsafeUtil.Q(obj, j6, b7);
            }
        }

        Android32MemoryAccessor(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public double h(Object obj, long j6) {
            return Double.longBitsToDouble(l(obj, j6));
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public float i(Object obj, long j6) {
            return Float.intBitsToFloat(j(obj, j6));
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public void r(Object obj, long j6, double d) {
            u(obj, j6, Double.doubleToLongBits(d));
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public void s(Object obj, long j6, float f) {
            t(obj, j6, Float.floatToIntBits(f));
        }
    }

    private static final class Android64MemoryAccessor extends MemoryAccessor {
        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public void c(long j6, byte[] bArr, long j10, long j11) {
            throw new UnsupportedOperationException();
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public void d(byte[] bArr, long j6, long j10, long j11) {
            throw new UnsupportedOperationException();
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public boolean e(Object obj, long j6) {
            return UnsafeUtil.IS_BIG_ENDIAN ? UnsafeUtil.t(obj, j6) : UnsafeUtil.u(obj, j6);
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public byte f(long j6) {
            throw new UnsupportedOperationException();
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public byte g(Object obj, long j6) {
            return UnsafeUtil.IS_BIG_ENDIAN ? UnsafeUtil.x(obj, j6) : UnsafeUtil.y(obj, j6);
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public long k(long j6) {
            throw new UnsupportedOperationException();
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public void o(Object obj, long j6, boolean z6) {
            if (UnsafeUtil.IS_BIG_ENDIAN) {
                UnsafeUtil.L(obj, j6, z6);
            } else {
                UnsafeUtil.M(obj, j6, z6);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public void p(long j6, byte b7) {
            throw new UnsupportedOperationException();
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public void q(Object obj, long j6, byte b7) {
            if (UnsafeUtil.IS_BIG_ENDIAN) {
                UnsafeUtil.P(obj, j6, b7);
            } else {
                UnsafeUtil.Q(obj, j6, b7);
            }
        }

        Android64MemoryAccessor(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public double h(Object obj, long j6) {
            return Double.longBitsToDouble(l(obj, j6));
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public float i(Object obj, long j6) {
            return Float.intBitsToFloat(j(obj, j6));
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public void r(Object obj, long j6, double d) {
            u(obj, j6, Double.doubleToLongBits(d));
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public void s(Object obj, long j6, float f) {
            t(obj, j6, Float.floatToIntBits(f));
        }
    }

    private static final class JvmMemoryAccessor extends MemoryAccessor {
        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public void c(long j6, byte[] bArr, long j10, long j11) {
            this.unsafe.copyMemory((Object) null, j6, bArr, UnsafeUtil.BYTE_ARRAY_BASE_OFFSET + j10, j11);
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public void d(byte[] bArr, long j6, long j10, long j11) {
            this.unsafe.copyMemory(bArr, UnsafeUtil.BYTE_ARRAY_BASE_OFFSET + j6, (Object) null, j10, j11);
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public boolean e(Object obj, long j6) {
            return this.unsafe.getBoolean(obj, j6);
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public byte f(long j6) {
            return this.unsafe.getByte(j6);
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public byte g(Object obj, long j6) {
            return this.unsafe.getByte(obj, j6);
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public double h(Object obj, long j6) {
            return this.unsafe.getDouble(obj, j6);
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public float i(Object obj, long j6) {
            return this.unsafe.getFloat(obj, j6);
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public long k(long j6) {
            return this.unsafe.getLong(j6);
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public void o(Object obj, long j6, boolean z6) {
            this.unsafe.putBoolean(obj, j6, z6);
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public void p(long j6, byte b7) {
            this.unsafe.putByte(j6, b7);
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public void q(Object obj, long j6, byte b7) {
            this.unsafe.putByte(obj, j6, b7);
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public void r(Object obj, long j6, double d) {
            this.unsafe.putDouble(obj, j6, d);
        }

        @Override // androidx.datastore.preferences.protobuf.UnsafeUtil.MemoryAccessor
        public void s(Object obj, long j6, float f) {
            this.unsafe.putFloat(obj, j6, f);
        }

        JvmMemoryAccessor(Unsafe unsafe) {
            super(unsafe);
        }
    }

    private static abstract class MemoryAccessor {
        Unsafe unsafe;

        public abstract void c(long j6, byte[] bArr, long j10, long j11);

        public abstract void d(byte[] bArr, long j6, long j10, long j11);

        public abstract boolean e(Object obj, long j6);

        public abstract byte f(long j6);

        public abstract byte g(Object obj, long j6);

        public abstract double h(Object obj, long j6);

        public abstract float i(Object obj, long j6);

        public abstract long k(long j6);

        public abstract void o(Object obj, long j6, boolean z6);

        public abstract void p(long j6, byte b7);

        public abstract void q(Object obj, long j6, byte b7);

        public abstract void r(Object obj, long j6, double d);

        public abstract void s(Object obj, long j6, float f);

        public final int a(Class<?> cls) {
            return this.unsafe.arrayBaseOffset(cls);
        }

        public final int b(Class<?> cls) {
            return this.unsafe.arrayIndexScale(cls);
        }

        public final int j(Object obj, long j6) {
            return this.unsafe.getInt(obj, j6);
        }

        public final long l(Object obj, long j6) {
            return this.unsafe.getLong(obj, j6);
        }

        public final Object m(Object obj, long j6) {
            return this.unsafe.getObject(obj, j6);
        }

        public final long n(java.lang.reflect.Field field) {
            return this.unsafe.objectFieldOffset(field);
        }

        public final void t(Object obj, long j6, int i10) {
            this.unsafe.putInt(obj, j6, i10);
        }

        public final void u(Object obj, long j6, long j10) {
            this.unsafe.putLong(obj, j6, j10);
        }

        public final void v(Object obj, long j6, Object obj2) {
            this.unsafe.putObject(obj, j6, obj2);
        }

        MemoryAccessor(Unsafe unsafe) {
            this.unsafe = unsafe;
        }
    }

    static boolean H() {
        return HAS_UNSAFE_ARRAY_OPERATIONS;
    }

    static boolean I() {
        return HAS_UNSAFE_BYTEBUFFER_OPERATIONS;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void L(Object obj, long j6, boolean z6) {
        P(obj, j6, z6 ? (byte) 1 : (byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void M(Object obj, long j6, boolean z6) {
        Q(obj, j6, z6 ? (byte) 1 : (byte) 0);
    }

    static {
        long jK = k(byte[].class);
        BYTE_ARRAY_BASE_OFFSET = jK;
        BOOLEAN_ARRAY_BASE_OFFSET = k(boolean[].class);
        BOOLEAN_ARRAY_INDEX_SCALE = l(boolean[].class);
        INT_ARRAY_BASE_OFFSET = k(int[].class);
        INT_ARRAY_INDEX_SCALE = l(int[].class);
        LONG_ARRAY_BASE_OFFSET = k(long[].class);
        LONG_ARRAY_INDEX_SCALE = l(long[].class);
        FLOAT_ARRAY_BASE_OFFSET = k(float[].class);
        FLOAT_ARRAY_INDEX_SCALE = l(float[].class);
        DOUBLE_ARRAY_BASE_OFFSET = k(double[].class);
        DOUBLE_ARRAY_INDEX_SCALE = l(double[].class);
        OBJECT_ARRAY_BASE_OFFSET = k(Object[].class);
        OBJECT_ARRAY_INDEX_SCALE = l(Object[].class);
        BUFFER_ADDRESS_OFFSET = r(m());
        BYTE_ARRAY_ALIGNMENT = (int) (jK & 7);
        IS_BIG_ENDIAN = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    static float A(Object obj, long j6) {
        return MEMORY_ACCESSOR.i(obj, j6);
    }

    static int B(Object obj, long j6) {
        return MEMORY_ACCESSOR.j(obj, j6);
    }

    static long C(long j6) {
        return MEMORY_ACCESSOR.k(j6);
    }

    static long D(Object obj, long j6) {
        return MEMORY_ACCESSOR.l(obj, j6);
    }

    private static MemoryAccessor E() {
        Unsafe unsafe = UNSAFE;
        if (unsafe == null) {
            return null;
        }
        if (!Android.c()) {
            return new JvmMemoryAccessor(unsafe);
        }
        if (IS_ANDROID_64) {
            return new Android64MemoryAccessor(unsafe);
        }
        if (IS_ANDROID_32) {
            return new Android32MemoryAccessor(unsafe);
        }
        return null;
    }

    static Object F(Object obj, long j6) {
        return MEMORY_ACCESSOR.m(obj, j6);
    }

    static Unsafe G() {
        try {
            return (Unsafe) AccessController.doPrivileged(new PrivilegedExceptionAction<Unsafe>() { // from class: androidx.datastore.preferences.protobuf.UnsafeUtil.1
                @Override // java.security.PrivilegedExceptionAction
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
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
            });
        } catch (Throwable unused) {
            return null;
        }
    }

    static long J(java.lang.reflect.Field field) {
        return MEMORY_ACCESSOR.n(field);
    }

    static void K(Object obj, long j6, boolean z6) {
        MEMORY_ACCESSOR.o(obj, j6, z6);
    }

    static void N(long j6, byte b7) {
        MEMORY_ACCESSOR.p(j6, b7);
    }

    static void O(byte[] bArr, long j6, byte b7) {
        MEMORY_ACCESSOR.q(bArr, BYTE_ARRAY_BASE_OFFSET + j6, b7);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void P(Object obj, long j6, byte b7) {
        long j10 = (-4) & j6;
        int iB = B(obj, j10);
        int i10 = ((~((int) j6)) & 3) << 3;
        T(obj, j10, ((255 & b7) << i10) | (iB & (~(255 << i10))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void Q(Object obj, long j6, byte b7) {
        long j10 = (-4) & j6;
        int i10 = (((int) j6) & 3) << 3;
        T(obj, j10, ((255 & b7) << i10) | (B(obj, j10) & (~(255 << i10))));
    }

    static void R(Object obj, long j6, double d) {
        MEMORY_ACCESSOR.r(obj, j6, d);
    }

    static void S(Object obj, long j6, float f) {
        MEMORY_ACCESSOR.s(obj, j6, f);
    }

    static void T(Object obj, long j6, int i10) {
        MEMORY_ACCESSOR.t(obj, j6, i10);
    }

    static void U(Object obj, long j6, long j10) {
        MEMORY_ACCESSOR.u(obj, j6, j10);
    }

    static void V(Object obj, long j6, Object obj2) {
        MEMORY_ACCESSOR.v(obj, j6, obj2);
    }

    private static boolean W() {
        Unsafe unsafe = UNSAFE;
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
            if (Android.c()) {
                return true;
            }
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
            logger.log(Level.WARNING, "platform method missing - proto runtime falling back to safer methods: " + th);
            return false;
        }
    }

    private static boolean X() {
        Unsafe unsafe = UNSAFE;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", java.lang.reflect.Field.class);
            Class<?> cls2 = Long.TYPE;
            cls.getMethod("getLong", Object.class, cls2);
            if (m() == null) {
                return false;
            }
            if (Android.c()) {
                return true;
            }
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
            logger.log(Level.WARNING, "platform method missing - proto runtime falling back to safer methods: " + th);
            return false;
        }
    }

    static long i(ByteBuffer byteBuffer) {
        return MEMORY_ACCESSOR.l(byteBuffer, BUFFER_ADDRESS_OFFSET);
    }

    static <T> T j(Class<T> cls) {
        try {
            return (T) UNSAFE.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    private static int k(Class<?> cls) {
        if (HAS_UNSAFE_ARRAY_OPERATIONS) {
            return MEMORY_ACCESSOR.a(cls);
        }
        return -1;
    }

    private static int l(Class<?> cls) {
        if (HAS_UNSAFE_ARRAY_OPERATIONS) {
            return MEMORY_ACCESSOR.b(cls);
        }
        return -1;
    }

    static void n(long j6, byte[] bArr, long j10, long j11) {
        MEMORY_ACCESSOR.c(j6, bArr, j10, j11);
    }

    static void o(byte[] bArr, long j6, long j10, long j11) {
        MEMORY_ACCESSOR.d(bArr, j6, j10, j11);
    }

    private static boolean p(Class<?> cls) {
        if (!Android.c()) {
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

    private static long r(java.lang.reflect.Field field) {
        MemoryAccessor memoryAccessor;
        if (field == null || (memoryAccessor = MEMORY_ACCESSOR) == null) {
            return -1L;
        }
        return memoryAccessor.n(field);
    }

    static boolean s(Object obj, long j6) {
        return MEMORY_ACCESSOR.e(obj, j6);
    }

    static byte v(long j6) {
        return MEMORY_ACCESSOR.f(j6);
    }

    static byte w(byte[] bArr, long j6) {
        return MEMORY_ACCESSOR.g(bArr, BYTE_ARRAY_BASE_OFFSET + j6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte x(Object obj, long j6) {
        return (byte) ((B(obj, (-4) & j6) >>> ((int) (((~j6) & 3) << 3))) & 255);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte y(Object obj, long j6) {
        return (byte) ((B(obj, (-4) & j6) >>> ((int) ((j6 & 3) << 3))) & 255);
    }

    static double z(Object obj, long j6) {
        return MEMORY_ACCESSOR.h(obj, j6);
    }

    private UnsafeUtil() {
    }

    private static java.lang.reflect.Field m() {
        java.lang.reflect.Field fieldQ;
        if (Android.c() && (fieldQ = q(Buffer.class, "effectiveDirectAddress")) != null) {
            return fieldQ;
        }
        java.lang.reflect.Field fieldQ2 = q(Buffer.class, "address");
        if (fieldQ2 == null || fieldQ2.getType() != Long.TYPE) {
            return null;
        }
        return fieldQ2;
    }

    private static java.lang.reflect.Field q(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean t(Object obj, long j6) {
        if (x(obj, j6) != 0) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean u(Object obj, long j6) {
        if (y(obj, j6) != 0) {
            return true;
        }
        return false;
    }
}
