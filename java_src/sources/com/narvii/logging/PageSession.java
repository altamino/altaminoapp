package com.narvii.logging;

import java.util.UUID;

/* JADX INFO: loaded from: classes8.dex */
public class PageSession {
    public long lastSessionPagePauseTime;
    public String sessionId;

    public PageSession() {
        resetSessionId();
    }

    public void resetSessionId() {
        this.sessionId = UUID.randomUUID().toString();
    }
}
