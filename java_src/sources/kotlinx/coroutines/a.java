package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public abstract class a<T> extends j2 implements kotlin.coroutines.d<T>, o0 {

    @NotNull
    private final kotlin.coroutines.g context;

    protected void X0(@NotNull Throwable th, boolean z6) {
    }

    protected void Y0(T t5) {
    }

    @Override // kotlin.coroutines.d
    @NotNull
    public final kotlin.coroutines.g getContext() {
        return this.context;
    }

    @Override // kotlinx.coroutines.o0
    @NotNull
    public kotlin.coroutines.g getCoroutineContext() {
        return this.context;
    }

    @Override // kotlin.coroutines.d
    public final void resumeWith(@NotNull Object obj) {
        Object objX0 = x0(g0.d(obj, null, 1, null));
        if (objX0 == k2.COMPLETING_WAITING_CHILDREN) {
            return;
        }
        W0(objX0);
    }

    @Override // kotlinx.coroutines.j2
    @NotNull
    public String A0() {
        String strB = j0.b(this.context);
        if (strB == null) {
            return super.A0();
        }
        return kotlinx.serialization.json.internal.b.STRING + strB + "\":" + super.A0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.j2
    protected final void G0(@Nullable Object obj) {
        if (!(obj instanceof c0)) {
            Y0(obj);
        } else {
            c0 c0Var = (c0) obj;
            X0(c0Var.cause, c0Var.a());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.j2
    @NotNull
    public String P() {
        return s0.a(this) + " was cancelled";
    }

    @Override // kotlinx.coroutines.j2
    public final void p0(@NotNull Throwable th) {
        m0.a(this.context, th);
    }

    public a(@NotNull kotlin.coroutines.g gVar, boolean z6, boolean z10) {
        super(z10);
        if (z6) {
            q0((b2) gVar.get(b2.Key));
        }
        this.context = gVar.plus(this);
    }

    protected void W0(@Nullable Object obj) {
        C(obj);
    }

    public final <R> void Z0(@NotNull q0 q0Var, R r, @NotNull e8.p<? super R, ? super kotlin.coroutines.d<? super T>, ? extends Object> pVar) {
        q0Var.b(pVar, r, this);
    }

    @Override // kotlinx.coroutines.j2, kotlinx.coroutines.b2
    public boolean isActive() {
        return super.isActive();
    }
}
