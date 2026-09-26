package androidx.compose.runtime;

import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
@Stable
public final class CompositionLocalContext {

    @NotNull
    private final PersistentMap<CompositionLocal<Object>, State<Object>> compositionLocals;

    @NotNull
    public final PersistentMap<CompositionLocal<Object>, State<Object>> a() {
        return this.compositionLocals;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CompositionLocalContext(@NotNull PersistentMap<CompositionLocal<Object>, ? extends State<? extends Object>> compositionLocals) {
        t.j(compositionLocals, "compositionLocals");
        this.compositionLocals = compositionLocals;
    }
}
