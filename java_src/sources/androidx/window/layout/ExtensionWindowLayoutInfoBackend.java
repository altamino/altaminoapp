package androidx.window.layout;

import android.annotation.SuppressLint;
import android.app.Activity;
import androidx.annotation.GuardedBy;
import androidx.core.util.Consumer;
import androidx.window.extensions.layout.WindowLayoutComponent;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
public final class ExtensionWindowLayoutInfoBackend implements WindowBackend {

    @GuardedBy
    @NotNull
    private final Map<Activity, MulticastConsumer> activityToListeners;

    @NotNull
    private final WindowLayoutComponent component;

    @NotNull
    private final ReentrantLock extensionWindowBackendLock;

    @GuardedBy
    @NotNull
    private final Map<Consumer<WindowLayoutInfo>, Activity> listenerToActivity;

    @SuppressLint({"NewApi"})
    private static final class MulticastConsumer implements java.util.function.Consumer<androidx.window.extensions.layout.WindowLayoutInfo> {

        @NotNull
        private final Activity activity;

        @GuardedBy
        @Nullable
        private WindowLayoutInfo lastKnownValue;

        @NotNull
        private final ReentrantLock multicastConsumerLock;

        @GuardedBy
        @NotNull
        private final Set<Consumer<WindowLayoutInfo>> registeredListeners;

        public MulticastConsumer(@NotNull Activity activity) {
            t.j(activity, "activity");
            this.activity = activity;
            this.multicastConsumerLock = new ReentrantLock();
            this.registeredListeners = new LinkedHashSet();
        }

        public final void b(@NotNull Consumer<WindowLayoutInfo> listener) {
            t.j(listener, "listener");
            ReentrantLock reentrantLock = this.multicastConsumerLock;
            reentrantLock.lock();
            try {
                WindowLayoutInfo windowLayoutInfo = this.lastKnownValue;
                if (windowLayoutInfo != null) {
                    listener.accept(windowLayoutInfo);
                }
                this.registeredListeners.add(listener);
            } finally {
                reentrantLock.unlock();
            }
        }

        public final boolean c() {
            return this.registeredListeners.isEmpty();
        }

        public final void d(@NotNull Consumer<WindowLayoutInfo> listener) {
            t.j(listener, "listener");
            ReentrantLock reentrantLock = this.multicastConsumerLock;
            reentrantLock.lock();
            try {
                this.registeredListeners.remove(listener);
            } finally {
                reentrantLock.unlock();
            }
        }

        @Override // java.util.function.Consumer
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(@NotNull androidx.window.extensions.layout.WindowLayoutInfo value) {
            t.j(value, "value");
            ReentrantLock reentrantLock = this.multicastConsumerLock;
            reentrantLock.lock();
            try {
                this.lastKnownValue = ExtensionsWindowLayoutInfoAdapter.INSTANCE.b(this.activity, value);
                Iterator<T> it = this.registeredListeners.iterator();
                while (it.hasNext()) {
                    ((Consumer) it.next()).accept(this.lastKnownValue);
                }
                l0 l0Var = l0.INSTANCE;
            } finally {
                reentrantLock.unlock();
            }
        }
    }

    public ExtensionWindowLayoutInfoBackend(@NotNull WindowLayoutComponent component) {
        t.j(component, "component");
        this.component = component;
        this.extensionWindowBackendLock = new ReentrantLock();
        this.activityToListeners = new LinkedHashMap();
        this.listenerToActivity = new LinkedHashMap();
    }

    @Override // androidx.window.layout.WindowBackend
    public void a(@NotNull Activity activity, @NotNull Executor executor, @NotNull Consumer<WindowLayoutInfo> callback) {
        l0 l0Var;
        t.j(activity, "activity");
        t.j(executor, "executor");
        t.j(callback, "callback");
        ReentrantLock reentrantLock = this.extensionWindowBackendLock;
        reentrantLock.lock();
        try {
            MulticastConsumer multicastConsumer = this.activityToListeners.get(activity);
            if (multicastConsumer == null) {
                l0Var = null;
            } else {
                multicastConsumer.b(callback);
                this.listenerToActivity.put(callback, activity);
                l0Var = l0.INSTANCE;
            }
            if (l0Var == null) {
                MulticastConsumer multicastConsumer2 = new MulticastConsumer(activity);
                this.activityToListeners.put(activity, multicastConsumer2);
                this.listenerToActivity.put(callback, activity);
                multicastConsumer2.b(callback);
                this.component.addWindowLayoutInfoListener(activity, androidx.window.embedding.a.a(multicastConsumer2));
            }
            l0 l0Var2 = l0.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // androidx.window.layout.WindowBackend
    public void b(@NotNull Consumer<WindowLayoutInfo> callback) {
        t.j(callback, "callback");
        ReentrantLock reentrantLock = this.extensionWindowBackendLock;
        reentrantLock.lock();
        try {
            Activity activity = this.listenerToActivity.get(callback);
            if (activity == null) {
                return;
            }
            MulticastConsumer multicastConsumer = this.activityToListeners.get(activity);
            if (multicastConsumer == null) {
                return;
            }
            multicastConsumer.d(callback);
            if (multicastConsumer.c()) {
                this.component.removeWindowLayoutInfoListener(androidx.window.embedding.a.a(multicastConsumer));
            }
            l0 l0Var = l0.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }
}
