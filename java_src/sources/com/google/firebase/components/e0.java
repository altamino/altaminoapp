package com.google.firebase.components;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes9.dex */
class e0<T> implements o4.b<T>, o4.a<T> {
    private volatile o4.b<T> delegate;

    @GuardedBy
    private o4.a.InterfaceC0470a<T> handler;
    private static final o4.a.InterfaceC0470a<Object> NOOP_HANDLER = new o4.a.InterfaceC0470a() { // from class: com.google.firebase.components.b0
        @Override // o4.a.InterfaceC0470a
        public final void a(o4.b bVar) {
            e0.f(bVar);
        }
    };
    private static final o4.b<Object> EMPTY_PROVIDER = new o4.b() { // from class: com.google.firebase.components.c0
        @Override // o4.b
        public final Object get() {
            return e0.g();
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void f(o4.b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object g() {
        return null;
    }

    static <T> e0<T> e() {
        return new e0<>(NOOP_HANDLER, EMPTY_PROVIDER);
    }

    static <T> e0<T> i(o4.b<T> bVar) {
        return new e0<>(null, bVar);
    }

    @Override // o4.a
    public void a(@NonNull final o4.a.InterfaceC0470a<T> interfaceC0470a) {
        o4.b<T> bVar;
        o4.b<T> bVar2;
        o4.b<T> bVar3 = this.delegate;
        o4.b<Object> bVar4 = EMPTY_PROVIDER;
        if (bVar3 != bVar4) {
            interfaceC0470a.a(bVar3);
            return;
        }
        synchronized (this) {
            bVar = this.delegate;
            if (bVar != bVar4) {
                bVar2 = bVar;
            } else {
                final o4.a.InterfaceC0470a<T> interfaceC0470a2 = this.handler;
                this.handler = new o4.a.InterfaceC0470a() { // from class: com.google.firebase.components.d0
                    @Override // o4.a.InterfaceC0470a
                    public final void a(o4.b bVar5) {
                        e0.h(interfaceC0470a2, interfaceC0470a, bVar5);
                    }
                };
                bVar2 = null;
            }
        }
        if (bVar2 != null) {
            interfaceC0470a.a(bVar);
        }
    }

    @Override // o4.b
    public T get() {
        return this.delegate.get();
    }

    void j(o4.b<T> bVar) {
        o4.a.InterfaceC0470a<T> interfaceC0470a;
        if (this.delegate != EMPTY_PROVIDER) {
            throw new IllegalStateException("provide() can be called only once.");
        }
        synchronized (this) {
            interfaceC0470a = this.handler;
            this.handler = null;
            this.delegate = bVar;
        }
        interfaceC0470a.a(bVar);
    }

    private e0(o4.a.InterfaceC0470a<T> interfaceC0470a, o4.b<T> bVar) {
        this.handler = interfaceC0470a;
        this.delegate = bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void h(o4.a.InterfaceC0470a interfaceC0470a, o4.a.InterfaceC0470a interfaceC0470a2, o4.b bVar) {
        interfaceC0470a.a(bVar);
        interfaceC0470a2.a(bVar);
    }
}
