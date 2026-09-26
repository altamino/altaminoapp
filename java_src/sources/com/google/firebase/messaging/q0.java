package com.google.firebase.messaging;

import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.collection.ArrayMap;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import java.util.Map;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes7.dex */
class q0 {
    private final Executor executor;

    @GuardedBy
    private final Map<String, Task<String>> getTokenRequests = new ArrayMap();

    interface a {
        Task<String> start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task c(String str, Task task) throws Exception {
        synchronized (this) {
            this.getTokenRequests.remove(str);
        }
        return task;
    }

    synchronized Task<String> b(final String str, a aVar) {
        Task<String> task = this.getTokenRequests.get(str);
        if (task != null) {
            if (Log.isLoggable(e.TAG, 3)) {
                Log.d(e.TAG, "Joining ongoing request for: " + str);
            }
            return task;
        }
        if (Log.isLoggable(e.TAG, 3)) {
            Log.d(e.TAG, "Making new request for: " + str);
        }
        Task taskContinueWithTask = aVar.start().continueWithTask(this.executor, new Continuation() { // from class: com.google.firebase.messaging.p0
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task2) {
                return this.f1586a.c(str, task2);
            }
        });
        this.getTokenRequests.put(str, (Task<String>) taskContinueWithTask);
        return taskContinueWithTask;
    }

    q0(Executor executor) {
        this.executor = executor;
    }
}
