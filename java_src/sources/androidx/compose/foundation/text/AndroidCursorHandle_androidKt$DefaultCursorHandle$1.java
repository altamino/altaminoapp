package androidx.compose.foundation.text;

import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
final class AndroidCursorHandle_androidKt$DefaultCursorHandle$1 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ Modifier $modifier;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AndroidCursorHandle_androidKt$DefaultCursorHandle$1(Modifier modifier, int i10) {
        super(2);
        this.$modifier = modifier;
        this.$$changed = i10;
    }

    public final void a(@Nullable Composer composer, int i10) {
        AndroidCursorHandle_androidKt.b(this.$modifier, composer, this.$$changed | 1);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
