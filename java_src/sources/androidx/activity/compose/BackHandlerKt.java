package androidx.activity.compose;

import androidx.activity.OnBackPressedCallback;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.OnBackPressedDispatcherOwner;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.lifecycle.LifecycleOwner;
import e8.a;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public final class BackHandlerKt {
    @Composable
    public static final void a(final boolean z6, @NotNull a<l0> onBack, @Nullable Composer composer, int i10, int i11) {
        int i12;
        t.j(onBack, "onBack");
        Composer composerS = composer.s(-361453782);
        int i13 = i11 & 1;
        if (i13 != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.m(z6) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        if ((i11 & 2) != 0) {
            i12 |= 48;
        } else if ((i10 & 112) == 0) {
            i12 |= composerS.k(onBack) ? 32 : 16;
        }
        if ((i12 & 91) == 18 && composerS.b()) {
            composerS.g();
        } else {
            if (i13 != 0) {
                z6 = true;
            }
            final State stateN = SnapshotStateKt.n(onBack, composerS, (i12 >> 3) & 14);
            composerS.G(-3687241);
            Object objH = composerS.H();
            Composer.Companion companion = Composer.Companion;
            if (objH == companion.a()) {
                objH = new OnBackPressedCallback(z6) { // from class: androidx.activity.compose.BackHandlerKt$BackHandler$backCallback$1$1
                    @Override // androidx.activity.OnBackPressedCallback
                    public void e() {
                        BackHandlerKt.b(stateN).invoke();
                    }
                };
                composerS.z(objH);
            }
            composerS.Q();
            BackHandlerKt$BackHandler$backCallback$1$1 backHandlerKt$BackHandler$backCallback$1$1 = (BackHandlerKt$BackHandler$backCallback$1$1) objH;
            Boolean boolValueOf = Boolean.valueOf(z6);
            composerS.G(-3686552);
            boolean zK = composerS.k(boolValueOf) | composerS.k(backHandlerKt$BackHandler$backCallback$1$1);
            Object objH2 = composerS.H();
            if (zK || objH2 == companion.a()) {
                objH2 = new BackHandlerKt$BackHandler$1$1(backHandlerKt$BackHandler$backCallback$1$1, z6);
                composerS.z(objH2);
            }
            composerS.Q();
            EffectsKt.h((a) objH2, composerS, 0);
            OnBackPressedDispatcherOwner onBackPressedDispatcherOwnerA = LocalOnBackPressedDispatcherOwner.INSTANCE.a(composerS, 6);
            if (onBackPressedDispatcherOwnerA == null) {
                throw new IllegalStateException("No OnBackPressedDispatcherOwner was provided via LocalOnBackPressedDispatcherOwner".toString());
            }
            OnBackPressedDispatcher onBackPressedDispatcher = onBackPressedDispatcherOwnerA.getOnBackPressedDispatcher();
            LifecycleOwner lifecycleOwner = (LifecycleOwner) composerS.x(AndroidCompositionLocals_androidKt.i());
            EffectsKt.b(lifecycleOwner, onBackPressedDispatcher, new BackHandlerKt$BackHandler$2(onBackPressedDispatcher, lifecycleOwner, backHandlerKt$BackHandler$backCallback$1$1), composerS, 72);
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new BackHandlerKt$BackHandler$3(z6, onBack, i10, i11));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final a<l0> b(State<? extends a<l0>> state) {
        return state.getValue();
    }
}
