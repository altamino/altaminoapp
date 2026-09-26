package org.slf4j.event;

import java.util.Queue;
import org.slf4j.helpers.e;

/* JADX INFO: loaded from: classes4.dex */
public class a implements org.slf4j.a {
    static final boolean RECORD_ALL_EVENTS = true;
    Queue<d> eventQueue;
    e logger;
    String name;

    private void d(b bVar, org.slf4j.c cVar, String str, Throwable th) {
        c(bVar, cVar, str, null, th);
    }

    @Override // org.slf4j.a
    public String getName() {
        return this.name;
    }

    private void c(b bVar, org.slf4j.c cVar, String str, Object[] objArr, Throwable th) {
        d dVar = new d();
        dVar.j(System.currentTimeMillis());
        dVar.c(bVar);
        dVar.d(this.logger);
        dVar.e(this.name);
        dVar.f(cVar);
        dVar.g(str);
        dVar.h(Thread.currentThread().getName());
        dVar.b(objArr);
        dVar.i(th);
        this.eventQueue.add(dVar);
    }

    @Override // org.slf4j.a
    public void a(String str) {
        d(b.TRACE, null, str, null);
    }

    @Override // org.slf4j.a
    public void b(String str) {
        d(b.WARN, null, str, null);
    }

    public a(e eVar, Queue<d> queue) {
        this.logger = eVar;
        this.name = eVar.getName();
        this.eventQueue = queue;
    }
}
