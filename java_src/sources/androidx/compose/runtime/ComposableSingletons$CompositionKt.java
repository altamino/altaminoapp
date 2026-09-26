package androidx.compose.runtime;

import androidx.compose.runtime.internal.ComposableLambdaKt;
import e8.p;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public final class ComposableSingletons$CompositionKt {

    @NotNull
    public static final ComposableSingletons$CompositionKt INSTANCE = new ComposableSingletons$CompositionKt();

    /* JADX INFO: renamed from: lambda-1, reason: not valid java name */
    @NotNull
    public static p<Composer, Integer, l0> f15lambda1 = ComposableLambdaKt.c(954879418, false, ComposableSingletons$CompositionKt$lambda1$1.INSTANCE);

    /* JADX INFO: renamed from: lambda-2, reason: not valid java name */
    @NotNull
    public static p<Composer, Integer, l0> f16lambda2 = ComposableLambdaKt.c(1918065384, false, ComposableSingletons$CompositionKt$lambda2$1.INSTANCE);

    @NotNull
    public final p<Composer, Integer, l0> a() {
        return f15lambda1;
    }

    @NotNull
    public final p<Composer, Integer, l0> b() {
        return f16lambda2;
    }
}
