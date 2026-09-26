package androidx.compose.foundation.text;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
final class AndroidCursorHandle_androidKt$CursorHandle$1 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ p<Composer, Integer, l0> $content;
    final /* synthetic */ Modifier $modifier;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    AndroidCursorHandle_androidKt$CursorHandle$1(p<? super Composer, ? super Integer, l0> pVar, Modifier modifier, int i10) {
        super(2);
        this.$content = pVar;
        this.$modifier = modifier;
        this.$$dirty = i10;
    }

    @ComposableTarget
    @Composable
    public final void a(@Nullable Composer composer, int i10) {
        if ((i10 & 11) == 2 && composer.b()) {
            composer.g();
            return;
        }
        if (this.$content == null) {
            composer.G(1275643833);
            AndroidCursorHandle_androidKt.b(this.$modifier, composer, (this.$$dirty >> 3) & 14);
            composer.Q();
        } else {
            composer.G(1275643903);
            this.$content.invoke(composer, Integer.valueOf((this.$$dirty >> 6) & 14));
            composer.Q();
        }
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
