package com.narvii.account;

import android.content.SharedPreferences;
import android.os.SystemClock;
import android.text.TextUtils;
import com.narvii.app.NVContext;
import com.narvii.util.Utils;
import com.narvii.util.deviceid.DeviceIDService;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AuidService.kt */
/* loaded from: classes2.dex */
public final class AuidService {
    public static final Companion Companion = new Companion(null);
    public static final int REFRESH_AUID_TIME_INTERVAL_MS = 1800000;
    private final NVContext ctx;
    private long lastRequestTime;
    private final SharedPreferences prefs;

    public AuidService(NVContext ctx) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        this.ctx = ctx;
        this.prefs = this.ctx.getContext().getSharedPreferences("auid", 0);
    }

    public final NVContext getCtx() {
        return this.ctx;
    }

    /* compiled from: AuidService.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final void refreshAuid() {
        if (SystemClock.elapsedRealtime() - this.lastRequestTime < REFRESH_AUID_TIME_INTERVAL_MS) {
            return;
        }
        this.lastRequestTime = SystemClock.elapsedRealtime();
        final AccountService account = (AccountService) this.ctx.getService("account");
        Intrinsics.checkExpressionValueIsNotNull(account, "account");
        final String userId = account.getUserId();
        if (userId == null) {
            userId = "";
        }
        Object service = this.ctx.getService("deviceid");
        Intrinsics.checkExpressionValueIsNotNull(service, "ctx.getService(\"deviceid\")");
        String deviceId = ((DeviceIDService) service).getDeviceId();
        Object service2 = this.ctx.getService("api");
        Intrinsics.checkExpressionValueIsNotNull(service2, "ctx.getService(\"api\")");
        ApiRequest.Builder builder = ApiRequest.builder();
        builder.path("auid").param("deviceId", deviceId);
        ((ApiService) service2).exec(builder.build(), new ApiResponseListener<AuidResponse>(AuidResponse.class) { // from class: com.narvii.account.AuidService.refreshAuid.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest req, AuidResponse resp) {
                Intrinsics.checkParameterIsNotNull(req, "req");
                Intrinsics.checkParameterIsNotNull(resp, "resp");
                String str = userId;
                AccountService account2 = account;
                Intrinsics.checkExpressionValueIsNotNull(account2, "account");
                if (Utils.isStringEquals(str, account2.getUserId())) {
                    AuidService.this.saveAuid(resp.getAuid());
                }
            }
        });
    }

    public final String getAuid() {
        return this.prefs.getString("auid", null);
    }

    public final void saveAuid(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.prefs.edit().putString("auid", str).apply();
    }
}
