package com.narvii.util.crashlytics;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.narvii.account.notice.AccountNotice;
import com.narvii.app.NVContext;
import com.narvii.services.AutostartServiceProvider;
import com.narvii.util.crashlytics.CrashlyticsUtils;
import com.narvii.util.logging.LoggingService;

/* loaded from: classes.dex */
public class CrashKeyLogHelper implements AutostartServiceProvider<CrashKeyLogHelper> {
    CrashlyticsUtils.CrashLog log;

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, CrashKeyLogHelper crashKeyLogHelper) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, CrashKeyLogHelper crashKeyLogHelper) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, CrashKeyLogHelper crashKeyLogHelper) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, CrashKeyLogHelper crashKeyLogHelper) {
    }

    @Override // com.narvii.services.ServiceProvider
    public CrashKeyLogHelper create(NVContext nVContext) {
        this.log = CrashlyticsUtils.prevCrashLog;
        return this;
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, CrashKeyLogHelper crashKeyLogHelper) {
        if (this.log != null) {
            LoggingService loggingService = (LoggingService) nVContext.getService("logging");
            CrashlyticsUtils.CrashLog crashLog = this.log;
            loggingService.logEvent("Crash", "type", Integer.valueOf(this.log.crashType), AppMeasurementSdk.ConditionalUserProperty.NAME, crashLog.errorType, AccountNotice.LEVEL_MESSAGE, crashLog.errorMessage, "stack", crashLog.errorStack, "states", crashLog.states, AppMeasurementSdk.ConditionalUserProperty.ACTIVE, crashLog.el1Active, "activities", crashLog.el2Activities, "images", crashLog.el3Images);
            CrashlyticsUtils.CrashLog crashLog2 = this.log;
            crashLog2.el1Active = null;
            crashLog2.el2Activities = null;
            crashLog2.el3Images = null;
            this.log = null;
        }
    }
}
