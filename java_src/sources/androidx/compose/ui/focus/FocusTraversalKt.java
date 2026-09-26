package androidx.compose.ui.focus;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.input.key.KeyInputModifier;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeWrapper;
import androidx.compose.ui.unit.LayoutDirection;
import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.s;

/* JADX INFO: loaded from: classes9.dex */
public final class FocusTraversalKt {

    @NotNull
    private static final String invalidFocusDirection = "Invalid FocusDirection";

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[LayoutDirection.values().length];
            iArr[LayoutDirection.Rtl.ordinal()] = 1;
            iArr[LayoutDirection.Ltr.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[FocusStateImpl.values().length];
            iArr2[FocusStateImpl.Active.ordinal()] = 1;
            iArr2[FocusStateImpl.Captured.ordinal()] = 2;
            iArr2[FocusStateImpl.ActiveParent.ordinal()] = 3;
            iArr2[FocusStateImpl.DeactivatedParent.ordinal()] = 4;
            iArr2[FocusStateImpl.Inactive.ordinal()] = 5;
            iArr2[FocusStateImpl.Deactivated.ordinal()] = 6;
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    @NotNull
    public static final MutableVector<FocusModifier> a(@NotNull FocusModifier focusModifier) {
        t.j(focusModifier, "<this>");
        MutableVector<FocusModifier> mutableVectorC = focusModifier.c();
        int iN = mutableVectorC.n();
        if (iN > 0) {
            FocusModifier[] focusModifierArrM = mutableVectorC.m();
            int i10 = 0;
            int i11 = 0;
            while (!focusModifierArrM[i11].h().d()) {
                i11++;
                if (i11 >= iN) {
                }
            }
            MutableVector<FocusModifier> mutableVector = new MutableVector<>(new FocusModifier[16], 0);
            MutableVector<FocusModifier> mutableVectorC2 = focusModifier.c();
            int iN2 = mutableVectorC2.n();
            if (iN2 > 0) {
                FocusModifier[] focusModifierArrM2 = mutableVectorC2.m();
                do {
                    FocusModifier focusModifier2 = focusModifierArrM2[i10];
                    if (focusModifier2.h().d()) {
                        mutableVector.c(mutableVector.n(), a(focusModifier2));
                    } else {
                        mutableVector.b(focusModifier2);
                    }
                    i10++;
                } while (i10 < iN2);
            }
            return mutableVector;
        }
        return focusModifier.c();
    }

    @Nullable
    public static final FocusModifier b(@NotNull FocusModifier focusModifier) {
        t.j(focusModifier, "<this>");
        switch (WhenMappings.$EnumSwitchMapping$1[focusModifier.h().ordinal()]) {
            case 1:
            case 2:
                return focusModifier;
            case 3:
            case 4:
                FocusModifier focusModifierI = focusModifier.i();
                if (focusModifierI != null) {
                    return b(focusModifierI);
                }
                break;
            case 5:
            case 6:
                break;
            default:
                throw new s();
        }
        return null;
    }

    @Nullable
    public static final FocusModifier c(@NotNull FocusModifier focusModifier) {
        t.j(focusModifier, "<this>");
        FocusModifier focusModifierN = focusModifier.n();
        if (focusModifierN == null) {
            return null;
        }
        switch (WhenMappings.$EnumSwitchMapping$1[focusModifier.h().ordinal()]) {
            case 1:
            case 2:
            case 4:
            case 5:
            case 6:
                return c(focusModifierN);
            case 3:
                return focusModifier;
            default:
                throw new s();
        }
    }

    @Nullable
    public static final KeyInputModifier d(@NotNull FocusModifier focusModifier) {
        LayoutNode layoutNodeX1;
        t.j(focusModifier, "<this>");
        LayoutNodeWrapper layoutNodeWrapperL = focusModifier.l();
        KeyInputModifier keyInputModifierH = null;
        if (layoutNodeWrapperL == null || (layoutNodeX1 = layoutNodeWrapperL.x1()) == null) {
            return null;
        }
        MutableVector<KeyInputModifier> mutableVectorJ = focusModifier.j();
        int iN = mutableVectorJ.n();
        if (iN > 0) {
            KeyInputModifier[] keyInputModifierArrM = mutableVectorJ.m();
            int i10 = 0;
            do {
                KeyInputModifier keyInputModifier = keyInputModifierArrM[i10];
                if (t.e(keyInputModifier.a(), layoutNodeX1)) {
                    keyInputModifierH = h(keyInputModifier, keyInputModifierH);
                }
                i10++;
            } while (i10 < iN);
        }
        return keyInputModifierH != null ? keyInputModifierH : focusModifier.k();
    }

    @NotNull
    public static final Rect e(@NotNull FocusModifier focusModifier) {
        Rect rectR;
        t.j(focusModifier, "<this>");
        LayoutNodeWrapper layoutNodeWrapperL = focusModifier.l();
        return (layoutNodeWrapperL == null || (rectR = LayoutCoordinatesKt.d(layoutNodeWrapperL).r(layoutNodeWrapperL, false)) == null) ? Rect.Companion.a() : rectR;
    }

    public static final boolean f(@NotNull FocusModifier focusSearch, int i10, @NotNull LayoutDirection layoutDirection, @NotNull l<? super FocusModifier, Boolean> onFound) {
        int iC;
        t.j(focusSearch, "$this$focusSearch");
        t.j(layoutDirection, "layoutDirection");
        t.j(onFound, "onFound");
        FocusDirection.Companion companion = FocusDirection.Companion;
        if (FocusDirection.l(i10, companion.d()) || FocusDirection.l(i10, companion.f())) {
            return OneDimensionalFocusSearchKt.f(focusSearch, i10, onFound);
        }
        if (FocusDirection.l(i10, companion.c()) || FocusDirection.l(i10, companion.g()) || FocusDirection.l(i10, companion.h()) || FocusDirection.l(i10, companion.a())) {
            return TwoDimensionalFocusSearchKt.r(focusSearch, i10, onFound);
        }
        if (FocusDirection.l(i10, companion.b())) {
            int i11 = WhenMappings.$EnumSwitchMapping$0[layoutDirection.ordinal()];
            if (i11 == 1) {
                iC = companion.c();
            } else {
                if (i11 != 2) {
                    throw new s();
                }
                iC = companion.g();
            }
            FocusModifier focusModifierB = b(focusSearch);
            if (focusModifierB != null) {
                return TwoDimensionalFocusSearchKt.r(focusModifierB, iC, onFound);
            }
        } else {
            if (!FocusDirection.l(i10, companion.e())) {
                throw new IllegalStateException(invalidFocusDirection.toString());
            }
            FocusModifier focusModifierB2 = b(focusSearch);
            FocusModifier focusModifierC = focusModifierB2 != null ? c(focusModifierB2) : null;
            if (!t.e(focusModifierC, focusSearch) && focusModifierC != null) {
                return onFound.invoke(focusModifierC).booleanValue();
            }
        }
        return false;
    }

    public static final boolean g(@NotNull FocusModifier focusModifier) {
        LayoutNode layoutNodeX1;
        LayoutNodeWrapper layoutNodeWrapperL;
        LayoutNode layoutNodeX2;
        t.j(focusModifier, "<this>");
        LayoutNodeWrapper layoutNodeWrapperL2 = focusModifier.l();
        return (layoutNodeWrapperL2 == null || (layoutNodeX1 = layoutNodeWrapperL2.x1()) == null || !layoutNodeX1.i() || (layoutNodeWrapperL = focusModifier.l()) == null || (layoutNodeX2 = layoutNodeWrapperL.x1()) == null || !layoutNodeX2.K0()) ? false : true;
    }

    private static final KeyInputModifier h(KeyInputModifier keyInputModifier, KeyInputModifier keyInputModifier2) {
        if (keyInputModifier2 == null) {
            return keyInputModifier;
        }
        LayoutNode layoutNodeA = keyInputModifier.a();
        KeyInputModifier keyInputModifierB = keyInputModifier2;
        while (!t.e(keyInputModifierB, keyInputModifier)) {
            keyInputModifierB = keyInputModifierB.b();
            if (keyInputModifierB == null || !t.e(keyInputModifierB.a(), layoutNodeA)) {
                return keyInputModifier;
            }
        }
        return keyInputModifier2;
    }
}
