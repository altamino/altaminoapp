package androidx.compose.ui.focus;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeWrapper;
import e8.l;
import j8.i;
import java.util.Comparator;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.s;
import y7.c;

/* JADX INFO: loaded from: classes2.dex */
public final class OneDimensionalFocusSearchKt {

    @NotNull
    private static final String InvalidFocusDirection = "This function should only be used for 1-D focus search";

    @NotNull
    private static final String NoActiveChild = "ActiveParent must have a focusedChild";

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[FocusStateImpl.values().length];
            iArr[FocusStateImpl.ActiveParent.ordinal()] = 1;
            iArr[FocusStateImpl.DeactivatedParent.ordinal()] = 2;
            iArr[FocusStateImpl.Active.ordinal()] = 3;
            iArr[FocusStateImpl.Captured.ordinal()] = 4;
            iArr[FocusStateImpl.Deactivated.ordinal()] = 5;
            iArr[FocusStateImpl.Inactive.ordinal()] = 6;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final boolean f(@NotNull FocusModifier oneDimensionalFocusSearch, int i10, @NotNull l<? super FocusModifier, Boolean> onFound) {
        t.j(oneDimensionalFocusSearch, "$this$oneDimensionalFocusSearch");
        t.j(onFound, "onFound");
        FocusDirection.Companion companion = FocusDirection.Companion;
        if (FocusDirection.l(i10, companion.d())) {
            return c(oneDimensionalFocusSearch, onFound);
        }
        if (FocusDirection.l(i10, companion.f())) {
            return b(oneDimensionalFocusSearch, onFound);
        }
        throw new IllegalStateException(InvalidFocusDirection.toString());
    }

