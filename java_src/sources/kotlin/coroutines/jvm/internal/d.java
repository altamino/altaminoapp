package kotlin.coroutines.jvm.internal;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public abstract class d extends a {

    @Nullable
    private final kotlin.coroutines.g _context;

    @Nullable
    private transient kotlin.coroutines.d<Object> intercepted;

    public d(@Nullable kotlin.coroutines.d<Object> dVar, @Nullable kotlin.coroutines.g gVar) {
        super(dVar);
        this._context = gVar;
    }

    public d(@Nullable kotlin.coroutines.d<Object> dVar) {
        this(dVar, dVar != null ? dVar.getContext() : null);
    }

    @Override // kotlin.coroutines.d
    @NotNull
    public kotlin.coroutines.g getContext() {
        kotlin.coroutines.g gVar = this._context;
        t.g(gVar);
        return gVar;
    }

    @NotNull
    public final kotlin.coroutines.d<Object> intercepted() {
        kotlin.coroutines.d<Object> dVarInterceptContinuation = this.intercepted;
        if (dVarInterceptContinuation == null) {
            kotlin.coroutines.e eVar = (kotlin.coroutines.e) getContext().get(kotlin.coroutines.e.Key);
            if (eVar == null || (dVarInterceptContinuation = eVar.interceptContinuation(this)) == null) {
                dVarInterceptContinuation = this;
            }
            this.intercepted = dVarInterceptContinuation;
        }
        return dVarInterceptContinuation;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    protected void releaseIntercepted() {
        kotlin.coroutines.d<?> dVar = this.intercepted;
        if (dVar != null && dVar != this) {
            kotlin.coroutines.g.b bVar = getContext().get(kotlin.coroutines.e.Key);
            t.g(bVar);
            ((kotlin.coroutines.e) bVar).releaseInterceptedContinuation(dVar);
        }
        this.intercepted = c.INSTANCE;
    }
}
