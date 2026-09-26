package androidx.compose.ui.focus;

import androidx.compose.runtime.collection.MutableVector;
import w7.s;

/* JADX INFO: loaded from: classes2.dex */
public final class FocusManagerKt {

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[FocusStateImpl.values().length];
            iArr[FocusStateImpl.Active.ordinal()] = 1;
            iArr[FocusStateImpl.Captured.ordinal()] = 2;
            iArr[FocusStateImpl.ActiveParent.ordinal()] = 3;
            iArr[FocusStateImpl.DeactivatedParent.ordinal()] = 4;
            iArr[FocusStateImpl.Deactivated.ordinal()] = 5;
            iArr[FocusStateImpl.Inactive.ordinal()] = 6;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final FocusModifier c(FocusModifier focusModifier) {
        FocusModifier focusModifierC;
        switch (WhenMappings.$EnumSwitchMapping$0[focusModifier.h().ordinal()]) {
            case 1:
            case 2:
                return focusModifier;
            case 3:
            case 4:
                FocusModifier focusModifierI = focusModifier.i();
                if (focusModifierI == null || (focusModifierC = c(focusModifierI)) == null) {
                    throw new IllegalStateException("no child".toString());
                }
                return focusModifierC;
            case 5:
            case 6:
                return null;
            default:
                throw new s();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(FocusModifier focusModifier) {
        FocusPropertiesKt.d(focusModifier);
        MutableVector<FocusModifier> mutableVectorC = focusModifier.c();
        int iN = mutableVectorC.n();
        if (iN > 0) {
            FocusModifier[] focusModifierArrM = mutableVectorC.m();
            int i10 = 0;
            do {
                d(focusModifierArrM[i10]);
                i10++;
            } while (i10 < iN);
        }
    }
}
