package com.google.firebase.appcheck.internal;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.OnFailureListener;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes10.dex */
public class k {

    @VisibleForTesting
    static final long INITIAL_DELAY_SECONDS = 30;

    @VisibleForTesting
    static final long MAX_DELAY_SECONDS = 960;
    private static final long UNSET_DELAY = -1;
    private volatile long delayAfterFailureSeconds = -1;
    private final h firebaseAppCheck;
    private final Executor liteExecutor;
    private volatile ScheduledFuture<?> refreshFuture;
    private final ScheduledExecutorService scheduledExecutorService;

    private long d() {
        if (this.delayAfterFailureSeconds == -1) {
            return INITIAL_DELAY_SECONDS;
        }
        return this.delayAfterFailureSeconds * 2 < MAX_DELAY_SECONDS ? this.delayAfterFailureSeconds * 2 : MAX_DELAY_SECONDS;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        this.firebaseAppCheck.i().addOnFailureListener(this.liteExecutor, new OnFailureListener() { // from class: com.google.firebase.appcheck.internal.j
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                this.f1470a.e(exc);
            }
        });
    }

    public void c() {
        if (this.refreshFuture == null || this.refreshFuture.isDone()) {
            return;
        }
        this.refreshFuture.cancel(false);
    }

    k(@NonNull h hVar, @w3.c Executor executor, @w3.b ScheduledExecutorService scheduledExecutorService) {
        this.firebaseAppCheck = (h) Preconditions.checkNotNull(hVar);
        this.liteExecutor = executor;
        this.scheduledExecutorService = scheduledExecutorService;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(Exception exc) {
        h();
    }

    private void h() {
        c();
        this.delayAfterFailureSeconds = d();
        this.refreshFuture = this.scheduledExecutorService.schedule(new i(this), this.delayAfterFailureSeconds, TimeUnit.SECONDS);
    }

    public void g(long j6) {
        c();
        this.delayAfterFailureSeconds = -1L;
        this.refreshFuture = this.scheduledExecutorService.schedule(new i(this), Math.max(0L, j6), TimeUnit.MILLISECONDS);
    }
}
