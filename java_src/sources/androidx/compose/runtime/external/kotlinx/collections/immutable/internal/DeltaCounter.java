package androidx.compose.runtime.external.kotlinx.collections.immutable.internal;

import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class DeltaCounter {
    private int count;

    public DeltaCounter() {
        this(0, 1, null);
    }

    public final int a() {
        return this.count;
    }

    public final void b(int i10) {
        this.count += i10;
    }

    public final void c(int i10) {
        this.count = i10;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof DeltaCounter) && this.count == ((DeltaCounter) obj).count;
    }

    public int hashCode() {
        return this.count;
    }

    @NotNull
    public String toString() {
        return "DeltaCounter(count=" + this.count + ')';
    }

    public DeltaCounter(int i10) {
        this.count = i10;
    }

    public /* synthetic */ DeltaCounter(int i10, int i11, k kVar) {
        this((i11 & 1) != 0 ? 0 : i10);
    }
}
