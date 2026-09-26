package com.google.firebase.messaging;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes8.dex */
@KeepForSdk
public class n {
    private static final String EXTRA_BINARY_DATA = "rawData";
    private static final String EXTRA_BINARY_DATA_BASE_64 = "gcm.rawData64";

    @GuardedBy
    private static i1 fcmServiceConn;
    private static final Object lock = new Object();
    private final Context context;
    private final Executor executor;

    public n(Context context) {
        this.context = context;
        this.executor = new androidx.media3.exoplayer.dash.offline.a();
    }

    private static Task<Integer> e(Context context, Intent intent, boolean z6) {
        if (Log.isLoggable(e.TAG, 3)) {
            Log.d(e.TAG, "Binding to service");
        }
        i1 i1VarF = f(context, "com.google.firebase.MESSAGING_EVENT");
        if (!z6) {
            return i1VarF.o(intent).continueWith(new androidx.media3.exoplayer.dash.offline.a(), new Continuation() { // from class: com.google.firebase.messaging.m
                @Override // com.google.android.gms.tasks.Continuation
                public final Object then(Task task) {
                    return n.g(task);
                }
            });
        }
        if (s0.b().e(context)) {
            d1.f(context, i1VarF, intent);
        } else {
            i1VarF.o(intent);
        }
        return Tasks.forResult(-1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer g(Task task) throws Exception {
        return -1;
    }

    private static i1 f(Context context, String str) {
        i1 i1Var;
        synchronized (lock) {
            try {
                if (fcmServiceConn == null) {
                    fcmServiceConn = new i1(context, str);
                }
                i1Var = fcmServiceConn;
            } catch (Throwable th) {
                throw th;
            }
        }
        return i1Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer i(Task task) throws Exception {
        return Integer.valueOf(TypedValues.CycleType.TYPE_ALPHA);
    }

    @KeepForSdk
    public Task<Integer> k(Intent intent) {
        String stringExtra = intent.getStringExtra(EXTRA_BINARY_DATA_BASE_64);
        if (stringExtra != null) {
            intent.putExtra("rawData", Base64.decode(stringExtra, 0));
            intent.removeExtra(EXTRA_BINARY_DATA_BASE_64);
        }
        return l(this.context, intent);
    }

    public n(Context context, ExecutorService executorService) {
        this.context = context;
        this.executor = executorService;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer h(Context context, Intent intent) throws Exception {
        return Integer.valueOf(s0.b().g(context, intent));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Task j(Context context, Intent intent, boolean z6, Task task) throws Exception {
        if (PlatformVersion.isAtLeastO() && ((Integer) task.getResult()).intValue() == 402) {
            return e(context, intent, z6).continueWith(new androidx.media3.exoplayer.dash.offline.a(), new Continuation() { // from class: com.google.firebase.messaging.l
                @Override // com.google.android.gms.tasks.Continuation
                public final Object then(Task task2) {
                    return n.i(task2);
                }
            });
        }
        return task;
    }

    @SuppressLint({"InlinedApi"})
    public Task<Integer> l(final Context context, final Intent intent) {
        boolean z6;
        final boolean z10 = false;
        if (PlatformVersion.isAtLeastO() && context.getApplicationInfo().targetSdkVersion >= 26) {
            z6 = true;
        } else {
            z6 = false;
        }
        if ((intent.getFlags() & 268435456) != 0) {
            z10 = true;
        }
        if (z6 && !z10) {
            return e(context, intent, z10);
        }
        return Tasks.call(this.executor, new Callable() { // from class: com.google.firebase.messaging.j
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return n.h(context, intent);
            }
        }).continueWithTask(this.executor, new Continuation() { // from class: com.google.firebase.messaging.k
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                return n.j(context, intent, z10, task);
            }
        });
    }
}
