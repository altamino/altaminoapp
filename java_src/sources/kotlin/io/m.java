package kotlin.io;

import java.io.File;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
class m extends l {
    @NotNull
    public static final h m(@NotNull File file, @NotNull i direction) {
        t.j(file, "<this>");
        t.j(direction, "direction");
        return new h(file, direction);
    }

    @NotNull
    public static final h n(@NotNull File file) {
        t.j(file, "<this>");
        return m(file, i.BOTTOM_UP);
    }
}
