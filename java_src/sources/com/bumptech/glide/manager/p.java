package com.bumptech.glide.manager;

import androidx.annotation.NonNull;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes10.dex */
public final class p implements i {
    private final Set<com.bumptech.glide.request.target.e<?>> targets = Collections.newSetFromMap(new WeakHashMap());

    public void i() {
        this.targets.clear();
    }

    @NonNull
    public List<com.bumptech.glide.request.target.e<?>> j() {
        return com.bumptech.glide.util.k.i(this.targets);
    }

    public void k(@NonNull com.bumptech.glide.request.target.e<?> eVar) {
        this.targets.add(eVar);
    }

    public void l(@NonNull com.bumptech.glide.request.target.e<?> eVar) {
        this.targets.remove(eVar);
    }

    @Override // com.bumptech.glide.manager.i
    public void onDestroy() {
        Iterator it = com.bumptech.glide.util.k.i(this.targets).iterator();
        while (it.hasNext()) {
            ((com.bumptech.glide.request.target.e) it.next()).onDestroy();
        }
    }

    @Override // com.bumptech.glide.manager.i
    public void onStart() {
        Iterator it = com.bumptech.glide.util.k.i(this.targets).iterator();
        while (it.hasNext()) {
            ((com.bumptech.glide.request.target.e) it.next()).onStart();
        }
    }

    @Override // com.bumptech.glide.manager.i
    public void onStop() {
        Iterator it = com.bumptech.glide.util.k.i(this.targets).iterator();
        while (it.hasNext()) {
            ((com.bumptech.glide.request.target.e) it.next()).onStop();
        }
    }
}
