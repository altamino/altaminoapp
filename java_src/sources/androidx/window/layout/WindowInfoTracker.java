package androidx.window.layout;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import androidx.window.extensions.layout.WindowLayoutComponent;
import kotlin.jvm.internal.q0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public interface WindowInfoTracker {

    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    public static final class Companion {
        private static final boolean DEBUG = false;
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        @Nullable
        private static final String TAG = q0.b(WindowInfoTracker.class).getSimpleName();

        @NotNull
        private static WindowInfoTrackerDecorator decorator = EmptyDecorator.INSTANCE;

        @NotNull
        public final WindowInfoTracker a(@NotNull Context context) {
            t.j(context, "context");
            return decorator.a(new WindowInfoTrackerImpl(WindowMetricsCalculatorCompat.INSTANCE, b(context)));
        }

        @NotNull
        public final WindowBackend b(@NotNull Context context) {
            t.j(context, "context");
            ExtensionWindowLayoutInfoBackend extensionWindowLayoutInfoBackend = null;
            try {
                WindowLayoutComponent windowLayoutComponentM = SafeWindowLayoutComponentProvider.INSTANCE.m();
                if (windowLayoutComponentM != null) {
                    extensionWindowLayoutInfoBackend = new ExtensionWindowLayoutInfoBackend(windowLayoutComponentM);
                }
            } catch (Throwable unused) {
                if (DEBUG) {
                    Log.d(TAG, "Failed to load WindowExtensions");
                }
            }
            return extensionWindowLayoutInfoBackend == null ? SidecarWindowBackend.Companion.a(context) : extensionWindowLayoutInfoBackend;
        }

        private Companion() {
        }
    }

    @NotNull
    kotlinx.coroutines.flow.g<WindowLayoutInfo> a(@NotNull Activity activity);
}
