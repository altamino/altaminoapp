package com.google.firebase.components;

import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes4.dex */
class z<T> implements o4.b<Set<T>> {
    private volatile Set<T> actualSet = null;
    private volatile Set<o4.b<T>> providers = Collections.newSetFromMap(new ConcurrentHashMap());

    private synchronized void d() {
        try {
            Iterator<o4.b<T>> it = this.providers.iterator();
            while (it.hasNext()) {
                this.actualSet.add(it.next().get());
            }
            this.providers = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    synchronized void a(o4.b<T> bVar) {
        try {
            if (this.actualSet == null) {
                this.providers.add(bVar);
            } else {
                this.actualSet.add(bVar.get());
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    static z<?> b(Collection<o4.b<?>> collection) {
        return new z<>((Set) collection);
    }

    @Override // o4.b
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public Set<T> get() {
        if (this.actualSet == null) {
            synchronized (this) {
                try {
                    if (this.actualSet == null) {
                        this.actualSet = Collections.newSetFromMap(new ConcurrentHashMap());
                        d();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return Collections.unmodifiableSet(this.actualSet);
    }

    z(Collection<o4.b<T>> collection) {
        this.providers.addAll(collection);
    }
}
