package androidx.room;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class MultiInstanceInvalidationClient {
    private final Context appContext;

    @NotNull
    private final IMultiInstanceInvalidationCallback callback;
    private int clientId;

    @NotNull
    private final Executor executor;

    @NotNull
    private final InvalidationTracker invalidationTracker;

    @NotNull
    private final String name;
    public InvalidationTracker.Observer observer;

    @NotNull
    private final Runnable removeObserverRunnable;

    @Nullable
    private IMultiInstanceInvalidationService service;

    @NotNull
    private final ServiceConnection serviceConnection;

    @NotNull
    private final Runnable setUpRunnable;

    @NotNull
    private final AtomicBoolean stopped;

    public final int c() {
        return this.clientId;
    }

    @NotNull
    public final Executor d() {
        return this.executor;
    }

    @NotNull
    public final InvalidationTracker e() {
        return this.invalidationTracker;
    }

    @NotNull
    public final Runnable g() {
        return this.removeObserverRunnable;
    }

    @Nullable
    public final IMultiInstanceInvalidationService h() {
        return this.service;
    }

    @NotNull
    public final Runnable i() {
        return this.setUpRunnable;
    }

    @NotNull
    public final AtomicBoolean j() {
        return this.stopped;
    }

    public final void l(@NotNull InvalidationTracker.Observer observer) {
        kotlin.jvm.internal.t.j(observer, "<set-?>");
        this.observer = observer;
    }

    public final void m(@Nullable IMultiInstanceInvalidationService iMultiInstanceInvalidationService) {
        this.service = iMultiInstanceInvalidationService;
    }

    public MultiInstanceInvalidationClient(@NotNull Context context, @NotNull String name, @NotNull Intent serviceIntent, @NotNull InvalidationTracker invalidationTracker, @NotNull Executor executor) {
        kotlin.jvm.internal.t.j(context, "context");
        kotlin.jvm.internal.t.j(name, "name");
        kotlin.jvm.internal.t.j(serviceIntent, "serviceIntent");
        kotlin.jvm.internal.t.j(invalidationTracker, "invalidationTracker");
        kotlin.jvm.internal.t.j(executor, "executor");
        this.name = name;
        this.invalidationTracker = invalidationTracker;
        this.executor = executor;
        Context applicationContext = context.getApplicationContext();
        this.appContext = applicationContext;
        this.callback = new MultiInstanceInvalidationClient$callback$1(this);
        this.stopped = new AtomicBoolean(false);
        ServiceConnection serviceConnection = new ServiceConnection() { // from class: androidx.room.MultiInstanceInvalidationClient$serviceConnection$1
            @Override // android.content.ServiceConnection
            public void onServiceConnected(@NotNull ComponentName name2, @NotNull IBinder service) {
                kotlin.jvm.internal.t.j(name2, "name");
                kotlin.jvm.internal.t.j(service, "service");
                this.this$0.m(IMultiInstanceInvalidationService.Stub.x1(service));
                this.this$0.d().execute(this.this$0.i());
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(@NotNull ComponentName name2) {
                kotlin.jvm.internal.t.j(name2, "name");
                this.this$0.d().execute(this.this$0.g());
                this.this$0.m(null);
            }
        };
        this.serviceConnection = serviceConnection;
        this.setUpRunnable = new Runnable() { // from class: androidx.room.d
            @Override // java.lang.Runnable
            public final void run() {
                MultiInstanceInvalidationClient.n(this.f824a);
            }
        };
        this.removeObserverRunnable = new Runnable() { // from class: androidx.room.e
            @Override // java.lang.Runnable
            public final void run() {
                MultiInstanceInvalidationClient.k(this.f825a);
            }
        };
        Object[] array = invalidationTracker.j().keySet().toArray(new String[0]);
        kotlin.jvm.internal.t.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        l(new InvalidationTracker.Observer((String[]) array) { // from class: androidx.room.MultiInstanceInvalidationClient.1
            @Override // androidx.room.InvalidationTracker.Observer
            public boolean b() {
                return true;
            }

            @Override // androidx.room.InvalidationTracker.Observer
            public void c(@NotNull Set<String> tables) {
                kotlin.jvm.internal.t.j(tables, "tables");
                if (MultiInstanceInvalidationClient.this.j().get()) {
                    return;
                }
                try {
                    IMultiInstanceInvalidationService iMultiInstanceInvalidationServiceH = MultiInstanceInvalidationClient.this.h();
                    if (iMultiInstanceInvalidationServiceH != null) {
                        int iC = MultiInstanceInvalidationClient.this.c();
                        Object[] array2 = tables.toArray(new String[0]);
                        kotlin.jvm.internal.t.h(array2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                        iMultiInstanceInvalidationServiceH.K0(iC, (String[]) array2);
                    }
                } catch (RemoteException e) {
                    Log.w(Room.LOG_TAG, "Cannot broadcast invalidation", e);
                }
            }
        });
        applicationContext.bindService(serviceIntent, serviceConnection, 1);
    }

    @NotNull
    public final InvalidationTracker.Observer f() {
        InvalidationTracker.Observer observer = this.observer;
        if (observer != null) {
            return observer;
        }
        kotlin.jvm.internal.t.B("observer");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(MultiInstanceInvalidationClient this$0) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.invalidationTracker.o(this$0.f());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(MultiInstanceInvalidationClient this$0) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        try {
            IMultiInstanceInvalidationService iMultiInstanceInvalidationService = this$0.service;
            if (iMultiInstanceInvalidationService != null) {
                this$0.clientId = iMultiInstanceInvalidationService.V0(this$0.callback, this$0.name);
                this$0.invalidationTracker.c(this$0.f());
            }
        } catch (RemoteException e) {
            Log.w(Room.LOG_TAG, "Cannot register multi-instance invalidation callback", e);
        }
    }
}
