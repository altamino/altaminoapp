package com.narvii.logging.service;

import com.narvii.app.NVContext;
import com.narvii.logging.LogEvent;
import com.narvii.logging.Page;

/* loaded from: classes3.dex */
public class PageLogEventService extends LogEventServiceDecorator {
    protected void completeLogEvent(LogEvent logEvent) {
    }

    public PageLogEventService(NVContext nVContext) {
        super(nVContext);
    }

    @Override // com.narvii.logging.service.LogEventServiceDecorator, com.narvii.logging.service.LogEventService
    public void logEvent(LogEvent logEvent) {
        NVContext nVContext = this.nvContext;
        if (nVContext instanceof Page) {
            String pageName = ((Page) nVContext).getPageName();
            if (pageName != null) {
                if (logEvent.eventPage == null) {
                    logEvent.eventPage = pageName;
                } else {
                    logEvent.eventPage = pageName + "-" + logEvent.eventPage;
                }
            }
            if (logEvent.pvId == null) {
                logEvent.pvId = ((Page) this.nvContext).getPvId();
            }
        }
        completeLogEvent(logEvent);
        super.logEvent(logEvent);
    }
}
