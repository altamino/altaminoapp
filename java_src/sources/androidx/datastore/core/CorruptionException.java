package androidx.datastore.core;

import java.io.IOException;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class CorruptionException extends IOException {
    public /* synthetic */ CorruptionException(String str, Throwable th, int i10, k kVar) {
        this(str, (i10 & 2) != 0 ? null : th);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CorruptionException(@NotNull String message, @Nullable Throwable th) {
        super(message, th);
        t.j(message, "message");
    }
}
