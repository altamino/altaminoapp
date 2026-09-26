package kotlin.coroutines.jvm.internal;

import kotlin.jvm.internal.o;
import kotlin.jvm.internal.q0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public abstract class k extends j implements o<Object> {
    private final int arity;

    public k(int i10, @Nullable kotlin.coroutines.d<Object> dVar) {
        super(dVar);
        this.arity = i10;
    }

    @Override // kotlin.jvm.internal.o
    public int getArity() {
        return this.arity;
    }

    public k(int i10) {
        this(i10, null);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public String toString() {
        if (getCompletion() == null) {
            String strI = q0.i(this);
            t.i(strI, "renderLambdaToString(...)");
            return strI;
        }
        return super.toString();
    }
}
