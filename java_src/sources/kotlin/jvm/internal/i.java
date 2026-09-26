package kotlin.jvm.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.reflect.KCallable;
import kotlin.reflect.KClass;
import kotlin.reflect.KFunction;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeParameter;
import kotlin.reflect.KVisibility;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class i implements KClass<Object>, h {

    @NotNull
    public static final a Companion = new a(null);

    @NotNull
    private static final Map<Class<? extends w7.g<?>>, Integer> FUNCTION_CLASSES;

    @NotNull
    private static final HashMap<String, String> classFqNames;

    @NotNull
    private static final HashMap<String, String> primitiveFqNames;

    @NotNull
    private static final HashMap<String, String> primitiveWrapperFqNames;

    @NotNull
    private static final Map<String, String> simpleNames;

    @NotNull
    private final Class<?> jClass;

    public static final class a {
        public /* synthetic */ a(k kVar) {
            this();
        }

        private a() {
        }

        @Nullable
        public final String a(@NotNull Class<?> jClass) {
            String str;
            t.j(jClass, "jClass");
            String str2 = null;
            if (jClass.isAnonymousClass() || jClass.isLocalClass()) {
                return null;
            }
            if (!jClass.isArray()) {
                String str3 = (String) i.classFqNames.get(jClass.getName());
                return str3 == null ? jClass.getCanonicalName() : str3;
            }
            Class<?> componentType = jClass.getComponentType();
            if (componentType.isPrimitive() && (str = (String) i.classFqNames.get(componentType.getName())) != null) {
                str2 = str + "Array";
            }
            return str2 == null ? "kotlin.Array" : str2;
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x003b, code lost:
        
            if (r2 == null) goto L13;
         */
        @Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final String b(@NotNull Class<?> jClass) {
            String strN0;
            String str;
            t.j(jClass, "jClass");
            String str2 = null;
            if (jClass.isAnonymousClass()) {
                return null;
            }
            if (jClass.isLocalClass()) {
                String simpleName = jClass.getSimpleName();
                Method enclosingMethod = jClass.getEnclosingMethod();
                if (enclosingMethod != null) {
                    t.g(simpleName);
                    strN0 = kotlin.text.u.N0(simpleName, enclosingMethod.getName() + '$', null, 2, null);
                }
                Constructor<?> enclosingConstructor = jClass.getEnclosingConstructor();
                if (enclosingConstructor == null) {
                    t.g(simpleName);
                    return kotlin.text.u.M0(simpleName, '$', null, 2, null);
                }
                t.g(simpleName);
                return kotlin.text.u.N0(simpleName, enclosingConstructor.getName() + '$', null, 2, null);
            }
            if (!jClass.isArray()) {
                String str3 = (String) i.simpleNames.get(jClass.getName());
                return str3 == null ? jClass.getSimpleName() : str3;
            }
            Class<?> componentType = jClass.getComponentType();
            strN0 = "Array";
            if (componentType.isPrimitive() && (str = (String) i.simpleNames.get(componentType.getName())) != null) {
                str2 = str + "Array";
            }
            if (str2 != null) {
                return str2;
            }
            return strN0;
        }

        public final boolean c(@Nullable Object obj, @NotNull Class<?> jClass) {
            t.j(jClass, "jClass");
            Map map = i.FUNCTION_CLASSES;
            t.h(map, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.MapsKt__MapsKt.get, V of kotlin.collections.MapsKt__MapsKt.get>");
            Integer num = (Integer) map.get(jClass);
            if (num != null) {
                return v0.k(obj, num.intValue());
            }
            if (jClass.isPrimitive()) {
                jClass = d8.a.b(d8.a.c(jClass));
            }
            return jClass.isInstance(obj);
        }
    }

    @Override // kotlin.jvm.internal.h
    @NotNull
    public Class<?> a() {
        return this.jClass;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        int i10 = 0;
        List listP = kotlin.collections.v.p(e8.a.class, e8.l.class, e8.p.class, e8.q.class, e8.r.class, e8.s.class, e8.t.class, e8.u.class, e8.v.class, e8.w.class, e8.b.class, e8.c.class, e8.d.class, e8.e.class, e8.f.class, e8.g.class, e8.h.class, e8.i.class, e8.j.class, e8.k.class, e8.m.class, e8.n.class, e8.o.class);
        ArrayList arrayList = new ArrayList(kotlin.collections.w.x(listP, 10));
        for (Object obj : listP) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                kotlin.collections.v.w();
            }
            arrayList.add(w7.a0.a((Class) obj, Integer.valueOf(i10)));
            i10 = i11;
        }
        FUNCTION_CLASSES = kotlin.collections.s0.u(arrayList);
        HashMap<String, String> map = new HashMap<>();
        map.put(TypedValues.Custom.S_BOOLEAN, "kotlin.Boolean");
        map.put("char", "kotlin.Char");
        map.put("byte", "kotlin.Byte");
        map.put("short", "kotlin.Short");
        map.put("int", "kotlin.Int");
        map.put(TypedValues.Custom.S_FLOAT, "kotlin.Float");
        map.put("long", "kotlin.Long");
        map.put("double", "kotlin.Double");
        primitiveFqNames = map;
        HashMap<String, String> map2 = new HashMap<>();
        map2.put("java.lang.Boolean", "kotlin.Boolean");
        map2.put("java.lang.Character", "kotlin.Char");
        map2.put("java.lang.Byte", "kotlin.Byte");
        map2.put("java.lang.Short", "kotlin.Short");
        map2.put("java.lang.Integer", "kotlin.Int");
        map2.put("java.lang.Float", "kotlin.Float");
        map2.put("java.lang.Long", "kotlin.Long");
        map2.put("java.lang.Double", "kotlin.Double");
        primitiveWrapperFqNames = map2;
        HashMap<String, String> map3 = new HashMap<>();
        map3.put("java.lang.Object", "kotlin.Any");
        map3.put("java.lang.String", "kotlin.String");
        map3.put("java.lang.CharSequence", "kotlin.CharSequence");
        map3.put("java.lang.Throwable", "kotlin.Throwable");
        map3.put("java.lang.Cloneable", "kotlin.Cloneable");
        map3.put("java.lang.Number", "kotlin.Number");
        map3.put("java.lang.Comparable", "kotlin.Comparable");
        map3.put("java.lang.Enum", "kotlin.Enum");
        map3.put("java.lang.annotation.Annotation", "kotlin.Annotation");
        map3.put("java.lang.Iterable", "kotlin.collections.Iterable");
        map3.put("java.util.Iterator", "kotlin.collections.Iterator");
        map3.put("java.util.Collection", "kotlin.collections.Collection");
        map3.put("java.util.List", "kotlin.collections.List");
        map3.put("java.util.Set", "kotlin.collections.Set");
        map3.put("java.util.ListIterator", "kotlin.collections.ListIterator");
        map3.put("java.util.Map", "kotlin.collections.Map");
        map3.put("java.util.Map$Entry", "kotlin.collections.Map.Entry");
        map3.put("kotlin.jvm.internal.StringCompanionObject", "kotlin.String.Companion");
        map3.put("kotlin.jvm.internal.EnumCompanionObject", "kotlin.Enum.Companion");
        map3.putAll(map);
        map3.putAll(map2);
        Collection<String> collectionValues = map.values();
        t.i(collectionValues, "<get-values>(...)");
        for (String str : collectionValues) {
            StringBuilder sb = new StringBuilder();
            sb.append("kotlin.jvm.internal.");
            t.g(str);
            sb.append(kotlin.text.u.Q0(str, '.', null, 2, null));
            sb.append("CompanionObject");
            w7.u uVarA = w7.a0.a(sb.toString(), str + ".Companion");
            map3.put(uVarA.c(), uVarA.d());
        }
        for (Map.Entry<Class<? extends w7.g<?>>, Integer> entry : FUNCTION_CLASSES.entrySet()) {
            map3.put(entry.getKey().getName(), "kotlin.Function" + entry.getValue().intValue());
        }
        classFqNames = map3;
        LinkedHashMap linkedHashMap = new LinkedHashMap(kotlin.collections.r0.e(map3.size()));
        for (Map.Entry entry2 : map3.entrySet()) {
            linkedHashMap.put(entry2.getKey(), kotlin.text.u.Q0((String) entry2.getValue(), '.', null, 2, null));
        }
        simpleNames = linkedHashMap;
    }

    public i(@NotNull Class<?> jClass) {
        t.j(jClass, "jClass");
        this.jClass = jClass;
    }

    private final Void f() {
        throw new d8.b();
    }

    @Override // kotlin.reflect.KClass
    public boolean equals(@Nullable Object obj) {
        return (obj instanceof i) && t.e(d8.a.b(this), d8.a.b((KClass) obj));
    }

    @Override // kotlin.reflect.KClass
    @Nullable
    public String getQualifiedName() {
        return Companion.a(a());
    }

    @Override // kotlin.reflect.KClass
    @Nullable
    public String getSimpleName() {
        return Companion.b(a());
    }

    @Override // kotlin.reflect.KClass
    public boolean isInstance(@Nullable Object obj) {
        return Companion.c(obj, a());
    }

    @NotNull
    public String toString() {
        return a().toString() + " (Kotlin reflection is not available)";
    }

    @Override // kotlin.reflect.KAnnotatedElement
    @NotNull
    public List<Annotation> getAnnotations() {
        f();
        throw new w7.i();
    }

    @Override // kotlin.reflect.KClass
    @NotNull
    public Collection<KFunction<Object>> getConstructors() {
        f();
        throw new w7.i();
    }

    @Override // kotlin.reflect.KClass, kotlin.reflect.KDeclarationContainer
    @NotNull
    public Collection<KCallable<?>> getMembers() {
        f();
        throw new w7.i();
    }

    @Override // kotlin.reflect.KClass
    @NotNull
    public Collection<KClass<?>> getNestedClasses() {
        f();
        throw new w7.i();
    }

    @Override // kotlin.reflect.KClass
    @Nullable
    public Object getObjectInstance() {
        f();
        throw new w7.i();
    }

    @Override // kotlin.reflect.KClass
    @NotNull
    public List<KClass<? extends Object>> getSealedSubclasses() {
        f();
        throw new w7.i();
    }

    @Override // kotlin.reflect.KClass
    @NotNull
    public List<KType> getSupertypes() {
        f();
        throw new w7.i();
    }

    @Override // kotlin.reflect.KClass
    @NotNull
    public List<KTypeParameter> getTypeParameters() {
        f();
        throw new w7.i();
    }

    @Override // kotlin.reflect.KClass
    @Nullable
    public KVisibility getVisibility() {
        f();
        throw new w7.i();
    }

    @Override // kotlin.reflect.KClass
    public int hashCode() {
        return d8.a.b(this).hashCode();
    }

    @Override // kotlin.reflect.KClass
    public boolean isAbstract() {
        f();
        throw new w7.i();
    }

    @Override // kotlin.reflect.KClass
    public boolean isCompanion() {
        f();
        throw new w7.i();
    }

    @Override // kotlin.reflect.KClass
    public boolean isData() {
        f();
        throw new w7.i();
    }

    @Override // kotlin.reflect.KClass
    public boolean isFinal() {
        f();
        throw new w7.i();
    }

    @Override // kotlin.reflect.KClass
    public boolean isFun() {
        f();
        throw new w7.i();
    }

    @Override // kotlin.reflect.KClass
    public boolean isInner() {
        f();
        throw new w7.i();
    }

    @Override // kotlin.reflect.KClass
    public boolean isOpen() {
        f();
        throw new w7.i();
    }

    @Override // kotlin.reflect.KClass
    public boolean isSealed() {
        f();
        throw new w7.i();
    }

    @Override // kotlin.reflect.KClass
    public boolean isValue() {
        f();
        throw new w7.i();
    }
}
