package androidx.compose.foundation;

import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
public final class CanvasKt {
    @ComposableTarget
    @Composable
    public static final void a(@NotNull Modifier modifier, @NotNull l<? super DrawScope, l0> onDraw, @Nullable Composer composer, int i10) {
        int i11;
        t.j(modifier, "modifier");
        t.j(onDraw, "onDraw");
        Composer composerS = composer.s(-932836462);
        if ((i10 & 14) == 0) {
            i11 = (composerS.k(modifier) ? 4 : 2) | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            i11 |= composerS.k(onDraw) ? 32 : 16;
        }
        if ((i11 & 91) == 18 && composerS.b()) {
            composerS.g();
        } else {
            SpacerKt.a(DrawModifierKt.a(modifier, onDraw), composerS, 0);
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new CanvasKt$Canvas$1(modifier, onDraw, i10));
    }

    @ComposableTarget
    @Composable
    @ExperimentalFoundationApi
    public static final void b(@NotNull Modifier modifier, @NotNull String contentDescription, @NotNull l<? super DrawScope, l0> onDraw, @Nullable Composer composer, int i10) {
        int i11;
        t.j(modifier, "modifier");
        t.j(contentDescription, "contentDescription");
        t.j(onDraw, "onDraw");
        Composer composerS = composer.s(-1162737955);
        if ((i10 & 14) == 0) {
            i11 = (composerS.k(modifier) ? 4 : 2) | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            i11 |= composerS.k(contentDescription) ? 32 : 16;
        }
        if ((i10 & 896) == 0) {
            i11 |= composerS.k(onDraw) ? 256 : 128;
        }
        if ((i11 & 731) == 146 && composerS.b()) {
            composerS.g();
        } else {
            Modifier modifierA = DrawModifierKt.a(modifier, onDraw);
            composerS.G(1157296644);
            boolean zK = composerS.k(contentDescription);
            Object objH = composerS.H();
            if (zK || objH == Composer.Companion.a()) {
                objH = new CanvasKt$Canvas$2$1(contentDescription);
                composerS.z(objH);
            }
            composerS.Q();
            SpacerKt.a(SemanticsModifierKt.c(modifierA, false, (l) objH, 1, null), composerS, 0);
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new CanvasKt$Canvas$3(modifier, contentDescription, onDraw, i10));
    }
}
