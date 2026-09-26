package com.narvii.account;

import android.content.SharedPreferences;
import android.os.SystemClock;
import android.text.TextUtils;
import com.narvii.app.NVContext;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class AuidService {

    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int REFRESH_AUID_TIME_INTERVAL_MS = 1800000;

    @NotNull
    private final NVContext ctx;
    private long lastRequestTime;
    private final SharedPreferences prefs;

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }
    }

    @NotNull
    public final NVContext getCtx() {
        return this.ctx;
    }

    public AuidService(@NotNull NVContext ctx) {
        kotlin.jvm.internal.t.j(ctx, "ctx");
        this.ctx = ctx;
        this.prefs = ctx.getContext().getSharedPreferences("auid", 0);
    }

    @Nullable
    public final String getAuid() {
        return this.prefs.getString("auid", null);
    }

    public final void refreshAuid() {
        if (SystemClock.elapsedRealtime() - this.lastRequestTime < 1800000) {
            return;
        }
        this.lastRequestTime = SystemClock.elapsedRealtime();
        final AccountService accountService = (AccountService) this.ctx.getService("account");
        final String userId = accountService.getUserId();
        if (userId == null) {
            userId = "";
        }
        String strK = a0.b.k();
        Object service = this.ctx.getService("api");
        kotlin.jvm.internal.t.i(service, "getService(...)");
        ApiRequest.Builder builder = ApiRequest.builder();
        builder.path("auid").param(a0.a.n, strK);
        ((ApiService) service).exec(builder.build(), new ApiResponseListener<AuidResponse>(AuidResponse.class) { // from class: com.narvii.account.AuidService.refreshAuid.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(@NotNull ApiRequest req, @NotNull AuidResponse resp) {
                kotlin.jvm.internal.t.j(req, "req");
                kotlin.jvm.internal.t.j(resp, "resp");
                if (Utils.isStringEquals(userId, accountService.getUserId())) {
                    this.saveAuid(resp.getAuid());
                }
            }
        });
    }

    public final void saveAuid(@Nullable String str) {
        if (!TextUtils.isEmpty(str)) {
            this.prefs.edit().putString("auid", str).apply();
        }
    }
}
