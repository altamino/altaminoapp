package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: renamed from: androidx.compose.material.ComposableSingletons$BackdropScaffoldKt$lambda-1$1, reason: invalid class name */
/* JADX INFO: loaded from: classes11.dex */
final class ComposableSingletons$BackdropScaffoldKt$lambda1$1 extends v implements q<SnackbarHostState, Composer, Integer, l0> {
    public static final ComposableSingletons$BackdropScaffoldKt$lambda1$1 INSTANCE = new ComposableSingletons$BackdropScaffoldKt$lambda1$1();

    ComposableSingletons$BackdropScaffoldKt$lambda1$1() {
        super(3);
    }

    @ComposableTarget
    @Composable
    public final void a(@NotNull SnackbarHostState it, @Nullable Composer composer, int i10) {
        t.j(it, "it");
        if ((i10 & 14) == 0) {
            i10 |= composer.k(it) ? 4 : 2;
        }
        if ((i10 & 91) == 18 && composer.b()) {
            composer.g();
        } else {
            SnackbarHostKt.b(it, null, null, composer, i10 & 14, 6);
        }
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ l0 invoke(SnackbarHostState snackbarHostState, Composer composer, Integer num) {
        a(snackbarHostState, composer, num.intValue());
        return l0.INSTANCE;
    }
}
