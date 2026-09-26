package com.narvii.logging.service;

import com.narvii.app.NVContext;
import com.narvii.logging.LogEvent;

/* JADX INFO: loaded from: classes11.dex */
public class LogEventServiceDecorator implements LogEventService {
    NVContext nvContext;

    @Override // com.narvii.logging.service.LogEventService
    public void logEvent(LogEvent logEvent) {
        LogEventService logEventService = (LogEventService) this.nvContext.getParentContext().getService("logEvent");
        if (logEventService != null) {
            logEventService.logEvent(logEvent);
        }
    }

    public LogEventServiceDecorator(NVContext nVContext) {
        this.nvContext = nVContext;
    }
}
