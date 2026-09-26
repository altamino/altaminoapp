package n7;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.slf4j.b;

/* JADX INFO: loaded from: classes7.dex */
public final class a {
    @NotNull
    public static final org.slf4j.a a(@NotNull String name) {
        t.j(name, "name");
        org.slf4j.a aVarJ = b.j(name);
        t.i(aVarJ, "getLogger(name)");
        return aVarJ;
    }
}
