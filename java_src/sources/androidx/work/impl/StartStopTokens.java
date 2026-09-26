package androidx.work.impl;

import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecKt;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.d0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class StartStopTokens {

    @NotNull
    private final Object lock = new Object();

    @NotNull
    private final Map<WorkGenerationalId, StartStopToken> runs = new LinkedHashMap();

    public final boolean a(@NotNull WorkGenerationalId id) {
        boolean zContainsKey;
        t.j(id, "id");
        synchronized (this.lock) {
            zContainsKey = this.runs.containsKey(id);
        }
        return zContainsKey;
    }

    @Nullable
    public final StartStopToken b(@NotNull WorkGenerationalId id) {
        StartStopToken startStopTokenRemove;
        t.j(id, "id");
        synchronized (this.lock) {
            startStopTokenRemove = this.runs.remove(id);
        }
        return startStopTokenRemove;
    }

    @NotNull
    public final StartStopToken d(@NotNull WorkGenerationalId id) {
        StartStopToken startStopToken;
        t.j(id, "id");
        synchronized (this.lock) {
            try {
                Map<WorkGenerationalId, StartStopToken> map = this.runs;
                StartStopToken startStopToken2 = map.get(id);
                if (startStopToken2 == null) {
                    startStopToken2 = new StartStopToken(id);
                    map.put(id, startStopToken2);
                }
                startStopToken = startStopToken2;
            } catch (Throwable th) {
                throw th;
            }
        }
        return startStopToken;
    }

    @NotNull
    public final List<StartStopToken> c(@NotNull String workSpecId) {
        List<StartStopToken> listU0;
        t.j(workSpecId, "workSpecId");
        synchronized (this.lock) {
            try {
                Map<WorkGenerationalId, StartStopToken> map = this.runs;
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                for (Map.Entry<WorkGenerationalId, StartStopToken> entry : map.entrySet()) {
                    if (t.e(entry.getKey().b(), workSpecId)) {
                        linkedHashMap.put(entry.getKey(), entry.getValue());
                    }
                }
                Iterator it = linkedHashMap.keySet().iterator();
                while (it.hasNext()) {
                    this.runs.remove((WorkGenerationalId) it.next());
                }
                listU0 = d0.U0(linkedHashMap.values());
            } catch (Throwable th) {
                throw th;
            }
        }
        return listU0;
    }

    @NotNull
    public final StartStopToken e(@NotNull WorkSpec spec) {
        t.j(spec, "spec");
        return d(WorkSpecKt.a(spec));
    }
}
