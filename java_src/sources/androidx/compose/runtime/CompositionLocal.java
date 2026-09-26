package androidx.compose.runtime;

import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
@Stable
public abstract class CompositionLocal<T> {

    @NotNull
    private final LazyValueHolder<T> defaultValueHolder;

    public /* synthetic */ CompositionLocal(e8.a aVar, k kVar) {
        this(aVar);
    }

    @NotNull
    public final LazyValueHolder<T> a() {
        return this.defaultValueHolder;
    }

    @Composable
    @NotNull
    public abstract State<T> b(T t5, @Nullable Composer composer, int i10);

    private CompositionLocal(e8.a<? extends T> aVar) {
        this.defaultValueHolder = new LazyValueHolder<>(aVar);
    }
}
