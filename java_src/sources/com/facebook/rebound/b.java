package com.facebook.rebound;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes8.dex */
public class b {
    private final h mSpringLooper;
    private final Map<String, e> mSpringRegistry = new HashMap();
    private final Set<e> mActiveSprings = new CopyOnWriteArraySet();
    private final CopyOnWriteArraySet<j> mListeners = new CopyOnWriteArraySet<>();
    private boolean mIdle = true;

    public boolean d() {
        return this.mIdle;
    }

    void a(String str) {
        e eVar = this.mSpringRegistry.get(str);
        if (eVar == null) {
            throw new IllegalArgumentException("springId " + str + " does not reference a registered spring");
        }
        this.mActiveSprings.add(eVar);
        if (d()) {
            this.mIdle = false;
            this.mSpringLooper.b();
        }
    }

    void b(double d) {
        for (e eVar : this.mActiveSprings) {
            if (eVar.t()) {
                eVar.b(d / 1000.0d);
            } else {
                this.mActiveSprings.remove(eVar);
            }
        }
    }

    public e c() {
        e eVar = new e(this);
        f(eVar);
        return eVar;
    }

    public void e(double d) {
        Iterator<j> it = this.mListeners.iterator();
        while (it.hasNext()) {
            it.next().b(this);
        }
        b(d);
        if (this.mActiveSprings.isEmpty()) {
            this.mIdle = true;
        }
        Iterator<j> it2 = this.mListeners.iterator();
        while (it2.hasNext()) {
            it2.next().a(this);
        }
        if (this.mIdle) {
            this.mSpringLooper.c();
        }
    }

    void f(e eVar) {
        if (eVar == null) {
            throw new IllegalArgumentException("spring is required");
        }
        if (this.mSpringRegistry.containsKey(eVar.e())) {
            throw new IllegalArgumentException("spring is already registered");
        }
        this.mSpringRegistry.put(eVar.e(), eVar);
    }

    public b(h hVar) {
        if (hVar != null) {
            this.mSpringLooper = hVar;
            hVar.a(this);
            return;
        }
        throw new IllegalArgumentException("springLooper is required");
    }
}
