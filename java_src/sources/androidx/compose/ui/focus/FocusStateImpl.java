package androidx.compose.ui.focus;

import w7.s;

/* JADX INFO: loaded from: classes5.dex */
public enum FocusStateImpl implements FocusState {
    Active,
    ActiveParent,
    Captured,
    Deactivated,
    DeactivatedParent,
    Inactive;

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[FocusStateImpl.values().length];
            iArr[FocusStateImpl.Captured.ordinal()] = 1;
            iArr[FocusStateImpl.Active.ordinal()] = 2;
            iArr[FocusStateImpl.ActiveParent.ordinal()] = 3;
            iArr[FocusStateImpl.Deactivated.ordinal()] = 4;
            iArr[FocusStateImpl.DeactivatedParent.ordinal()] = 5;
            iArr[FocusStateImpl.Inactive.ordinal()] = 6;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Override // androidx.compose.ui.focus.FocusState
    public boolean a() {
        switch (WhenMappings.$EnumSwitchMapping$0[ordinal()]) {
            case 1:
            case 2:
                return true;
            case 3:
            case 4:
            case 5:
            case 6:
                return false;
            default:
                throw new s();
        }
    }

    public boolean c() {
        switch (WhenMappings.$EnumSwitchMapping$0[ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 5:
                return true;
            case 4:
            case 6:
                return false;
            default:
                throw new s();
        }
    }

    public final boolean d() {
        switch (WhenMappings.$EnumSwitchMapping$0[ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 6:
                return false;
            case 4:
            case 5:
                return true;
            default:
                throw new s();
        }
    }
}
