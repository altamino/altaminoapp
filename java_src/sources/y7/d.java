package y7;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes10.dex */
public class d extends c {
    public static float g(float f, @NotNull float... other) {
        t.j(other, "other");
        for (float f6 : other) {
            f = Math.max(f, f6);
        }
        return f;
    }

    public static float h(float f, @NotNull float... other) {
        t.j(other, "other");
        for (float f6 : other) {
            f = Math.min(f, f6);
        }
        return f;
    }
}
