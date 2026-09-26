package com.narvii.post;

import com.narvii.logging.PageSession;
import java.util.HashMap;

/* JADX INFO: loaded from: classes10.dex */
public class StoryEditSessionManager {
    private static final long REFRESH_SESSION_PAUSE_THRESHOLD = 1200000;
    private static StoryEditSessionManager instance;
    private HashMap<String, PageSession> hashMap = new HashMap<>();

    public static StoryEditSessionManager getInstance() {
        if (instance == null) {
            instance = new StoryEditSessionManager();
        }
        return instance;
    }

    public PageSession getSession(String str) {
        return this.hashMap.get(str);
    }

    public void onPageActiveChanged(String str, boolean z6) {
        if (str == null) {
            return;
        }
        PageSession pageSession = this.hashMap.get(str);
        if (pageSession == null) {
            pageSession = new PageSession();
            this.hashMap.put(str, pageSession);
        }
        if (!z6) {
            pageSession.lastSessionPagePauseTime = System.currentTimeMillis();
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j6 = pageSession.lastSessionPagePauseTime;
        if (jCurrentTimeMillis - j6 <= 1200000 || j6 == 0) {
            return;
        }
        this.hashMap.put(str, new PageSession());
    }

    public void putSession(String str, PageSession pageSession) {
        this.hashMap.put(str, pageSession);
    }

    public void removeSession(String str) {
        this.hashMap.remove(str);
    }

    private StoryEditSessionManager() {
    }

    public String getSessionId(String str) {
        PageSession session = getSession(str);
        if (session == null) {
            return null;
        }
        return session.sessionId;
    }
}
