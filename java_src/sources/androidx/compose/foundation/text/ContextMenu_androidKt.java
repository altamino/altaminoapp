package androidx.compose.foundation.text;

import androidx.compose.foundation.text.selection.SelectionManager;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import e8.p;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
public final class ContextMenu_androidKt {
    @Composable
    @ComposableInferredTarget
    public static final void a(@NotNull SelectionManager manager, @NotNull p<? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10) {
        int i11;
        t.j(manager, "manager");
        t.j(content, "content");
        Composer composerS = composer.s(605522716);
        if ((i10 & 112) == 0) {
            i11 = (composerS.k(content) ? 32 : 16) | i10;
        } else {
            i11 = i10;
        }
        if ((i11 & 81) == 16 && composerS.b()) {
            composerS.g();
        } else {
            content.invoke(composerS, Integer.valueOf((i11 >> 3) & 14));
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new ContextMenu_androidKt$ContextMenuArea$2(manager, content, i10));
    }

    @Composable
    @ComposableInferredTarget
    public static final void b(@NotNull TextFieldSelectionManager manager, @NotNull p<? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10) {
        int i11;
        t.j(manager, "manager");
        t.j(content, "content");
        Composer composerS = composer.s(-1985516685);
        if ((i10 & 112) == 0) {
            i11 = (composerS.k(content) ? 32 : 16) | i10;
        } else {
            i11 = i10;
        }
        if ((i11 & 81) == 16 && composerS.b()) {
            composerS.g();
        } else {
            content.invoke(composerS, Integer.valueOf((i11 >> 3) & 14));
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new ContextMenu_androidKt$ContextMenuArea$1(manager, content, i10));
    }
}
