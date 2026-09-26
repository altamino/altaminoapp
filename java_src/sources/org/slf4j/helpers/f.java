package org.slf4j.helpers;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;
import org.slf4j.ILoggerFactory;

/* JADX INFO: loaded from: classes5.dex */
public class f implements ILoggerFactory {
    boolean postInitialization = false;
    final Map<String, e> loggers = new HashMap();
    final LinkedBlockingQueue<org.slf4j.event.d> eventQueue = new LinkedBlockingQueue<>();

    @Override // org.slf4j.ILoggerFactory
    public synchronized org.slf4j.a a(String str) {
        e eVar;
        eVar = this.loggers.get(str);
        if (eVar == null) {
            eVar = new e(str, this.eventQueue, this.postInitialization);
            this.loggers.put(str, eVar);
        }
        return eVar;
    }

    public LinkedBlockingQueue<org.slf4j.event.d> c() {
        return this.eventQueue;
    }

    public void e() {
        this.postInitialization = true;
    }

    public void b() {
        this.loggers.clear();
        this.eventQueue.clear();
    }

    public List<e> d() {
        return new ArrayList(this.loggers.values());
    }
}
