package kotlinx.serialization.internal;

import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Arrays;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class p1 {
    private static final Object a(Class<?> cls) {
        try {
            Field declaredField = cls.getDeclaredField("Companion");
            declaredField.setAccessible(true);
            return declaredField.get(null);
        } catch (Throwable unused) {
            return null;
        }
    }

    @Nullable
    public static final <T> KSerializer<T> b(@NotNull KClass<T> kClass) {
        kotlin.jvm.internal.t.j(kClass, "<this>");
        return d(kClass, new KSerializer[0]);
    }

    /* JADX WARN: Code duplicated, block: B:41:0x0081 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:42:0x0082  */
    /* JADX WARN: Code duplicated, block: B:44:0x0088  */
    /* JADX WARN: Code duplicated, block: B:53:? A[RETURN, SYNTHETIC] */
    @Nullable
    public static final <T> KSerializer<T> c(@NotNull Class<T> cls, @NotNull KSerializer<Object>... args) throws IllegalAccessException, InvocationTargetException {
        KSerializer<T> kSerializer;
        Field field;
        KSerializer<T> kSerializerG;
        kotlin.jvm.internal.t.j(cls, "<this>");
        kotlin.jvm.internal.t.j(args, "args");
        if (cls.isEnum() && j(cls)) {
            return e(cls);
        }
        if (cls.isInterface() && (kSerializerG = g(cls)) != null) {
            return kSerializerG;
        }
        KSerializer<T> kSerializerH = h(cls, (KSerializer[]) Arrays.copyOf(args, args.length));
        if (kSerializerH != null) {
            return kSerializerH;
        }
        KSerializer<T> kSerializerF = f(cls);
        if (kSerializerF != null) {
            return kSerializerF;
        }
        try {
            Class<?>[] declaredClasses = cls.getDeclaredClasses();
            kotlin.jvm.internal.t.i(declaredClasses, "declaredClasses");
            int length = declaredClasses.length;
            int i10 = 0;
            Class<?> cls2 = null;
            boolean z6 = false;
            while (true) {
                if (i10 >= length) {
                    if (!z6) {
                    }
                    if (kSerializer != null) {
                        return kSerializer;
                    }
                    if (k(cls)) {
                        return new kotlinx.serialization.e(d8.a.c(cls));
                    }
                    return null;
                }
                Class<?> cls3 = declaredClasses[i10];
                if (kotlin.jvm.internal.t.e(cls3.getSimpleName(), "$serializer")) {
                    if (!z6) {
                        z6 = true;
                        cls2 = cls3;
                    }
                }
                i10++;
                cls2 = null;
                break;
            }
            Object obj = (cls2 == null || (field = cls2.getField("INSTANCE")) == null) ? null : field.get(null);
            kSerializer = obj instanceof KSerializer ? (KSerializer) obj : null;
        } catch (NoSuchFieldException unused) {
        }
        if (kSerializer != null) {
            return kSerializer;
        }
        if (k(cls)) {
            return new kotlinx.serialization.e(d8.a.c(cls));
        }
        return null;
    }

    @Nullable
    public static final <T> KSerializer<T> d(@NotNull KClass<T> kClass, @NotNull KSerializer<Object>... args) {
        kotlin.jvm.internal.t.j(kClass, "<this>");
        kotlin.jvm.internal.t.j(args, "args");
        return c(d8.a.a(kClass), (KSerializer[]) Arrays.copyOf(args, args.length));
    }

    private static final <T> KSerializer<T> g(Class<T> cls) {
        kotlinx.serialization.i iVar = (kotlinx.serialization.i) cls.getAnnotation(kotlinx.serialization.i.class);
        if (iVar == null || kotlin.jvm.internal.t.e(kotlin.jvm.internal.q0.b(iVar.with()), kotlin.jvm.internal.q0.b(kotlinx.serialization.e.class))) {
            return new kotlinx.serialization.e(d8.a.c(cls));
        }
        return null;
    }

    public static final boolean i(@NotNull Object obj, @NotNull KClass<?> kclass) {
        kotlin.jvm.internal.t.j(obj, "<this>");
        kotlin.jvm.internal.t.j(kclass, "kclass");
        return d8.a.b(kclass).isInstance(obj);
    }

    private static final <T> boolean j(Class<T> cls) {
        return cls.getAnnotation(kotlinx.serialization.i.class) == null && cls.getAnnotation(kotlinx.serialization.d.class) == null;
    }

    private static final <T> boolean k(Class<T> cls) {
        if (cls.getAnnotation(kotlinx.serialization.d.class) != null) {
            return true;
        }
        kotlinx.serialization.i iVar = (kotlinx.serialization.i) cls.getAnnotation(kotlinx.serialization.i.class);
        return iVar != null && kotlin.jvm.internal.t.e(kotlin.jvm.internal.q0.b(iVar.with()), kotlin.jvm.internal.q0.b(kotlinx.serialization.e.class));
    }

    public static final boolean l(@NotNull KClass<Object> rootClass) {
        kotlin.jvm.internal.t.j(rootClass, "rootClass");
        return d8.a.a(rootClass).isArray();
    }

    @NotNull
    public static final Void m(@NotNull KClass<?> kClass) {
        kotlin.jvm.internal.t.j(kClass, "<this>");
        q1.d(kClass);
        throw new w7.i();
    }

    @NotNull
    public static final <T, E extends T> E[] n(@NotNull ArrayList<E> arrayList, @NotNull KClass<T> eClass) {
        kotlin.jvm.internal.t.j(arrayList, "<this>");
        kotlin.jvm.internal.t.j(eClass, "eClass");
        Object objNewInstance = Array.newInstance((Class<?>) d8.a.a(eClass), arrayList.size());
        kotlin.jvm.internal.t.h(objNewInstance, "null cannot be cast to non-null type kotlin.Array<E of kotlinx.serialization.internal.PlatformKt.toNativeArrayImpl>");
        E[] eArr = (E[]) arrayList.toArray((Object[]) objNewInstance);
        kotlin.jvm.internal.t.i(eArr, "toArray(java.lang.reflec….java, size) as Array<E>)");
        return eArr;
    }

    private static final <T> KSerializer<T> e(Class<T> cls) {
        T[] enumConstants = cls.getEnumConstants();
        String canonicalName = cls.getCanonicalName();
        kotlin.jvm.internal.t.i(canonicalName, "canonicalName");
        kotlin.jvm.internal.t.h(enumConstants, "null cannot be cast to non-null type kotlin.Array<out kotlin.Enum<*>>");
        return new g0(canonicalName, (Enum[]) enumConstants);
    }

    private static final <T> KSerializer<T> f(Class<T> cls) throws IllegalAccessException, InvocationTargetException {
        Field[] declaredFields = cls.getDeclaredFields();
        kotlin.jvm.internal.t.i(declaredFields, "declaredFields");
        int length = declaredFields.length;
        Field field = null;
        int i10 = 0;
        boolean z6 = false;
        while (true) {
            if (i10 < length) {
                Field field2 = declaredFields[i10];
                if (kotlin.jvm.internal.t.e(field2.getName(), "INSTANCE") && kotlin.jvm.internal.t.e(field2.getType(), cls) && Modifier.isStatic(field2.getModifiers())) {
                    if (!z6) {
                        z6 = true;
                        field = field2;
                    }
                }
                i10++;
            } else {
                if (!z6) {
                    break;
                }
                break;
            }
            field = null;
            break;
        }
        if (field == null) {
            return null;
        }
        Object obj = field.get(null);
        Method[] methods = cls.getMethods();
        kotlin.jvm.internal.t.i(methods, "methods");
        int length2 = methods.length;
        Method method = null;
        int i11 = 0;
        boolean z10 = false;
        while (true) {
            if (i11 < length2) {
                Method method2 = methods[i11];
                if (kotlin.jvm.internal.t.e(method2.getName(), "serializer")) {
                    Class<?>[] parameterTypes = method2.getParameterTypes();
                    kotlin.jvm.internal.t.i(parameterTypes, "it.parameterTypes");
                    if (parameterTypes.length == 0 && kotlin.jvm.internal.t.e(method2.getReturnType(), KSerializer.class)) {
                        if (!z10) {
                            z10 = true;
                            method = method2;
                        }
                    }
                }
                i11++;
            } else {
                if (!z10) {
                    break;
                }
                break;
            }
            method = null;
            break;
        }
        if (method == null) {
            return null;
        }
        Object objInvoke = method.invoke(obj, new Object[0]);
        if (!(objInvoke instanceof KSerializer)) {
            return null;
        }
        return (KSerializer) objInvoke;
    }

    private static final <T> KSerializer<T> h(Class<?> cls, KSerializer<Object>... kSerializerArr) throws IllegalAccessException, InvocationTargetException {
        Class[] clsArr;
        Object objA = a(cls);
        if (objA == null) {
            return null;
        }
        try {
            if (kSerializerArr.length == 0) {
                clsArr = new Class[0];
            } else {
                int length = kSerializerArr.length;
                Class[] clsArr2 = new Class[length];
                for (int i10 = 0; i10 < length; i10++) {
                    clsArr2[i10] = KSerializer.class;
                }
                clsArr = clsArr2;
            }
            Object objInvoke = objA.getClass().getDeclaredMethod("serializer", (Class[]) Arrays.copyOf(clsArr, clsArr.length)).invoke(objA, Arrays.copyOf(kSerializerArr, kSerializerArr.length));
            if (!(objInvoke instanceof KSerializer)) {
                return null;
            }
            return (KSerializer) objInvoke;
        } catch (NoSuchMethodException unused) {
            return null;
        } catch (InvocationTargetException e) {
            Throwable cause = e.getCause();
            if (cause != null) {
                String message = cause.getMessage();
                if (message == null) {
                    message = e.getMessage();
                }
                throw new InvocationTargetException(cause, message);
            }
            throw e;
        }
    }
}
