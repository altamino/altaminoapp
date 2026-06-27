package com.narvii.post;

import com.narvii.logging.PageSession;
import java.util.HashMap;

/* loaded from: classes3.dex */
public class StoryEditSessionManager {
    private static final long REFRESH_SESSION_PAUSE_THRESHOLD = 1200000;
    private static StoryEditSessionManager instance;
    private HashMap<String, PageSession> hashMap = new HashMap<>();

    private StoryEditSessionManager() {
    }

    public static StoryEditSessionManager getInstance() {
        if (instance == null) {
            instance = new StoryEditSessionManager();
        }
        return instance;
    }

    public void putSession(String str, PageSession pageSession) {
        this.hashMap.put(str, pageSession);
    }

    public PageSession getSession(String str) {
        return this.hashMap.get(str);
    }

    public String getSessionId(String str) {
        PageSession session = getSession(str);
        if (session == null) {
            return null;
        }
        return session.sessionId;
    }

    public void onPageActiveChanged(String str, boolean z) {
        if (str == null) {
            return;
        }
        PageSession pageSession = this.hashMap.get(str);
        if (pageSession == null) {
            pageSession = new PageSession();
            this.hashMap.put(str, pageSession);
        }
        if (z) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            long j = pageSession.lastSessionPagePauseTime;
            if (jCurrentTimeMillis - j <= 1200000 || j == 0) {
                return;
            }
            this.hashMap.put(str, new PageSession());
            return;
        }
        pageSession.lastSessionPagePauseTime = System.currentTimeMillis();
    }

    public void removeSession(String str) {
        this.hashMap.remove(str);
    }
}
