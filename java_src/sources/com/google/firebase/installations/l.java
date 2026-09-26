package com.google.firebase.installations;

import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes11.dex */
class l implements o {
    final TaskCompletionSource<String> taskCompletionSource;

    @Override // com.google.firebase.installations.o
    public boolean a(Exception exc) {
        return false;
    }

    public l(TaskCompletionSource<String> taskCompletionSource) {
        this.taskCompletionSource = taskCompletionSource;
    }

    @Override // com.google.firebase.installations.o
    public boolean b(q4.d dVar) {
        if (!dVar.l() && !dVar.k() && !dVar.i()) {
            return false;
        }
        this.taskCompletionSource.trySetResult(dVar.d());
        return true;
    }
}
