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

/* JADX INFO: renamed from: androidx.compose.material.ComposableSingletons$SnackbarHostKt$lambda-1$1, reason: invalid class name */
/* JADX INFO: loaded from: classes7.dex */
final class ComposableSingletons$SnackbarHostKt$lambda1$1 extends v implements q<SnackbarData, Composer, Integer, l0> {
    public static final ComposableSingletons$SnackbarHostKt$lambda1$1 INSTANCE = new ComposableSingletons$SnackbarHostKt$lambda1$1();

    ComposableSingletons$SnackbarHostKt$lambda1$1() {
        super(3);
    }

    @ComposableTarget
    @Composable
    public final void a(@NotNull SnackbarData it, @Nullable Composer composer, int i10) {
        int i11;
        t.j(it, "it");
        if ((i10 & 14) == 0) {
            i11 = i10 | (composer.k(it) ? 4 : 2);
        } else {
            i11 = i10;
        }
        if ((i11 & 91) == 18 && composer.b()) {
            composer.g();
        } else {
            SnackbarKt.d(it, null, false, null, 0L, 0L, 0L, 0.0f, composer, i11 & 14, 254);
        }
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ l0 invoke(SnackbarData snackbarData, Composer composer, Integer num) {
        a(snackbarData, composer, num.intValue());
        return l0.INSTANCE;
    }
}
