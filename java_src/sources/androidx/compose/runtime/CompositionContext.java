package androidx.compose.runtime;

import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.runtime.tooling.CompositionData;
import e8.p;
import java.util.Set;
import kotlin.coroutines.g;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
@StabilityInferred
public abstract class CompositionContext {
    public static final int $stable = 0;

    public abstract void a(@NotNull ControlledComposition controlledComposition, @NotNull p<? super Composer, ? super Integer, l0> pVar);

    public abstract void b(@NotNull MovableContentStateReference movableContentStateReference);

    public void c() {
    }

    public abstract boolean d();

    public abstract int f();

    @NotNull
    public abstract g g();

    @NotNull
    public abstract g h();

    public abstract void i(@NotNull MovableContentStateReference movableContentStateReference);

    public abstract void j(@NotNull ControlledComposition controlledComposition);

    public abstract void k(@NotNull MovableContentStateReference movableContentStateReference, @NotNull MovableContentState movableContentState);

    @Nullable
    public MovableContentState l(@NotNull MovableContentStateReference reference) {
        t.j(reference, "reference");
        return null;
    }

    public void m(@NotNull Set<CompositionData> table) {
        t.j(table, "table");
    }

    public void n(@NotNull Composer composer) {
        t.j(composer, "composer");
    }

    public void o() {
    }

    public void p(@NotNull Composer composer) {
        t.j(composer, "composer");
    }

    public abstract void q(@NotNull ControlledComposition controlledComposition);

    @NotNull
    public PersistentMap<CompositionLocal<Object>, State<Object>> e() {
        return CompositionContextKt.EmptyCompositionLocalMap;
    }
}
