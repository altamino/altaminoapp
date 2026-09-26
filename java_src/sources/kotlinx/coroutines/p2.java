package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class p2 extends kotlin.coroutines.a implements b2 {

    @NotNull
    public static final p2 INSTANCE = new p2();

    @NotNull
    private static final String message = "NonCancellable can be used only as an argument for 'withContext', direct usages of its API are prohibited";

    @Override // kotlinx.coroutines.b2
    public void b(@Nullable CancellationException cancellationException) {
    }

    @Override // kotlinx.coroutines.b2
    @Nullable
    public b2 getParent() {
        return null;
    }

    @Override // kotlinx.coroutines.b2
    public boolean isActive() {
        return true;
    }

    @Override // kotlinx.coroutines.b2
    public boolean isCancelled() {
        return false;
    }

    @Override // kotlinx.coroutines.b2
    public boolean m() {
        return false;
    }

    @Override // kotlinx.coroutines.b2
    public boolean start() {
        return false;
    }

    @NotNull
    public String toString() {
        return "NonCancellable";
    }

    private p2() {
        super(b2.Key);
    }

    @Override // kotlinx.coroutines.b2
    @NotNull
    public g1 O(boolean z6, boolean z10, @NotNull e8.l<? super Throwable, w7.l0> lVar) {
        return q2.INSTANCE;
    }

    @Override // kotlinx.coroutines.b2
    @NotNull
    public u Q(@NotNull w wVar) {
        return q2.INSTANCE;
    }

    @Override // kotlinx.coroutines.b2
    @NotNull
    public g1 U(@NotNull e8.l<? super Throwable, w7.l0> lVar) {
        return q2.INSTANCE;
    }

    @Override // kotlinx.coroutines.b2
    @NotNull
    public CancellationException b0() {
        throw new IllegalStateException("This job is always active");
    }

    @Override // kotlinx.coroutines.b2
    @Nullable
    public Object t0(@NotNull kotlin.coroutines.d<? super w7.l0> dVar) {
        throw new UnsupportedOperationException("This job is always active");
    }
}
