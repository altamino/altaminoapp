package com.narvii.services;

import android.os.Process;
import android.os.SystemClock;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.monetization.sticker.StickerService;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.crashlytics.CrashlyticsUtils;
import com.narvii.util.crashlytics.OomHelper;
import com.narvii.util.ws.WsService;

/* loaded from: classes3.dex */
public class KpidHelper implements AutostartServiceProvider<KpidHelper>, Runnable {
    boolean enabled;
    long scheduledKpidTime;

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, KpidHelper kpidHelper) {
    }

    @Override // com.narvii.services.ServiceProvider
    public KpidHelper create(NVContext nVContext) {
        this.enabled = NVApplication.DEBUG || (System.currentTimeMillis() / 100) % 2 == 0;
        CrashlyticsUtils.states.put("kpid", this.enabled ? IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE : "0");
        return this;
    }

    private void cancelSchedule() {
        if (this.scheduledKpidTime != 0) {
            Utils.handler.removeCallbacks(this);
            this.scheduledKpidTime = 0L;
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, KpidHelper kpidHelper) {
        cancelSchedule();
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, KpidHelper kpidHelper) {
        cancelSchedule();
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, KpidHelper kpidHelper) {
        if (this.enabled) {
            cancelSchedule();
            long j = NVApplication.DEBUG ? 15000L : 300000L;
            if (OomHelper.oomCount > 0 || CrashlyticsUtils.states.containsKey("lowMemory")) {
                j = 15000;
            }
            this.scheduledKpidTime = SystemClock.elapsedRealtime() + j;
            Utils.postDelayed(this, j);
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, KpidHelper kpidHelper) {
        if (this.enabled) {
            cancelSchedule();
            long j = NVApplication.DEBUG ? 5000L : StickerService.SHARED_REQUEST_INTERVAL;
            if (OomHelper.oomCount > 0 || CrashlyticsUtils.states.containsKey("lowMemory")) {
                j = 5000;
            }
            this.scheduledKpidTime = SystemClock.elapsedRealtime() + j;
            Utils.postDelayed(this, j);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        if (Math.abs(SystemClock.elapsedRealtime() - this.scheduledKpidTime) > DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS) {
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
