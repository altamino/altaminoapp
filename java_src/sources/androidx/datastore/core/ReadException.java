package androidx.datastore.core;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
final class ReadException<T> extends State<T> {

    @NotNull
    private final Throwable readException;

    @NotNull
    public final Throwable a() {
        return this.readException;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReadException(@NotNull Throwable readException) {
        super(null);
        t.j(readException, "readException");
        this.readException = readException;
    }
}
