package kotlinx.coroutines.sync;

import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlinx.coroutines.internal.f0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
final class g extends f0<g> {

    @NotNull
    private final AtomicReferenceArray acquirers;

    @NotNull
    public final AtomicReferenceArray r() {
        return this.acquirers;
    }

    @NotNull
    public String toString() {
        return "SemaphoreSegment[id=" + this.id + ", hashCode=" + hashCode() + kotlinx.serialization.json.internal.b.END_LIST;
    }

    public g(long j6, @Nullable g gVar, int i10) {
        super(j6, gVar, i10);
        this.acquirers = new AtomicReferenceArray(f.SEGMENT_SIZE);
    }

    @Override // kotlinx.coroutines.internal.f0
    public int n() {
        return f.SEGMENT_SIZE;
    }

    @Override // kotlinx.coroutines.internal.f0
    public void o(int i10, @Nullable Throwable th, @NotNull kotlin.coroutines.g gVar) {
        r().set(i10, f.CANCELLED);
        p();
    }
}
