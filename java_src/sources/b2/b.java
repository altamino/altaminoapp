package b2;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class b {
    private final ConcurrentHashMap<String, ConcurrentHashMap<String, a>> gateKeepers = new ConcurrentHashMap<>();

    @Nullable
    public final List<a> a(@NotNull String appId) {
        t.j(appId, "appId");
        ConcurrentHashMap<String, a> concurrentHashMap = this.gateKeepers.get(appId);
        if (concurrentHashMap == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(concurrentHashMap.size());
        Iterator<Map.Entry<String, a>> it = concurrentHashMap.entrySet().iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getValue());
        }
        return arrayList;
    }

    public final void b(@NotNull String appId, @NotNull List<a> gateKeeperList) {
        t.j(appId, "appId");
        t.j(gateKeeperList, "gateKeeperList");
        ConcurrentHashMap<String, a> concurrentHashMap = new ConcurrentHashMap<>();
        for (a aVar : gateKeeperList) {
            concurrentHashMap.put(aVar.a(), aVar);
        }
        this.gateKeepers.put(appId, concurrentHashMap);
    }
}
