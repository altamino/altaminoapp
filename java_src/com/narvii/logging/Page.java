package com.narvii.logging;

import com.narvii.logging.LogEvent;

/* loaded from: classes.dex */
public interface Page {
    void completeLogEvent(LogEvent.Builder builder);

    String getPageName();

    PageRefererInfo getPageRefererInfo();

    String getPvId();

    String getStrategyInfo();

    boolean isFinalPage();

    boolean isValidPage();
}
