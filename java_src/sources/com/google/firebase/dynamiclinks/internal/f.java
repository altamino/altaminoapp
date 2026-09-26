package com.google.firebase.dynamiclinks.internal;

import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelableSerializer;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;

/* JADX INFO: loaded from: classes6.dex */
public class f extends h4.a {
    private static final String ANALYTICS_FDL_ORIGIN = "fdl";
    public static final String EXTRA_DYNAMIC_LINK_DATA = "com.google.firebase.dynamiclinks.DYNAMIC_LINK_DATA";
    public static final String KEY_SCION_DATA = "scionData";
    private static final String TAG = "FDL";
    private final o4.b<com.google.firebase.analytics.connector.a> analytics;
    private final com.google.firebase.f firebaseApp;
    private final GoogleApi<Api.ApiOptions.NoOptions> googleApi;

    static class a extends g.a {
        @Override // com.google.firebase.dynamiclinks.internal.g
        public void M0(Status status, @Nullable ShortDynamicLinkImpl shortDynamicLinkImpl) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.firebase.dynamiclinks.internal.g
        public void w0(Status status, @Nullable DynamicLinkData dynamicLinkData) {
            throw new UnsupportedOperationException();
        }

        a() {
        }
    }

    static class b extends a {
        private final o4.b<com.google.firebase.analytics.connector.a> analytics;
        private final TaskCompletionSource<h4.b> completionSource;

        @Override // com.google.firebase.dynamiclinks.internal.f.a, com.google.firebase.dynamiclinks.internal.g
        public void w0(Status status, @Nullable DynamicLinkData dynamicLinkData) {
            Bundle bundle;
            com.google.firebase.analytics.connector.a aVar;
            TaskUtil.setResultOrApiException(status, dynamicLinkData == null ? null : new h4.b(dynamicLinkData), this.completionSource);
            if (dynamicLinkData == null || (bundle = dynamicLinkData.y0().getBundle("scionData")) == null || bundle.keySet() == null || (aVar = this.analytics.get()) == null) {
                return;
            }
            for (String str : bundle.keySet()) {
                aVar.a(f.ANALYTICS_FDL_ORIGIN, str, bundle.getBundle(str));
            }
        }

        public b(o4.b<com.google.firebase.analytics.connector.a> bVar, TaskCompletionSource<h4.b> taskCompletionSource) {
            this.analytics = bVar;
            this.completionSource = taskCompletionSource;
        }
    }

    static final class c extends TaskApiCall<d, h4.b> {
        private final o4.b<com.google.firebase.analytics.connector.a> analytics;

        @Nullable
        private final String dynamicLink;

        c(o4.b<com.google.firebase.analytics.connector.a> bVar, @Nullable String str) {
            super(null, false, 13201);
            this.dynamicLink = str;
            this.analytics = bVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.common.api.internal.TaskApiCall
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void doExecute(d dVar, TaskCompletionSource<h4.b> taskCompletionSource) throws RemoteException {
            dVar.b(new b(this.analytics, taskCompletionSource), this.dynamicLink);
        }
    }

    public f(com.google.firebase.f fVar, o4.b<com.google.firebase.analytics.connector.a> bVar) {
        this(new com.google.firebase.dynamiclinks.internal.c(fVar.k()), fVar, bVar);
    }

    @VisibleForTesting
    public f(GoogleApi<Api.ApiOptions.NoOptions> googleApi, com.google.firebase.f fVar, o4.b<com.google.firebase.analytics.connector.a> bVar) {
        this.googleApi = googleApi;
        this.firebaseApp = (com.google.firebase.f) Preconditions.checkNotNull(fVar);
        this.analytics = bVar;
        if (bVar.get() == null) {
            Log.w(TAG, "FDL logging failed. Add a dependency for Firebase Analytics to your app to enable logging of Dynamic Link events.");
        }
    }

    @Override // h4.a
    public Task<h4.b> a(@Nullable Intent intent) {
        h4.b bVarD;
        Task taskDoWrite = this.googleApi.doWrite(new c(this.analytics, intent != null ? intent.getDataString() : null));
        return (intent == null || (bVarD = d(intent)) == null) ? taskDoWrite : Tasks.forResult(bVarD);
    }

    @Nullable
    public h4.b d(@NonNull Intent intent) {
        DynamicLinkData dynamicLinkData = (DynamicLinkData) SafeParcelableSerializer.deserializeFromIntentExtra(intent, EXTRA_DYNAMIC_LINK_DATA, DynamicLinkData.CREATOR);
        if (dynamicLinkData != null) {
            return new h4.b(dynamicLinkData);
        }
        return null;
    }
}
