package org.threeten.bp.zone;

import java.util.Iterator;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes7.dex */
public abstract class h {
    public static final h DO_NOTHING = new a();
    private static final AtomicBoolean INITIALIZED = new AtomicBoolean(false);
    private static final AtomicReference<h> INITIALIZER = new AtomicReference<>();

    static class b extends h {
        @Override // org.threeten.bp.zone.h
        protected void b() {
            Iterator it = ServiceLoader.load(i.class, i.class.getClassLoader()).iterator();
            while (it.hasNext()) {
                try {
                    i.e((i) it.next());
                } catch (ServiceConfigurationError e) {
                    if (!(e.getCause() instanceof SecurityException)) {
                        throw e;
                    }
                }
            }
        }

        b() {
        }
    }

    protected abstract void b();

    static class a extends h {
        @Override // org.threeten.bp.zone.h
        protected void b() {
        }

        a() {
        }
    }

    static void a() {
        if (INITIALIZED.getAndSet(true)) {
            throw new IllegalStateException("Already initialized");
        }
        AtomicReference<h> atomicReference = INITIALIZER;
        androidx.compose.animation.core.d.a(atomicReference, null, new b());
        atomicReference.get().b();
    }

    public static void c(h hVar) {
        if (INITIALIZED.get()) {
            throw new IllegalStateException("Already initialized");
        }
        if (!androidx.compose.animation.core.d.a(INITIALIZER, null, hVar)) {
            throw new IllegalStateException("Initializer was already set, possibly with a default during initialization");
        }
    }
}
