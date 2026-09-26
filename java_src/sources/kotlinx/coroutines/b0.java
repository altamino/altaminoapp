package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
final class b0 {

    @Nullable
    public final Throwable cancelCause;

    @Nullable
    public final m cancelHandler;

    @Nullable
    public final Object idempotentResume;

    @Nullable
    public final e8.l<Throwable, w7.l0> onCancellation;

    @Nullable
    public final Object result;

    /* JADX WARN: Multi-variable type inference failed */
    public b0(@Nullable Object obj, @Nullable m mVar, @Nullable e8.l<? super Throwable, w7.l0> lVar, @Nullable Object obj2, @Nullable Throwable th) {
        this.result = obj;
        this.cancelHandler = mVar;
        this.onCancellation = lVar;
        this.idempotentResume = obj2;
        this.cancelCause = th;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ b0 b(b0 b0Var, Object obj, m mVar, e8.l lVar, Object obj2, Throwable th, int i10, Object obj3) {
        if ((i10 & 1) != 0) {
            obj = b0Var.result;
        }
        if ((i10 & 2) != 0) {
            mVar = b0Var.cancelHandler;
        }
        m mVar2 = mVar;
        if ((i10 & 4) != 0) {
            lVar = b0Var.onCancellation;
        }
        e8.l lVar2 = lVar;
        if ((i10 & 8) != 0) {
            obj2 = b0Var.idempotentResume;
        }
        Object obj4 = obj2;
        if ((i10 & 16) != 0) {
            th = b0Var.cancelCause;
        }
        return b0Var.a(obj, mVar2, lVar2, obj4, th);
    }

    @NotNull
    public final b0 a(@Nullable Object obj, @Nullable m mVar, @Nullable e8.l<? super Throwable, w7.l0> lVar, @Nullable Object obj2, @Nullable Throwable th) {
        return new b0(obj, mVar, lVar, obj2, th);
    }

    public final boolean c() {
        return this.cancelCause != null;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b0)) {
            return false;
        }
        b0 b0Var = (b0) obj;
        return kotlin.jvm.internal.t.e(this.result, b0Var.result) && kotlin.jvm.internal.t.e(this.cancelHandler, b0Var.cancelHandler) && kotlin.jvm.internal.t.e(this.onCancellation, b0Var.onCancellation) && kotlin.jvm.internal.t.e(this.idempotentResume, b0Var.idempotentResume) && kotlin.jvm.internal.t.e(this.cancelCause, b0Var.cancelCause);
    }

    public int hashCode() {
        Object obj = this.result;
        int iHashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        m mVar = this.cancelHandler;
        int iHashCode2 = (iHashCode + (mVar == null ? 0 : mVar.hashCode())) * 31;
        e8.l<Throwable, w7.l0> lVar = this.onCancellation;
        int iHashCode3 = (iHashCode2 + (lVar == null ? 0 : lVar.hashCode())) * 31;
        Object obj2 = this.idempotentResume;
        int iHashCode4 = (iHashCode3 + (obj2 == null ? 0 : obj2.hashCode())) * 31;
        Throwable th = this.cancelCause;
        return iHashCode4 + (th != null ? th.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "CompletedContinuation(result=" + this.result + ", cancelHandler=" + this.cancelHandler + ", onCancellation=" + this.onCancellation + ", idempotentResume=" + this.idempotentResume + ", cancelCause=" + this.cancelCause + ')';
    }

    public /* synthetic */ b0(Object obj, m mVar, e8.l lVar, Object obj2, Throwable th, int i10, kotlin.jvm.internal.k kVar) {
        this(obj, (i10 & 2) != 0 ? null : mVar, (i10 & 4) != 0 ? null : lVar, (i10 & 8) != 0 ? null : obj2, (i10 & 16) != 0 ? null : th);
    }

    public final void d(@NotNull p<?> pVar, @NotNull Throwable th) {
        m mVar = this.cancelHandler;
        if (mVar != null) {
            pVar.j(mVar, th);
        }
        e8.l<Throwable, w7.l0> lVar = this.onCancellation;
        if (lVar != null) {
            pVar.k(lVar, th);
        }
    }
}
