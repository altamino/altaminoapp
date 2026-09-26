package androidx.navigation;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class NamedNavArgument {

    @NotNull
    private final NavArgument argument;

    @NotNull
    private final String name;

    public NamedNavArgument(@NotNull String name, @NotNull NavArgument argument) {
        t.j(name, "name");
        t.j(argument, "argument");
        this.name = name;
        this.argument = argument;
    }
}
