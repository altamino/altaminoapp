package io.ktor.util.pipeline;

import kotlin.jvm.internal.t;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public abstract class e<TSubject, TContext> implements o0 {

    @NotNull
    private final TContext context;

    @Nullable
    public abstract Object a(@NotNull TSubject tsubject, @NotNull kotlin.coroutines.d<? super TSubject> dVar);

    @NotNull
    public final TContext b() {
        return this.context;
    }

    @Nullable
    public abstract Object c(@NotNull kotlin.coroutines.d<? super TSubject> dVar);

    @Nullable
    public abstract Object e(@NotNull TSubject tsubject, @NotNull kotlin.coroutines.d<? super TSubject> dVar);

    public e(@NotNull TContext context) {
        t.j(context, "context");
        this.context = context;
    }
}
