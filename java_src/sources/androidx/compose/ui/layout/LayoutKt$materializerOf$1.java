package androidx.compose.ui.layout;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class LayoutKt$materializerOf$1 extends v implements q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> {
    final /* synthetic */ Modifier $modifier;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LayoutKt$materializerOf$1(Modifier modifier) {
        super(3);
        this.$modifier = modifier;
    }

    @Composable
    public final void a(@NotNull Composer composer, @Nullable Composer composer2, int i10) {
        t.j(composer, "$this$null");
        Modifier modifierE = ComposedModifierKt.e(composer2, this.$modifier);
        composer.G(509942095);
        Updater.e(Updater.a(composer), modifierE, ComposeUiNode.Companion.e());
        composer.Q();
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ l0 invoke(SkippableUpdater<ComposeUiNode> skippableUpdater, Composer composer, Integer num) {
        a(skippableUpdater.f(), composer, num.intValue());
        return l0.INSTANCE;
    }
}
