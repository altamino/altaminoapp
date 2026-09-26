package androidx.compose.ui.platform;

import androidx.compose.runtime.collection.MutableVector;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class WeakCache<T> {

    @NotNull
    private final MutableVector<Reference<T>> values = new MutableVector<>(new Reference[16], 0);

    @NotNull
    private final ReferenceQueue<T> referenceQueue = new ReferenceQueue<>();

    private final void a() {
        Reference<? extends T> referencePoll;
        do {
            referencePoll = this.referenceQueue.poll();
            if (referencePoll != null) {
                this.values.s(referencePoll);
            }
        } while (referencePoll != null);
    }

    @Nullable
    public final T b() {
        a();
        while (this.values.q()) {
            MutableVector<Reference<T>> mutableVector = this.values;
            T t5 = mutableVector.v(mutableVector.n() - 1).get();
            if (t5 != null) {
                return t5;
            }
        }
        return null;
    }

    public final void c(T t5) {
        a();
        this.values.b(new WeakReference(t5, this.referenceQueue));
    }
}
