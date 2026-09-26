package com.google.firebase.crashlytics.internal.analytics;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.crashlytics.internal.g;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public class c implements b, a {
    static final String APP_EXCEPTION_EVENT_NAME = "_ae";
    private final e baseAnalyticsEventLogger;
    private CountDownLatch eventLatch;
    private final TimeUnit timeUnit;
    private final int timeout;
    private final Object latchLock = new Object();
    private boolean callbackReceived = false;

    @Override // com.google.firebase.crashlytics.internal.analytics.a
    public void a(@NonNull String str, @Nullable Bundle bundle) {
        synchronized (this.latchLock) {
            try {
                g.f().i("Logging event " + str + " to Firebase Analytics with params " + bundle);
                this.eventLatch = new CountDownLatch(1);
                this.callbackReceived = false;
                this.baseAnalyticsEventLogger.a(str, bundle);
                g.f().i("Awaiting app exception callback from Analytics...");
                try {
                    if (this.eventLatch.await(this.timeout, this.timeUnit)) {
                        this.callbackReceived = true;
                        g.f().i("App exception callback received from Analytics listener.");
                    } else {
                        g.f().k("Timeout exceeded while awaiting app exception callback from Analytics listener.");
                    }
                } catch (InterruptedException unused) {
                    g.f().d("Interrupted while awaiting app exception callback from Analytics listener.");
                }
                this.eventLatch = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.firebase.crashlytics.internal.analytics.b
    public void onEvent(@NonNull String str, @NonNull Bundle bundle) {
        CountDownLatch countDownLatch = this.eventLatch;
        if (countDownLatch != null && APP_EXCEPTION_EVENT_NAME.equals(str)) {
            countDownLatch.countDown();
        }
    }

    public c(@NonNull e eVar, int i10, TimeUnit timeUnit) {
        this.baseAnalyticsEventLogger = eVar;
        this.timeout = i10;
        this.timeUnit = timeUnit;
    }
}
