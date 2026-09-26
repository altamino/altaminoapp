package androidx.work.impl.utils;

import androidx.work.impl.WorkDatabase;
import java.util.concurrent.Callable;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class IdGenerator {

    @NotNull
    private final WorkDatabase workDatabase;

    public final int c() {
        Object objC = this.workDatabase.C(new Callable() { // from class: androidx.work.impl.utils.e
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return IdGenerator.d(this.f878a);
            }
        });
        t.i(objC, "workDatabase.runInTransa…ANAGER_ID_KEY)\n        })");
        return ((Number) objC).intValue();
    }

    public final int e(final int i10, final int i11) {
        Object objC = this.workDatabase.C(new Callable() { // from class: androidx.work.impl.utils.f
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return IdGenerator.f(this.f879a, i10, i11);
            }
        });
        t.i(objC, "workDatabase.runInTransa…            id\n        })");
        return ((Number) objC).intValue();
    }

    public IdGenerator(@NotNull WorkDatabase workDatabase) {
        t.j(workDatabase, "workDatabase");
        this.workDatabase = workDatabase;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Integer d(IdGenerator this$0) {
        t.j(this$0, "this$0");
        return Integer.valueOf(IdGeneratorKt.d(this$0.workDatabase, IdGeneratorKt.NEXT_ALARM_MANAGER_ID_KEY));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Integer f(IdGenerator this$0, int i10, int i11) {
        t.j(this$0, "this$0");
        int iD = IdGeneratorKt.d(this$0.workDatabase, IdGeneratorKt.NEXT_JOB_SCHEDULER_ID_KEY);
        if (i10 > iD || iD > i11) {
            IdGeneratorKt.e(this$0.workDatabase, IdGeneratorKt.NEXT_JOB_SCHEDULER_ID_KEY, i10 + 1);
        } else {
            i10 = iD;
        }
        return Integer.valueOf(i10);
    }
}
