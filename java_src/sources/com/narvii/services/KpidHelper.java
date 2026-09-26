package com.narvii.services;

import android.os.Process;
import android.os.SystemClock;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.monetization.sticker.StickerService;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.crashlytics.CrashlyticsUtils;
import com.narvii.util.crashlytics.OomHelper;
import com.narvii.util.ws.WsService;

/* JADX INFO: loaded from: classes11.dex */
public class KpidHelper implements AutostartServiceProvider<KpidHelper>, Runnable {
    boolean enabled;
    long scheduledKpidTime;

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, KpidHelper kpidHelper) {
    }

    private void cancelSchedule() {
        if (this.scheduledKpidTime != 0) {
            Utils.handler.removeCallbacks(this);
            this.scheduledKpidTime = 0L;
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public KpidHelper create(NVContext nVContext) {
        boolean z6 = NVApplication.DEBUG || (System.currentTimeMillis() / 100) % 2 == 0;
        this.enabled = z6;
        CrashlyticsUtils.states.put("kpid", z6 ? "1" : "0");
        return this;
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, KpidHelper kpidHelper) {
        if (this.enabled) {
            cancelSchedule();
            long j6 = 15000;
            long j10 = NVApplication.DEBUG ? 15000L : 300000L;
            if (OomHelper.oomCount <= 0 && !CrashlyticsUtils.states.containsKey("lowMemory")) {
                j6 = j10;
            }
            this.scheduledKpidTime = SystemClock.elapsedRealtime() + j6;
            Utils.postDelayed(this, j6);
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, KpidHelper kpidHelper) {
        cancelSchedule();
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, KpidHelper kpidHelper) {
        cancelSchedule();
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, KpidHelper kpidHelper) {
        if (this.enabled) {
            cancelSchedule();
            long j6 = 5000;
            long j10 = NVApplication.DEBUG ? 5000L : StickerService.SHARED_REQUEST_INTERVAL;
            if (OomHelper.oomCount <= 0 && !CrashlyticsUtils.states.containsKey("lowMemory")) {
                j6 = j10;
            }
            this.scheduledKpidTime = SystemClock.elapsedRealtime() + j6;
            Utils.postDelayed(this, j6);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        if (Math.abs(SystemClock.elapsedRealtime() - this.scheduledKpidTime) > 5000) {
            return;
        }
        WsService wsService = (WsService) NVApplication.instance().peekService(0, "ws");
        if (wsService != null && wsService.isKeepAlive()) {
            Log.i("keepalive, skip kpid");
        } else {
            if (CrashlyticsUtils.foreground) {
                return;
            }
            Log.w("kpid!");
            Process.killProcess(Process.myPid());
        }
    }
}
