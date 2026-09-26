package androidx.compose.ui.platform;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: renamed from: androidx.compose.ui.platform.ComposableSingletons$Wrapper_androidKt$lambda-1$1, reason: invalid class name */
/* JADX INFO: loaded from: classes9.dex */
final class ComposableSingletons$Wrapper_androidKt$lambda1$1 extends kotlin.jvm.internal.v implements e8.p<Composer, Integer, w7.l0> {
    public static final ComposableSingletons$Wrapper_androidKt$lambda1$1 INSTANCE = new ComposableSingletons$Wrapper_androidKt$lambda1$1();

    ComposableSingletons$Wrapper_androidKt$lambda1$1() {
        super(2);
    }

    @Composable
    public final void a(@Nullable Composer composer, int i10) {
        if ((i10 & 11) == 2 && composer.b()) {
            composer.g();
        }
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ w7.l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return w7.l0.INSTANCE;
    }
}
