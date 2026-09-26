package com.google.firebase.appcheck.internal;

import android.app.Application;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.api.internal.BackgroundDetector;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes10.dex */
public final class q {
    private static final long FIVE_MINUTES_IN_MILLIS = 300000;
    private static final long REFRESH_BUFFER_ABSOLUTE_MILLIS = 60000;
    private static final double REFRESH_BUFFER_FRACTION = 0.5d;
    private static final long UNSET_REFRESH_TIME = -1;
    private final com.google.firebase.appcheck.internal.util.a clock;
    private volatile int currentListenerCount;
    private volatile boolean isAutoRefreshEnabled;
    private volatile boolean isBackgrounded;
    private volatile long nextRefreshTimeMillis;
    private final k tokenRefresher;

    class a implements BackgroundDetector.BackgroundStateChangeListener {
        final /* synthetic */ com.google.firebase.appcheck.internal.util.a val$clock;
        final /* synthetic */ k val$tokenRefresher;

        a(k kVar, com.google.firebase.appcheck.internal.util.a aVar) {
            this.val$tokenRefresher = kVar;
            this.val$clock = aVar;
        }

        @Override // com.google.android.gms.common.api.internal.BackgroundDetector.BackgroundStateChangeListener
        public void onBackgroundStateChanged(boolean z6) {
            q.this.isBackgrounded = z6;
            if (z6) {
                this.val$tokenRefresher.c();
            } else if (q.this.f()) {
                this.val$tokenRefresher.g(q.this.nextRefreshTimeMillis - this.val$clock.currentTimeMillis());
            }
        }
    }

    q(@NonNull Context context, @NonNull h hVar, @w3.c Executor executor, @w3.b ScheduledExecutorService scheduledExecutorService) {
        this((Context) Preconditions.checkNotNull(context), new k((h) Preconditions.checkNotNull(hVar), executor, scheduledExecutorService), new com.google.firebase.appcheck.internal.util.a.C0229a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean f() {
        return this.isAutoRefreshEnabled && !this.isBackgrounded && this.currentListenerCount > 0 && this.nextRefreshTimeMillis != -1;
    }

    public void e(boolean z6) {
        this.isAutoRefreshEnabled = z6;
    }

    public void d(@NonNull x3.c cVar) {
        b bVarD = cVar instanceof b ? (b) cVar : b.d(cVar.b());
        this.nextRefreshTimeMillis = bVarD.h() + ((long) (bVarD.f() * 0.5d)) + 300000;
        if (this.nextRefreshTimeMillis > bVarD.a()) {
            this.nextRefreshTimeMillis = bVarD.a() - 60000;
        }
        if (f()) {
            this.tokenRefresher.g(this.nextRefreshTimeMillis - this.clock.currentTimeMillis());
        }
    }

    @VisibleForTesting
    q(Context context, k kVar, com.google.firebase.appcheck.internal.util.a aVar) {
        this.tokenRefresher = kVar;
        this.clock = aVar;
        this.nextRefreshTimeMillis = -1L;
        BackgroundDetector.initialize((Application) context.getApplicationContext());
        BackgroundDetector.getInstance().addListener(new a(kVar, aVar));
    }
}
