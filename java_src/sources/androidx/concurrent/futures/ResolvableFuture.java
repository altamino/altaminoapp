package androidx.concurrent.futures;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes7.dex */
@RestrictTo
public final class ResolvableFuture<V> extends AbstractResolvableFuture<V> {
    public static <V> ResolvableFuture<V> u() {
        return new ResolvableFuture<>();
    }

    private ResolvableFuture() {
    }

    @Override // androidx.concurrent.futures.AbstractResolvableFuture
    public boolean q(@Nullable V v5) {
        return super.q(v5);
    }

    @Override // androidx.concurrent.futures.AbstractResolvableFuture
    public boolean r(Throwable th) {
        return super.r(th);
    }
}
