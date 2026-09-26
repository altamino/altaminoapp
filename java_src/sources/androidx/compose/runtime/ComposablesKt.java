package androidx.compose.runtime;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class ComposablesKt {
    public static final void c() {
        throw new IllegalStateException("Invalid applier".toString());
    }

    @Composable
    public static final int a(@Nullable Composer composer, int i10) {
        return composer.O();
    }

    @Composable
    @ReadOnlyComposable
    @NotNull
    public static final RecomposeScope b(@Nullable Composer composer, int i10) {
        RecomposeScope recomposeScopeE = composer.E();
        if (recomposeScopeE != null) {
            composer.i(recomposeScopeE);
            return recomposeScopeE;
        }
        throw new IllegalStateException("no recompose scope found".toString());
    }

    @Composable
    @NotNull
    public static final CompositionContext d(@Nullable Composer composer, int i10) {
        composer.G(-1165786124);
        CompositionContext compositionContextJ = composer.j();
        composer.Q();
        return compositionContextJ;
    }
}
