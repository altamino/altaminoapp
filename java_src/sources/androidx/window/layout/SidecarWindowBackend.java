package androidx.window.layout;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import androidx.annotation.GuardedBy;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Consumer;
import androidx.window.core.Version;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.collections.v;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
public final class SidecarWindowBackend implements WindowBackend {
    public static final boolean DEBUG = false;

    @NotNull
    private static final String TAG = "WindowServer";

    @Nullable
    private static volatile SidecarWindowBackend globalInstance;

    @GuardedBy
    @VisibleForTesting
    @Nullable
    private ExtensionInterfaceCompat windowExtension;

    @NotNull
    private final CopyOnWriteArrayList<WindowLayoutChangeCallbackWrapper> windowLayoutChangeCallbacks = new CopyOnWriteArrayList<>();

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final ReentrantLock globalLock = new ReentrantLock();

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        @VisibleForTesting
        public final boolean c(@Nullable Version version) {
            return version != null && version.compareTo(Version.Companion.a()) >= 0;
        }

        private Companion() {
        }

        @NotNull
        public final SidecarWindowBackend a(@NotNull Context context) {
            t.j(context, "context");
            if (SidecarWindowBackend.globalInstance == null) {
                ReentrantLock reentrantLock = SidecarWindowBackend.globalLock;
                reentrantLock.lock();
                try {
                    if (SidecarWindowBackend.globalInstance == null) {
                        SidecarWindowBackend.globalInstance = new SidecarWindowBackend(SidecarWindowBackend.Companion.b(context));
                    }
                    l0 l0Var = l0.INSTANCE;
                    reentrantLock.unlock();
                } catch (Throwable th) {
                    reentrantLock.unlock();
                    throw th;
                }
            }
            SidecarWindowBackend sidecarWindowBackend = SidecarWindowBackend.globalInstance;
            t.g(sidecarWindowBackend);
            return sidecarWindowBackend;
        }

