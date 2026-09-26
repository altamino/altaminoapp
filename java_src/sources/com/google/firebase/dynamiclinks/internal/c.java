package com.google.firebase.dynamiclinks.internal;

import android.content.Context;
import android.os.Looper;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: loaded from: classes5.dex */
public class c extends GoogleApi<Api.ApiOptions.NoOptions> {
    static final Api<Api.ApiOptions.NoOptions> API;
    private static final Api.AbstractClientBuilder<d, Api.ApiOptions.NoOptions> CLIENT_BUILDER;
    private static final Api.ClientKey<d> CLIENT_KEY;

    class a extends Api.AbstractClientBuilder<d, Api.ApiOptions.NoOptions> {
        @Override // com.google.android.gms.common.api.Api.AbstractClientBuilder
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public d buildClient(Context context, Looper looper, ClientSettings clientSettings, Api.ApiOptions.NoOptions noOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new d(context, looper, clientSettings, connectionCallbacks, onConnectionFailedListener);
        }

        a() {
        }
    }

    static {
        Api.ClientKey<d> clientKey = new Api.ClientKey<>();
        CLIENT_KEY = clientKey;
        a aVar = new a();
        CLIENT_BUILDER = aVar;
        API = new Api<>("DynamicLinks.API", aVar, clientKey);
    }

    @VisibleForTesting
    public c(@NonNull Context context) {
        super(context, API, Api.ApiOptions.NO_OPTIONS, GoogleApi.Settings.DEFAULT_SETTINGS);
    }
}
