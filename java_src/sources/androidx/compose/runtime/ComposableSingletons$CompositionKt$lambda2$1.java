package androidx.compose.runtime;

import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: renamed from: androidx.compose.runtime.ComposableSingletons$CompositionKt$lambda-2$1, reason: invalid class name */
/* JADX INFO: loaded from: classes5.dex */
final class ComposableSingletons$CompositionKt$lambda2$1 extends v implements p<Composer, Integer, l0> {
    public static final ComposableSingletons$CompositionKt$lambda2$1 INSTANCE = new ComposableSingletons$CompositionKt$lambda2$1();

    ComposableSingletons$CompositionKt$lambda2$1() {
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
