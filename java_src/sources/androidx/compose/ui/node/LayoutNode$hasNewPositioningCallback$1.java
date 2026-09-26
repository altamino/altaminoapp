package androidx.compose.ui.node;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.OnGloballyPositionedModifier;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.u;

/* JADX INFO: loaded from: classes.dex */
final class LayoutNode$hasNewPositioningCallback$1 extends v implements p<Modifier.Element, Boolean, Boolean> {
    final /* synthetic */ MutableVector<u<LayoutNodeWrapper, OnGloballyPositionedModifier>> $onPositionedCallbacks;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LayoutNode$hasNewPositioningCallback$1(MutableVector<u<LayoutNodeWrapper, OnGloballyPositionedModifier>> mutableVector) {
        super(2);
        this.$onPositionedCallbacks = mutableVector;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0035  */
    @NotNull
    public final Boolean a(@NotNull Modifier.Element mod, boolean z6) {
        boolean z10;
        t.j(mod, "mod");
        if (z6) {
            z10 = true;
        } else {
            z10 = false;
            if (mod instanceof OnGloballyPositionedModifier) {
                MutableVector<u<LayoutNodeWrapper, OnGloballyPositionedModifier>> mutableVector = this.$onPositionedCallbacks;
                u<LayoutNodeWrapper, OnGloballyPositionedModifier> uVar = null;
                if (mutableVector != null) {
                    int iN = mutableVector.n();
                    if (iN > 0) {
                        u<LayoutNodeWrapper, OnGloballyPositionedModifier>[] uVarArrM = mutableVector.m();
                        int i10 = 0;
                        do {
                            u<LayoutNodeWrapper, OnGloballyPositionedModifier> uVar2 = uVarArrM[i10];
                            if (t.e(mod, uVar2.d())) {
                                uVar = uVar2;
                                break;
                            }
                            i10++;
                        } while (i10 < iN);
                    }
                    uVar = uVar;
                }
                if (uVar == null) {
                    z10 = true;
                }
            }
        }
        return Boolean.valueOf(z10);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ Boolean invoke(Modifier.Element element, Boolean bool) {
        return a(element, bool.booleanValue());
    }
}
