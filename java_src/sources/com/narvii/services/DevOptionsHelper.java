package com.narvii.services;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.AccountService;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.pushservice.DeviceResponse;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.logging.DetailLogging;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class DevOptionsHelper implements AutostartServiceProvider<Object> {

    @NotNull
    private final DevOptionsHelper$devOptionsListener$1 devOptionsListener;

    @Nullable
    private LocalBroadcastManager lbm;

    @NotNull
    private final BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.services.DevOptionsHelper$receiver$1
        @Override // android.content.BroadcastReceiver
        public void onReceive(@NotNull Context context, @NotNull Intent intent) {
            t.j(context, "context");
            t.j(intent, "intent");
            NVApplication nVApplicationInstance = NVApplication.instance();
            DevOptionsHelper devOptionsHelper = this.this$0;
            t.g(nVApplicationInstance);
            devOptionsHelper.sendDevOptionsRequest(nVApplicationInstance);
        }
    };

    @Override // com.narvii.services.ServiceProvider
    @NotNull
    public Object create(@Nullable NVContext nVContext) {
        return this;
    }

    @Override // com.narvii.services.ServiceProvider
    public void destroy(@Nullable NVContext nVContext, @Nullable Object obj) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(@Nullable NVContext nVContext, @Nullable Object obj) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(@Nullable NVContext nVContext, @Nullable Object obj) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(@Nullable NVContext nVContext, @Nullable Object obj) {
        LocalBroadcastManager localBroadcastManager = this.lbm;
        if (localBroadcastManager != null) {
            localBroadcastManager.f(this.receiver);
        }
        this.lbm = null;
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(@NotNull NVContext ctx, @Nullable Object obj) {
        t.j(ctx, "ctx");
        if (this.lbm == null) {
            LocalBroadcastManager localBroadcastManagerB = LocalBroadcastManager.b(ctx.getContext());
            this.lbm = localBroadcastManagerB;
            if (localBroadcastManagerB != null) {
                localBroadcastManagerB.c(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
            }
        }
        sendDevOptionsRequest(ctx);
    }

    public final void sendDevOptionsRequest(@NotNull NVContext ctx) {
        t.j(ctx, "ctx");
        Object service = ctx.getService("account");
        t.i(service, "getService(...)");
        if (((AccountService) service).hasAccount()) {
            Object service2 = ctx.getService("api");
            t.i(service2, "getService(...)");
            ((ApiService) service2).exec(ApiRequest.builder().path("/device/dev-options").build(), this.devOptionsListener);
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.narvii.services.DevOptionsHelper$devOptionsListener$1] */
    public DevOptionsHelper() {
        final Class<DeviceResponse> cls = DeviceResponse.class;
        this.devOptionsListener = new ApiResponseListener<DeviceResponse>(cls) { // from class: com.narvii.services.DevOptionsHelper$devOptionsListener$1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(@Nullable ApiRequest apiRequest, @Nullable DeviceResponse deviceResponse) throws Exception {
                ObjectNode objectNode;
                DeviceResponse.DetailLogging detailLogging;
                super.onFinish(apiRequest, deviceResponse);
                DetailLogging.setReportEnabled((deviceResponse == null || (detailLogging = deviceResponse.detailLogging) == null) ? false : detailLogging.enabled);
                AccountService accountService = (AccountService) NVApplication.instance().getService("account");
                if (accountService == null) {
                    return;
                }
                accountService.saveDevOptions((deviceResponse == null || (objectNode = deviceResponse.devOptions) == null) ? null : objectNode.toString());
            }
        };
    }
}
