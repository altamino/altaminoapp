package com.google.firebase.components;

import android.util.Log;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public class p implements e, i4.a {
    private static final o4.b<Set<Object>> EMPTY_PROVIDER = new o4.b() { // from class: com.google.firebase.components.m
        @Override // o4.b
        public final Object get() {
            return Collections.emptySet();
        }
    };
    private final j componentRegistrarProcessor;
    private final Map<c<?>, o4.b<?>> components;
    private final AtomicReference<Boolean> eagerComponentsInitializedWith;
    private final w eventBus;
    private final Map<g0<?>, o4.b<?>> lazyInstanceMap;
    private final Map<g0<?>, z<?>> lazySetMap;
    private Set<String> processedCoroutineDispatcherInterfaces;
    private final List<o4.b<ComponentRegistrar>> unprocessedRegistrarProviders;

    public static final class b {
        private final Executor defaultExecutor;
        private final List<o4.b<ComponentRegistrar>> lazyRegistrars = new ArrayList();
        private final List<c<?>> additionalComponents = new ArrayList();
        private j componentRegistrarProcessor = j.NOOP;

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ ComponentRegistrar f(ComponentRegistrar componentRegistrar) {
            return componentRegistrar;
        }

        public b g(j jVar) {
            this.componentRegistrarProcessor = jVar;
            return this;
        }

        public b b(c<?> cVar) {
            this.additionalComponents.add(cVar);
            return this;
        }

        public b c(final ComponentRegistrar componentRegistrar) {
            this.lazyRegistrars.add(new o4.b() { // from class: com.google.firebase.components.q
                @Override // o4.b
                public final Object get() {
                    return p.b.f(componentRegistrar);
                }
            });
            return this;
        }

        public b d(Collection<o4.b<ComponentRegistrar>> collection) {
            this.lazyRegistrars.addAll(collection);
            return this;
        }

        public p e() {
            return new p(this.defaultExecutor, this.lazyRegistrars, this.additionalComponents, this.componentRegistrarProcessor);
        }

        b(Executor executor) {
            this.defaultExecutor = executor;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ComponentRegistrar u(ComponentRegistrar componentRegistrar) {
        return componentRegistrar;
    }

    @Override // com.google.firebase.components.e
    public /* synthetic */ Set a(Class cls) {
        return d.f(this, cls);
    }

    @Override // com.google.firebase.components.e
    public /* synthetic */ o4.b b(Class cls) {
        return d.d(this, cls);
    }

    @Override // com.google.firebase.components.e
    public synchronized <T> o4.b<T> d(g0<T> g0Var) {
        f0.c(g0Var, "Null interface requested.");
        return (o4.b) this.lazyInstanceMap.get(g0Var);
    }

    @Override // com.google.firebase.components.e
    public /* synthetic */ Set e(g0 g0Var) {
        return d.e(this, g0Var);
    }

    @Override // com.google.firebase.components.e
    public synchronized <T> o4.b<Set<T>> f(g0<T> g0Var) {
        z<?> zVar = this.lazySetMap.get(g0Var);
        if (zVar != null) {
            return zVar;
        }
        return (o4.b<Set<T>>) EMPTY_PROVIDER;
    }

    @Override // com.google.firebase.components.e
    public /* synthetic */ Object g(g0 g0Var) {
        return d.a(this, g0Var);
    }

    @Override // com.google.firebase.components.e
    public /* synthetic */ Object get(Class cls) {
        return d.b(this, cls);
    }

    @Override // com.google.firebase.components.e
    public /* synthetic */ o4.a h(Class cls) {
        return d.c(this, cls);
    }

    @Deprecated
    public p(Executor executor, Iterable<ComponentRegistrar> iterable, c<?>... cVarArr) {
        this(executor, z(iterable), Arrays.asList(cVarArr), j.NOOP);
    }

    public static b m(Executor executor) {
        return new b(executor);
    }

    private void n(List<c<?>> list) {
        ArrayList arrayList = new ArrayList();
        synchronized (this) {
            Iterator<o4.b<ComponentRegistrar>> it = this.unprocessedRegistrarProviders.iterator();
            while (it.hasNext()) {
                try {
                    ComponentRegistrar componentRegistrar = it.next().get();
                    if (componentRegistrar != null) {
                        list.addAll(this.componentRegistrarProcessor.a(componentRegistrar));
                        it.remove();
                    }
                } catch (x e) {
                    it.remove();
                    Log.w("ComponentDiscovery", "Invalid component registrar.", e);
                }
            }
            Iterator<c<?>> it2 = list.iterator();
            while (it2.hasNext()) {
                for (Object obj : it2.next().j().toArray()) {
                    if (obj.toString().contains("kotlinx.coroutines.CoroutineDispatcher")) {
                        if (this.processedCoroutineDispatcherInterfaces.contains(obj.toString())) {
                            it2.remove();
                            break;
                        }
                        this.processedCoroutineDispatcherInterfaces.add(obj.toString());
                    }
                }
            }
            if (this.components.isEmpty()) {
                r.a(list);
            } else {
                ArrayList arrayList2 = new ArrayList(this.components.keySet());
                arrayList2.addAll(list);
                r.a(arrayList2);
            }
            for (final c<?> cVar : list) {
                this.components.put(cVar, new y(new o4.b() { // from class: com.google.firebase.components.k
                    @Override // o4.b
                    public final Object get() {
                        return this.f1484a.r(cVar);
                    }
                }));
            }
            arrayList.addAll(x(list));
            arrayList.addAll(y());
            w();
        }
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            ((Runnable) it3.next()).run();
        }
        v();
    }

    private static <T> List<T> q(Iterable<T> iterable) {
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }

    private void v() {
        Boolean bool = this.eagerComponentsInitializedWith.get();
        if (bool != null) {
            o(this.components, bool.booleanValue());
        }
    }

    private void w() {
        for (c<?> cVar : this.components.keySet()) {
            for (s sVar : cVar.g()) {
                if (sVar.g() && !this.lazySetMap.containsKey(sVar.c())) {
                    this.lazySetMap.put(sVar.c(), z.b(Collections.emptySet()));
                } else if (this.lazyInstanceMap.containsKey(sVar.c())) {
                    continue;
                } else {
                    if (sVar.f()) {
                        throw new a0(String.format("Unsatisfied dependency for component %s: %s", cVar, sVar.c()));
                    }
                    if (!sVar.g()) {
                        this.lazyInstanceMap.put(sVar.c(), e0.e());
                    }
                }
            }
        }
    }

    private List<Runnable> x(List<c<?>> list) {
        ArrayList arrayList = new ArrayList();
        for (c<?> cVar : list) {
            if (cVar.p()) {
                final o4.b<?> bVar = this.components.get(cVar);
                for (g0<? super Object> g0Var : cVar.j()) {
                    if (this.lazyInstanceMap.containsKey(g0Var)) {
                        final e0 e0Var = (e0) this.lazyInstanceMap.get(g0Var);
                        arrayList.add(new Runnable() { // from class: com.google.firebase.components.n
                            @Override // java.lang.Runnable
                            public final void run() {
                                e0Var.j(bVar);
                            }
                        });
                    } else {
                        this.lazyInstanceMap.put(g0Var, bVar);
                    }
                }
            }
        }
        return arrayList;
    }

    private List<Runnable> y() {
        ArrayList arrayList = new ArrayList();
        HashMap map = new HashMap();
        for (Map.Entry<c<?>, o4.b<?>> entry : this.components.entrySet()) {
            c<?> key = entry.getKey();
            if (!key.p()) {
                o4.b<?> value = entry.getValue();
                for (g0<? super Object> g0Var : key.j()) {
                    if (!map.containsKey(g0Var)) {
                        map.put(g0Var, new HashSet());
                    }
                    ((Set) map.get(g0Var)).add(value);
                }
            }
        }
        for (Map.Entry entry2 : map.entrySet()) {
            if (this.lazySetMap.containsKey(entry2.getKey())) {
                final z<?> zVar = this.lazySetMap.get(entry2.getKey());
                for (final o4.b bVar : (Set) entry2.getValue()) {
                    arrayList.add(new Runnable() { // from class: com.google.firebase.components.o
                        @Override // java.lang.Runnable
                        public final void run() {
                            zVar.a(bVar);
                        }
                    });
                }
            } else {
                this.lazySetMap.put((g0) entry2.getKey(), z.b((Collection) entry2.getValue()));
            }
        }
        return arrayList;
    }

    private static Iterable<o4.b<ComponentRegistrar>> z(Iterable<ComponentRegistrar> iterable) {
        ArrayList arrayList = new ArrayList();
        for (final ComponentRegistrar componentRegistrar : iterable) {
            arrayList.add(new o4.b() { // from class: com.google.firebase.components.l
                @Override // o4.b
                public final Object get() {
                    return p.u(componentRegistrar);
                }
            });
        }
        return arrayList;
    }

    public void p(boolean z6) {
        HashMap map;
        if (androidx.compose.animation.core.d.a(this.eagerComponentsInitializedWith, null, Boolean.valueOf(z6))) {
            synchronized (this) {
                map = new HashMap(this.components);
            }
            o(map, z6);
        }
    }

    private void o(Map<c<?>, o4.b<?>> map, boolean z6) {
        for (Map.Entry<c<?>, o4.b<?>> entry : map.entrySet()) {
            c<?> key = entry.getKey();
            o4.b<?> value = entry.getValue();
            if (key.n() || (key.o() && z6)) {
                value.get();
            }
        }
        this.eventBus.d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object r(c cVar) {
        return cVar.h().a(new h0(cVar, this));
    }

    @Override // com.google.firebase.components.e
    public <T> o4.a<T> c(g0<T> g0Var) {
        o4.b<T> bVarD = d(g0Var);
        if (bVarD == null) {
            return e0.e();
        }
        if (bVarD instanceof e0) {
            return (e0) bVarD;
        }
        return e0.i(bVarD);
    }

    private p(Executor executor, Iterable<o4.b<ComponentRegistrar>> iterable, Collection<c<?>> collection, j jVar) {
        this.components = new HashMap();
        this.lazyInstanceMap = new HashMap();
        this.lazySetMap = new HashMap();
        this.processedCoroutineDispatcherInterfaces = new HashSet();
        this.eagerComponentsInitializedWith = new AtomicReference<>();
        w wVar = new w(executor);
        this.eventBus = wVar;
        this.componentRegistrarProcessor = jVar;
        ArrayList arrayList = new ArrayList();
        arrayList.add(c.s(wVar, w.class, l4.d.class, l4.c.class));
        arrayList.add(c.s(this, i4.a.class, new Class[0]));
        for (c<?> cVar : collection) {
            if (cVar != null) {
                arrayList.add(cVar);
            }
        }
        this.unprocessedRegistrarProviders = q(iterable);
        n(arrayList);
    }
}
