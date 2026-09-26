package androidx.slidingpanelayout.widget;

import android.app.Activity;
import androidx.window.layout.DisplayFeature;
import androidx.window.layout.FoldingFeature;
import androidx.window.layout.WindowInfoTracker;
import androidx.window.layout.WindowLayoutInfo;
import java.util.Iterator;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.b2;
import kotlinx.coroutines.k;
import kotlinx.coroutines.p0;
import kotlinx.coroutines.s1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class FoldingFeatureObserver {

    @NotNull
    private final Executor executor;

    @Nullable
    private b2 job;

    @Nullable
    private OnFoldingFeatureChangeListener onFoldingFeatureChangeListener;

    @NotNull
    private final WindowInfoTracker windowInfoTracker;

    public interface OnFoldingFeatureChangeListener {
        void a(@NotNull FoldingFeature foldingFeature);
    }

    public final void f(@NotNull OnFoldingFeatureChangeListener onFoldingFeatureChangeListener) {
        t.j(onFoldingFeatureChangeListener, "onFoldingFeatureChangeListener");
        this.onFoldingFeatureChangeListener = onFoldingFeatureChangeListener;
    }

    public final void e(@NotNull Activity activity) {
        t.j(activity, "activity");
        b2 b2Var = this.job;
        if (b2Var != null) {
            b2.a.a(b2Var, null, 1, null);
        }
        this.job = k.d(p0.a(s1.b(this.executor)), null, null, new FoldingFeatureObserver$registerLayoutStateChangeCallback$1(this, activity, null), 3, null);
    }

    public final void g() {
        b2 b2Var = this.job;
        if (b2Var == null) {
            return;
        }
        b2.a.a(b2Var, null, 1, null);
    }

    public FoldingFeatureObserver(@NotNull WindowInfoTracker windowInfoTracker, @NotNull Executor executor) {
        t.j(windowInfoTracker, "windowInfoTracker");
        t.j(executor, "executor");
        this.windowInfoTracker = windowInfoTracker;
        this.executor = executor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final FoldingFeature d(WindowLayoutInfo windowLayoutInfo) {
        Object next;
        Iterator<T> it = windowLayoutInfo.a().iterator();
        do {
            if (it.hasNext()) {
                next = it.next();
            } else {
                next = null;
                break;
            }
        } while (!(((DisplayFeature) next) instanceof FoldingFeature));
        if (!(next instanceof FoldingFeature)) {
            return null;
        }
        return (FoldingFeature) next;
    }
}
