package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import e8.p;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes3.dex */
public final class MaterialTheme_androidKt {
    @Composable
    @ComposableInferredTarget
    public static final void a(@NotNull p<? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10) {
        int i11;
        t.j(content, "content");
        Composer composerS = composer.s(-1322912246);
        if ((i10 & 14) == 0) {
            i11 = (composerS.k(content) ? 4 : 2) | i10;
        } else {
            i11 = i10;
        }
        if ((i11 & 11) == 2 && composerS.b()) {
            composerS.g();
        } else {
            content.invoke(composerS, Integer.valueOf(i11 & 14));
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new MaterialTheme_androidKt$PlatformMaterialTheme$1(content, i10));
    }
}
