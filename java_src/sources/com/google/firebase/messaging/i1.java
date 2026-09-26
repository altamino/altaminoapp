package com.google.firebase.messaging;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
class i1 implements ServiceConnection {

    @Nullable
    private f1 binder;

    @GuardedBy
    private boolean connectionInProgress;
    private final Intent connectionIntent;
    private final Context context;
    private final Queue<a> intentQueue;
    private final ScheduledExecutorService scheduledExecutorService;

    static class a {
        final Intent intent;
        private final TaskCompletionSource<Void> taskCompletionSource = new TaskCompletionSource<>();

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void f() {
            Log.w(e.TAG, "Service took too long to process intent: " + this.intent.getAction() + " finishing.");
            d();
        }

        void c(ScheduledExecutorService scheduledExecutorService) {
            final ScheduledFuture<?> scheduledFutureSchedule = scheduledExecutorService.schedule(new Runnable() { // from class: com.google.firebase.messaging.g1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f1572a.f();
                }
            }, 20L, TimeUnit.SECONDS);
            e().addOnCompleteListener(scheduledExecutorService, new OnCompleteListener() { // from class: com.google.firebase.messaging.h1
                @Override // com.google.android.gms.tasks.OnCompleteListener
                public final void onComplete(Task task) {
                    scheduledFutureSchedule.cancel(false);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void d() {
            this.taskCompletionSource.trySetResult(null);
        }

        Task<Void> e() {
            return this.taskCompletionSource.getTask();
        }

        a(Intent intent) {
            this.intent = intent;
        }
    }

    @SuppressLint({"ThreadPoolCreation"})
    i1(Context context, String str) {
        this(context, str, new ScheduledThreadPoolExecutor(0, new NamedThreadFactory("Firebase-FirebaseInstanceIdServiceConnection")));
    }

    private synchronized void n() {
        try {
            if (Log.isLoggable(e.TAG, 3)) {
                Log.d(e.TAG, "flush queue called");
            }
            while (!this.intentQueue.isEmpty()) {
                if (Log.isLoggable(e.TAG, 3)) {
                    Log.d(e.TAG, "found intent to be delivered");
                }
                f1 f1Var = this.binder;
                if (f1Var == null || !f1Var.isBinderAlive()) {
                    p();
                    return;
                }
                if (Log.isLoggable(e.TAG, 3)) {
                    Log.d(e.TAG, "binder is alive, sending the intent.");
                }
                this.binder.c(this.intentQueue.poll());
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @GuardedBy
    private void p() {
        if (Log.isLoggable(e.TAG, 3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("binder is dead. start connection? ");
            sb.append(!this.connectionInProgress);
            Log.d(e.TAG, sb.toString());
        }
        if (this.connectionInProgress) {
            return;
        }
        this.connectionInProgress = true;
        try {
            if (ConnectionTracker.getInstance().bindService(this.context, this.connectionIntent, this, 65)) {
                return;
            } else {
                Log.e(e.TAG, "binding to the service failed");
            }
        } catch (SecurityException e) {
            Log.e(e.TAG, "Exception while binding the service", e);
        }
        this.connectionInProgress = false;
        m();
    }

    synchronized Task<Void> o(Intent intent) {
        a aVar;
        try {
            if (Log.isLoggable(e.TAG, 3)) {
                Log.d(e.TAG, "new intent queued in the bind-strategy delivery");
            }
            aVar = new a(intent);
            aVar.c(this.scheduledExecutorService);
            this.intentQueue.add(aVar);
            n();
        } catch (Throwable th) {
            throw th;
        }
        return aVar.e();
    }

    @Override // android.content.ServiceConnection
    public synchronized void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        try {
            if (Log.isLoggable(e.TAG, 3)) {
                Log.d(e.TAG, "onServiceConnected: " + componentName);
            }
            this.connectionInProgress = false;
            if (iBinder instanceof f1) {
                this.binder = (f1) iBinder;
                n();
                return;
            }
            Log.e(e.TAG, "Invalid service connection: " + iBinder);
            m();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        if (Log.isLoggable(e.TAG, 3)) {
            Log.d(e.TAG, "onServiceDisconnected: " + componentName);
        }
        n();
    }

    @VisibleForTesting
    i1(Context context, String str, ScheduledExecutorService scheduledExecutorService) {
        this.intentQueue = new ArrayDeque();
        this.connectionInProgress = false;
        Context applicationContext = context.getApplicationContext();
        this.context = applicationContext;
        this.connectionIntent = new Intent(str).setPackage(applicationContext.getPackageName());
        this.scheduledExecutorService = scheduledExecutorService;
    }

    @GuardedBy
    private void m() {
        while (!this.intentQueue.isEmpty()) {
            this.intentQueue.poll().d();
        }
    }
}
