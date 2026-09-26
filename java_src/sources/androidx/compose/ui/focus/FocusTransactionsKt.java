package androidx.compose.ui.focus;

import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeWrapper;
import androidx.compose.ui.node.Owner;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.s;

/* JADX INFO: loaded from: classes7.dex */
public final class FocusTransactionsKt {

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[FocusStateImpl.values().length];
            iArr[FocusStateImpl.Active.ordinal()] = 1;
            iArr[FocusStateImpl.Captured.ordinal()] = 2;
            iArr[FocusStateImpl.Deactivated.ordinal()] = 3;
            iArr[FocusStateImpl.DeactivatedParent.ordinal()] = 4;
            iArr[FocusStateImpl.ActiveParent.ordinal()] = 5;
            iArr[FocusStateImpl.Inactive.ordinal()] = 6;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final void a(@NotNull FocusModifier focusModifier) {
        t.j(focusModifier, "<this>");
        int i10 = WhenMappings.$EnumSwitchMapping$0[focusModifier.h().ordinal()];
        if (i10 == 3) {
            focusModifier.s(FocusStateImpl.Inactive);
        } else {
            if (i10 != 4) {
                return;
            }
            focusModifier.s(FocusStateImpl.ActiveParent);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static final boolean c(@NotNull FocusModifier focusModifier, boolean z6) {
        t.j(focusModifier, "<this>");
        switch (WhenMappings.$EnumSwitchMapping$0[focusModifier.h().ordinal()]) {
            case 1:
                focusModifier.s(FocusStateImpl.Inactive);
                return true;
            case 2:
                if (!z6) {
                    return z6;
                }
                focusModifier.s(FocusStateImpl.Inactive);
                return z6;
            case 3:
            case 6:
                return true;
            case 4:
                if (b(focusModifier)) {
                    focusModifier.s(FocusStateImpl.Deactivated);
                    return true;
                }
                return false;
            case 5:
                if (b(focusModifier)) {
                    focusModifier.s(FocusStateImpl.Inactive);
                    return true;
                }
                return false;
            default:
                throw new s();
        }
    }

    public static /* synthetic */ boolean d(FocusModifier focusModifier, boolean z6, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z6 = false;
        }
        return c(focusModifier, z6);
    }

    public static final void e(@NotNull FocusModifier focusModifier) {
        LayoutNode layoutNodeX1;
        Owner ownerS0;
        FocusManager focusManager;
        t.j(focusModifier, "<this>");
        int i10 = WhenMappings.$EnumSwitchMapping$0[focusModifier.h().ordinal()];
        if (i10 != 1 && i10 != 2) {
            if (i10 == 5) {
                focusModifier.s(FocusStateImpl.DeactivatedParent);
                return;
            } else {
                if (i10 != 6) {
                    return;
                }
                focusModifier.s(FocusStateImpl.Deactivated);
                return;
            }
        }
        LayoutNodeWrapper layoutNodeWrapperL = focusModifier.l();
        if (layoutNodeWrapperL != null && (layoutNodeX1 = layoutNodeWrapperL.x1()) != null && (ownerS0 = layoutNodeX1.s0()) != null && (focusManager = ownerS0.getFocusManager()) != null) {
            focusManager.b(true);
        }
        focusModifier.s(FocusStateImpl.Deactivated);
    }

    public static final void h(@NotNull FocusModifier focusModifier) {
        LayoutNode layoutNodeX1;
        t.j(focusModifier, "<this>");
        LayoutNodeWrapper layoutNodeWrapperL = focusModifier.l();
        if (((layoutNodeWrapperL == null || (layoutNodeX1 = layoutNodeWrapperL.x1()) == null) ? null : layoutNodeX1.s0()) == null) {
            focusModifier.q(true);
        }
        switch (WhenMappings.$EnumSwitchMapping$0[focusModifier.h().ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
                k(focusModifier);
                break;
            case 5:
                if (b(focusModifier)) {
                    f(focusModifier);
                }
                break;
            case 6:
                FocusModifier focusModifierN = focusModifier.n();
                if (focusModifierN != null) {
                    i(focusModifierN, focusModifier);
                } else if (j(focusModifier)) {
                    f(focusModifier);
                }
                break;
        }
    }

    public static final void k(@NotNull FocusModifier focusModifier) {
        t.j(focusModifier, "<this>");
        FocusEventModifierLocal focusEventModifierLocalD = focusModifier.d();
        if (focusEventModifierLocalD != null) {
            focusEventModifierLocalD.f();
        }
    }

    private static final boolean b(FocusModifier focusModifier) {
        FocusModifier focusModifierI = focusModifier.i();
        if (focusModifierI != null) {
            if (!d(focusModifierI, false, 1, null)) {
                return false;
            }
            focusModifier.t(null);
            return true;
        }
        throw new IllegalArgumentException("Required value was null.".toString());
    }

    private static final void f(FocusModifier focusModifier) {
        FocusStateImpl focusStateImpl;
        switch (WhenMappings.$EnumSwitchMapping$0[focusModifier.h().ordinal()]) {
            case 1:
            case 5:
            case 6:
                focusStateImpl = FocusStateImpl.Active;
                break;
            case 2:
                focusStateImpl = FocusStateImpl.Captured;
                break;
            case 3:
            case 4:
                throw new IllegalStateException("Granting focus to a deactivated node.".toString());
            default:
                throw new s();
        }
        focusModifier.s(focusStateImpl);
    }

    private static final boolean g(FocusModifier focusModifier, FocusModifier focusModifier2) {
        focusModifier.t(focusModifier2);
        f(focusModifier2);
        return true;
    }

    private static final boolean i(FocusModifier focusModifier, FocusModifier focusModifier2) {
        if (focusModifier.c().i(focusModifier2)) {
            switch (WhenMappings.$EnumSwitchMapping$0[focusModifier.h().ordinal()]) {
                case 1:
                    focusModifier.s(FocusStateImpl.ActiveParent);
                    return g(focusModifier, focusModifier2);
                case 2:
                    return false;
                case 3:
                    a(focusModifier);
                    boolean zI = i(focusModifier, focusModifier2);
                    e(focusModifier);
                    return zI;
                case 4:
                    if (focusModifier.i() == null) {
                        return g(focusModifier, focusModifier2);
                    }
                    if (!b(focusModifier)) {
                        return false;
                    }
                    return g(focusModifier, focusModifier2);
                case 5:
                    if (!b(focusModifier)) {
                        return false;
                    }
                    return g(focusModifier, focusModifier2);
                case 6:
                    FocusModifier focusModifierN = focusModifier.n();
                    if (focusModifierN == null && j(focusModifier)) {
                        focusModifier.s(FocusStateImpl.Active);
                        return i(focusModifier, focusModifier2);
                    }
                    if (focusModifierN == null || !i(focusModifierN, focusModifier)) {
                        return false;
                    }
                    return i(focusModifier, focusModifier2);
                default:
                    throw new s();
            }
        }
        throw new IllegalStateException("Non child node cannot request focus.".toString());
    }

    private static final boolean j(FocusModifier focusModifier) {
        LayoutNode layoutNodeX1;
        Owner ownerS0;
        LayoutNodeWrapper layoutNodeWrapperL = focusModifier.l();
        if (layoutNodeWrapperL != null && (layoutNodeX1 = layoutNodeWrapperL.x1()) != null && (ownerS0 = layoutNodeX1.s0()) != null) {
            return ownerS0.requestFocus();
        }
        throw new IllegalStateException("Owner not initialized.".toString());
    }
}
