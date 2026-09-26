package j8;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes7.dex */
public class n {
    public static final void a(boolean z6, @NotNull Number step) {
        t.j(step, "step");
        if (z6) {
            return;
        }
        throw new IllegalArgumentException("Step must be positive, was: " + step + '.');
    }

    @NotNull
    public static e<Float> b(float f, float f6) {
        return new d(f, f6);
    }
}
