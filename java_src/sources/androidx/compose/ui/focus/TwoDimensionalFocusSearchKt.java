package androidx.compose.ui.focus;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.geometry.Rect;
import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.s;

/* JADX INFO: loaded from: classes5.dex */
public final class TwoDimensionalFocusSearchKt {

    @NotNull
    private static final String InvalidFocusDirection = "This function should only be used for 2-D focus search";

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

    private static final boolean d(Rect rect, int i10, Rect rect2) {
        FocusDirection.Companion companion = FocusDirection.Companion;
        if (FocusDirection.l(i10, companion.c()) || FocusDirection.l(i10, companion.g())) {
            if (rect.e() <= rect2.m() || rect.m() >= rect2.e()) {
                return false;
            }
        } else {
            if (!FocusDirection.l(i10, companion.h()) && !FocusDirection.l(i10, companion.a())) {
                throw new IllegalStateException(InvalidFocusDirection.toString());
            }
            if (rect.k() <= rect2.j() || rect.j() >= rect2.k()) {
                return false;
            }
        }
        return true;
    }

    private static final boolean e(Rect rect, int i10, Rect rect2) {
        FocusDirection.Companion companion = FocusDirection.Companion;
        if (FocusDirection.l(i10, companion.c())) {
            if (rect2.j() < rect.k()) {
                return false;
            }
        } else if (FocusDirection.l(i10, companion.g())) {
            if (rect2.k() > rect.j()) {
                return false;
            }
        } else if (FocusDirection.l(i10, companion.h())) {
            if (rect2.m() < rect.e()) {
                return false;
            }
        } else {
            if (!FocusDirection.l(i10, companion.a())) {
                throw new IllegalStateException(InvalidFocusDirection.toString());
            }
            if (rect2.e() > rect.m()) {
                return false;
            }
        }
        return true;
    }

    private static final float f(Rect rect, int i10, Rect rect2) {
        float fM;
        float fE;
        float fM2;
        float fE2;
        float f;
        FocusDirection.Companion companion = FocusDirection.Companion;
        if (!FocusDirection.l(i10, companion.c())) {
            if (FocusDirection.l(i10, companion.g())) {
                fM = rect.j();
                fE = rect2.k();
            } else if (FocusDirection.l(i10, companion.h())) {
                fM2 = rect2.m();
                fE2 = rect.e();
            } else {
                if (!FocusDirection.l(i10, companion.a())) {
                    throw new IllegalStateException(InvalidFocusDirection.toString());
                }
                fM = rect.m();
                fE = rect2.e();
            }
            f = fM - fE;
            return Math.max(0.0f, f);
        }
        fM2 = rect2.j();
        fE2 = rect.k();
        f = fM2 - fE2;
        return Math.max(0.0f, f);
    }

    private static final float g(Rect rect, int i10, Rect rect2) {
        float fE;
        float fE2;
        float fM;
        float fM2;
        float f;
        FocusDirection.Companion companion = FocusDirection.Companion;
        if (!FocusDirection.l(i10, companion.c())) {
            if (FocusDirection.l(i10, companion.g())) {
                fE = rect.k();
                fE2 = rect2.k();
            } else if (FocusDirection.l(i10, companion.h())) {
                fM = rect2.m();
                fM2 = rect.m();
            } else {
                if (!FocusDirection.l(i10, companion.a())) {
                    throw new IllegalStateException(InvalidFocusDirection.toString());
                }
                fE = rect.e();
                fE2 = rect2.e();
            }
            f = fE - fE2;
            return Math.max(1.0f, f);
        }
        fM = rect2.j();
        fM2 = rect.j();
        f = fM - fM2;
        return Math.max(1.0f, f);
    }

    private static final Rect h(Rect rect) {
        return new Rect(rect.k(), rect.e(), rect.k(), rect.e());
    }

    private static final FocusModifier i(MutableVector<FocusModifier> mutableVector, Rect rect, int i10) {
        Rect rectS;
        FocusDirection.Companion companion = FocusDirection.Companion;
        if (FocusDirection.l(i10, companion.c())) {
            rectS = rect.s(rect.p() + 1, 0.0f);
        } else if (FocusDirection.l(i10, companion.g())) {
            rectS = rect.s(-(rect.p() + 1), 0.0f);
        } else if (FocusDirection.l(i10, companion.h())) {
            rectS = rect.s(0.0f, rect.i() + 1);
        } else {
            if (!FocusDirection.l(i10, companion.a())) {
                throw new IllegalStateException(InvalidFocusDirection.toString());
            }
            rectS = rect.s(0.0f, -(rect.i() + 1));
        }
        int iN = mutableVector.n();
        FocusModifier focusModifier = null;
        if (iN > 0) {
            FocusModifier[] focusModifierArrM = mutableVector.m();
            int i11 = 0;
            do {
                FocusModifier focusModifier2 = focusModifierArrM[i11];
                if (FocusTraversalKt.g(focusModifier2)) {
                    Rect rectE = FocusTraversalKt.e(focusModifier2);
                    if (k(rectE, rectS, rect, i10)) {
                        focusModifier = focusModifier2;
                        rectS = rectE;
                    }
                }
                i11++;
            } while (i11 < iN);
        }
        return focusModifier;
    }

