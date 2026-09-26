package kotlin.jvm.internal;

import java.util.Arrays;
import java.util.Collections;
import kotlin.reflect.KClass;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.KFunction;
import kotlin.reflect.KMutableProperty0;
import kotlin.reflect.KMutableProperty1;
import kotlin.reflect.KProperty0;
import kotlin.reflect.KProperty1;
import kotlin.reflect.KProperty2;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeProjection;

/* JADX INFO: loaded from: classes11.dex */
public class q0 {
    private static final KClass[] EMPTY_K_CLASS_ARRAY;
    static final String REFLECTION_NOT_AVAILABLE = " (Kotlin reflection is not available)";
    private static final r0 factory;

    static {
        r0 r0Var = null;
        try {
            r0Var = (r0) Class.forName("kotlin.reflect.jvm.internal.ReflectionFactoryImpl").newInstance();
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException unused) {
        }
        if (r0Var == null) {
            r0Var = new r0();
        }
        factory = r0Var;
        EMPTY_K_CLASS_ARRAY = new KClass[0];
    }

    public static KFunction a(p pVar) {
        return factory.a(pVar);
    }

    public static KClass b(Class cls) {
        return factory.b(cls);
    }

    public static KDeclarationContainer c(Class cls) {
        return factory.c(cls, "");
    }

    public static KMutableProperty0 d(x xVar) {
        return factory.d(xVar);
    }

    public static KMutableProperty1 e(z zVar) {
        return factory.e(zVar);
    }

    public static KProperty0 f(d0 d0Var) {
        return factory.f(d0Var);
    }

    public static KProperty1 g(f0 f0Var) {
        return factory.g(f0Var);
    }

    public static KProperty2 h(h0 h0Var) {
        return factory.h(h0Var);
    }

    public static String i(o oVar) {
        return factory.i(oVar);
    }

    public static String j(v vVar) {
        return factory.j(vVar);
    }

    public static KType k(Class cls) {
        return factory.k(b(cls), Collections.emptyList(), false);
    }

    public static KType l(Class cls, KTypeProjection kTypeProjection) {
        return factory.k(b(cls), Collections.singletonList(kTypeProjection), false);
    }

    public static KType m(Class cls, KTypeProjection kTypeProjection, KTypeProjection kTypeProjection2) {
        return factory.k(b(cls), Arrays.asList(kTypeProjection, kTypeProjection2), false);
    }
}
