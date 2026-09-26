package coil.util;

import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
public final class s implements ComponentCallbacks2, coil.network.e.a {

    @NotNull
    public static final a Companion = new a(null);

    @NotNull
    private static final String OFFLINE = "OFFLINE";

    @NotNull
    private static final String ONLINE = "ONLINE";

    @NotNull
    private static final String TAG = "NetworkObserver";
    private volatile boolean _isOnline;

    @NotNull
    private final AtomicBoolean _isShutdown;

    @NotNull
    private final Context context;

    @NotNull
    private final WeakReference<coil.h> imageLoader;

    @NotNull
    private final coil.network.e networkObserver;

    public static final class a {
        public /* synthetic */ a(kotlin.jvm.internal.k kVar) {
            this();
        }

        private a() {
        }
    }

    public final boolean b() {
        return this._isOnline;
    }

    @Override // coil.network.e.a
    public void a(boolean z6) {
        l0 l0Var;
        coil.h hVar = this.imageLoader.get();
        if (hVar != null) {
            hVar.m();
            this._isOnline = z6;
            l0Var = l0.INSTANCE;
        } else {
            l0Var = null;
        }
        if (l0Var == null) {
            d();
        }
    }

    public final void c() {
        this.context.registerComponentCallbacks(this);
    }

    public final void d() {
        if (this._isShutdown.getAndSet(true)) {
            return;
        }
        this.context.unregisterComponentCallbacks(this);
        this.networkObserver.shutdown();
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(@NotNull Configuration configuration) {
        if (this.imageLoader.get() == null) {
            d();
            l0 l0Var = l0.INSTANCE;
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        onTrimMemory(80);
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i10) {
        l0 l0Var;
        coil.h hVar = this.imageLoader.get();
        if (hVar != null) {
            hVar.m();
            hVar.s(i10);
            l0Var = l0.INSTANCE;
        } else {
            l0Var = null;
        }
        if (l0Var == null) {
            d();
        }
    }

    public s(@NotNull coil.h hVar, @NotNull Context context, boolean z6) {
        coil.network.e cVar;
        this.context = context;
        this.imageLoader = new WeakReference<>(hVar);
        if (z6) {
            hVar.m();
            cVar = coil.network.f.a(context, this, null);
        } else {
            cVar = new coil.network.c();
        }
        this.networkObserver = cVar;
        this._isOnline = cVar.a();
        this._isShutdown = new AtomicBoolean(false);
    }
}
