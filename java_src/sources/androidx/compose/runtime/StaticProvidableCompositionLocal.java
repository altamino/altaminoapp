package androidx.compose.runtime;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class StaticProvidableCompositionLocal<T> extends ProvidableCompositionLocal<T> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StaticProvidableCompositionLocal(@NotNull e8.a<? extends T> defaultFactory) {
        super(defaultFactory);
        t.j(defaultFactory, "defaultFactory");
    }

    @Override // androidx.compose.runtime.CompositionLocal
    @Composable
    @NotNull
    public State<T> b(T t5, @Nullable Composer composer, int i10) {
        composer.G(-1121811719);
        StaticValueHolder staticValueHolder = new StaticValueHolder(t5);
        composer.Q();
        return staticValueHolder;
    }
}