    private static final boolean l(Rect rect, int i10, Rect rect2) {
        FocusDirection.Companion companion = FocusDirection.Companion;
        if (FocusDirection.l(i10, companion.c())) {
            if ((rect2.k() <= rect.k() && rect2.j() < rect.k()) || rect2.j() <= rect.j()) {
                return false;
            }
        } else if (FocusDirection.l(i10, companion.g())) {
            if ((rect2.j() >= rect.j() && rect2.k() > rect.j()) || rect2.k() >= rect.k()) {
                return false;
            }
        } else if (FocusDirection.l(i10, companion.h())) {
            if ((rect2.e() <= rect.e() && rect2.m() < rect.e()) || rect2.m() <= rect.m()) {
                return false;
            }
        } else {
            if (!FocusDirection.l(i10, companion.a())) {
                throw new IllegalStateException(InvalidFocusDirection.toString());
            }
            if ((rect2.m() >= rect.m() && rect2.e() > rect.m()) || rect2.e() >= rect.e()) {
                return false;
            }
        }
        return true;
    }

    private static final float m(Rect rect, int i10, Rect rect2) {
        float fM;
        float fE;
        float fM2;
        float fE2;
        float f;
        FocusDirection.Companion companion = FocusDirection.Companion;
        if (!FocusDirection.l(i10, companion.c())) {
            if (FocusDirection.l(i10, companion.g())) {
                fM = rect.j();
                fE = rect2.k();
            } else if (FocusDirection.l(i10, companion.h())) {
                fM2 = rect2.m();
                fE2 = rect.e();
            } else {
                if (!FocusDirection.l(i10, companion.a())) {
                    throw new IllegalStateException(InvalidFocusDirection.toString());
                }
                fM = rect.m();
                fE = rect2.e();
            }
            f = fM - fE;
            return Math.max(0.0f, f);
        }
        fM2 = rect2.j();
        fE2 = rect.k();
        f = fM2 - fE2;
        return Math.max(0.0f, f);
    }

    private static final float n(Rect rect, int i10, Rect rect2) {
        float f;
        float fM;
        float fM2;
        float fI;
        FocusDirection.Companion companion = FocusDirection.Companion;
        if (FocusDirection.l(i10, companion.c()) || FocusDirection.l(i10, companion.g())) {
            f = 2;
            fM = rect2.m() + (rect2.i() / f);
            fM2 = rect.m();
            fI = rect.i();
        } else {
            if (!FocusDirection.l(i10, companion.h()) && !FocusDirection.l(i10, companion.a())) {
                throw new IllegalStateException(InvalidFocusDirection.toString());
            }
            f = 2;
            fM = rect2.j() + (rect2.p() / f);
            fM2 = rect.j();
            fI = rect.p();
        }
        return fM - (fM2 + (fI / f));
    }

    private static final Rect q(Rect rect) {
        return new Rect(rect.j(), rect.m(), rect.j(), rect.m());
    }

