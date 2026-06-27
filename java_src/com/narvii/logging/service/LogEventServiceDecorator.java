package com.narvii.logging.service;

import com.narvii.app.NVContext;
import com.narvii.logging.LogEvent;

/* loaded from: classes3.dex */
public class LogEventServiceDecorator implements LogEventService {
    NVContext nvContext;

    public LogEventServiceDecorator(NVContext nVContext) {
        this.nvContext = nVContext;
    }

    @Override // com.narvii.logging.service.LogEventService
    public void logEvent(LogEvent logEvent) {
        LogEventService logEventService = (LogEventService) this.nvContext.getParentContext().getService("logEvent");
        if (logEventService != null) {
            logEventService.logEvent(logEvent);
        }
    }
}
