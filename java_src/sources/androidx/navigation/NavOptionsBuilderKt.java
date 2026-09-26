package androidx.navigation;

import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
public final class NavOptionsBuilderKt {
    @NotNull
    public static final NavOptions a(@NotNull l<? super NavOptionsBuilder, l0> optionsBuilder) {
        t.j(optionsBuilder, "optionsBuilder");
        NavOptionsBuilder navOptionsBuilder = new NavOptionsBuilder();
        optionsBuilder.invoke(navOptionsBuilder);
        return navOptionsBuilder.b();
    }
}
