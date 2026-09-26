package m7;

import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class a {
    private static final TimeZone GMT_TIMEZONE = TimeZone.getTimeZone("GMT");

    @NotNull
    public static final b a(@Nullable Long l) {
        Calendar calendar = Calendar.getInstance(GMT_TIMEZONE, Locale.ROOT);
        t.g(calendar);
        return c(calendar, l);
    }

    public static /* synthetic */ b b(Long l, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            l = null;
        }
        return a(l);
    }

    @NotNull
    public static final b c(@NotNull Calendar calendar, @Nullable Long l) {
        t.j(calendar, "<this>");
        if (l != null) {
            calendar.setTimeInMillis(l.longValue());
        }
        int i10 = calendar.get(15) + calendar.get(16);
        return new b(calendar.get(13), calendar.get(12), calendar.get(11), d.Companion.a((calendar.get(7) + 5) % 7), calendar.get(5), calendar.get(6), c.Companion.a(calendar.get(2)), calendar.get(1), calendar.getTimeInMillis() + ((long) i10));
    }
}
