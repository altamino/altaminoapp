package androidx.compose.animation.core;

import androidx.compose.runtime.Stable;
import e8.l;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.b2;
import kotlinx.coroutines.p0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
@Stable
public final class MutatorMutex {

    @NotNull
    private final AtomicReference<Mutator> currentMutator = new AtomicReference<>(null);

    @NotNull
    private final kotlinx.coroutines.sync.a mutex = kotlinx.coroutines.sync.c.b(false, 1, null);

    /* JADX INFO: Access modifiers changed from: private */
    static final class Mutator {

        @NotNull
        private final b2 job;

        @NotNull
        private final MutatePriority priority;

        public Mutator(@NotNull MutatePriority priority, @NotNull b2 job) {
            t.j(priority, "priority");
            t.j(job, "job");
            this.priority = priority;
            this.job = job;
        }

        public final boolean a(@NotNull Mutator other) {
            t.j(other, "other");
            return this.priority.compareTo(other.priority) >= 0;
        }

        public final void b() {
            b2.a.a(this.job, null, 1, null);
        }
    }

    public static /* synthetic */ Object e(MutatorMutex mutatorMutex, MutatePriority mutatePriority, l lVar, kotlin.coroutines.d dVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            mutatePriority = MutatePriority.Default;
        }
        return mutatorMutex.d(mutatePriority, lVar, dVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f(Mutator mutator) {
        Mutator mutator2;
        do {
            mutator2 = this.currentMutator.get();
            if (mutator2 != null && !mutator.a(mutator2)) {
                throw new CancellationException("Current mutation had a higher priority");
            }
        } while (!d.a(this.currentMutator, mutator2, mutator));
        if (mutator2 != null) {
            mutator2.b();
        }
    }

    @Nullable
    public final <R> Object d(@NotNull MutatePriority mutatePriority, @NotNull l<? super kotlin.coroutines.d<? super R>, ? extends Object> lVar, @NotNull kotlin.coroutines.d<? super R> dVar) {
        return p0.f(new MutatorMutex$mutate$2(mutatePriority, this, lVar, null), dVar);
    }
}
