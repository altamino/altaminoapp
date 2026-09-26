package kotlinx.coroutines.scheduling;

import kotlinx.coroutines.s0;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class k extends h {

    @NotNull
    public final Runnable block;

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.block.run();
        } finally {
            this.taskContext.a();
        }
    }

    @NotNull
    public String toString() {
        return "Task[" + s0.a(this.block) + '@' + s0.b(this.block) + ", " + this.submissionTime + ", " + this.taskContext + kotlinx.serialization.json.internal.b.END_LIST;
    }

    public k(@NotNull Runnable runnable, long j6, @NotNull i iVar) {
        super(j6, iVar);
        this.block = runnable;
    }
}
