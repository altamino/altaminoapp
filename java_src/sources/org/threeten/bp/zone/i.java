package org.threeten.bp.zone;

import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes9.dex */
public abstract class i {
    private static final CopyOnWriteArrayList<i> PROVIDERS = new CopyOnWriteArrayList<>();
    private static final ConcurrentMap<String, i> ZONES = new ConcurrentHashMap(512, 0.75f, 2);

    protected abstract f c(String str, boolean z6);

    protected abstract Set<String> d();

    static {
        h.a();
    }

    private static i a(String str) {
        ConcurrentMap<String, i> concurrentMap = ZONES;
        i iVar = concurrentMap.get(str);
        if (iVar != null) {
            return iVar;
        }
        if (concurrentMap.isEmpty()) {
            throw new g("No time-zone data files registered");
        }
        throw new g("Unknown time-zone ID: " + str);
    }

    public static f b(String str, boolean z6) {
        ra.d.i(str, "zoneId");
        return a(str).c(str, z6);
    }

    public static void e(i iVar) {
        ra.d.i(iVar, "provider");
        f(iVar);
        PROVIDERS.add(iVar);
    }

    protected i() {
    }

    private static void f(i iVar) {
        for (String str : iVar.d()) {
            ra.d.i(str, "zoneId");
            if (ZONES.putIfAbsent(str, iVar) != null) {
                throw new g("Unable to register zone as one already registered with that ID: " + str + ", currently loading from provider: " + iVar);
            }
        }
    }
}
