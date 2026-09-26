package androidx.datastore.core;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
final class Final<T> extends State<T> {

    @NotNull
    private final Throwable finalException;

    @NotNull
    public final Throwable a() {
        return this.finalException;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Final(@NotNull Throwable finalException) {
        super(null);
        t.j(finalException, "finalException");
        this.finalException = finalException;
    }
}
