package androidx.room;

import androidx.annotation.RestrictTo;
import java.util.concurrent.atomic.AtomicInteger;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
@RestrictTo
public final class TransactionElement implements kotlin.coroutines.g.b {

    @NotNull
    public static final Key Key = new Key(null);

    @NotNull
    private final AtomicInteger referenceCount;

    @NotNull
    private final kotlin.coroutines.e transactionDispatcher;

    public static final class Key implements kotlin.coroutines.g.c<TransactionElement> {
        public /* synthetic */ Key(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Key() {
        }
    }

    @NotNull
    public final kotlin.coroutines.e e() {
        return this.transactionDispatcher;
    }

    @Override // kotlin.coroutines.g.b
    @NotNull
    public kotlin.coroutines.g.c<TransactionElement> getKey() {
        return Key;
    }

    public final void c() {
        this.referenceCount.incrementAndGet();
    }

    public final void p() {
        if (this.referenceCount.decrementAndGet() < 0) {
            throw new IllegalStateException("Transaction was never started or was already released.");
        }
    }

    public TransactionElement(@NotNull kotlin.coroutines.e transactionDispatcher) {
        kotlin.jvm.internal.t.j(transactionDispatcher, "transactionDispatcher");
        this.transactionDispatcher = transactionDispatcher;
        this.referenceCount = new AtomicInteger(0);
    }

    @Override // kotlin.coroutines.g.b, kotlin.coroutines.g
    public <R> R fold(R r, @NotNull e8.p<? super R, ? super kotlin.coroutines.g.b, ? extends R> pVar) {
        return (R) kotlin.coroutines.g.b.a.a(this, r, pVar);
    }

    @Override // kotlin.coroutines.g.b, kotlin.coroutines.g
    @Nullable
    public <E extends kotlin.coroutines.g.b> E get(@NotNull kotlin.coroutines.g.c<E> cVar) {
        return (E) kotlin.coroutines.g.b.a.b(this, cVar);
    }

    @Override // kotlin.coroutines.g.b, kotlin.coroutines.g
    @NotNull
    public kotlin.coroutines.g minusKey(@NotNull kotlin.coroutines.g.c<?> cVar) {
        return kotlin.coroutines.g.b.a.c(this, cVar);
    }

    @Override // kotlin.coroutines.g
    @NotNull
    public kotlin.coroutines.g plus(@NotNull kotlin.coroutines.g gVar) {
        return kotlin.coroutines.g.b.a.d(this, gVar);
    }
}
