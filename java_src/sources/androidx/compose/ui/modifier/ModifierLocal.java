package androidx.compose.ui.modifier;

import androidx.compose.runtime.Stable;
import e8.a;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
@Stable
public abstract class ModifierLocal<T> {

    @NotNull
    private final a<T> defaultFactory;

    public /* synthetic */ ModifierLocal(a aVar, k kVar) {
        this(aVar);
    }

    @NotNull
    public final a<T> a() {
        return this.defaultFactory;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private ModifierLocal(a<? extends T> aVar) {
        this.defaultFactory = aVar;
    }
}
