package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class d0 {

    @NotNull
    public final e8.l<Throwable, w7.l0> onCancellation;

    @Nullable
    public final Object result;

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d0)) {
            return false;
        }
        d0 d0Var = (d0) obj;
        return kotlin.jvm.internal.t.e(this.result, d0Var.result) && kotlin.jvm.internal.t.e(this.onCancellation, d0Var.onCancellation);
    }

    public int hashCode() {
        Object obj = this.result;
        return ((obj == null ? 0 : obj.hashCode()) * 31) + this.onCancellation.hashCode();
    }

    @NotNull
    public String toString() {
        return "CompletedWithCancellation(result=" + this.result + ", onCancellation=" + this.onCancellation + ')';
    }

    /* JADX WARN: Multi-variable type inference failed */
    public d0(@Nullable Object obj, @NotNull e8.l<? super Throwable, w7.l0> lVar) {
        this.result = obj;
        this.onCancellation = lVar;
    }
}