    public static final boolean r(@NotNull FocusModifier twoDimensionalFocusSearch, int i10, @NotNull l<? super FocusModifier, Boolean> onFound) {
        Rect rectQ;
        t.j(twoDimensionalFocusSearch, "$this$twoDimensionalFocusSearch");
        t.j(onFound, "onFound");
        FocusStateImpl focusStateImplH = twoDimensionalFocusSearch.h();
        int[] iArr = WhenMappings.$EnumSwitchMapping$0;
        switch (iArr[focusStateImplH.ordinal()]) {
            case 1:
            case 2:
                FocusModifier focusModifierI = twoDimensionalFocusSearch.i();
                if (focusModifierI == null) {
                    throw new IllegalStateException(NoActiveChild.toString());
                }
                switch (iArr[focusModifierI.h().ordinal()]) {
                    case 1:
                    case 2:
                        return r(focusModifierI, i10, onFound) || j(twoDimensionalFocusSearch, b(focusModifierI), i10, onFound);
                    case 3:
                    case 4:
                        return j(twoDimensionalFocusSearch, focusModifierI, i10, onFound);
                    case 5:
                    case 6:
                        throw new IllegalStateException(NoActiveChild.toString());
                    default:
                        throw new s();
                }
            case 3:
            case 4:
                MutableVector<FocusModifier> mutableVectorA = FocusTraversalKt.a(twoDimensionalFocusSearch);
                if (mutableVectorA.n() <= 1) {
                    FocusModifier focusModifier = mutableVectorA.p() ? null : mutableVectorA.m()[0];
                    if (focusModifier != null) {
                        return onFound.invoke(focusModifier).booleanValue();
                    }
                    return false;
                }
                FocusDirection.Companion companion = FocusDirection.Companion;
                if (FocusDirection.l(i10, companion.g()) || FocusDirection.l(i10, companion.a())) {
                    rectQ = q(FocusTraversalKt.e(twoDimensionalFocusSearch));
                } else {
                    if (!FocusDirection.l(i10, companion.c()) && !FocusDirection.l(i10, companion.h())) {
                        throw new IllegalStateException(InvalidFocusDirection.toString());
                    }
                    rectQ = h(FocusTraversalKt.e(twoDimensionalFocusSearch));
                }
                FocusModifier focusModifierI2 = i(mutableVectorA, rectQ, i10);
                if (focusModifierI2 != null) {
                    return onFound.invoke(focusModifierI2).booleanValue();
                }
                return false;
            case 5:
                return false;
            case 6:
                return onFound.invoke(twoDimensionalFocusSearch).booleanValue();
            default:
                throw new s();
        }
    }

    private static final FocusModifier b(FocusModifier focusModifier) {
        if (focusModifier.h() != FocusStateImpl.ActiveParent && focusModifier.h() != FocusStateImpl.DeactivatedParent) {
            throw new IllegalStateException("Check failed.".toString());
        }
        FocusModifier focusModifierB = FocusTraversalKt.b(focusModifier);
        if (focusModifierB != null) {
            return focusModifierB;
        }
        throw new IllegalStateException(NoActiveChild.toString());
    }

    private static final boolean c(Rect rect, Rect rect2, Rect rect3, int i10) {
        if (d(rect3, i10, rect) || !d(rect2, i10, rect)) {
            return false;
        }
        if (e(rect3, i10, rect)) {
            FocusDirection.Companion companion = FocusDirection.Companion;
            if (!FocusDirection.l(i10, companion.c()) && !FocusDirection.l(i10, companion.g()) && f(rect2, i10, rect) >= g(rect3, i10, rect)) {
                return false;
            }
        }
        return true;
    }

    private static final boolean j(FocusModifier focusModifier, FocusModifier focusModifier2, int i10, l<? super FocusModifier, Boolean> lVar) {
        if (p(focusModifier, focusModifier2, i10, lVar)) {
            return true;
        }
        Boolean bool = (Boolean) BeyondBoundsLayoutKt.a(focusModifier, i10, new TwoDimensionalFocusSearchKt$generateAndSearchChildren$1(focusModifier, focusModifier2, i10, lVar));
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    private static final boolean k(Rect rect, Rect rect2, Rect rect3, int i10) {
        if (!l(rect, i10, rect3)) {
            return false;
        }
        if (l(rect2, i10, rect3) && !c(rect3, rect, rect2, i10) && (c(rect3, rect2, rect, i10) || o(i10, rect3, rect) >= o(i10, rect3, rect2))) {
            return false;
        }
        return true;
    }

    private static final long o(int i10, Rect rect, Rect rect2) {
        long jAbs = (long) Math.abs(m(rect2, i10, rect));
        long jAbs2 = (long) Math.abs(n(rect2, i10, rect));
        return (((long) 13) * jAbs * jAbs) + (jAbs2 * jAbs2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean p(FocusModifier focusModifier, FocusModifier focusModifier2, int i10, l<? super FocusModifier, Boolean> lVar) {
        FocusModifier focusModifierI;
        MutableVector mutableVector = new MutableVector(new FocusModifier[focusModifier.c().n()], 0);
        mutableVector.c(mutableVector.n(), focusModifier.c());
        while (mutableVector.q() && (focusModifierI = i(mutableVector, FocusTraversalKt.e(focusModifier2), i10)) != null) {
            if (!focusModifierI.h().d()) {
                return lVar.invoke(focusModifierI).booleanValue();
            }
            if (j(focusModifierI, focusModifier2, i10, lVar)) {
                return true;
            }
            mutableVector.s(focusModifierI);
        }
        return false;
    }
}
