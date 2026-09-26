package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class c2 extends CancellationException implements i0<c2> {

    @NotNull
    public final transient b2 job;

    @Override // kotlinx.coroutines.i0
    @Nullable
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public c2 a() {
        return null;
    }

    @Override // java.lang.Throwable
    @NotNull
    public Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj != this) {
            if (obj instanceof c2) {
                c2 c2Var = (c2) obj;
                if (!kotlin.jvm.internal.t.e(c2Var.getMessage(), getMessage()) || !kotlin.jvm.internal.t.e(c2Var.job, this.job) || !kotlin.jvm.internal.t.e(c2Var.getCause(), getCause())) {
                }
            }
            return false;
        }
        return true;
    }

    @Override // java.lang.Throwable
    @NotNull
    public String toString() {
        return super.toString() + "; job=" + this.job;
    }

    public c2(@NotNull String str, @Nullable Throwable th, @NotNull b2 b2Var) {
        super(str);
        this.job = b2Var;
        if (th != null) {
            initCause(th);
        }
    }

    public int hashCode() {
        int iHashCode;
        String message = getMessage();
        kotlin.jvm.internal.t.g(message);
        int iHashCode2 = ((message.hashCode() * 31) + this.job.hashCode()) * 31;
        Throwable cause = getCause();
        if (cause != null) {
            iHashCode = cause.hashCode();
        } else {
            iHashCode = 0;
        }
        return iHashCode2 + iHashCode;
    }
}
