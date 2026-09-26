package com.narvii.logging;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public interface Page {
    void completeLogEvent(@NotNull LogEvent.Builder builder);

    String getPageName();

    PageRefererInfo getPageRefererInfo();

    String getPvId();

    String getStrategyInfo();

    boolean isFinalPage();

    boolean isValidPage();
}
