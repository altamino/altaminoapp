package com.google.firebase.analytics.connector;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresPermission;
import androidx.annotation.Size;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzdf;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.f;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
public class b implements com.google.firebase.analytics.connector.a {
    private static volatile com.google.firebase.analytics.connector.a zzb;

    @VisibleForTesting
    final Map<String, Object> zza;

    @VisibleForTesting
    private final AppMeasurementSdk zzc;

    class a implements com.google.firebase.analytics.connector.a.InterfaceC0228a {
        private final /* synthetic */ String zza;

        a(String str) {
            this.zza = str;
        }
    }

    @Override // com.google.firebase.analytics.connector.a
    @KeepForSdk
    public void a(@NonNull String str, @NonNull String str2, @NonNull Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        if (com.google.firebase.analytics.connector.internal.a.j(str) && com.google.firebase.analytics.connector.internal.a.e(str2, bundle) && com.google.firebase.analytics.connector.internal.a.h(str, str2, bundle)) {
            com.google.firebase.analytics.connector.internal.a.d(str, str2, bundle);
            this.zzc.logEvent(str, str2, bundle);
        }
    }

    @Override // com.google.firebase.analytics.connector.a
    @KeepForSdk
    @WorkerThread
    public int c(@NonNull @Size String str) {
        return this.zzc.getMaxUserProperties(str);
    }

    @Override // com.google.firebase.analytics.connector.a
    @KeepForSdk
    public void clearConditionalUserProperty(@NonNull @Size String str, @NonNull String str2, @NonNull Bundle bundle) {
        if (str2 == null || com.google.firebase.analytics.connector.internal.a.e(str2, bundle)) {
            this.zzc.clearConditionalUserProperty(str, str2, bundle);
        }
    }

    @Override // com.google.firebase.analytics.connector.a
    @NonNull
    @KeepForSdk
    @WorkerThread
    public List<com.google.firebase.analytics.connector.a.c> d(@NonNull String str, @NonNull @Size String str2) {
        ArrayList arrayList = new ArrayList();
        Iterator<Bundle> it = this.zzc.getConditionalUserProperties(str, str2).iterator();
        while (it.hasNext()) {
            arrayList.add(com.google.firebase.analytics.connector.internal.a.b(it.next()));
        }
        return arrayList;
    }

    @Override // com.google.firebase.analytics.connector.a
    @NonNull
    @KeepForSdk
    @WorkerThread
    public Map<String, Object> g(boolean z6) {
        return this.zzc.getUserProperties(null, null, z6);
    }

    private b(AppMeasurementSdk appMeasurementSdk) {
        Preconditions.checkNotNull(appMeasurementSdk);
        this.zzc = appMeasurementSdk;
        this.zza = new ConcurrentHashMap();
    }

    @NonNull
    @RequiresPermission
    @KeepForSdk
    public static com.google.firebase.analytics.connector.a h(@NonNull f fVar, @NonNull Context context, @NonNull l4.d dVar) {
        Preconditions.checkNotNull(fVar);
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(dVar);
        Preconditions.checkNotNull(context.getApplicationContext());
        if (zzb == null) {
            synchronized (b.class) {
                try {
                    if (zzb == null) {
                        Bundle bundle = new Bundle(1);
                        if (fVar.u()) {
                            dVar.b(com.google.firebase.b.class, new Executor() { // from class: com.google.firebase.analytics.connector.c
                                @Override // java.util.concurrent.Executor
                                public final void execute(Runnable runnable) {
                                    runnable.run();
                                }
                            }, new l4.b() { // from class: com.google.firebase.analytics.connector.d
                                @Override // l4.b
                                public final void a(l4.a aVar) {
                                    b.i(aVar);
                                }
                            });
                            bundle.putBoolean("dataCollectionDefaultEnabled", fVar.t());
                        }
                        zzb = new b(zzdf.zza(context, (String) null, (String) null, (String) null, bundle).zzb());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return zzb;
    }

    static /* synthetic */ void i(l4.a aVar) {
        boolean z6 = ((com.google.firebase.b) aVar.a()).enabled;
        synchronized (b.class) {
            ((b) Preconditions.checkNotNull(zzb)).zzc.zza(z6);
        }
    }

    private final boolean j(@NonNull String str) {
        if (!str.isEmpty() && this.zza.containsKey(str) && this.zza.get(str) != null) {
            return true;
        }
        return false;
    }

    @Override // com.google.firebase.analytics.connector.a
    @KeepForSdk
    public void b(@NonNull String str, @NonNull String str2, @NonNull Object obj) {
        if (!com.google.firebase.analytics.connector.internal.a.j(str) || !com.google.firebase.analytics.connector.internal.a.f(str, str2)) {
            return;
        }
        this.zzc.setUserProperty(str, str2, obj);
    }

    @Override // com.google.firebase.analytics.connector.a
    @NonNull
    @KeepForSdk
    @WorkerThread
    public com.google.firebase.analytics.connector.a.InterfaceC0228a e(@NonNull String str, @NonNull com.google.firebase.analytics.connector.a.b bVar) {
        Object fVar;
        Preconditions.checkNotNull(bVar);
        if (!com.google.firebase.analytics.connector.internal.a.j(str) || j(str)) {
            return null;
        }
        AppMeasurementSdk appMeasurementSdk = this.zzc;
        if (AppMeasurement.FIAM_ORIGIN.equals(str)) {
            fVar = new com.google.firebase.analytics.connector.internal.d(appMeasurementSdk, bVar);
        } else if ("clx".equals(str)) {
            fVar = new com.google.firebase.analytics.connector.internal.f(appMeasurementSdk, bVar);
        } else {
            fVar = null;
        }
        if (fVar == null) {
            return null;
        }
        this.zza.put(str, fVar);
        return new a(str);
    }

    @Override // com.google.firebase.analytics.connector.a
    @KeepForSdk
    public void f(@NonNull com.google.firebase.analytics.connector.a.c cVar) {
        if (!com.google.firebase.analytics.connector.internal.a.g(cVar)) {
            return;
        }
        this.zzc.setConditionalUserProperty(com.google.firebase.analytics.connector.internal.a.a(cVar));
    }
}
