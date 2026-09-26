package androidx.work.impl.utils;

import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import java.time.Duration;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
@RequiresApi
public final class DurationApi26Impl {
    @DoNotInline
    public static final long a(@NotNull Duration duration) {
        t.j(duration, "<this>");
        return duration.toMillis();
    }
}
