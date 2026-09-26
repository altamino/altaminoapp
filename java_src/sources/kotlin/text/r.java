package kotlin.text;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes6.dex */
public class r extends q {
    @Nullable
    public static Double j(@NotNull String str) {
        kotlin.jvm.internal.t.j(str, "<this>");
        try {
            if (j.value.b(str)) {
                return Double.valueOf(Double.parseDouble(str));
            }
            return null;
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    @Nullable
    public static Float k(@NotNull String str) {
        kotlin.jvm.internal.t.j(str, "<this>");
        try {
            if (j.value.b(str)) {
                return Float.valueOf(Float.parseFloat(str));
            }
            return null;
        } catch (NumberFormatException unused) {
            return null;
        }
    }
}