    private static final void j(MutableVector<FocusModifier> mutableVector) {
        mutableVector.z(new Comparator() { // from class: androidx.compose.ui.focus.OneDimensionalFocusSearchKt$sort$$inlined$compareBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t5, T t10) {
                LayoutNode layoutNodeX1;
                LayoutNode layoutNodeX2;
                LayoutNodeWrapper layoutNodeWrapperL = ((FocusModifier) t5).l();
                Integer numValueOf = null;
                Integer numValueOf2 = (layoutNodeWrapperL == null || (layoutNodeX2 = layoutNodeWrapperL.x1()) == null) ? null : Integer.valueOf(layoutNodeX2.u0());
                LayoutNodeWrapper layoutNodeWrapperL2 = ((FocusModifier) t10).l();
                if (layoutNodeWrapperL2 != null && (layoutNodeX1 = layoutNodeWrapperL2.x1()) != null) {
                    numValueOf = Integer.valueOf(layoutNodeX1.u0());
                }
                return c.d(numValueOf2, numValueOf);
            }
        });
    }

    private static final boolean b(FocusModifier focusModifier, l<? super FocusModifier, Boolean> lVar) {
        FocusStateImpl focusStateImplH = focusModifier.h();
        int[] iArr = WhenMappings.$EnumSwitchMapping$0;
        switch (iArr[focusStateImplH.ordinal()]) {
            case 1:
            case 2:
                FocusModifier focusModifierI = focusModifier.i();
                if (focusModifierI != null) {
                    switch (iArr[focusModifierI.h().ordinal()]) {
                        case 1:
                            if (b(focusModifierI, lVar) || lVar.invoke(focusModifierI).booleanValue()) {
                                return true;
                            }
                            break;
                        case 2:
                            if (b(focusModifierI, lVar) || d(focusModifier, focusModifierI, FocusDirection.Companion.f(), lVar)) {
                                return true;
                            }
                            break;
                        case 3:
                        case 4:
                            return d(focusModifier, focusModifierI, FocusDirection.Companion.f(), lVar);
                        case 5:
                        case 6:
                            throw new IllegalStateException(NoActiveChild.toString());
                        default:
                            throw new s();
                    }
                } else {
                    throw new IllegalStateException(NoActiveChild.toString());
                }
                break;
            case 3:
            case 4:
            case 5:
                return g(focusModifier, lVar);
            case 6:
                if (g(focusModifier, lVar) || lVar.invoke(focusModifier).booleanValue()) {
                    return true;
                }
                break;
            default:
                throw new s();
        }
        return false;
    }

    private static final boolean c(FocusModifier focusModifier, l<? super FocusModifier, Boolean> lVar) {
        switch (WhenMappings.$EnumSwitchMapping$0[focusModifier.h().ordinal()]) {
            case 1:
            case 2:
                FocusModifier focusModifierI = focusModifier.i();
                if (focusModifierI != null) {
                    if (!c(focusModifierI, lVar) && !d(focusModifier, focusModifierI, FocusDirection.Companion.d(), lVar)) {
                        return false;
                    }
                    return true;
                }
                throw new IllegalStateException(NoActiveChild.toString());
            case 3:
            case 4:
            case 5:
                return h(focusModifier, lVar);
            case 6:
                return lVar.invoke(focusModifier).booleanValue();
            default:
                throw new s();
        }
    }

    private static final boolean d(FocusModifier focusModifier, FocusModifier focusModifier2, int i10, l<? super FocusModifier, Boolean> lVar) {
        if (i(focusModifier, focusModifier2, i10, lVar)) {
            return true;
        }
        Boolean bool = (Boolean) BeyondBoundsLayoutKt.a(focusModifier, i10, new OneDimensionalFocusSearchKt$generateAndSearchChildren$1(focusModifier, focusModifier2, i10, lVar));
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    private static final boolean e(FocusModifier focusModifier) {
        if (focusModifier.n() == null) {
            return true;
        }
        return false;
    }

    private static final boolean g(FocusModifier focusModifier, l<? super FocusModifier, Boolean> lVar) {
        j(focusModifier.c());
        MutableVector<FocusModifier> mutableVectorC = focusModifier.c();
        int iN = mutableVectorC.n();
        if (iN > 0) {
            int i10 = iN - 1;
            FocusModifier[] focusModifierArrM = mutableVectorC.m();
            do {
                FocusModifier focusModifier2 = focusModifierArrM[i10];
                if (FocusTraversalKt.g(focusModifier2) && b(focusModifier2, lVar)) {
                    return true;
                }
                i10--;
            } while (i10 >= 0);
            return false;
        }
        return false;
    }

    private static final boolean h(FocusModifier focusModifier, l<? super FocusModifier, Boolean> lVar) {
        j(focusModifier.c());
        MutableVector<FocusModifier> mutableVectorC = focusModifier.c();
        int iN = mutableVectorC.n();
        if (iN <= 0) {
            return false;
        }
        FocusModifier[] focusModifierArrM = mutableVectorC.m();
        int i10 = 0;
        do {
            FocusModifier focusModifier2 = focusModifierArrM[i10];
            if (FocusTraversalKt.g(focusModifier2) && c(focusModifier2, lVar)) {
                return true;
            }
            i10++;
        } while (i10 < iN);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean i(FocusModifier focusModifier, FocusModifier focusModifier2, int i10, l<? super FocusModifier, Boolean> lVar) {
        if (focusModifier.h() != FocusStateImpl.ActiveParent && focusModifier.h() != FocusStateImpl.DeactivatedParent) {
            throw new IllegalStateException("This function should only be used within a parent that has focus.".toString());
        }
        j(focusModifier.c());
        FocusDirection.Companion companion = FocusDirection.Companion;
        if (FocusDirection.l(i10, companion.d())) {
            MutableVector<FocusModifier> mutableVectorC = focusModifier.c();
            i iVar = new i(0, mutableVectorC.n() - 1);
            int iE = iVar.e();
            int iF = iVar.f();
            if (iE <= iF) {
                boolean z6 = false;
                while (true) {
                    if (z6) {
                        FocusModifier focusModifier3 = mutableVectorC.m()[iE];
                        if (FocusTraversalKt.g(focusModifier3) && c(focusModifier3, lVar)) {
                            return true;
                        }
                    }
                    if (t.e(mutableVectorC.m()[iE], focusModifier2)) {
                        z6 = true;
                    }
                    if (iE == iF) {
                        break;
                    }
                    iE++;
                }
            }
        } else if (FocusDirection.l(i10, companion.f())) {
            MutableVector<FocusModifier> mutableVectorC2 = focusModifier.c();
            i iVar2 = new i(0, mutableVectorC2.n() - 1);
            int iE2 = iVar2.e();
            int iF2 = iVar2.f();
            if (iE2 <= iF2) {
                boolean z10 = false;
                while (true) {
                    if (z10) {
                        FocusModifier focusModifier4 = mutableVectorC2.m()[iF2];
                        if (FocusTraversalKt.g(focusModifier4) && b(focusModifier4, lVar)) {
                            return true;
                        }
                    }
                    if (t.e(mutableVectorC2.m()[iF2], focusModifier2)) {
                        z10 = true;
                    }
                    if (iF2 == iE2) {
                        break;
                    }
                    iF2--;
                }
            }
        } else {
            throw new IllegalStateException(InvalidFocusDirection.toString());
        }
        if (FocusDirection.l(i10, FocusDirection.Companion.d()) || focusModifier.h() == FocusStateImpl.DeactivatedParent || e(focusModifier)) {
            return false;
        }
        return lVar.invoke(focusModifier).booleanValue();
    }
}
