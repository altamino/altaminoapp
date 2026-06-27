package com.google.firebase.dynamiclinks.internal;

import android.content.Intent;
import android.util.Log;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.internal.safeparcel.SafeParcelableSerializer;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApp;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import com.google.firebase.dynamiclinks.FirebaseDynamicLinks;
import com.google.firebase.dynamiclinks.PendingDynamicLinkData;

/* loaded from: classes2.dex */
public final class zze extends FirebaseDynamicLinks {
    private final GoogleApi<Api.ApiOptions.NoOptions> zzq;
    private final AnalyticsConnector zzr;

    public zze(FirebaseApp firebaseApp, AnalyticsConnector analyticsConnector) {
        this(new zzc(firebaseApp.getApplicationContext()), analyticsConnector);
    }

    @VisibleForTesting
    private zze(GoogleApi<Api.ApiOptions.NoOptions> googleApi, AnalyticsConnector analyticsConnector) {
        this.zzq = googleApi;
        this.zzr = analyticsConnector;
        if (analyticsConnector == null) {
            Log.w("FDL", "FDL logging failed. Add a dependency for Firebase Analytics to your app to enable logging of Dynamic Link events.");
        }
    }

    @Override // com.google.firebase.dynamiclinks.FirebaseDynamicLinks
    public final Task<PendingDynamicLinkData> getDynamicLink(Intent intent) {
        Task taskDoWrite = this.zzq.doWrite(new zzl(this.zzr, intent.getDataString()));
        DynamicLinkData dynamicLinkData = (DynamicLinkData) SafeParcelableSerializer.deserializeFromIntentExtra(intent, "com.google.firebase.dynamiclinks.DYNAMIC_LINK_DATA", DynamicLinkData.CREATOR);
        PendingDynamicLinkData pendingDynamicLinkData = dynamicLinkData != null ? new PendingDynamicLinkData(dynamicLinkData) : null;
        return pendingDynamicLinkData != null ? Tasks.forResult(pendingDynamicLinkData) : taskDoWrite;
    }
}
