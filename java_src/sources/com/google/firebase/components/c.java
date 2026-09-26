package com.google.firebase.components;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class c<T> {
    private final Set<s> dependencies;
    private final h<T> factory;
    private final int instantiation;
    private final String name;
    private final Set<g0<? super T>> providedInterfaces;
    private final Set<Class<?>> publishedEvents;
    private final int type;

    public static class b<T> {
        private final Set<s> dependencies;
        private h<T> factory;
        private int instantiation;
        private String name;
        private final Set<g0<? super T>> providedInterfaces;
        private final Set<Class<?>> publishedEvents;
        private int type;

        /* JADX INFO: Access modifiers changed from: private */
        public b<T> g() {
            this.type = 1;
            return this;
        }

        public b<T> c() {
            return i(1);
        }

        public b<T> e() {
            return i(2);
        }

        public b<T> h(@NonNull String str) {
            this.name = str;
            return this;
        }

        private b<T> i(int i10) {
            f0.d(this.instantiation == 0, "Instantiation type has already been set.");
            this.instantiation = i10;
            return this;
        }

        private void j(g0<?> g0Var) {
            f0.a(!this.providedInterfaces.contains(g0Var), "Components are not allowed to depend on interfaces they themselves provide.");
        }

        public b<T> b(s sVar) {
            f0.c(sVar, "Null dependency");
            j(sVar.c());
            this.dependencies.add(sVar);
            return this;
        }

        public c<T> d() {
            f0.d(this.factory != null, "Missing required property: factory.");
            return new c<>(this.name, new HashSet(this.providedInterfaces), new HashSet(this.dependencies), this.instantiation, this.type, this.factory, this.publishedEvents);
        }

        public b<T> f(h<T> hVar) {
            this.factory = (h) f0.c(hVar, "Null factory");
            return this;
        }

        @SafeVarargs
        private b(Class<T> cls, Class<? super T>... clsArr) {
            this.name = null;
            HashSet hashSet = new HashSet();
            this.providedInterfaces = hashSet;
            this.dependencies = new HashSet();
            this.instantiation = 0;
            this.type = 0;
            this.publishedEvents = new HashSet();
            f0.c(cls, "Null interface");
            hashSet.add(g0.b(cls));
            for (Class<? super T> cls2 : clsArr) {
                f0.c(cls2, "Null interface");
                this.providedInterfaces.add(g0.b(cls2));
            }
        }

        @SafeVarargs
        private b(g0<T> g0Var, g0<? super T>... g0VarArr) {
            this.name = null;
            HashSet hashSet = new HashSet();
            this.providedInterfaces = hashSet;
            this.dependencies = new HashSet();
            this.instantiation = 0;
            this.type = 0;
            this.publishedEvents = new HashSet();
            f0.c(g0Var, "Null interface");
            hashSet.add(g0Var);
            for (g0<? super T> g0Var2 : g0VarArr) {
                f0.c(g0Var2, "Null interface");
            }
            Collections.addAll(this.providedInterfaces, g0VarArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object q(Object obj, e eVar) {
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object r(Object obj, e eVar) {
        return obj;
    }

    public Set<s> g() {
        return this.dependencies;
    }

    public h<T> h() {
        return this.factory;
    }

    @Nullable
    public String i() {
        return this.name;
    }

    public Set<g0<? super T>> j() {
        return this.providedInterfaces;
    }

    public Set<Class<?>> k() {
        return this.publishedEvents;
    }

    public boolean n() {
        return this.instantiation == 1;
    }

    public boolean o() {
        return this.instantiation == 2;
    }

    public boolean p() {
        return this.type == 0;
    }

    private c(@Nullable String str, Set<g0<? super T>> set, Set<s> set2, int i10, int i11, h<T> hVar, Set<Class<?>> set3) {
        this.name = str;
        this.providedInterfaces = Collections.unmodifiableSet(set);
        this.dependencies = Collections.unmodifiableSet(set2);
        this.instantiation = i10;
        this.type = i11;
        this.factory = hVar;
        this.publishedEvents = Collections.unmodifiableSet(set3);
    }

    public static <T> b<T> c(g0<T> g0Var) {
        return new b<>(g0Var, new g0[0]);
    }

    @SafeVarargs
    public static <T> b<T> d(g0<T> g0Var, g0<? super T>... g0VarArr) {
        return new b<>(g0Var, g0VarArr);
    }

    public static <T> b<T> e(Class<T> cls) {
        return new b<>(cls, new Class[0]);
    }

    @SafeVarargs
    public static <T> b<T> f(Class<T> cls, Class<? super T>... clsArr) {
        return new b<>(cls, clsArr);
    }

    public c<T> t(h<T> hVar) {
        return new c<>(this.name, this.providedInterfaces, this.dependencies, this.instantiation, this.type, hVar, this.publishedEvents);
    }

    public String toString() {
        return "Component<" + Arrays.toString(this.providedInterfaces.toArray()) + ">{" + this.instantiation + ", type=" + this.type + ", deps=" + Arrays.toString(this.dependencies.toArray()) + "}";
    }

    public static <T> c<T> l(final T t5, Class<T> cls) {
        return m(cls).f(new h() { // from class: com.google.firebase.components.b
            @Override // com.google.firebase.components.h
            public final Object a(e eVar) {
                return c.q(t5, eVar);
            }
        }).d();
    }

    public static <T> b<T> m(Class<T> cls) {
        return e(cls).g();
    }

    @SafeVarargs
    public static <T> c<T> s(final T t5, Class<T> cls, Class<? super T>... clsArr) {
        return f(cls, clsArr).f(new h() { // from class: com.google.firebase.components.a
            @Override // com.google.firebase.components.h
            public final Object a(e eVar) {
                return c.r(t5, eVar);
            }
        }).d();
    }
}
