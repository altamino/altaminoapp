package androidx.compose.runtime.internal;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScope;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.Stable;
import e8.x;
import j8.o;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Stable
public final class ComposableLambdaNImpl implements ComposableLambdaN {

    @Nullable
    private Object _block;
    private final int arity;
    private final int key;

    @Nullable
    private RecomposeScope scope;

    @Nullable
    private List<RecomposeScope> scopes;
    private final boolean tracked;

    private final int a(int i10) {
        int i11 = i10 - 2;
        for (int i12 = 1; i12 * 10 < i11; i12++) {
            i11--;
        }
        return i11;
    }

    @Override // kotlin.jvm.internal.o
    public int getArity() {
        return this.arity;
    }

    private final void b(Composer composer) {
        RecomposeScope recomposeScopeE;
        if (!this.tracked || (recomposeScopeE = composer.E()) == null) {
            return;
        }
        composer.i(recomposeScopeE);
        if (ComposableLambdaKt.e(this.scope, recomposeScopeE)) {
            this.scope = recomposeScopeE;
            return;
        }
        List<RecomposeScope> list = this.scopes;
        if (list == null) {
            ArrayList arrayList = new ArrayList();
            this.scopes = arrayList;
            arrayList.add(recomposeScopeE);
            return;
        }
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (ComposableLambdaKt.e(list.get(i10), recomposeScopeE)) {
                list.set(i10, recomposeScopeE);
                return;
            }
        }
        list.add(recomposeScopeE);
    }

    @Override // e8.x
    @Nullable
    public Object y0(@NotNull Object... args) {
        t.j(args, "args");
        int iA = a(args.length);
        Object obj = args[iA];
        if (obj == null) {
            throw new NullPointerException("null cannot be cast to non-null type androidx.compose.runtime.Composer");
        }
        Composer composer = (Composer) obj;
        Object[] array = p.n0(args, o.v(0, args.length - 1)).toArray(new Object[0]);
        if (array == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        }
        Object obj2 = args[args.length - 1];
        if (obj2 == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Int");
        }
        int iIntValue = ((Integer) obj2).intValue();
        Composer composerS = composer.s(this.key);
        b(composerS);
        int iD = iIntValue | (composerS.k(this) ? ComposableLambdaKt.d(iA) : ComposableLambdaKt.f(iA));
        Object obj3 = this._block;
        if (obj3 == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.jvm.functions.FunctionN<*>");
        }
        t0 t0Var = new t0(2);
        t0Var.b(array);
        t0Var.a(Integer.valueOf(iD));
        Object objY0 = ((x) obj3).y0(t0Var.d(new Object[t0Var.c()]));
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU != null) {
            scopeUpdateScopeU.a(new ComposableLambdaNImpl$invoke$1(args, iA, this));
        }
        return objY0;
    }

    public ComposableLambdaNImpl(int i10, boolean z6, int i11) {
        this.key = i10;
        this.tracked = z6;
        this.arity = i11;
    }
}
