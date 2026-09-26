package com.google.firebase.crashlytics;

import android.os.Bundle;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import com.google.android.gms.measurement.AppMeasurement;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes11.dex */
public class d {
    private final o4.a<com.google.firebase.analytics.connector.a> analyticsConnectorDeferred;
    private volatile com.google.firebase.crashlytics.internal.analytics.a analyticsEventLogger;

    @GuardedBy
    private final List<b4.a> breadcrumbHandlerList;
    private volatile b4.b breadcrumbSource;

    public d(o4.a<com.google.firebase.analytics.connector.a> aVar) {
        this(aVar, new b4.c(), new com.google.firebase.crashlytics.internal.analytics.f());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(b4.a aVar) {
        synchronized (this) {
            try {
                if (this.breadcrumbSource instanceof b4.c) {
                    this.breadcrumbHandlerList.add(aVar);
                }
                this.breadcrumbSource.a(aVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public d(o4.a<com.google.firebase.analytics.connector.a> aVar, @NonNull b4.b bVar, @NonNull com.google.firebase.crashlytics.internal.analytics.a aVar2) {
        this.analyticsConnectorDeferred = aVar;
        this.breadcrumbSource = bVar;
        this.breadcrumbHandlerList = new ArrayList();
        this.analyticsEventLogger = aVar2;
        f();
    }

    private void f() {
        this.analyticsConnectorDeferred.a(new o4.a.InterfaceC0470a() { // from class: com.google.firebase.crashlytics.c
            @Override // o4.a.InterfaceC0470a
            public final void a(o4.b bVar) {
                this.f1530a.i(bVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(String str, Bundle bundle) {
        this.analyticsEventLogger.a(str, bundle);
    }

    private static com.google.firebase.analytics.connector.a.InterfaceC0228a j(@NonNull com.google.firebase.analytics.connector.a aVar, @NonNull e eVar) {
        com.google.firebase.analytics.connector.a.InterfaceC0228a interfaceC0228aE = aVar.e("clx", eVar);
        if (interfaceC0228aE == null) {
            com.google.firebase.crashlytics.internal.g.f().b("Could not register AnalyticsConnectorListener with Crashlytics origin.");
            interfaceC0228aE = aVar.e(AppMeasurement.CRASH_ORIGIN, eVar);
            if (interfaceC0228aE != null) {
                com.google.firebase.crashlytics.internal.g.f().k("A new version of the Google Analytics for Firebase SDK is now available. For improved performance and compatibility with Crashlytics, please update to the latest version.");
            }
        }
        return interfaceC0228aE;
    }

    public com.google.firebase.crashlytics.internal.analytics.a d() {
        return new com.google.firebase.crashlytics.internal.analytics.a() { // from class: com.google.firebase.crashlytics.b
            @Override // com.google.firebase.crashlytics.internal.analytics.a
            public final void a(String str, Bundle bundle) {
                this.f1529a.g(str, bundle);
            }
        };
    }

    public b4.b e() {
        return new b4.b() { // from class: com.google.firebase.crashlytics.a
            @Override // b4.b
            public final void a(b4.a aVar) {
                this.f1528a.h(aVar);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i(o4.b bVar) {
        com.google.firebase.crashlytics.internal.g.f().b("AnalyticsConnector now available.");
        com.google.firebase.analytics.connector.a aVar = (com.google.firebase.analytics.connector.a) bVar.get();
        com.google.firebase.crashlytics.internal.analytics.e eVar = new com.google.firebase.crashlytics.internal.analytics.e(aVar);
        e eVar2 = new e();
        if (j(aVar, eVar2) != null) {
            com.google.firebase.crashlytics.internal.g.f().b("Registered Firebase Analytics listener.");
            com.google.firebase.crashlytics.internal.analytics.d dVar = new com.google.firebase.crashlytics.internal.analytics.d();
            com.google.firebase.crashlytics.internal.analytics.c cVar = new com.google.firebase.crashlytics.internal.analytics.c(eVar, 500, TimeUnit.MILLISECONDS);
            synchronized (this) {
                try {
                    Iterator<b4.a> it = this.breadcrumbHandlerList.iterator();
                    while (it.hasNext()) {
                        dVar.a(it.next());
                    }
                    eVar2.d(dVar);
                    eVar2.e(cVar);
                    this.breadcrumbSource = dVar;
                    this.analyticsEventLogger = cVar;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return;
        }
        com.google.firebase.crashlytics.internal.g.f().k("Could not register Firebase Analytics listener; a listener is already registered.");
    }
}
