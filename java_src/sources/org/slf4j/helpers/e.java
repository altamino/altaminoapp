package org.slf4j.helpers;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Queue;

/* JADX INFO: loaded from: classes5.dex */
public class e implements org.slf4j.a {
    private volatile org.slf4j.a _delegate;
    private final boolean createdPostInitialization;
    private Boolean delegateEventAware;
    private Queue<org.slf4j.event.d> eventQueue;
    private org.slf4j.event.a eventRecodingLogger;
    private Method logMethodCache;
    private final String name;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.name.equals(((e) obj).name);
    }

    public boolean g() {
        return this._delegate == null;
    }

    @Override // org.slf4j.a
    public String getName() {
        return this.name;
    }

    public void i(org.slf4j.a aVar) {
        this._delegate = aVar;
    }

    private org.slf4j.a d() {
        if (this.eventRecodingLogger == null) {
            this.eventRecodingLogger = new org.slf4j.event.a(this, this.eventQueue);
        }
        return this.eventRecodingLogger;
    }

    org.slf4j.a c() {
        if (this._delegate != null) {
            return this._delegate;
        }
        return this.createdPostInitialization ? b.NOP_LOGGER : d();
    }

    public boolean e() {
        Boolean bool = this.delegateEventAware;
        if (bool != null) {
            return bool.booleanValue();
        }
        try {
            this.logMethodCache = this._delegate.getClass().getMethod("log", org.slf4j.event.c.class);
            this.delegateEventAware = Boolean.TRUE;
        } catch (NoSuchMethodException unused) {
            this.delegateEventAware = Boolean.FALSE;
        }
        return this.delegateEventAware.booleanValue();
    }

    public boolean f() {
        return this._delegate instanceof b;
    }

    public int hashCode() {
        return this.name.hashCode();
    }

    public e(String str, Queue<org.slf4j.event.d> queue, boolean z6) {
        this.name = str;
        this.eventQueue = queue;
        this.createdPostInitialization = z6;
    }

    @Override // org.slf4j.a
    public void a(String str) {
        c().a(str);
    }

    @Override // org.slf4j.a
    public void b(String str) {
        c().b(str);
    }

    public void h(org.slf4j.event.c cVar) {
        if (e()) {
            try {
                this.logMethodCache.invoke(this._delegate, cVar);
            } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException unused) {
            }
        }
    }
}
