package androidx.work.impl.utils.futures;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.google.common.util.concurrent.k;

/* JADX INFO: loaded from: classes10.dex */
@RestrictTo
public final class SettableFuture<V> extends AbstractFuture<V> {
    public static <V> SettableFuture<V> s() {
        return new SettableFuture<>();
    }

    private SettableFuture() {
    }

    @Override // androidx.work.impl.utils.futures.AbstractFuture
    public boolean o(@Nullable V value) {
        return super.o(value);
    }

    @Override // androidx.work.impl.utils.futures.AbstractFuture
    public boolean p(Throwable throwable) {
        return super.p(throwable);
    }

    @Override // androidx.work.impl.utils.futures.AbstractFuture
    public boolean q(k<? extends V> future) {
        return super.q(future);
    }
}
