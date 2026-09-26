package kotlinx.coroutines.scheduling;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public abstract class h implements Runnable {
    public long submissionTime;

    @NotNull
    public i taskContext;

    public h(long j6, @NotNull i iVar) {
        this.submissionTime = j6;
        this.taskContext = iVar;
    }

    public h() {
        this(0L, l.NonBlockingContext);
    }
}
