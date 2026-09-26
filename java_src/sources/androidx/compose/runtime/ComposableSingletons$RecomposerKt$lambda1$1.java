package androidx.compose.runtime;

import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: renamed from: androidx.compose.runtime.ComposableSingletons$RecomposerKt$lambda-1$1, reason: invalid class name */
/* JADX INFO: loaded from: classes9.dex */
final class ComposableSingletons$RecomposerKt$lambda1$1 extends v implements p<Composer, Integer, l0> {
    public static final ComposableSingletons$RecomposerKt$lambda1$1 INSTANCE = new ComposableSingletons$RecomposerKt$lambda1$1();

    ComposableSingletons$RecomposerKt$lambda1$1() {
        super(2);
    }

    @Composable
    public final void a(@Nullable Composer composer, int i10) {
        if ((i10 & 11) == 2 && composer.b()) {
            composer.g();
        }
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
