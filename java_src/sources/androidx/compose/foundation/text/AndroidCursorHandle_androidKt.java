package androidx.compose.foundation.text;

import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.text.selection.AndroidSelectionHandles_androidKt;
import androidx.compose.foundation.text.selection.HandleReferencePoint;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.Dp;
import e8.p;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
public final class AndroidCursorHandle_androidKt {
    private static final float CursorHandleHeight;
    private static final float CursorHandleWidth;
    private static final float Sqrt2 = 1.4142135f;

    static {
        float f = Dp.f(25);
        CursorHandleHeight = f;
        CursorHandleWidth = Dp.f(Dp.f(f * 2.0f) / 2.4142137f);
    }

    @Composable
    @ComposableInferredTarget
    public static final void a(long j6, @NotNull Modifier modifier, @Nullable p<? super Composer, ? super Integer, l0> pVar, @Nullable Composer composer, int i10) {
        int i11;
        t.j(modifier, "modifier");
        Composer composerS = composer.s(-5185995);
        if ((i10 & 14) == 0) {
            i11 = (composerS.q(j6) ? 4 : 2) | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            i11 |= composerS.k(modifier) ? 32 : 16;
        }
        if ((i10 & 896) == 0) {
            i11 |= composerS.k(pVar) ? 256 : 128;
        }
        if ((i11 & 731) == 146 && composerS.b()) {
            composerS.g();
        } else {
            AndroidSelectionHandles_androidKt.b(j6, HandleReferencePoint.TopMiddle, ComposableLambdaKt.b(composerS, -1458480226, true, new AndroidCursorHandle_androidKt$CursorHandle$1(pVar, modifier, i11)), composerS, (i11 & 14) | 432);
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new AndroidCursorHandle_androidKt$CursorHandle$2(j6, modifier, pVar, i10));
    }

    @ComposableTarget
    @Composable
    public static final void b(@NotNull Modifier modifier, @Nullable Composer composer, int i10) {
        int i11;
        t.j(modifier, "modifier");
        Composer composerS = composer.s(694251107);
        if ((i10 & 14) == 0) {
            i11 = (composerS.k(modifier) ? 4 : 2) | i10;
        } else {
            i11 = i10;
        }
        if ((i11 & 11) == 2 && composerS.b()) {
            composerS.g();
        } else {
            SpacerKt.a(c(SizeKt.A(modifier, CursorHandleWidth, CursorHandleHeight)), composerS, 0);
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new AndroidCursorHandle_androidKt$DefaultCursorHandle$1(modifier, i10));
    }

    @NotNull
    public static final Modifier c(@NotNull Modifier modifier) {
        t.j(modifier, "<this>");
        return ComposedModifierKt.d(modifier, null, AndroidCursorHandle_androidKt$drawCursorHandle$1.INSTANCE, 1, null);
    }
}
