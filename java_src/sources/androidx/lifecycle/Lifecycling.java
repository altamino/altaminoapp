package androidx.lifecycle;

import androidx.annotation.RestrictTo;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.u;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
@RestrictTo
public final class Lifecycling {
    private static final int GENERATED_CALLBACK = 2;
    private static final int REFLECTIVE_CALLBACK = 1;

    @NotNull
    public static final Lifecycling INSTANCE = new Lifecycling();

    @NotNull
    private static final Map<Class<?>, Integer> callbackCache = new HashMap();

    @NotNull
    private static final Map<Class<?>, List<Constructor<? extends GeneratedAdapter>>> classToAdapters = new HashMap();

    private final GeneratedAdapter a(Constructor<? extends GeneratedAdapter> constructor, Object obj) {
        try {
            GeneratedAdapter generatedAdapterNewInstance = constructor.newInstance(obj);
            t.i(generatedAdapterNewInstance, "{\n            constructo…tance(`object`)\n        }");
            return generatedAdapterNewInstance;
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InstantiationException e2) {
            throw new RuntimeException(e2);
        } catch (InvocationTargetException e6) {
            throw new RuntimeException(e6);
        }
    }

    @NotNull
    public static final String c(@NotNull String className) {
        t.j(className, "className");
        return kotlin.text.t.G(className, ".", "_", false, 4, null) + "_LifecycleAdapter";
    }

    private final int d(Class<?> cls) {
        Map<Class<?>, Integer> map = callbackCache;
        Integer num = map.get(cls);
        if (num != null) {
            return num.intValue();
        }
        int iG = g(cls);
        map.put(cls, Integer.valueOf(iG));
        return iG;
    }

    private final boolean e(Class<?> cls) {
        return cls != null && LifecycleObserver.class.isAssignableFrom(cls);
    }

    @NotNull
    public static final LifecycleEventObserver f(@NotNull Object object) {
        t.j(object, "object");
        boolean z6 = object instanceof LifecycleEventObserver;
        boolean z10 = object instanceof DefaultLifecycleObserver;
        if (z6 && z10) {
            return new DefaultLifecycleObserverAdapter((DefaultLifecycleObserver) object, (LifecycleEventObserver) object);
        }
        if (z10) {
            return new DefaultLifecycleObserverAdapter((DefaultLifecycleObserver) object, null);
        }
        if (z6) {
            return (LifecycleEventObserver) object;
        }
        Class<?> cls = object.getClass();
        Lifecycling lifecycling = INSTANCE;
        if (lifecycling.d(cls) != 2) {
            return new ReflectiveGenericLifecycleObserver(object);
        }
        List<Constructor<? extends GeneratedAdapter>> list = classToAdapters.get(cls);
        t.g(list);
        List<Constructor<? extends GeneratedAdapter>> list2 = list;
        if (list2.size() == 1) {
            return new SingleGeneratedAdapterObserver(lifecycling.a(list2.get(0), object));
        }
        int size = list2.size();
        GeneratedAdapter[] generatedAdapterArr = new GeneratedAdapter[size];
        for (int i10 = 0; i10 < size; i10++) {
            generatedAdapterArr[i10] = INSTANCE.a(list2.get(i10), object);
        }
        return new CompositeGeneratedAdaptersObserver(generatedAdapterArr);
    }

    private Lifecycling() {
    }

    private final Constructor<? extends GeneratedAdapter> b(Class<?> cls) {
        String fullPackage;
        try {
            Package r1 = cls.getPackage();
            String name = cls.getCanonicalName();
            if (r1 != null) {
                fullPackage = r1.getName();
            } else {
                fullPackage = "";
            }
            t.i(fullPackage, "fullPackage");
            if (fullPackage.length() != 0) {
                t.i(name, "name");
                name = name.substring(fullPackage.length() + 1);
                t.i(name, "this as java.lang.String).substring(startIndex)");
            }
            t.i(name, "if (fullPackage.isEmpty(…g(fullPackage.length + 1)");
            String strC = c(name);
            if (fullPackage.length() != 0) {
                strC = fullPackage + '.' + strC;
            }
            Class<?> cls2 = Class.forName(strC);
            t.h(cls2, "null cannot be cast to non-null type java.lang.Class<out androidx.lifecycle.GeneratedAdapter>");
            Constructor declaredConstructor = cls2.getDeclaredConstructor(cls);
            if (!declaredConstructor.isAccessible()) {
                declaredConstructor.setAccessible(true);
                return declaredConstructor;
            }
            return declaredConstructor;
        } catch (ClassNotFoundException unused) {
            return null;
        } catch (NoSuchMethodException e) {
            throw new RuntimeException(e);
        }
    }

    private final int g(Class<?> cls) {
        ArrayList arrayList;
        if (cls.getCanonicalName() == null) {
            return 1;
        }
        Constructor<? extends GeneratedAdapter> constructorB = b(cls);
        if (constructorB != null) {
            classToAdapters.put(cls, u.e(constructorB));
            return 2;
        }
        if (ClassesInfoCache.sInstance.d(cls)) {
            return 1;
        }
        Class<? super Object> superclass = cls.getSuperclass();
        if (e(superclass)) {
            t.i(superclass, "superclass");
            if (d(superclass) == 1) {
                return 1;
            }
            List<Constructor<? extends GeneratedAdapter>> list = classToAdapters.get(superclass);
            t.g(list);
            arrayList = new ArrayList(list);
        } else {
            arrayList = null;
        }
        Class<?>[] interfaces = cls.getInterfaces();
        t.i(interfaces, "klass.interfaces");
        for (Class<?> intrface : interfaces) {
            if (e(intrface)) {
                t.i(intrface, "intrface");
                if (d(intrface) == 1) {
                    return 1;
                }
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                List<Constructor<? extends GeneratedAdapter>> list2 = classToAdapters.get(intrface);
                t.g(list2);
                arrayList.addAll(list2);
            }
        }
        if (arrayList == null) {
            return 1;
        }
        classToAdapters.put(cls, arrayList);
        return 2;
    }
}
