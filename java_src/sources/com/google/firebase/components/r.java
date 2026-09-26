package com.google.firebase.components;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
class r {

    private static class b {
        private final com.google.firebase.components.c<?> component;
        private final Set<b> dependencies = new HashSet();
        private final Set<b> dependents = new HashSet();

        com.google.firebase.components.c<?> c() {
            return this.component;
        }

        Set<b> d() {
            return this.dependencies;
        }

        void a(b bVar) {
            this.dependencies.add(bVar);
        }

        void b(b bVar) {
            this.dependents.add(bVar);
        }

        boolean e() {
            return this.dependencies.isEmpty();
        }

        boolean f() {
            return this.dependents.isEmpty();
        }

        void g(b bVar) {
            this.dependents.remove(bVar);
        }

        b(com.google.firebase.components.c<?> cVar) {
            this.component = cVar;
        }
    }

    private static class c {
        private final g0<?> anInterface;
        private final boolean set;

        private c(g0<?> g0Var, boolean z6) {
            this.anInterface = g0Var;
            this.set = z6;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return cVar.anInterface.equals(this.anInterface) && cVar.set == this.set;
        }

        public int hashCode() {
            return ((this.anInterface.hashCode() ^ 1000003) * 1000003) ^ Boolean.valueOf(this.set).hashCode();
        }
    }

    private static Set<b> b(Set<b> set) {
        HashSet hashSet = new HashSet();
        for (b bVar : set) {
            if (bVar.f()) {
                hashSet.add(bVar);
            }
        }
        return hashSet;
    }

    private static Set<b> c(List<com.google.firebase.components.c<?>> list) {
        Set<b> set;
        HashMap map = new HashMap(list.size());
        Iterator<com.google.firebase.components.c<?>> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                Iterator it2 = map.values().iterator();
                while (it2.hasNext()) {
                    for (b bVar : (Set) it2.next()) {
                        for (s sVar : bVar.c().g()) {
                            if (sVar.e() && (set = (Set) map.get(new c(sVar.c(), sVar.g()))) != null) {
                                for (b bVar2 : set) {
                                    bVar.a(bVar2);
                                    bVar2.b(bVar);
                                }
                            }
                        }
                    }
                }
                HashSet hashSet = new HashSet();
                Iterator it3 = map.values().iterator();
                while (it3.hasNext()) {
                    hashSet.addAll((Set) it3.next());
                }
                return hashSet;
            }
            com.google.firebase.components.c<?> next = it.next();
            b bVar3 = new b(next);
            for (g0<? super Object> g0Var : next.j()) {
                c cVar = new c(g0Var, !next.p());
                if (!map.containsKey(cVar)) {
                    map.put(cVar, new HashSet());
                }
                Set set2 = (Set) map.get(cVar);
                if (!set2.isEmpty() && !cVar.set) {
                    throw new IllegalArgumentException(String.format("Multiple components provide %s.", g0Var));
                }
                set2.add(bVar3);
            }
        }
    }

    static void a(List<com.google.firebase.components.c<?>> list) {
        Set<b> setC = c(list);
        Set<b> setB = b(setC);
        int i10 = 0;
        while (!setB.isEmpty()) {
            b next = setB.iterator().next();
            setB.remove(next);
            i10++;
            for (b bVar : next.d()) {
                bVar.g(next);
                if (bVar.f()) {
                    setB.add(bVar);
                }
            }
        }
        if (i10 == list.size()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (b bVar2 : setC) {
            if (!bVar2.f() && !bVar2.e()) {
                arrayList.add(bVar2.c());
            }
        }
        throw new t(arrayList);
    }
}
