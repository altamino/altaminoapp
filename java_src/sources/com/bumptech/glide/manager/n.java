package com.bumptech.glide.manager;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes10.dex */
public class n {
    private static final String TAG = "RequestTracker";
    private boolean isPaused;
    private final Set<y0.c> requests = Collections.newSetFromMap(new WeakHashMap());
    private final List<y0.c> pendingRequests = new ArrayList();

    public boolean a(@Nullable y0.c cVar) {
        boolean z6 = true;
        if (cVar == null) {
            return true;
        }
        boolean zRemove = this.requests.remove(cVar);
        if (!this.pendingRequests.remove(cVar) && !zRemove) {
            z6 = false;
        }
        if (z6) {
            cVar.clear();
        }
        return z6;
    }

    public void c() {
        this.isPaused = true;
        for (y0.c cVar : com.bumptech.glide.util.k.i(this.requests)) {
            if (cVar.isRunning() || cVar.f()) {
                cVar.clear();
                this.pendingRequests.add(cVar);
            }
        }
    }

    public void d() {
        this.isPaused = true;
        for (y0.c cVar : com.bumptech.glide.util.k.i(this.requests)) {
            if (cVar.isRunning()) {
                cVar.pause();
                this.pendingRequests.add(cVar);
            }
        }
    }

    public void f() {
        this.isPaused = false;
        for (y0.c cVar : com.bumptech.glide.util.k.i(this.requests)) {
            if (!cVar.f() && !cVar.isRunning()) {
                cVar.j();
            }
        }
        this.pendingRequests.clear();
    }

    public void b() {
        Iterator it = com.bumptech.glide.util.k.i(this.requests).iterator();
        while (it.hasNext()) {
            a((y0.c) it.next());
        }
        this.pendingRequests.clear();
    }

    public void e() {
        for (y0.c cVar : com.bumptech.glide.util.k.i(this.requests)) {
            if (!cVar.f() && !cVar.e()) {
                cVar.clear();
                if (this.isPaused) {
                    this.pendingRequests.add(cVar);
                } else {
                    cVar.j();
                }
            }
        }
    }

    public void g(@NonNull y0.c cVar) {
        this.requests.add(cVar);
        if (!this.isPaused) {
            cVar.j();
            return;
        }
        cVar.clear();
        if (Log.isLoggable(TAG, 2)) {
            Log.v(TAG, "Paused, delaying request");
        }
        this.pendingRequests.add(cVar);
    }

    public String toString() {
        return super.toString() + "{numRequests=" + this.requests.size() + ", isPaused=" + this.isPaused + "}";
    }
}
