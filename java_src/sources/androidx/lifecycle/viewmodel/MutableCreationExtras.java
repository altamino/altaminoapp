package androidx.lifecycle.viewmodel;

import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class MutableCreationExtras extends CreationExtras {
    /* JADX WARN: Multi-variable type inference failed */
    public MutableCreationExtras() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public MutableCreationExtras(@NotNull CreationExtras initialExtras) {
        t.j(initialExtras, "initialExtras");
        b().putAll(initialExtras.b());
    }

    @Override // androidx.lifecycle.viewmodel.CreationExtras
    @Nullable
    public <T> T a(@NotNull CreationExtras.Key<T> key) {
        t.j(key, "key");
        return (T) b().get(key);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T> void c(@NotNull CreationExtras.Key<T> key, T t5) {
        t.j(key, "key");
        b().put(key, t5);
    }

    public /* synthetic */ MutableCreationExtras(CreationExtras creationExtras, int i10, k kVar) {
        this((i10 & 1) != 0 ? CreationExtras.Empty.INSTANCE : creationExtras);
    }
}
