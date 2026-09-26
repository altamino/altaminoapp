package androidx.compose.ui.platform;

import java.util.Arrays;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class JvmActuals_jvmKt {
    @NotNull
    public static final String a(@NotNull Object obj, @Nullable String str) {
        kotlin.jvm.internal.t.j(obj, "obj");
        if (str == null) {
            str = obj.getClass().isAnonymousClass() ? obj.getClass().getName() : obj.getClass().getSimpleName();
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append('@');
        kotlin.jvm.internal.u0 u0Var = kotlin.jvm.internal.u0.INSTANCE;
        String str2 = String.format("%07x", Arrays.copyOf(new Object[]{Integer.valueOf(System.identityHashCode(obj))}, 1));
        kotlin.jvm.internal.t.i(str2, "format(format, *args)");
        sb.append(str2);
        return sb.toString();
    }
}
