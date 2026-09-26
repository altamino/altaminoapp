package androidx.work.impl;

import androidx.work.impl.model.WorkSpec;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
final class WorkerUpdater$updateWorkImpl$type$1 extends v implements l<WorkSpec, String> {
    public static final WorkerUpdater$updateWorkImpl$type$1 INSTANCE = new WorkerUpdater$updateWorkImpl$type$1();

    WorkerUpdater$updateWorkImpl$type$1() {
        super(1);
    }

    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final String invoke(@NotNull WorkSpec spec) {
        t.j(spec, "spec");
        if (spec.j()) {
            return "Periodic";
        }
        return "OneTime";
    }
}
