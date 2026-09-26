package com.google.android.play.integrity.internal;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes8.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Map f1436a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f1437b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final x f1438c;
    private final String d;
    private boolean h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Intent f1439i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final e0 f1440j;

    @Nullable
    private ServiceConnection n;

    @Nullable
    private IInterface o;
    private final List e = new ArrayList();

    @GuardedBy
    private final Set f = new HashSet();
    private final Object g = new Object();
    private final IBinder.DeathRecipient l = new IBinder.DeathRecipient() { // from class: com.google.android.play.integrity.internal.a0
        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            d.k(this.f1430a);
        }
    };

    @GuardedBy
    private final AtomicInteger m = new AtomicInteger(0);
    private final WeakReference k = new WeakReference(null);

    @Nullable
    public final IInterface e() {
        return this.o;
    }

    public static /* synthetic */ void k(d dVar) {
        dVar.f1438c.c("reportBinderDeath", new Object[0]);
        d0 d0Var = (d0) dVar.k.get();
        if (d0Var != null) {
            dVar.f1438c.c("calling onBinderDied", new Object[0]);
            d0Var.a();
        } else {
            dVar.f1438c.c("%s : Binder has died.", dVar.d);
            Iterator it = dVar.e.iterator();
            while (it.hasNext()) {
                ((y) it.next()).a(dVar.w());
            }
            dVar.e.clear();
        }
        synchronized (dVar.g) {
            dVar.x();
        }
    }

    static /* bridge */ /* synthetic */ void o(final d dVar, final TaskCompletionSource taskCompletionSource) {
        dVar.f.add(taskCompletionSource);
        taskCompletionSource.getTask().addOnCompleteListener(new OnCompleteListener() { // from class: com.google.android.play.integrity.internal.z
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                this.f1455a.u(taskCompletionSource, task);
            }
        });
    }

    static /* bridge */ /* synthetic */ void q(d dVar, y yVar) {
        if (dVar.o != null || dVar.h) {
            if (!dVar.h) {
                yVar.run();
                return;
            } else {
                dVar.f1438c.c("Waiting to bind to the service.", new Object[0]);
                dVar.e.add(yVar);
                return;
            }
        }
        dVar.f1438c.c("Initiate binding to the service.", new Object[0]);
        dVar.e.add(yVar);
        c cVar = new c(dVar, null);
        dVar.n = cVar;
        dVar.h = true;
        if (dVar.f1437b.bindService(dVar.f1439i, cVar, 1)) {
            return;
        }
        dVar.f1438c.c("Failed to bind to the service.", new Object[0]);
        dVar.h = false;
        Iterator it = dVar.e.iterator();
        while (it.hasNext()) {
            ((y) it.next()).a(new e());
        }
        dVar.e.clear();
    }

    static /* bridge */ /* synthetic */ void r(d dVar) {
        dVar.f1438c.c("linkToDeath", new Object[0]);
        try {
            dVar.o.asBinder().linkToDeath(dVar.l, 0);
        } catch (RemoteException e) {
            dVar.f1438c.b(e, "linkToDeath failed", new Object[0]);
        }
    }

    static /* bridge */ /* synthetic */ void s(d dVar) {
        dVar.f1438c.c("unlinkToDeath", new Object[0]);
        dVar.o.asBinder().unlinkToDeath(dVar.l, 0);
    }

    private final RemoteException w() {
        return new RemoteException(String.valueOf(this.d).concat(" : Binder has died."));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @GuardedBy
    public final void x() {
        Iterator it = this.f.iterator();
        while (it.hasNext()) {
            ((TaskCompletionSource) it.next()).trySetException(w());
        }
        this.f.clear();
    }

    public final Handler c() {
        Handler handler;
        Map map = f1436a;
        synchronized (map) {
            try {
                if (!map.containsKey(this.d)) {
                    HandlerThread handlerThread = new HandlerThread(this.d, 10);
                    handlerThread.start();
                    map.put(this.d, new Handler(handlerThread.getLooper()));
                }
                handler = (Handler) map.get(this.d);
            } catch (Throwable th) {
                throw th;
            }
        }
        return handler;
    }

    public final void t(y yVar, @Nullable TaskCompletionSource taskCompletionSource) {
        c().post(new b0(this, yVar.c(), taskCompletionSource, yVar));
    }

    final /* synthetic */ void u(TaskCompletionSource taskCompletionSource, Task task) {
        synchronized (this.g) {
            this.f.remove(taskCompletionSource);
        }
    }

    public final void v(TaskCompletionSource taskCompletionSource) {
        synchronized (this.g) {
            this.f.remove(taskCompletionSource);
        }
        c().post(new c0(this));
    }

    public d(Context context, x xVar, String str, Intent intent, e0 e0Var, @Nullable d0 d0Var) {
        this.f1437b = context;
        this.f1438c = xVar;
        this.d = str;
        this.f1439i = intent;
        this.f1440j = e0Var;
    }
}
