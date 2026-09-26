package com.google.firebase.crashlytics.internal.metadata;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.firebase.crashlytics.internal.model.f0;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicMarkableReference;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public class n {
    public static final String INTERNAL_KEYDATA_FILENAME = "internal-keys";
    public static final String KEYDATA_FILENAME = "keys";

    @VisibleForTesting
    public static final int MAX_ATTRIBUTES = 64;

    @VisibleForTesting
    public static final int MAX_ATTRIBUTE_SIZE = 1024;

    @VisibleForTesting
    public static final int MAX_INTERNAL_KEY_SIZE = 8192;

    @VisibleForTesting
    public static final int MAX_ROLLOUT_ASSIGNMENTS = 128;
    public static final String ROLLOUTS_STATE_FILENAME = "rollouts-state";
    public static final String USERDATA_FILENAME = "user-data";
    private final com.google.firebase.crashlytics.internal.common.n backgroundWorker;
    private final f metaDataStore;
    private String sessionIdentifier;
    private final a customKeys = new a(false);
    private final a internalKeys = new a(true);
    private final j rolloutsState = new j(128);
    private final AtomicMarkableReference<String> userId = new AtomicMarkableReference<>(null, false);

    /* JADX INFO: Access modifiers changed from: private */
    class a {
        private final boolean isInternal;
        final AtomicMarkableReference<d> map;
        private final AtomicReference<Callable<Void>> queuedSerializer = new AtomicReference<>(null);

        private void e() throws Throwable {
            Map<String, String> mapA;
            synchronized (this) {
                try {
                    if (this.map.isMarked()) {
                        mapA = this.map.getReference().a();
                        AtomicMarkableReference<d> atomicMarkableReference = this.map;
                        atomicMarkableReference.set(atomicMarkableReference.getReference(), false);
                    } else {
                        mapA = null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (mapA != null) {
                n.this.metaDataStore.q(n.this.sessionIdentifier, mapA, this.isInternal);
            }
        }

        public boolean f(String str, String str2) {
            synchronized (this) {
                try {
                    if (!this.map.getReference().d(str, str2)) {
                        return false;
                    }
                    AtomicMarkableReference<d> atomicMarkableReference = this.map;
                    atomicMarkableReference.set(atomicMarkableReference.getReference(), true);
                    d();
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public a(boolean z6) {
            this.isInternal = z6;
            this.map = new AtomicMarkableReference<>(new d(64, z6 ? 8192 : 1024), false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Void c() throws Exception {
            this.queuedSerializer.set(null);
            e();
            return null;
        }

        private void d() {
            Callable callable = new Callable() { // from class: com.google.firebase.crashlytics.internal.metadata.m
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.f1549a.c();
                }
            };
            if (androidx.compose.animation.core.d.a(this.queuedSerializer, null, callable)) {
                n.this.backgroundWorker.h(callable);
            }
        }

        public Map<String, String> b() {
            return this.map.getReference().a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object k(List list) throws Exception {
        this.metaDataStore.r(this.sessionIdentifier, list);
        return null;
    }

    public static n l(String str, e4.f fVar, com.google.firebase.crashlytics.internal.common.n nVar) {
        f fVar2 = new f(fVar);
        n nVar2 = new n(str, fVar, nVar);
        nVar2.customKeys.map.getReference().e(fVar2.i(str, false));
        nVar2.internalKeys.map.getReference().e(fVar2.i(str, true));
        nVar2.userId.set(fVar2.k(str), false);
        nVar2.rolloutsState.c(fVar2.j(str));
        return nVar2;
    }

    @Nullable
    public static String m(String str, e4.f fVar) {
        return new f(fVar).k(str);
    }

    private void n() throws Throwable {
        boolean z6;
        String strI;
        synchronized (this.userId) {
            try {
                z6 = false;
                if (this.userId.isMarked()) {
                    strI = i();
                    this.userId.set(strI, false);
                    z6 = true;
                } else {
                    strI = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z6) {
            this.metaDataStore.s(this.sessionIdentifier, strI);
        }
    }

    public Map<String, String> f() {
        return this.customKeys.b();
    }

    public Map<String, String> g() {
        return this.internalKeys.b();
    }

    public List<f0.e.d.AbstractC0251e> h() {
        return this.rolloutsState.a();
    }

    @Nullable
    public String i() {
        return this.userId.getReference();
    }

    public boolean o(String str, String str2) {
        return this.internalKeys.f(str, str2);
    }

    public void p(String str) {
        synchronized (this.sessionIdentifier) {
            try {
                this.sessionIdentifier = str;
                Map<String, String> mapB = this.customKeys.b();
                List<i> listB = this.rolloutsState.b();
                if (i() != null) {
                    this.metaDataStore.s(str, i());
                }
                if (!mapB.isEmpty()) {
                    this.metaDataStore.p(str, mapB);
                }
                if (!listB.isEmpty()) {
                    this.metaDataStore.r(str, listB);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void q(String str) {
        String strC = d.c(str, 1024);
        synchronized (this.userId) {
            try {
                if (com.google.firebase.crashlytics.internal.common.i.y(strC, this.userId.getReference())) {
                    return;
                }
                this.userId.set(strC, true);
                this.backgroundWorker.h(new Callable() { // from class: com.google.firebase.crashlytics.internal.metadata.k
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return this.f1546a.j();
                    }
                });
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean r(List<i> list) {
        synchronized (this.rolloutsState) {
            try {
                if (!this.rolloutsState.c(list)) {
                    return false;
                }
                final List<i> listB = this.rolloutsState.b();
                this.backgroundWorker.h(new Callable() { // from class: com.google.firebase.crashlytics.internal.metadata.l
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return this.f1547a.k(listB);
                    }
                });
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public n(String str, e4.f fVar, com.google.firebase.crashlytics.internal.common.n nVar) {
        this.sessionIdentifier = str;
        this.metaDataStore = new f(fVar);
        this.backgroundWorker = nVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object j() throws Exception {
        n();
        return null;
    }
}
