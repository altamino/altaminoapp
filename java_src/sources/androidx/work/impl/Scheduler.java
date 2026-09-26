package androidx.work.impl;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.work.impl.model.WorkSpec;

/* JADX INFO: loaded from: classes7.dex */
@RestrictTo
public interface Scheduler {
    public static final int MAX_GREEDY_SCHEDULER_LIMIT = 200;
    public static final int MAX_SCHEDULER_LIMIT = 50;

    boolean b();

    void c(@NonNull String workSpecId);

    void d(@NonNull WorkSpec... workSpecs);
}
