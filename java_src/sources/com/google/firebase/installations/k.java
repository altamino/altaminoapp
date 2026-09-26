package com.google.firebase.installations;

import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes11.dex */
class k implements o {
    private final TaskCompletionSource<m> resultTaskCompletionSource;
    private final p utils;

    @Override // com.google.firebase.installations.o
    public boolean a(Exception exc) {
        this.resultTaskCompletionSource.trySetException(exc);
        return true;
    }

    public k(p pVar, TaskCompletionSource<m> taskCompletionSource) {
        this.utils = pVar;
        this.resultTaskCompletionSource = taskCompletionSource;
    }

    @Override // com.google.firebase.installations.o
    public boolean b(q4.d dVar) {
        if (dVar.k() && !this.utils.f(dVar)) {
            this.resultTaskCompletionSource.setResult(m.a().b(dVar.b()).d(dVar.c()).c(dVar.h()).a());
            return true;
        }
        return false;
    }
}
