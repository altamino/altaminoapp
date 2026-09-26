package io.ktor.utils.io;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Comparator;
import java.util.WeakHashMap;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import kotlinx.coroutines.i0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
public final class r {
    private static final int throwableFields = d(Throwable.class, -1);

    @NotNull
    private static final ReentrantReadWriteLock cacheLock = new ReentrantReadWriteLock();

    @NotNull
    private static final WeakHashMap<Class<? extends Throwable>, e8.l<Throwable, Throwable>> exceptionCtors = new WeakHashMap<>();

    public static final class a extends kotlin.jvm.internal.v implements e8.l<Throwable, Throwable> {
        final /* synthetic */ Constructor $constructor$inlined;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Constructor constructor) {
            super(1);
            this.$constructor$inlined = constructor;
        }

        @Override // e8.l
        @Nullable
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final Throwable invoke(@NotNull Throwable e) {
            Object objB;
            kotlin.jvm.internal.t.j(e, "e");
            try {
                w7.v.a aVar = w7.v.Companion;
                Object objNewInstance = this.$constructor$inlined.newInstance(e.getMessage(), e);
                kotlin.jvm.internal.t.h(objNewInstance, "null cannot be cast to non-null type kotlin.Throwable");
                objB = w7.v.b((Throwable) objNewInstance);
            } catch (Throwable th) {
                w7.v.a aVar2 = w7.v.Companion;
                objB = w7.v.b(w7.w.a(th));
            }
            if (w7.v.g(objB)) {
                objB = null;
            }
            return (Throwable) objB;
        }
    }

    public static final class b extends kotlin.jvm.internal.v implements e8.l<Throwable, Throwable> {
        final /* synthetic */ Constructor $constructor$inlined;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Constructor constructor) {
            super(1);
            this.$constructor$inlined = constructor;
        }

        @Override // e8.l
        @Nullable
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final Throwable invoke(@NotNull Throwable e) {
            Object objB;
            kotlin.jvm.internal.t.j(e, "e");
            try {
                w7.v.a aVar = w7.v.Companion;
                Object objNewInstance = this.$constructor$inlined.newInstance(e);
                kotlin.jvm.internal.t.h(objNewInstance, "null cannot be cast to non-null type kotlin.Throwable");
                objB = w7.v.b((Throwable) objNewInstance);
            } catch (Throwable th) {
                w7.v.a aVar2 = w7.v.Companion;
                objB = w7.v.b(w7.w.a(th));
            }
            if (w7.v.g(objB)) {
                objB = null;
            }
            return (Throwable) objB;
        }
    }

    public static final class c extends kotlin.jvm.internal.v implements e8.l<Throwable, Throwable> {
        final /* synthetic */ Constructor $constructor$inlined;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Constructor constructor) {
            super(1);
            this.$constructor$inlined = constructor;
        }

        @Override // e8.l
        @Nullable
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final Throwable invoke(@NotNull Throwable e) {
            Object objB;
            kotlin.jvm.internal.t.j(e, "e");
            try {
                w7.v.a aVar = w7.v.Companion;
                Object objNewInstance = this.$constructor$inlined.newInstance(e.getMessage());
                kotlin.jvm.internal.t.h(objNewInstance, "null cannot be cast to non-null type kotlin.Throwable");
                Throwable th = (Throwable) objNewInstance;
                th.initCause(e);
                objB = w7.v.b(th);
            } catch (Throwable th2) {
                w7.v.a aVar2 = w7.v.Companion;
                objB = w7.v.b(w7.w.a(th2));
            }
            if (w7.v.g(objB)) {
                objB = null;
            }
            return (Throwable) objB;
        }
    }

    public static final class d extends kotlin.jvm.internal.v implements e8.l<Throwable, Throwable> {
        final /* synthetic */ Constructor $constructor$inlined;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(Constructor constructor) {
            super(1);
            this.$constructor$inlined = constructor;
        }

        @Override // e8.l
        @Nullable
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final Throwable invoke(@NotNull Throwable e) {
            Object objB;
            kotlin.jvm.internal.t.j(e, "e");
            try {
                w7.v.a aVar = w7.v.Companion;
                Object objNewInstance = this.$constructor$inlined.newInstance(new Object[0]);
                kotlin.jvm.internal.t.h(objNewInstance, "null cannot be cast to non-null type kotlin.Throwable");
                Throwable th = (Throwable) objNewInstance;
                th.initCause(e);
                objB = w7.v.b(th);
            } catch (Throwable th2) {
                w7.v.a aVar2 = w7.v.Companion;
                objB = w7.v.b(w7.w.a(th2));
            }
            if (w7.v.g(objB)) {
                objB = null;
            }
            return (Throwable) objB;
        }
    }

    public static final class e<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t5, T t10) {
            return y7.c.d(Integer.valueOf(((Constructor) t10).getParameterTypes().length), Integer.valueOf(((Constructor) t5).getParameterTypes().length));
        }
    }

    static final class f extends kotlin.jvm.internal.v implements e8.l {
        public static final f INSTANCE = new f();

        f() {
            super(1);
        }

        @Override // e8.l
        @Nullable
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final Void invoke(@NotNull Throwable it) {
            kotlin.jvm.internal.t.j(it, "it");
            return null;
        }
    }

    static final class g extends kotlin.jvm.internal.v implements e8.l {
        public static final g INSTANCE = new g();

        g() {
            super(1);
        }

        @Override // e8.l
        @Nullable
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final Void invoke(@NotNull Throwable it) {
            kotlin.jvm.internal.t.j(it, "it");
            return null;
        }
    }

    static /* synthetic */ int c(Class cls, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 0;
        }
        return b(cls, i10);
    }

    @Nullable
    public static final <E extends Throwable> E e(@NotNull E exception, @NotNull Throwable cause) {
        Object objB;
        kotlin.jvm.internal.t.j(exception, "exception");
        kotlin.jvm.internal.t.j(cause, "cause");
        if (exception instanceof i0) {
            try {
                w7.v.a aVar = w7.v.Companion;
                objB = w7.v.b(((i0) exception).a());
            } catch (Throwable th) {
                w7.v.a aVar2 = w7.v.Companion;
                objB = w7.v.b(w7.w.a(th));
            }
            return (E) (w7.v.g(objB) ? null : objB);
        }
        ReentrantReadWriteLock reentrantReadWriteLock = cacheLock;
        ReentrantReadWriteLock.ReadLock lock = reentrantReadWriteLock.readLock();
        lock.lock();
        try {
            e8.l<Throwable, Throwable> lVar = exceptionCtors.get(exception.getClass());
            lock.unlock();
            if (lVar != null) {
                return (E) lVar.invoke(exception);
            }
            int i10 = 0;
            if (throwableFields != d(exception.getClass(), 0)) {
                ReentrantReadWriteLock.ReadLock lock2 = reentrantReadWriteLock.readLock();
                int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
                for (int i11 = 0; i11 < readHoldCount; i11++) {
                    lock2.unlock();
                }
                ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
                writeLock.lock();
                try {
                    exceptionCtors.put((Class<? extends Throwable>) exception.getClass(), f.INSTANCE);
                    l0 l0Var = l0.INSTANCE;
                    while (i10 < readHoldCount) {
                        lock2.lock();
                        i10++;
                    }
                    return null;
                } finally {
                    while (i10 < readHoldCount) {
                        lock2.lock();
                        i10++;
                    }
                    writeLock.unlock();
                }
            }
            Constructor<?>[] constructors = exception.getClass().getConstructors();
            kotlin.jvm.internal.t.i(constructors, "exception.javaClass.constructors");
            e8.l<Throwable, Throwable> lVarA = null;
            for (Constructor constructor : kotlin.collections.p.p0(constructors, new e())) {
                kotlin.jvm.internal.t.i(constructor, "constructor");
                lVarA = a(constructor);
                if (lVarA != null) {
                    break;
                }
            }
            ReentrantReadWriteLock reentrantReadWriteLock2 = cacheLock;
            ReentrantReadWriteLock.ReadLock lock3 = reentrantReadWriteLock2.readLock();
            int readHoldCount2 = reentrantReadWriteLock2.getWriteHoldCount() == 0 ? reentrantReadWriteLock2.getReadHoldCount() : 0;
            for (int i12 = 0; i12 < readHoldCount2; i12++) {
                lock3.unlock();
            }
            ReentrantReadWriteLock.WriteLock writeLock2 = reentrantReadWriteLock2.writeLock();
            writeLock2.lock();
            try {
                exceptionCtors.put((Class<? extends Throwable>) exception.getClass(), lVarA == null ? g.INSTANCE : lVarA);
                l0 l0Var2 = l0.INSTANCE;
                while (i10 < readHoldCount2) {
                    lock3.lock();
                    i10++;
                }
                writeLock2.unlock();
                if (lVarA != null) {
                    return (E) lVarA.invoke(cause);
                }
                return null;
            } catch (Throwable th2) {
                while (i10 < readHoldCount2) {
                    lock3.lock();
                    i10++;
                }
                writeLock2.unlock();
                throw th2;
            }
        } catch (Throwable th3) {
            lock.unlock();
            throw th3;
        }
    }

    private static final e8.l<Throwable, Throwable> a(Constructor<?> constructor) {
        Class<?>[] parameterTypes = constructor.getParameterTypes();
        int length = parameterTypes.length;
        if (length != 0) {
            if (length != 1) {
                if (length != 2 || !kotlin.jvm.internal.t.e(parameterTypes[0], String.class) || !kotlin.jvm.internal.t.e(parameterTypes[1], Throwable.class)) {
                    return null;
                }
                return new a(constructor);
            }
            Class<?> cls = parameterTypes[0];
            if (kotlin.jvm.internal.t.e(cls, Throwable.class)) {
                return new b(constructor);
            }
            if (!kotlin.jvm.internal.t.e(cls, String.class)) {
                return null;
            }
            return new c(constructor);
        }
        return new d(constructor);
    }

    private static final int b(Class<?> cls, int i10) {
        do {
            Field[] declaredFields = cls.getDeclaredFields();
            kotlin.jvm.internal.t.i(declaredFields, "declaredFields");
            int i11 = 0;
            for (Field field : declaredFields) {
                if (!Modifier.isStatic(field.getModifiers())) {
                    i11++;
                }
            }
            i10 += i11;
            cls = cls.getSuperclass();
        } while (cls != null);
        return i10;
    }

    private static final int d(Class<?> cls, int i10) {
        Object objB;
        d8.a.c(cls);
        try {
            w7.v.a aVar = w7.v.Companion;
            objB = w7.v.b(Integer.valueOf(c(cls, 0, 1, null)));
        } catch (Throwable th) {
            w7.v.a aVar2 = w7.v.Companion;
            objB = w7.v.b(w7.w.a(th));
        }
        Integer numValueOf = Integer.valueOf(i10);
        if (w7.v.g(objB)) {
            objB = numValueOf;
        }
        return ((Number) objB).intValue();
    }
}