        @Nullable
        public final ExtensionInterfaceCompat b(@NotNull Context context) {
            t.j(context, "context");
            try {
                if (!c(SidecarCompat.Companion.c())) {
                    return null;
                }
                SidecarCompat sidecarCompat = new SidecarCompat(context);
                if (sidecarCompat.l()) {
                    return sidecarCompat;
                }
                return null;
            } catch (Throwable unused) {
                return null;
            }
        }
    }

    @VisibleForTesting
    public final class ExtensionListenerImpl implements ExtensionInterfaceCompat.ExtensionCallbackInterface {
        final /* synthetic */ SidecarWindowBackend this$0;

        @Override // androidx.window.layout.ExtensionInterfaceCompat.ExtensionCallbackInterface
        @SuppressLint({"SyntheticAccessor"})
        public void a(@NotNull Activity activity, @NotNull WindowLayoutInfo newLayout) {
            t.j(activity, "activity");
            t.j(newLayout, "newLayout");
            for (WindowLayoutChangeCallbackWrapper windowLayoutChangeCallbackWrapper : this.this$0.h()) {
                if (t.e(windowLayoutChangeCallbackWrapper.d(), activity)) {
                    windowLayoutChangeCallbackWrapper.b(newLayout);
                }
            }
        }

        public ExtensionListenerImpl(SidecarWindowBackend this$0) {
            t.j(this$0, "this$0");
            this.this$0 = this$0;
        }
    }

    public static final class WindowLayoutChangeCallbackWrapper {

        @NotNull
        private final Activity activity;

        @NotNull
        private final Consumer<WindowLayoutInfo> callback;

        @NotNull
        private final Executor executor;

        @Nullable
        private WindowLayoutInfo lastInfo;

        @NotNull
        public final Activity d() {
            return this.activity;
        }

        @NotNull
        public final Consumer<WindowLayoutInfo> e() {
            return this.callback;
        }

        @Nullable
        public final WindowLayoutInfo f() {
            return this.lastInfo;
        }

        public WindowLayoutChangeCallbackWrapper(@NotNull Activity activity, @NotNull Executor executor, @NotNull Consumer<WindowLayoutInfo> callback) {
            t.j(activity, "activity");
            t.j(executor, "executor");
            t.j(callback, "callback");
            this.activity = activity;
            this.executor = executor;
            this.callback = callback;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void c(WindowLayoutChangeCallbackWrapper this$0, WindowLayoutInfo newLayoutInfo) {
            t.j(this$0, "this$0");
            t.j(newLayoutInfo, "$newLayoutInfo");
            this$0.callback.accept(newLayoutInfo);
        }

        public final void b(@NotNull final WindowLayoutInfo newLayoutInfo) {
            t.j(newLayoutInfo, "newLayoutInfo");
            this.lastInfo = newLayoutInfo;
            this.executor.execute(new Runnable() { // from class: androidx.window.layout.f
                @Override // java.lang.Runnable
                public final void run() {
                    SidecarWindowBackend.WindowLayoutChangeCallbackWrapper.c(this.f861a, newLayoutInfo);
                }
            });
        }
    }

    @Nullable
    public final ExtensionInterfaceCompat g() {
        return this.windowExtension;
    }

    @NotNull
    public final CopyOnWriteArrayList<WindowLayoutChangeCallbackWrapper> h() {
        return this.windowLayoutChangeCallbacks;
    }

    @GuardedBy
    private final void f(Activity activity) {
        CopyOnWriteArrayList<WindowLayoutChangeCallbackWrapper> copyOnWriteArrayList = this.windowLayoutChangeCallbacks;
        if (!(copyOnWriteArrayList instanceof Collection) || !copyOnWriteArrayList.isEmpty()) {
            Iterator<T> it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                if (t.e(((WindowLayoutChangeCallbackWrapper) it.next()).d(), activity)) {
                    return;
                }
            }
        }
        ExtensionInterfaceCompat extensionInterfaceCompat = this.windowExtension;
        if (extensionInterfaceCompat == null) {
            return;
        }
        extensionInterfaceCompat.c(activity);
    }

    private final boolean i(Activity activity) {
        CopyOnWriteArrayList<WindowLayoutChangeCallbackWrapper> copyOnWriteArrayList = this.windowLayoutChangeCallbacks;
        if ((copyOnWriteArrayList instanceof Collection) && copyOnWriteArrayList.isEmpty()) {
            return false;
        }
        Iterator<T> it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            if (t.e(((WindowLayoutChangeCallbackWrapper) it.next()).d(), activity)) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.window.layout.WindowBackend
    public void a(@NotNull Activity activity, @NotNull Executor executor, @NotNull Consumer<WindowLayoutInfo> callback) {
        WindowLayoutInfo windowLayoutInfoF;
        Object next;
        t.j(activity, "activity");
        t.j(executor, "executor");
        t.j(callback, "callback");
        ReentrantLock reentrantLock = globalLock;
        reentrantLock.lock();
        try {
            ExtensionInterfaceCompat extensionInterfaceCompatG = g();
            if (extensionInterfaceCompatG == null) {
                callback.accept(new WindowLayoutInfo(v.m()));
                return;
            }
            boolean zI = i(activity);
            WindowLayoutChangeCallbackWrapper windowLayoutChangeCallbackWrapper = new WindowLayoutChangeCallbackWrapper(activity, executor, callback);
            h().add(windowLayoutChangeCallbackWrapper);
            if (zI) {
                Iterator<T> it = h().iterator();
                do {
                    windowLayoutInfoF = null;
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!t.e(activity, ((WindowLayoutChangeCallbackWrapper) next).d()));
                WindowLayoutChangeCallbackWrapper windowLayoutChangeCallbackWrapper2 = (WindowLayoutChangeCallbackWrapper) next;
                if (windowLayoutChangeCallbackWrapper2 != null) {
                    windowLayoutInfoF = windowLayoutChangeCallbackWrapper2.f();
                }
                if (windowLayoutInfoF != null) {
                    windowLayoutChangeCallbackWrapper.b(windowLayoutInfoF);
                }
            } else {
                extensionInterfaceCompatG.b(activity);
            }
            l0 l0Var = l0.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // androidx.window.layout.WindowBackend
    public void b(@NotNull Consumer<WindowLayoutInfo> callback) {
        t.j(callback, "callback");
        synchronized (globalLock) {
            try {
                if (g() == null) {
                    return;
                }
                ArrayList arrayList = new ArrayList();
                for (WindowLayoutChangeCallbackWrapper callbackWrapper : h()) {
                    if (callbackWrapper.e() == callback) {
                        t.i(callbackWrapper, "callbackWrapper");
                        arrayList.add(callbackWrapper);
                    }
                }
                h().removeAll(arrayList);
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    f(((WindowLayoutChangeCallbackWrapper) it.next()).d());
                }
                l0 l0Var = l0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @VisibleForTesting
    public SidecarWindowBackend(@Nullable ExtensionInterfaceCompat extensionInterfaceCompat) {
        this.windowExtension = extensionInterfaceCompat;
        ExtensionInterfaceCompat extensionInterfaceCompat2 = this.windowExtension;
        if (extensionInterfaceCompat2 != null) {
            extensionInterfaceCompat2.a(new ExtensionListenerImpl(this));
        }
    }
}
