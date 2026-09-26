package kotlin.jvm.internal;

import java.io.Serializable;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public abstract class v<R> implements o<R>, Serializable {
    private final int arity;

    @Override // kotlin.jvm.internal.o
    public int getArity() {
        return this.arity;
    }

    public v(int i10) {
        this.arity = i10;
    }

    @NotNull
    public String toString() {
        String strJ = q0.j(this);
        t.i(strJ, "renderLambdaToString(...)");
        return strJ;
    }
}
