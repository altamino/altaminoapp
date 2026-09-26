package androidx.window.layout;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
final class EmptyDecorator implements WindowInfoTrackerDecorator {

    @NotNull
    public static final EmptyDecorator INSTANCE = new EmptyDecorator();

    @Override // androidx.window.layout.WindowInfoTrackerDecorator
    @NotNull
    public WindowInfoTracker a(@NotNull WindowInfoTracker tracker) {
        t.j(tracker, "tracker");
        return tracker;
    }

    private EmptyDecorator() {
    }
}
