package androidx.room.util;

import androidx.annotation.RestrictTo;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
@RestrictTo
public final class StringUtil {

    @NotNull
    public static final String[] EMPTY_STRING_ARRAY = new String[0];

    public static final void a(@NotNull StringBuilder builder, int i10) {
        t.j(builder, "builder");
        for (int i11 = 0; i11 < i10; i11++) {
            builder.append("?");
            if (i11 < i10 - 1) {
                builder.append(",");
            }
        }
    }

    @NotNull
    public static final StringBuilder b() {
        return new StringBuilder();
    }
}
