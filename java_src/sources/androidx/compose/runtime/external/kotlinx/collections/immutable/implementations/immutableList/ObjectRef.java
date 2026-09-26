package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class ObjectRef {

    @Nullable
    private Object value;

    @Nullable
    public final Object a() {
        return this.value;
    }

    public final void b(@Nullable Object obj) {
        this.value = obj;
    }

    public ObjectRef(@Nullable Object obj) {
        this.value = obj;
    }
}
