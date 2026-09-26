package androidx.compose.ui.platform;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class WindowInfoKt {
    @Composable
    public static final void a(@NotNull e8.l<? super Boolean, w7.l0> onWindowFocusChanged, @Nullable Composer composer, int i10) {
        int i11;
        kotlin.jvm.internal.t.j(onWindowFocusChanged, "onWindowFocusChanged");
        Composer composerS = composer.s(127829799);
        if ((i10 & 14) == 0) {
            i11 = (composerS.k(onWindowFocusChanged) ? 4 : 2) | i10;
        } else {
            i11 = i10;
        }
        if ((i11 & 11) == 2 && composerS.b()) {
            composerS.g();
        } else {
            WindowInfo windowInfo = (WindowInfo) composerS.x(CompositionLocalsKt.o());
            State stateN = SnapshotStateKt.n(onWindowFocusChanged, composerS, i11 & 14);
            composerS.G(511388516);
            boolean zK = composerS.k(windowInfo) | composerS.k(stateN);
            Object objH = composerS.H();
            if (zK || objH == Composer.Companion.a()) {
                objH = new WindowInfoKt$WindowFocusObserver$1$1(windowInfo, stateN, null);
                composerS.z(objH);
            }
            composerS.Q();
            EffectsKt.d(windowInfo, (e8.p) objH, composerS, 0);
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new WindowInfoKt$WindowFocusObserver$2(onWindowFocusChanged, i10));
    }
}
