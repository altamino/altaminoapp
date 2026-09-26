package androidx.window.layout;

import android.app.Activity;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class WindowInfoTrackerImpl implements WindowInfoTracker {
    private static final int BUFFER_CAPACITY = 10;

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private final WindowBackend windowBackend;

    @NotNull
    private final WindowMetricsCalculator windowMetricsCalculator;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    @Override // androidx.window.layout.WindowInfoTracker
    @NotNull
    public kotlinx.coroutines.flow.g<WindowLayoutInfo> a(@NotNull Activity activity) {
        t.j(activity, "activity");
        return kotlinx.coroutines.flow.i.y(new WindowInfoTrackerImpl$windowLayoutInfo$1(this, activity, null));
    }

    public WindowInfoTrackerImpl(@NotNull WindowMetricsCalculator windowMetricsCalculator, @NotNull WindowBackend windowBackend) {
        t.j(windowMetricsCalculator, "windowMetricsCalculator");
        t.j(windowBackend, "windowBackend");
        this.windowMetricsCalculator = windowMetricsCalculator;
        this.windowBackend = windowBackend;
    }
}
