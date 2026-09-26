package androidx.compose.runtime;

import e8.p;
import java.util.List;
import java.util.Set;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.u;

/* JADX INFO: loaded from: classes10.dex */
public interface ControlledComposition extends Composition {
    void a(@NotNull p<? super Composer, ? super Integer, l0> pVar);

    @InternalComposeApi
    void b(@NotNull MovableContentState movableContentState);

    <R> R c(@Nullable ControlledComposition controlledComposition, int i10, @NotNull e8.a<? extends R> aVar);

    boolean d(@NotNull Set<? extends Object> set);

    void e();

    void f();

    @InternalComposeApi
    void g(@NotNull List<u<MovableContentStateReference, MovableContentStateReference>> list);

    boolean h();

    void i(@NotNull e8.a<l0> aVar);

    void j(@NotNull Object obj);

    void k(@NotNull Set<? extends Object> set);

    void l();

    boolean m();

    void n(@NotNull Object obj);

    void o();
}
