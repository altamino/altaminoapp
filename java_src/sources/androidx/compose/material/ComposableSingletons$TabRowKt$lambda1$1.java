package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: renamed from: androidx.compose.material.ComposableSingletons$TabRowKt$lambda-1$1, reason: invalid class name */
/* JADX INFO: loaded from: classes5.dex */
final class ComposableSingletons$TabRowKt$lambda1$1 extends v implements p<Composer, Integer, l0> {
    public static final ComposableSingletons$TabRowKt$lambda1$1 INSTANCE = new ComposableSingletons$TabRowKt$lambda1$1();

    ComposableSingletons$TabRowKt$lambda1$1() {
        super(2);
    }

    @ComposableTarget
    @Composable
    public final void a(@Nullable Composer composer, int i10) {
        if ((i10 & 11) == 2 && composer.b()) {
            composer.g();
        } else {
            TabRowDefaults.INSTANCE.a(null, 0.0f, 0L, composer, 3072, 7);
        }
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
