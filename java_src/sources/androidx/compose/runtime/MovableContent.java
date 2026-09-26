package androidx.compose.runtime;

import androidx.compose.runtime.internal.StabilityInferred;
import e8.q;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
@StabilityInferred
@InternalComposeApi
public final class MovableContent<P> {
    public static final int $stable = 0;

    @NotNull
    private final q<P, Composer, Integer, l0> content;

    @NotNull
    public final q<P, Composer, Integer, l0> a() {
        return this.content;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MovableContent(@NotNull q<? super P, ? super Composer, ? super Integer, l0> content) {
        t.j(content, "content");
        this.content = content;
    }
}
