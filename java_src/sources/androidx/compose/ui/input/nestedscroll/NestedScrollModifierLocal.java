package androidx.compose.ui.input.nestedscroll;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.b;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.modifier.ModifierLocalConsumer;
import androidx.compose.ui.modifier.ModifierLocalProvider;
import androidx.compose.ui.modifier.ModifierLocalReadScope;
import androidx.compose.ui.modifier.ProvidableModifierLocal;
import androidx.compose.ui.unit.Velocity;
import e8.l;
import e8.p;
import kotlin.coroutines.d;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.w;

/* JADX INFO: loaded from: classes7.dex */
public final class NestedScrollModifierLocal implements ModifierLocalConsumer, ModifierLocalProvider<NestedScrollModifierLocal>, NestedScrollConnection {

    @NotNull
    private final NestedScrollConnection connection;

    @NotNull
    private final NestedScrollDispatcher dispatcher;

    @NotNull
    private final MutableState parent$delegate;

    /* JADX INFO: renamed from: androidx.compose.ui.input.nestedscroll.NestedScrollModifierLocal$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements e8.a<o0> {
        AnonymousClass1() {
            super(0);
        }

        @Override // e8.a
        @NotNull
        public final o0 invoke() {
            return NestedScrollModifierLocal.this.g();
        }
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Modifier B(Modifier modifier) {
        return androidx.compose.ui.a.a(this, modifier);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object V(Object obj, p pVar) {
        return b.c(this, obj, pVar);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    @Nullable
    public Object a(long j6, long j10, @NotNull d<? super Velocity> dVar) {
        NestedScrollModifierLocal$onPostFling$1 nestedScrollModifierLocal$onPostFling$1;
        long j11;
        long j12;
        NestedScrollModifierLocal nestedScrollModifierLocal;
        long j13;
        long jA;
        long j14;
        if (dVar instanceof NestedScrollModifierLocal$onPostFling$1) {
            nestedScrollModifierLocal$onPostFling$1 = (NestedScrollModifierLocal$onPostFling$1) dVar;
            int i10 = nestedScrollModifierLocal$onPostFling$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                nestedScrollModifierLocal$onPostFling$1.label = i10 - Integer.MIN_VALUE;
            } else {
                nestedScrollModifierLocal$onPostFling$1 = new NestedScrollModifierLocal$onPostFling$1(this, dVar);
            }
        } else {
            nestedScrollModifierLocal$onPostFling$1 = new NestedScrollModifierLocal$onPostFling$1(this, dVar);
        }
        Object objA = nestedScrollModifierLocal$onPostFling$1.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = nestedScrollModifierLocal$onPostFling$1.label;
        if (i11 != 0) {
            if (i11 == 1) {
                long j15 = nestedScrollModifierLocal$onPostFling$1.J$1;
                long j16 = nestedScrollModifierLocal$onPostFling$1.J$0;
                nestedScrollModifierLocal = (NestedScrollModifierLocal) nestedScrollModifierLocal$onPostFling$1.L$0;
                w.b(objA);
                j12 = j15;
                j11 = j16;
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                j14 = nestedScrollModifierLocal$onPostFling$1.J$0;
                w.b(objA);
            }
            jA = ((Velocity) objA).n();
            j13 = j14;
            return Velocity.b(Velocity.l(j13, jA));
        }
        w.b(objA);
        NestedScrollConnection nestedScrollConnection = this.connection;
        nestedScrollModifierLocal$onPostFling$1.L$0 = this;
        j11 = j6;
        nestedScrollModifierLocal$onPostFling$1.J$0 = j11;
        j12 = j10;
        nestedScrollModifierLocal$onPostFling$1.J$1 = j12;
        nestedScrollModifierLocal$onPostFling$1.label = 1;
        objA = nestedScrollConnection.a(j6, j10, nestedScrollModifierLocal$onPostFling$1);
        if (objA == objE) {
            return objE;
        }
        nestedScrollModifierLocal = this;
        long jN = ((Velocity) objA).n();
        NestedScrollModifierLocal nestedScrollModifierLocalH = nestedScrollModifierLocal.h();
        if (nestedScrollModifierLocalH != null) {
            long jL = Velocity.l(j11, jN);
            long jK = Velocity.k(j12, jN);
            nestedScrollModifierLocal$onPostFling$1.L$0 = null;
            nestedScrollModifierLocal$onPostFling$1.J$0 = jN;
            nestedScrollModifierLocal$onPostFling$1.label = 2;
            objA = nestedScrollModifierLocalH.a(jL, jK, nestedScrollModifierLocal$onPostFling$1);
            if (objA == objE) {
                return objE;
            }
            j14 = jN;
            jA = ((Velocity) objA).n();
            j13 = j14;
        } else {
            j13 = jN;
            jA = Velocity.Companion.a();
        }
        return Velocity.b(Velocity.l(j13, jA));
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object a0(Object obj, p pVar) {
        return b.b(this, obj, pVar);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ boolean d0(l lVar) {
        return b.a(this, lVar);
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalProvider
    @NotNull
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public NestedScrollModifierLocal getValue() {
        return this;
    }

    public NestedScrollModifierLocal(@NotNull NestedScrollDispatcher dispatcher, @NotNull NestedScrollConnection connection) {
        t.j(dispatcher, "dispatcher");
        t.j(connection, "connection");
        this.dispatcher = dispatcher;
        this.connection = connection;
        dispatcher.g(new AnonymousClass1());
        this.parent$delegate = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final NestedScrollModifierLocal h() {
        return (NestedScrollModifierLocal) this.parent$delegate.getValue();
    }

    private final void j(NestedScrollModifierLocal nestedScrollModifierLocal) {
        this.parent$delegate.setValue(nestedScrollModifierLocal);
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    public long b(long j6, long j10, int i10) {
        long jB = this.connection.b(j6, j10, i10);
        NestedScrollModifierLocal nestedScrollModifierLocalH = h();
        return Offset.r(jB, nestedScrollModifierLocalH != null ? nestedScrollModifierLocalH.b(Offset.r(j6, jB), Offset.q(j10, jB), i10) : Offset.Companion.c());
    }

    /* JADX WARN: Code duplicated, block: B:27:0x007c A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    @Nullable
    public Object c(long j6, @NotNull d<? super Velocity> dVar) {
        NestedScrollModifierLocal$onPreFling$1 nestedScrollModifierLocal$onPreFling$1;
        long jA;
        NestedScrollModifierLocal nestedScrollModifierLocal;
        long j10;
        if (dVar instanceof NestedScrollModifierLocal$onPreFling$1) {
            nestedScrollModifierLocal$onPreFling$1 = (NestedScrollModifierLocal$onPreFling$1) dVar;
            int i10 = nestedScrollModifierLocal$onPreFling$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                nestedScrollModifierLocal$onPreFling$1.label = i10 - Integer.MIN_VALUE;
            } else {
                nestedScrollModifierLocal$onPreFling$1 = new NestedScrollModifierLocal$onPreFling$1(this, dVar);
            }
        } else {
            nestedScrollModifierLocal$onPreFling$1 = new NestedScrollModifierLocal$onPreFling$1(this, dVar);
        }
        Object objC = nestedScrollModifierLocal$onPreFling$1.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = nestedScrollModifierLocal$onPreFling$1.label;
        if (i11 != 0) {
            if (i11 == 1) {
                j6 = nestedScrollModifierLocal$onPreFling$1.J$0;
                nestedScrollModifierLocal = (NestedScrollModifierLocal) nestedScrollModifierLocal$onPreFling$1.L$0;
                w.b(objC);
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                j10 = nestedScrollModifierLocal$onPreFling$1.J$0;
                w.b(objC);
            }
            return Velocity.b(Velocity.l(j10, ((Velocity) objC).n()));
        }
        w.b(objC);
        NestedScrollModifierLocal nestedScrollModifierLocalH = h();
        if (nestedScrollModifierLocalH != null) {
            nestedScrollModifierLocal$onPreFling$1.L$0 = this;
            nestedScrollModifierLocal$onPreFling$1.J$0 = j6;
            nestedScrollModifierLocal$onPreFling$1.label = 1;
            objC = nestedScrollModifierLocalH.c(j6, nestedScrollModifierLocal$onPreFling$1);
            if (objC == objE) {
                return objE;
            }
            nestedScrollModifierLocal = this;
        } else {
            jA = Velocity.Companion.a();
            nestedScrollModifierLocal = this;
        }
        long j11 = j6;
        j10 = jA;
        NestedScrollConnection nestedScrollConnection = nestedScrollModifierLocal.connection;
        long jK = Velocity.k(j11, j10);
        nestedScrollModifierLocal$onPreFling$1.L$0 = null;
        nestedScrollModifierLocal$onPreFling$1.J$0 = j10;
        nestedScrollModifierLocal$onPreFling$1.label = 2;
        objC = nestedScrollConnection.c(jK, nestedScrollModifierLocal$onPreFling$1);
        if (objC == objE) {
            return objE;
        }
        return Velocity.b(Velocity.l(j10, ((Velocity) objC).n()));
        jA = ((Velocity) objC).n();
        long j12 = j6;
        j10 = jA;
        NestedScrollConnection nestedScrollConnection2 = nestedScrollModifierLocal.connection;
        long jK2 = Velocity.k(j12, j10);
        nestedScrollModifierLocal$onPreFling$1.L$0 = null;
        nestedScrollModifierLocal$onPreFling$1.J$0 = j10;
        nestedScrollModifierLocal$onPreFling$1.label = 2;
        objC = nestedScrollConnection2.c(jK2, nestedScrollModifierLocal$onPreFling$1);
        if (objC == objE) {
            return objE;
        }
        return Velocity.b(Velocity.l(j10, ((Velocity) objC).n()));
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalConsumer
    public void z0(@NotNull ModifierLocalReadScope scope) {
        t.j(scope, "scope");
        j((NestedScrollModifierLocal) scope.a(NestedScrollModifierLocalKt.a()));
        this.dispatcher.i(h());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final o0 g() {
        o0 o0VarF;
        NestedScrollModifierLocal nestedScrollModifierLocalH = h();
        if ((nestedScrollModifierLocalH != null && (o0VarF = nestedScrollModifierLocalH.g()) != null) || (o0VarF = this.dispatcher.f()) != null) {
            return o0VarF;
        }
        throw new IllegalStateException("in order to access nested coroutine scope you need to attach dispatcher to the `Modifier.nestedScroll` first.");
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    public long d(long j6, int i10) {
        long jC;
        NestedScrollModifierLocal nestedScrollModifierLocalH = h();
        if (nestedScrollModifierLocalH != null) {
            jC = nestedScrollModifierLocalH.d(j6, i10);
        } else {
            jC = Offset.Companion.c();
        }
        return Offset.r(jC, this.connection.d(Offset.q(j6, jC), i10));
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalProvider
    @NotNull
    public ProvidableModifierLocal<NestedScrollModifierLocal> getKey() {
        return NestedScrollModifierLocalKt.a();
    }
}
