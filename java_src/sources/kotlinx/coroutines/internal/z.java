package kotlinx.coroutines.internal;

import kotlinx.coroutines.g1;
import kotlinx.coroutines.n2;
import kotlinx.coroutines.x0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
final class z extends n2 implements x0 {

    @Nullable
    private final Throwable cause;

    @Nullable
    private final String errorHint;

    public /* synthetic */ z(Throwable th, String str, int i10, kotlin.jvm.internal.k kVar) {
        this(th, (i10 & 2) != 0 ? null : str);
    }

    @Override // kotlinx.coroutines.n2
    @NotNull
    public n2 getImmediate() {
        return this;
    }

    public z(@Nullable Throwable th, @Nullable String str) {
        this.cause = th;
        this.errorHint = str;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0025  */
    private final Void y0() {
        String str;
        if (this.cause == null) {
            y.d();
            throw new w7.i();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Module with the Main dispatcher had failed to initialize");
        String str2 = this.errorHint;
        if (str2 != null) {
            str = ". " + str2;
            if (str == null) {
                str = "";
            }
        } else {
            str = "";
        }
        sb.append(str);
        throw new IllegalStateException(sb.toString(), this.cause);
    }

    @Override // kotlinx.coroutines.n2, kotlinx.coroutines.k0
    @NotNull
    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("Dispatchers.Main[missing");
        if (this.cause != null) {
            str = ", cause=" + this.cause;
        } else {
            str = "";
        }
        sb.append(str);
        sb.append(kotlinx.serialization.json.internal.b.END_LIST);
        return sb.toString();
    }

    @Override // kotlinx.coroutines.x0
    @NotNull
    /* JADX INFO: renamed from: F0, reason: merged with bridge method [inline-methods] */
    public Void scheduleResumeAfterDelay(long j6, @NotNull kotlinx.coroutines.o<? super w7.l0> oVar) {
        y0();
        throw new w7.i();
    }

    @Override // kotlinx.coroutines.k0
    @NotNull
    /* JADX INFO: renamed from: L, reason: merged with bridge method [inline-methods] */
    public Void dispatch(@NotNull kotlin.coroutines.g gVar, @NotNull Runnable runnable) {
        y0();
        throw new w7.i();
    }

    @Override // kotlinx.coroutines.x0
    @NotNull
    public g1 invokeOnTimeout(long j6, @NotNull Runnable runnable, @NotNull kotlin.coroutines.g gVar) {
        y0();
        throw new w7.i();
    }

    @Override // kotlinx.coroutines.k0
    public boolean isDispatchNeeded(@NotNull kotlin.coroutines.g gVar) {
        y0();
        throw new w7.i();
    }

    @Override // kotlinx.coroutines.n2, kotlinx.coroutines.k0
    @NotNull
    public kotlinx.coroutines.k0 limitedParallelism(int i10) {
        y0();
        throw new w7.i();
    }
}
