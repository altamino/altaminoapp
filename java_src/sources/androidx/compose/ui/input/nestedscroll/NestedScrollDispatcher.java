package androidx.compose.ui.input.nestedscroll;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.unit.Velocity;
import kotlin.coroutines.d;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.w;

/* JADX INFO: loaded from: classes7.dex */
@StabilityInferred
public final class NestedScrollDispatcher {
    public static final int $stable = 8;

    @NotNull
    private e8.a<? extends o0> calculateNestedScrollScope = new NestedScrollDispatcher$calculateNestedScrollScope$1(this);

    @Nullable
    private o0 originNestedScrollScope;

    @Nullable
    private NestedScrollConnection parent;

    @Nullable
    public final o0 f() {
        return this.originNestedScrollScope;
    }

    public final void g(@NotNull e8.a<? extends o0> aVar) {
        t.j(aVar, "<set-?>");
        this.calculateNestedScrollScope = aVar;
    }

    public final void h(@Nullable o0 o0Var) {
        this.originNestedScrollScope = o0Var;
    }

    public final void i(@Nullable NestedScrollConnection nestedScrollConnection) {
        this.parent = nestedScrollConnection;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    @Nullable
    public final Object a(long j6, long j10, @NotNull d<? super Velocity> dVar) {
        NestedScrollDispatcher$dispatchPostFling$1 nestedScrollDispatcher$dispatchPostFling$1;
        long jA;
        if (dVar instanceof NestedScrollDispatcher$dispatchPostFling$1) {
            nestedScrollDispatcher$dispatchPostFling$1 = (NestedScrollDispatcher$dispatchPostFling$1) dVar;
            int i10 = nestedScrollDispatcher$dispatchPostFling$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                nestedScrollDispatcher$dispatchPostFling$1.label = i10 - Integer.MIN_VALUE;
            } else {
                nestedScrollDispatcher$dispatchPostFling$1 = new NestedScrollDispatcher$dispatchPostFling$1(this, dVar);
            }
        } else {
            nestedScrollDispatcher$dispatchPostFling$1 = new NestedScrollDispatcher$dispatchPostFling$1(this, dVar);
        }
        NestedScrollDispatcher$dispatchPostFling$1 nestedScrollDispatcher$dispatchPostFling$2 = nestedScrollDispatcher$dispatchPostFling$1;
        Object objA = nestedScrollDispatcher$dispatchPostFling$2.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = nestedScrollDispatcher$dispatchPostFling$2.label;
        if (i11 == 0) {
            w.b(objA);
            NestedScrollConnection nestedScrollConnection = this.parent;
            if (nestedScrollConnection != null) {
                nestedScrollDispatcher$dispatchPostFling$2.label = 1;
                objA = nestedScrollConnection.a(j6, j10, nestedScrollDispatcher$dispatchPostFling$2);
                if (objA == objE) {
                    return objE;
                }
            } else {
                jA = Velocity.Companion.a();
            }
            return Velocity.b(jA);
        }
        if (i11 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        w.b(objA);
        jA = ((Velocity) objA).n();
        return Velocity.b(jA);
    }

    public final long b(long j6, long j10, int i10) {
        NestedScrollConnection nestedScrollConnection = this.parent;
        return nestedScrollConnection != null ? nestedScrollConnection.b(j6, j10, i10) : Offset.Companion.c();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public final Object c(long j6, @NotNull d<? super Velocity> dVar) {
        NestedScrollDispatcher$dispatchPreFling$1 nestedScrollDispatcher$dispatchPreFling$1;
        long jA;
        if (dVar instanceof NestedScrollDispatcher$dispatchPreFling$1) {
            nestedScrollDispatcher$dispatchPreFling$1 = (NestedScrollDispatcher$dispatchPreFling$1) dVar;
            int i10 = nestedScrollDispatcher$dispatchPreFling$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                nestedScrollDispatcher$dispatchPreFling$1.label = i10 - Integer.MIN_VALUE;
            } else {
                nestedScrollDispatcher$dispatchPreFling$1 = new NestedScrollDispatcher$dispatchPreFling$1(this, dVar);
            }
        } else {
            nestedScrollDispatcher$dispatchPreFling$1 = new NestedScrollDispatcher$dispatchPreFling$1(this, dVar);
        }
        Object objC = nestedScrollDispatcher$dispatchPreFling$1.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = nestedScrollDispatcher$dispatchPreFling$1.label;
        if (i11 == 0) {
            w.b(objC);
            NestedScrollConnection nestedScrollConnection = this.parent;
            if (nestedScrollConnection != null) {
                nestedScrollDispatcher$dispatchPreFling$1.label = 1;
                objC = nestedScrollConnection.c(j6, nestedScrollDispatcher$dispatchPreFling$1);
                if (objC == objE) {
                    return objE;
                }
            } else {
                jA = Velocity.Companion.a();
            }
            return Velocity.b(jA);
        }
        if (i11 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        w.b(objC);
        jA = ((Velocity) objC).n();
        return Velocity.b(jA);
    }

    public final long d(long j6, int i10) {
        NestedScrollConnection nestedScrollConnection = this.parent;
        return nestedScrollConnection != null ? nestedScrollConnection.d(j6, i10) : Offset.Companion.c();
    }

    @NotNull
    public final o0 e() {
        o0 o0VarInvoke = this.calculateNestedScrollScope.invoke();
        if (o0VarInvoke != null) {
            return o0VarInvoke;
        }
        throw new IllegalStateException("in order to access nested coroutine scope you need to attach dispatcher to the `Modifier.nestedScroll` first.");
    }
}
