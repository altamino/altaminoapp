package com.google.firebase.components;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes9.dex */
final class h0 implements e {
    private final Set<g0<?>> allowedDeferredInterfaces;
    private final Set<g0<?>> allowedDirectInterfaces;
    private final Set<g0<?>> allowedProviderInterfaces;
    private final Set<Class<?>> allowedPublishedEvents;
    private final Set<g0<?>> allowedSetDirectInterfaces;
    private final Set<g0<?>> allowedSetProviderInterfaces;
    private final e delegateContainer;

    @Override // com.google.firebase.components.e
    public /* synthetic */ Set a(Class cls) {
        return d.f(this, cls);
    }

    private static class a implements l4.c {
        private final Set<Class<?>> allowedPublishedEvents;
        private final l4.c delegate;

        public a(Set<Class<?>> set, l4.c cVar) {
            this.allowedPublishedEvents = set;
            this.delegate = cVar;
        }
    }

    @Override // com.google.firebase.components.e
    public <T> o4.a<T> c(g0<T> g0Var) {
        if (this.allowedDeferredInterfaces.contains(g0Var)) {
            return this.delegateContainer.c(g0Var);
        }
        throw new u(String.format("Attempting to request an undeclared dependency Deferred<%s>.", g0Var));
    }

    @Override // com.google.firebase.components.e
    public <T> o4.b<T> d(g0<T> g0Var) {
        if (this.allowedProviderInterfaces.contains(g0Var)) {
            return this.delegateContainer.d(g0Var);
        }
        throw new u(String.format("Attempting to request an undeclared dependency Provider<%s>.", g0Var));
    }

    @Override // com.google.firebase.components.e
    public <T> Set<T> e(g0<T> g0Var) {
        if (this.allowedSetDirectInterfaces.contains(g0Var)) {
            return this.delegateContainer.e(g0Var);
        }
        throw new u(String.format("Attempting to request an undeclared dependency Set<%s>.", g0Var));
    }

    @Override // com.google.firebase.components.e
    public <T> o4.b<Set<T>> f(g0<T> g0Var) {
        if (this.allowedSetProviderInterfaces.contains(g0Var)) {
            return this.delegateContainer.f(g0Var);
        }
        throw new u(String.format("Attempting to request an undeclared dependency Provider<Set<%s>>.", g0Var));
    }

    @Override // com.google.firebase.components.e
    public <T> T g(g0<T> g0Var) {
        if (this.allowedDirectInterfaces.contains(g0Var)) {
            return (T) this.delegateContainer.g(g0Var);
        }
        throw new u(String.format("Attempting to request an undeclared dependency %s.", g0Var));
    }

    @Override // com.google.firebase.components.e
    public <T> T get(Class<T> cls) {
        if (!this.allowedDirectInterfaces.contains(g0.b(cls))) {
            throw new u(String.format("Attempting to request an undeclared dependency %s.", cls));
        }
        T t5 = (T) this.delegateContainer.get(cls);
        return !cls.equals(l4.c.class) ? t5 : (T) new a(this.allowedPublishedEvents, (l4.c) t5);
    }

    h0(c<?> cVar, e eVar) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        HashSet hashSet4 = new HashSet();
        HashSet hashSet5 = new HashSet();
        for (s sVar : cVar.g()) {
            if (sVar.e()) {
                if (sVar.g()) {
                    hashSet4.add(sVar.c());
                } else {
                    hashSet.add(sVar.c());
                }
            } else if (sVar.d()) {
                hashSet3.add(sVar.c());
            } else if (sVar.g()) {
                hashSet5.add(sVar.c());
            } else {
                hashSet2.add(sVar.c());
            }
        }
        if (!cVar.k().isEmpty()) {
            hashSet.add(g0.b(l4.c.class));
        }
        this.allowedDirectInterfaces = Collections.unmodifiableSet(hashSet);
        this.allowedProviderInterfaces = Collections.unmodifiableSet(hashSet2);
        this.allowedDeferredInterfaces = Collections.unmodifiableSet(hashSet3);
        this.allowedSetDirectInterfaces = Collections.unmodifiableSet(hashSet4);
        this.allowedSetProviderInterfaces = Collections.unmodifiableSet(hashSet5);
        this.allowedPublishedEvents = cVar.k();
        this.delegateContainer = eVar;
    }

    @Override // com.google.firebase.components.e
    public <T> o4.b<T> b(Class<T> cls) {
        return d(g0.b(cls));
    }

    @Override // com.google.firebase.components.e
    public <T> o4.a<T> h(Class<T> cls) {
        return c(g0.b(cls));
    }
}
