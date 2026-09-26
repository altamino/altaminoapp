package okhttp3.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.pushservice.PushPayload;
import com.narvii.services.AutostartServiceProvider;
import com.narvii.util.JacksonUtils;
import com.narvii.util.PackageUtils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.FormBody;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

/* JADX INFO: loaded from: classes9.dex */
public class WhInfoSync implements AutostartServiceProvider<Runnable>, Runnable, SharedPreferences.OnSharedPreferenceChangeListener, Callback {
    NVContext context;
    Handler handler;
    int lastKeyHash;
    LocalBroadcastManager lbm;
    long nextSyncTime;
    SharedPreferences pushPrefs;
    final BroadcastReceiver receiver = new BroadcastReceiver() { // from class: okhttp3.internal.WhInfoSync.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            WhInfoSync whInfoSync = WhInfoSync.this;
            whInfoSync.handler.removeCallbacks(whInfoSync);
            WhInfoSync whInfoSync2 = WhInfoSync.this;
            whInfoSync2.handler.post(whInfoSync2);
        }
    };

    public static class InfoSyncResp {

        @JsonDeserialize(contentAs = PushPayload.class)
        public ArrayList<PushPayload> payloads;
    }

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, Runnable runnable) {
    }

    @Override // okhttp3.Callback
    public void onFailure(Call call, IOException iOException) {
        int i10 = 0;
        for (Throwable cause = iOException; i10 < 4 && cause != null; cause = cause.getCause()) {
            try {
                if (cause.getMessage().contains("ENETUNREACH")) {
                    this.nextSyncTime = 0L;
                    return;
                }
                i10++;
            } catch (Exception unused) {
                return;
            }
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, Runnable runnable) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, Runnable runnable) {
    }

    @Override // com.narvii.services.ServiceProvider
    public Runnable create(NVContext nVContext) {
        this.lbm = LocalBroadcastManager.b(nVContext.getContext());
        this.handler = new Handler(Looper.getMainLooper());
        this.context = nVContext;
        this.pushPrefs = nVContext.getContext().getSharedPreferences("push", 0);
        return this;
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        this.handler.removeCallbacks(this);
        this.handler.postDelayed(this, 5000L);
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, Runnable runnable) {
        this.lbm.f(this.receiver);
        this.pushPrefs.unregisterOnSharedPreferenceChangeListener(this);
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, Runnable runnable) {
        this.lbm.c(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
        this.pushPrefs.registerOnSharedPreferenceChangeListener(this);
        this.handler.removeCallbacks(this);
        this.handler.postDelayed(this, 1800L);
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            AccountService accountService = (AccountService) this.context.getService("account");
            String deviceId = accountService.getDeviceId();
            if (deviceId != null && deviceId.startsWith("00-")) {
                this.handler.postDelayed(this, 1000L);
                return;
            }
            PackageUtils packageUtils = new PackageUtils(this.context.getContext());
            StringBuilder sb = new StringBuilder();
            sb.append(packageUtils.getVersionCode());
            String userId = accountService.getUserId();
            String string = this.pushPrefs.getString("gcmToken", null);
            sb.append(string);
            sb.append(userId);
            int iHashCode = sb.toString().hashCode();
            if (iHashCode != this.lastKeyHash) {
                this.nextSyncTime = 0L;
            }
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (jElapsedRealtime < this.nextSyncTime) {
                return;
            }
            this.nextSyncTime = 60000 + jElapsedRealtime;
            this.lastKeyHash = iHashCode;
            OkHttpClient okHttpClient = (OkHttpClient) this.context.getService("whOkhttp3");
            sb.setLength(0);
            sb.append("https://www.altamino.top/whis?vc=");
            sb.append(packageUtils.getVersionCode());
            FormBody.Builder builder = new FormBody.Builder();
            builder.add("did", deviceId);
            if (userId != null) {
                builder.add("uid", userId);
            }
            builder.add("lc", String.valueOf(Locale.getDefault()));
            if (string != null) {
                builder.add("gcmToken", string);
            }
            okHttpClient.newCall(new Request.Builder().url(sb.toString()).post(builder.build()).tag(Long.valueOf(jElapsedRealtime + 900000)).build()).enqueue(this);
        } catch (Exception unused) {
        }
    }

    @Override // okhttp3.Callback
    public void onResponse(Call call, Response response) throws IOException {
        if (response.isSuccessful()) {
            this.nextSyncTime = ((Number) call.request().tag()).longValue();
            String strString = response.body().string();
            if (strString.startsWith("{")) {
                try {
                    WhPushRecv whPushRecv = (WhPushRecv) this.context.getService("whPushRecv");
                    ArrayList<PushPayload> arrayList = ((InfoSyncResp) JacksonUtils.DEFAULT_MAPPER.readValue(strString, InfoSyncResp.class)).payloads;
                    if (arrayList != null) {
                        Iterator<PushPayload> it = arrayList.iterator();
                        while (it.hasNext()) {
                            whPushRecv.onPushPayload(it.next());
                        }
                    }
                } catch (Throwable unused) {
                }
            }
        }
    }
}
