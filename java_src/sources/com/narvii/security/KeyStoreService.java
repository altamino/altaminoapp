package com.narvii.security;

import android.content.Context;
import android.content.SharedPreferences;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.google.firebase.crashlytics.g;
import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.o;
import y.e;
import z.b;

/* JADX INFO: loaded from: classes5.dex */
public final class KeyStoreService {

    @NotNull
    public static final String ATTESTATION_FAILURE_KEY = "com.narvii.util.debug.model.ToggleOptionsRepository.ATTESTATION_FAILURE_KEY";

    @NotNull
    public static final String AUTH_ALIAS_PREFIX = "auth-keys";

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final String TAG = "KeyStoreService";

    @NotNull
    public static final String TOGGLE_OPTIONS_PREF_KEY = "com.narvii.util.debug.model.ToggleOptionsRepository";

    @Nullable
    private final NVContext ctx;

    @NotNull
    private final m apiService$delegate = o.a(new KeyStoreService$apiService$2(this));

    @NotNull
    private final m accountService$delegate = o.a(new KeyStoreService$accountService$2(this));

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    @Nullable
    public final NVContext getCtx() {
        return this.ctx;
    }

    private final void getAppCheckToken(b.a aVar) {
        Context context;
        NVContext nVContext = this.ctx;
        if (nVContext == null || (context = nVContext.getContext()) == null) {
            return;
        }
        if (shouldFailAttestation()) {
            throw new IllegalStateException("Toggle options failure");
        }
        b.f3376a.c(context, aVar);
    }

    private final SharedPreferences getToggleOptionsRepository() {
        Context context;
        NVContext nVContext = this.ctx;
        SharedPreferences sharedPreferences = (nVContext == null || (context = nVContext.getContext()) == null) ? null : context.getSharedPreferences(TOGGLE_OPTIONS_PREF_KEY, 0);
        if (sharedPreferences != null) {
            return sharedPreferences;
        }
        throw new IllegalStateException("Context is null");
    }

    @Nullable
    public final AccountService getAccountService() {
        return (AccountService) this.accountService$delegate.getValue();
    }

    @Nullable
    public final ApiService getApiService() {
        return (ApiService) this.apiService$delegate.getValue();
    }

    public final void getResendPublicKeyRequest(@NotNull final Callback<ApiRequest> onCompleted) {
        t.j(onCompleted, "onCompleted");
        try {
            getAppCheckToken(new b.a() { // from class: com.narvii.security.KeyStoreService.getResendPublicKeyRequest.1
                @Override // z.b.a
                public void onFailure(@NotNull Exception e) {
                    t.j(e, "e");
                    Log.e("AppCheck", "Error getting token", e);
                    g.a().c(e);
                    onCompleted.call(null);
                }

                @Override // z.b.a
                public void onSuccess(@NotNull String token) {
                    t.j(token, "token");
                    Log.i("AppCheck", "Token: " + token);
                    ApiRequest updatePublicKeyRequest = KeyStoreService.this.getUpdatePublicKeyRequest(token);
                    if (updatePublicKeyRequest != null) {
                        onCompleted.call(updatePublicKeyRequest);
                    }
                }
            });
        } catch (Exception e) {
            Log.e("AppCheck", "Error getting token", e);
            g.a().c(e);
            onCompleted.call(null);
        }
    }

    public final void sendPublicKey(@NotNull final ApiResponseListener<ApiResponse> listener) {
        t.j(listener, "listener");
        try {
            getAppCheckToken(new b.a() { // from class: com.narvii.security.KeyStoreService.sendPublicKey.1
                @Override // z.b.a
                public void onFailure(@NotNull Exception e) {
                    t.j(e, "e");
                    Log.e("AppCheck", "Error getting token", e);
                    g.a().c(e);
                    listener.onFail(null, 0, null, e.getMessage(), null, e);
                }

                @Override // z.b.a
                public void onSuccess(@NotNull String token) {
                    t.j(token, "token");
                    Log.i("AppCheck", "Token: " + token);
                    ApiRequest updatePublicKeyRequest = KeyStoreService.this.getUpdatePublicKeyRequest(token);
                    if (updatePublicKeyRequest != null) {
                        KeyStoreService keyStoreService = KeyStoreService.this;
                        ApiResponseListener<ApiResponse> apiResponseListener = listener;
                        ApiService apiService = keyStoreService.getApiService();
                        if (apiService != null) {
                            apiService.exec(updatePublicKeyRequest, apiResponseListener);
                        }
                    }
                }
            });
        } catch (Exception e) {
            Log.e("AppCheck", "Error getting token", e);
            g.a().c(e);
            listener.onFail(null, 0, null, e.getMessage(), null, e);
        }
    }

    public KeyStoreService(@Nullable NVContext nVContext) {
        this.ctx = nVContext;
    }

    private final boolean shouldFailAttestation() {
        return getToggleOptionsRepository().getBoolean(ATTESTATION_FAILURE_KEY, false);
    }

    @Nullable
    public final ApiRequest getUpdatePublicKeyRequest(@NotNull String token) {
        String userId;
        t.j(token, "token");
        Log.d(TAG, "getUpdatePublicKeyRequest");
        Log.d(TAG, "context: " + this.ctx);
        NVContext nVContext = this.ctx;
        if (nVContext == null) {
            return null;
        }
        Log.d(TAG, "alias: " + keyAlias());
        String strKeyAlias = keyAlias();
        if (strKeyAlias == null) {
            return null;
        }
        try {
            ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
            if (ApiService.sendingPublicKeyInProgress) {
                Log.d(TAG, "Sending public key in progress");
                return null;
            }
            Log.d(TAG, "Generating key pair");
            ApiService.sendingPublicKeyInProgress = true;
            Context context = nVContext.getContext();
            t.i(context, "getContext(...)");
            String[] strArrC = e.c(context, strKeyAlias);
            if (strArrC != null) {
                for (String str : strArrC) {
                    arrayNodeCreateArrayNode.add(str);
                }
            }
            ApiRequest.Builder builder = ApiRequest.builder();
            builder.https().post().global();
            builder.path("security/public_key");
            builder.param("key_chain", arrayNodeCreateArrayNode);
            builder.param(com.mixpanel.android.mpmetrics.e.KEY_TOKEN, token);
            AccountService accountService = getAccountService();
            if (accountService != null) {
                userId = accountService.getUserId();
            } else {
                userId = null;
            }
            builder.param("uid", userId);
            builder.tag(ApiService.DISABLE_RESEND_PUBLIC_KEY_TAG);
            ApiRequest apiRequestBuild = builder.build();
            Log.d(TAG, "Request: " + apiRequestBuild);
            return apiRequestBuild;
        } catch (Exception e) {
            Log.e(TAG, "Error generating key pair", e);
            return null;
        }
    }

    @Nullable
    public final String keyAlias() {
        String userId;
        AccountService accountService = getAccountService();
        if (accountService != null && (userId = accountService.getUserId()) != null) {
            return "auth-keys-" + userId;
        }
        return null;
    }
}
