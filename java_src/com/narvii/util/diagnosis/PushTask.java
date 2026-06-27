package com.narvii.util.diagnosis;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import com.narvii.account.AccountService;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.model.api.ApiResponse;
import com.narvii.pushservice.PushPayload;
import com.narvii.pushservice.PushService;
import com.narvii.util.Callback;
import com.narvii.util.NotificationManagerHelper;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import java.util.List;
import java.util.UUID;

/* loaded from: classes3.dex */
class PushTask extends DiagnosisTask implements PushService.PushListener {
    final String id;
    final ApiResponseListener listener;
    PushService push;
    long rebindTime;
    boolean rebinded;
    final BroadcastReceiver receiver;
    long sendTime;

    @Override // com.narvii.pushservice.PushService.PushListener
    public boolean onInterceptNotification(PushPayload pushPayload) {
        return false;
    }

    PushTask(NVContext nVContext) {
        super(nVContext, "Push");
        this.listener = new ApiResponseListener(ApiResponse.class) { // from class: com.narvii.util.diagnosis.PushTask.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                super.onFinish(apiRequest, apiResponse);
                PushTask.this.sendTime = DiagnosisTask.now();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List list, String str, ApiResponse apiResponse, Throwable th) {
                PushTask.this.result = false;
                PushTask.this.error = "Request Fail";
            }
        };
        this.receiver = new BroadcastReceiver() { // from class: com.narvii.util.diagnosis.PushTask.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                if (!intent.getBooleanExtra("result", false)) {
                    PushTask.this.result = false;
                    PushTask.this.error = "Bind fail (" + PushTask.this.lastBind() + ").";
                    return;
                }
                if (intent.getStringExtra("bind") == null) {
                    PushTask.this.result = false;
                    PushTask.this.error = "Bind fail (no token)";
                } else {
                    PushTask pushTask = PushTask.this;
                    pushTask.error = null;
                    pushTask.requestSend();
                }
            }
        };
        this.id = UUID.randomUUID().toString();
        this.push = (PushService) nVContext.getService("push");
        this.push.addPushListener(this);
    }

    @Override // com.narvii.util.diagnosis.DiagnosisTask
    void destory() {
        this.push.removePushListener(this);
        super.destory();
    }

    @Override // java.lang.Runnable
    public void run() {
        requestSend();
    }

    void requestSend() {
        ((ApiService) this.context.getService("api")).exec(ApiRequest.builder().post().path("/device").param("deviceID", ((AccountService) this.context.getService("account")).getDeviceId()).param("bundleID", this.context.getContext().getPackageName()).param("clientType", Integer.valueOf(NVApplication.CLIENT_TYPE)).param("testPushId", this.id).build(), this.listener);
    }

    String lastBind() {
        if (this.push.getGcmToken() == null) {
            return null;
        }
        return "gcm";
    }

    void rebindToken() {
        this.rebindTime = DiagnosisTask.now();
        this.push.updateGcmToken(true, new Callback<Bundle>() { // from class: com.narvii.util.diagnosis.PushTask.3
            @Override // com.narvii.util.Callback
            public void call(Bundle bundle) {
                if (!bundle.getBoolean("bind", false)) {
                    PushTask.this.result = false;
                    PushTask.this.error = "Bind fail (" + PushTask.this.lastBind() + ").";
                    return;
                }
                if (bundle.getString("gcmToken") == null) {
                    PushTask.this.result = false;
                    PushTask.this.error = "Bind fail (no token)";
                } else {
                    PushTask pushTask = PushTask.this;
                    pushTask.error = null;
                    pushTask.requestSend();
                }
            }
        });
    }

    @Override // com.narvii.pushservice.PushService.PushListener
    public void onPushPayload(PushPayload pushPayload) {
        if (this.id.equals(pushPayload.id)) {
            this.result = true;
            if (new NotificationManagerHelper(this.context.getContext()).areNotificationsEnabled()) {
                return;
            }
            this.error = "Notification is blocked by system.";
        }
    }

    @Override // com.narvii.util.diagnosis.DiagnosisTask
    void appendTo(SpannableStringBuilder spannableStringBuilder) {
        if (this.result != null || this.sendTime <= 0) {
            if (this.result == null && this.rebindTime > 0 && DiagnosisTask.now() > this.rebindTime + 20000) {
                this.result = false;
                this.error = "Timeout (bind).";
            }
        } else if (DiagnosisTask.now() > this.sendTime + 10000) {
            if (!this.rebinded) {
                this.sendTime = 0L;
                this.error = "Timeout (" + lastBind() + "). Refreshing token...";
                rebindToken();
                this.rebinded = true;
            } else {
                this.result = false;
                this.error = "Timeout (" + lastBind() + ").";
            }
        }
        super.appendTo(spannableStringBuilder);
    }
}
