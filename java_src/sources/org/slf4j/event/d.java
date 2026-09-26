package org.slf4j.event;

import org.slf4j.helpers.e;

/* JADX INFO: loaded from: classes4.dex */
public class d implements c {
    Object[] argArray;
    b level;
    e logger;
    String loggerName;
    org.slf4j.c marker;
    String message;
    String threadName;
    Throwable throwable;
    long timeStamp;

    public e a() {
        return this.logger;
    }

    public void b(Object[] objArr) {
        this.argArray = objArr;
    }

    public void c(b bVar) {
        this.level = bVar;
    }

    public void d(e eVar) {
        this.logger = eVar;
    }

    public void e(String str) {
        this.loggerName = str;
    }

    public void f(org.slf4j.c cVar) {
    }

    public void g(String str) {
        this.message = str;
    }

    public void h(String str) {
        this.threadName = str;
    }

    public void i(Throwable th) {
        this.throwable = th;
    }

    public void j(long j6) {
        this.timeStamp = j6;
    }
}
