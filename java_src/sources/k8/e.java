package k8;

import java.util.concurrent.TimeUnit;
import org.jetbrains.annotations.NotNull;
import z7.a;

/* JADX INFO: loaded from: classes8.dex */
public enum e {
    NANOSECONDS(TimeUnit.NANOSECONDS),
    MICROSECONDS(TimeUnit.MICROSECONDS),
    MILLISECONDS(TimeUnit.MILLISECONDS),
    SECONDS(TimeUnit.SECONDS),
    MINUTES(TimeUnit.MINUTES),
    HOURS(TimeUnit.HOURS),
    DAYS(TimeUnit.DAYS);

    private static final /* synthetic */ a $ENTRIES = z7.b.a(a());

    @NotNull
    private final TimeUnit timeUnit;

    @NotNull
    public final TimeUnit b() {
        return this.timeUnit;
    }

    e(TimeUnit timeUnit) {
        this.timeUnit = timeUnit;
    }
}
