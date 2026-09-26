package androidx.compose.material;

import androidx.compose.foundation.layout.RowScope;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: renamed from: androidx.compose.material.ComposableSingletons$AppBarKt$lambda-1$1, reason: invalid class name */
/* JADX INFO: loaded from: classes5.dex */
final class ComposableSingletons$AppBarKt$lambda1$1 extends v implements q<RowScope, Composer, Integer, l0> {
    public static final ComposableSingletons$AppBarKt$lambda1$1 INSTANCE = new ComposableSingletons$AppBarKt$lambda1$1();

    ComposableSingletons$AppBarKt$lambda1$1() {
        super(3);
    }

    @Composable
    public final void a(@NotNull RowScope rowScope, @Nullable Composer composer, int i10) {
        t.j(rowScope, "$this$null");
        if ((i10 & 81) == 16 && composer.b()) {
            composer.g();
        }
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ l0 invoke(RowScope rowScope, Composer composer, Integer num) {
        a(rowScope, composer, num.intValue());
        return l0.INSTANCE;
    }
}
