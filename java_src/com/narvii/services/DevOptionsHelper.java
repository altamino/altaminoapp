package com.narvii.services;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.v4.content.LocalBroadcastManager;
import com.fasterxml.jackson.databind.JsonNode;
import com.narvii.account.AccountService;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.pushservice.DeviceResponse;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.logging.DetailLogging;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DevOptionsHelper.kt */
/* loaded from: classes.dex */
public final class DevOptionsHelper implements AutostartServiceProvider<Object> {
    private final DevOptionsHelper$devOptionsListener$1 devOptionsListener;
    private LocalBroadcastManager lbm;
    private final BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.services.DevOptionsHelper$receiver$1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(intent, "intent");
            NVApplication ctx = NVApplication.instance();
            DevOptionsHelper devOptionsHelper = this.this$0;
            Intrinsics.checkExpressionValueIsNotNull(ctx, "ctx");
            devOptionsHelper.sendDevOptionsRequest(ctx);
        }
    };

    @Override // com.narvii.services.ServiceProvider
    public Object create(NVContext nVContext) {
        return this;
    }

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, Object obj) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, Object obj) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, Object obj) {
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.narvii.services.DevOptionsHelper$devOptionsListener$1] */
    public DevOptionsHelper() {
        final Class<DeviceResponse> cls = DeviceResponse.class;
        this.devOptionsListener = new ApiResponseListener<DeviceResponse>(cls) { // from class: com.narvii.services.DevOptionsHelper$devOptionsListener$1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, DeviceResponse deviceResponse) throws Exception {
                JsonNode jsonNode;
                DeviceResponse.DetailLogging detailLogging;
                super.onFinish(apiRequest, (ApiRequest) deviceResponse);
                DetailLogging.setReportEnabled((deviceResponse == null || (detailLogging = deviceResponse.detailLogging) == null) ? false : detailLogging.enabled);
                AccountService accountService = (AccountService) NVApplication.instance().getService("account");
                if (accountService != null) {
                    accountService.saveDevOptions((deviceResponse == null || (jsonNode = deviceResponse.devOptions) == null) ? null : jsonNode.toString());
                }
            }
        };
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext ctx, Object obj) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        if (this.lbm == null) {
            this.lbm = LocalBroadcastManager.getInstance(ctx.getContext());
            LocalBroadcastManager localBroadcastManager = this.lbm;
            if (localBroadcastManager != null) {
                localBroadcastManager.registerReceiver(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
            }
        }
        sendDevOptionsRequest(ctx);
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, Object obj) {
        LocalBroadcastManager localBroadcastManager = this.lbm;
        if (localBroadcastManager != null) {
            localBroadcastManager.unregisterReceiver(this.receiver);
        }
        this.lbm = null;
    }

    public final void sendDevOptionsRequest(NVContext ctx) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        Object service = ctx.getService("account");
        Intrinsics.checkExpressionValueIsNotNull(service, "ctx.getService(\"account\")");
        if (((AccountService) service).hasAccount()) {
            Object service2 = ctx.getService("api");
            Intrinsics.checkExpressionValueIsNotNull(service2, "ctx.getService(\"api\")");
            ((ApiService) service2).exec(ApiRequest.builder().path("/device/dev-options").build(), this.devOptionsListener);
        }
    }
}
