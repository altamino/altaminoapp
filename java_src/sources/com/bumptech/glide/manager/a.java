package com.bumptech.glide.manager;

import androidx.annotation.NonNull;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes10.dex */
class a implements h {
    private boolean isDestroyed;
    private boolean isStarted;
    private final Set<i> lifecycleListeners = Collections.newSetFromMap(new WeakHashMap());

    void c() {
        this.isDestroyed = true;
        Iterator it = com.bumptech.glide.util.k.i(this.lifecycleListeners).iterator();
        while (it.hasNext()) {
            ((i) it.next()).onDestroy();
        }
    }

    void d() {
        this.isStarted = true;
        Iterator it = com.bumptech.glide.util.k.i(this.lifecycleListeners).iterator();
        while (it.hasNext()) {
            ((i) it.next()).onStart();
        }
    }

    void e() {
        this.isStarted = false;
        Iterator it = com.bumptech.glide.util.k.i(this.lifecycleListeners).iterator();
        while (it.hasNext()) {
            ((i) it.next()).onStop();
        }
    }

    @Override // com.bumptech.glide.manager.h
    public void a(@NonNull i iVar) {
        this.lifecycleListeners.remove(iVar);
    }

    @Override // com.bumptech.glide.manager.h
    public void b(@NonNull i iVar) {
        this.lifecycleListeners.add(iVar);
        if (this.isDestroyed) {
            iVar.onDestroy();
        } else if (this.isStarted) {
            iVar.onStart();
        } else {
            iVar.onStop();
        }
    }

    a() {
    }
}
