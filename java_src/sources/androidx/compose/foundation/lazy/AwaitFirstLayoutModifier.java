package androidx.compose.foundation.lazy;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.a;
import androidx.compose.ui.b;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.OnGloballyPositionedModifier;
import e8.l;
import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.i;
import kotlin.coroutines.intrinsics.c;
import kotlin.coroutines.jvm.internal.h;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.v;
import w7.w;

/* JADX INFO: loaded from: classes9.dex */
public final class AwaitFirstLayoutModifier implements OnGloballyPositionedModifier {

    @Nullable
    private d<? super l0> continuation;
    private boolean wasPositioned;

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Modifier B(Modifier modifier) {
        return a.a(this, modifier);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object V(Object obj, p pVar) {
        return b.c(this, obj, pVar);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object a0(Object obj, p pVar) {
        return b.b(this, obj, pVar);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ boolean d0(l lVar) {
        return b.a(this, lVar);
    }

    @Override // androidx.compose.ui.layout.OnGloballyPositionedModifier
    public void F0(@NotNull LayoutCoordinates coordinates) {
        t.j(coordinates, "coordinates");
        if (this.wasPositioned) {
            return;
        }
        this.wasPositioned = true;
        d<? super l0> dVar = this.continuation;
        if (dVar != null) {
            v.a aVar = v.Companion;
            dVar.resumeWith(v.b(l0.INSTANCE));
        }
        this.continuation = null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public final Object a(@NotNull d<? super l0> dVar) throws Throwable {
        AwaitFirstLayoutModifier$waitForFirstLayout$1 awaitFirstLayoutModifier$waitForFirstLayout$1;
        d<? super l0> dVar2;
        if (dVar instanceof AwaitFirstLayoutModifier$waitForFirstLayout$1) {
            awaitFirstLayoutModifier$waitForFirstLayout$1 = (AwaitFirstLayoutModifier$waitForFirstLayout$1) dVar;
            int i10 = awaitFirstLayoutModifier$waitForFirstLayout$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                awaitFirstLayoutModifier$waitForFirstLayout$1.label = i10 - Integer.MIN_VALUE;
            } else {
                awaitFirstLayoutModifier$waitForFirstLayout$1 = new AwaitFirstLayoutModifier$waitForFirstLayout$1(this, dVar);
            }
        } else {
            awaitFirstLayoutModifier$waitForFirstLayout$1 = new AwaitFirstLayoutModifier$waitForFirstLayout$1(this, dVar);
        }
        Object obj = awaitFirstLayoutModifier$waitForFirstLayout$1.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = awaitFirstLayoutModifier$waitForFirstLayout$1.label;
        if (i11 == 0) {
            w.b(obj);
            if (!this.wasPositioned) {
                d<? super l0> dVar3 = this.continuation;
                awaitFirstLayoutModifier$waitForFirstLayout$1.L$0 = this;
                awaitFirstLayoutModifier$waitForFirstLayout$1.L$1 = dVar3;
                awaitFirstLayoutModifier$waitForFirstLayout$1.label = 1;
                i iVar = new i(c.c(awaitFirstLayoutModifier$waitForFirstLayout$1));
                this.continuation = iVar;
                Object objA = iVar.a();
                if (objA == kotlin.coroutines.intrinsics.d.e()) {
                    h.c(awaitFirstLayoutModifier$waitForFirstLayout$1);
                }
                if (objA == objE) {
                    return objE;
                }
                dVar2 = dVar3;
            }
            return l0.INSTANCE;
        }
        if (i11 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        dVar2 = (d) awaitFirstLayoutModifier$waitForFirstLayout$1.L$1;
        w.b(obj);
        if (dVar2 != null) {
            v.a aVar = v.Companion;
            dVar2.resumeWith(v.b(l0.INSTANCE));
        }
        return l0.INSTANCE;
    }
}
