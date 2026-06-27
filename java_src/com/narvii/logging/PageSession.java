package com.narvii.logging;

import java.util.UUID;

/* loaded from: classes3.dex */
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
