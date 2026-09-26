package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.text.ContextMenu_androidKt;
import androidx.compose.foundation.text.TouchMode_androidKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.platform.ClipboardManager;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.TextToolbar;
import e8.l;
import e8.p;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
public final class SelectionContainerKt {
    @Composable
    @ComposableInferredTarget
    public static final void b(@Nullable Modifier modifier, @Nullable Selection selection, @NotNull l<? super Selection, l0> onSelectionChange, @NotNull p<? super Composer, ? super Integer, l0> children, @Nullable Composer composer, int i10, int i11) {
        int i12;
        Modifier modifier2;
        t.j(onSelectionChange, "onSelectionChange");
        t.j(children, "children");
        Composer composerS = composer.s(2078139907);
        int i13 = i11 & 1;
        if (i13 != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.k(modifier) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        if ((i11 & 2) != 0) {
            i12 |= 48;
        } else if ((i10 & 112) == 0) {
            i12 |= composerS.k(selection) ? 32 : 16;
        }
        if ((i11 & 4) != 0) {
            i12 |= 384;
        } else if ((i10 & 896) == 0) {
            i12 |= composerS.k(onSelectionChange) ? 256 : 128;
        }
        if ((i11 & 8) != 0) {
            i12 |= 3072;
        } else if ((i10 & 7168) == 0) {
            i12 |= composerS.k(children) ? 2048 : 1024;
        }
        int i14 = i12;
        if ((i14 & 5851) == 1170 && composerS.b()) {
            composerS.g();
            modifier2 = modifier;
        } else {
            modifier2 = i13 != 0 ? Modifier.Companion : modifier;
            composerS.G(-492369756);
            Object objH = composerS.H();
            Composer.Companion companion = Composer.Companion;
            if (objH == companion.a()) {
                objH = new SelectionRegistrarImpl();
                composerS.z(objH);
            }
            composerS.Q();
            SelectionRegistrarImpl selectionRegistrarImpl = (SelectionRegistrarImpl) objH;
            composerS.G(-492369756);
            Object objH2 = composerS.H();
            if (objH2 == companion.a()) {
                objH2 = new SelectionManager(selectionRegistrarImpl);
                composerS.z(objH2);
            }
            composerS.Q();
            SelectionManager selectionManager = (SelectionManager) objH2;
            selectionManager.S((HapticFeedback) composerS.x(CompositionLocalsKt.h()));
            selectionManager.L((ClipboardManager) composerS.x(CompositionLocalsKt.d()));
            selectionManager.X((TextToolbar) composerS.x(CompositionLocalsKt.m()));
            selectionManager.U(onSelectionChange);
            selectionManager.V(selection);
            selectionManager.Y(TouchMode_androidKt.a());
            ContextMenu_androidKt.a(selectionManager, ComposableLambdaKt.b(composerS, -123806316, true, new SelectionContainerKt$SelectionContainer$3(selectionRegistrarImpl, modifier2, selectionManager, children, i14)), composerS, 56);
            EffectsKt.a(selectionManager, new SelectionContainerKt$SelectionContainer$4(selectionManager), composerS, 8);
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new SelectionContainerKt$SelectionContainer$5(modifier2, selection, onSelectionChange, children, i10, i11));
    }

    @Composable
    @ComposableInferredTarget
    public static final void a(@NotNull p<? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10) {
        int i11;
        t.j(content, "content");
        Composer composerS = composer.s(336063542);
        if ((i10 & 14) == 0) {
            i11 = (composerS.k(content) ? 4 : 2) | i10;
        } else {
            i11 = i10;
        }
        if ((i11 & 11) == 2 && composerS.b()) {
            composerS.g();
        } else {
            CompositionLocalKt.b(new ProvidedValue[]{SelectionRegistrarKt.a().c(null)}, content, composerS, ((i11 << 3) & 112) | 8);
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new SelectionContainerKt$DisableSelection$1(content, i10));
    }

    @Composable
    @ComposableInferredTarget
    public static final void c(@Nullable Modifier modifier, @NotNull p<? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10, int i11) {
        int i12;
        t.j(content, "content");
        Composer composerS = composer.s(-1075498320);
        int i13 = i11 & 1;
        if (i13 != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.k(modifier) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        if ((i11 & 2) != 0) {
            i12 |= 48;
        } else if ((i10 & 112) == 0) {
            i12 |= composerS.k(content) ? 32 : 16;
        }
        if ((i12 & 91) == 18 && composerS.b()) {
            composerS.g();
        } else {
            if (i13 != 0) {
                modifier = Modifier.Companion;
            }
            composerS.G(-492369756);
            Object objH = composerS.H();
            Composer.Companion companion = Composer.Companion;
            if (objH == companion.a()) {
                objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                composerS.z(objH);
            }
            composerS.Q();
            MutableState mutableState = (MutableState) objH;
            Selection selectionD = d(mutableState);
            composerS.G(1157296644);
            boolean zK = composerS.k(mutableState);
            Object objH2 = composerS.H();
            if (zK || objH2 == companion.a()) {
                objH2 = new SelectionContainerKt$SelectionContainer$1$1(mutableState);
                composerS.z(objH2);
            }
            composerS.Q();
            b(modifier, selectionD, (l) objH2, content, composerS, (i12 & 14) | ((i12 << 6) & 7168), 0);
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new SelectionContainerKt$SelectionContainer$2(modifier, content, i10, i11));
    }

    private static final Selection d(MutableState<Selection> mutableState) {
        return mutableState.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(MutableState<Selection> mutableState, Selection selection) {
        mutableState.setValue(selection);
    }
}
