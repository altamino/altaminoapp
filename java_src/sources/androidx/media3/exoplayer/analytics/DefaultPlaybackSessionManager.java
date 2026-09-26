package androidx.media3.exoplayer.analytics;

import android.util.Base64;
import androidx.annotation.Nullable;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.source.MediaSource;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Random;

/* JADX INFO: loaded from: classes10.dex */
@UnstableApi
public final class DefaultPlaybackSessionManager implements PlaybackSessionManager {
    public static final com.google.common.base.u<String> DEFAULT_SESSION_ID_GENERATOR = new com.google.common.base.u() { // from class: androidx.media3.exoplayer.analytics.r1
        @Override // com.google.common.base.u
        public final Object get() {
            return DefaultPlaybackSessionManager.n();
        }
    };
    private static final Random RANDOM = new Random();
    private static final int SESSION_ID_LENGTH = 12;

    @Nullable
    private String currentSessionId;
    private Timeline currentTimeline;
    private long lastRemovedCurrentWindowSequenceNumber;
    private PlaybackSessionManager.Listener listener;
    private final Timeline.Period period;
    private final com.google.common.base.u<String> sessionIdGenerator;
    private final HashMap<String, SessionDescriptor> sessions;
    private final Timeline.Window window;

    private final class SessionDescriptor {
        private MediaSource.MediaPeriodId adMediaPeriodId;
        private boolean isActive;
        private boolean isCreated;
        private final String sessionId;
        private int windowIndex;
        private long windowSequenceNumber;

        public boolean i(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
            if (mediaPeriodId == null) {
                return i10 == this.windowIndex;
            }
            MediaSource.MediaPeriodId mediaPeriodId2 = this.adMediaPeriodId;
            if (mediaPeriodId2 == null) {
                return !mediaPeriodId.c() && mediaPeriodId.windowSequenceNumber == this.windowSequenceNumber;
            }
            return mediaPeriodId.windowSequenceNumber == mediaPeriodId2.windowSequenceNumber && mediaPeriodId.adGroupIndex == mediaPeriodId2.adGroupIndex && mediaPeriodId.adIndexInAdGroup == mediaPeriodId2.adIndexInAdGroup;
        }

        public SessionDescriptor(String str, @Nullable int i10, MediaSource.MediaPeriodId mediaPeriodId) {
            this.sessionId = str;
            this.windowIndex = i10;
            this.windowSequenceNumber = mediaPeriodId == null ? -1L : mediaPeriodId.windowSequenceNumber;
            if (mediaPeriodId == null || !mediaPeriodId.c()) {
                return;
            }
            this.adMediaPeriodId = mediaPeriodId;
        }

        public boolean j(AnalyticsListener.EventTime eventTime) {
            MediaSource.MediaPeriodId mediaPeriodId = eventTime.mediaPeriodId;
            if (mediaPeriodId == null) {
                return this.windowIndex != eventTime.windowIndex;
            }
            long j6 = this.windowSequenceNumber;
            if (j6 == -1) {
                return false;
            }
            if (mediaPeriodId.windowSequenceNumber > j6) {
                return true;
            }
            if (this.adMediaPeriodId == null) {
                return false;
            }
            int iF = eventTime.timeline.f(mediaPeriodId.periodUid);
            int iF2 = eventTime.timeline.f(this.adMediaPeriodId.periodUid);
            MediaSource.MediaPeriodId mediaPeriodId2 = eventTime.mediaPeriodId;
            if (mediaPeriodId2.windowSequenceNumber < this.adMediaPeriodId.windowSequenceNumber || iF < iF2) {
                return false;
            }
            if (iF > iF2) {
                return true;
            }
            if (!mediaPeriodId2.c()) {
                int i10 = eventTime.mediaPeriodId.nextAdGroupIndex;
                return i10 == -1 || i10 > this.adMediaPeriodId.adGroupIndex;
            }
            MediaSource.MediaPeriodId mediaPeriodId3 = eventTime.mediaPeriodId;
            int i11 = mediaPeriodId3.adGroupIndex;
            int i12 = mediaPeriodId3.adIndexInAdGroup;
            MediaSource.MediaPeriodId mediaPeriodId4 = this.adMediaPeriodId;
            int i13 = mediaPeriodId4.adGroupIndex;
            if (i11 <= i13) {
                return i11 == i13 && i12 > mediaPeriodId4.adIndexInAdGroup;
            }
            return true;
        }

        public void k(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
            if (this.windowSequenceNumber != -1 || i10 != this.windowIndex || mediaPeriodId == null || mediaPeriodId.windowSequenceNumber < DefaultPlaybackSessionManager.this.o()) {
                return;
            }
            this.windowSequenceNumber = mediaPeriodId.windowSequenceNumber;
        }

        public boolean m(Timeline timeline, Timeline timeline2) {
            int iL = l(timeline, timeline2, this.windowIndex);
            this.windowIndex = iL;
            if (iL == -1) {
                return false;
            }
            MediaSource.MediaPeriodId mediaPeriodId = this.adMediaPeriodId;
            return mediaPeriodId == null || timeline2.f(mediaPeriodId.periodUid) != -1;
        }

        private int l(Timeline timeline, Timeline timeline2, int i10) {
            if (i10 >= timeline.t()) {
                if (i10 >= timeline2.t()) {
                    return -1;
                }
                return i10;
            }
            timeline.r(i10, DefaultPlaybackSessionManager.this.window);
            for (int i11 = DefaultPlaybackSessionManager.this.window.firstPeriodIndex; i11 <= DefaultPlaybackSessionManager.this.window.lastPeriodIndex; i11++) {
                int iF = timeline2.f(timeline.q(i11));
                if (iF != -1) {
                    return timeline2.j(iF, DefaultPlaybackSessionManager.this.period).windowIndex;
                }
            }
            return -1;
        }
    }

    public DefaultPlaybackSessionManager() {
        this(DEFAULT_SESSION_ID_GENERATOR);
    }

    @Override // androidx.media3.exoplayer.analytics.PlaybackSessionManager
    @Nullable
    public synchronized String a() {
        return this.currentSessionId;
    }

    @Override // androidx.media3.exoplayer.analytics.PlaybackSessionManager
    public void c(PlaybackSessionManager.Listener listener) {
        this.listener = listener;
    }

    @Override // androidx.media3.exoplayer.analytics.PlaybackSessionManager
    public synchronized void d(AnalyticsListener.EventTime eventTime, int i10) {
        try {
            Assertions.e(this.listener);
            boolean z6 = i10 == 0;
            Iterator<SessionDescriptor> it = this.sessions.values().iterator();
            while (it.hasNext()) {
                SessionDescriptor next = it.next();
                if (next.j(eventTime)) {
                    it.remove();
                    if (next.isCreated) {
                        boolean zEquals = next.sessionId.equals(this.currentSessionId);
                        boolean z10 = z6 && zEquals && next.isActive;
                        if (zEquals) {
                            m(next);
                        }
                        this.listener.D(eventTime, next.sessionId, z10);
                    }
                }
            }
            q(eventTime);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // androidx.media3.exoplayer.analytics.PlaybackSessionManager
    public synchronized String e(Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId) {
        return p(timeline.l(mediaPeriodId.periodUid, this.period).windowIndex, mediaPeriodId).sessionId;
    }

    @Override // androidx.media3.exoplayer.analytics.PlaybackSessionManager
    public synchronized boolean f(AnalyticsListener.EventTime eventTime, String str) {
        SessionDescriptor sessionDescriptor = this.sessions.get(str);
        if (sessionDescriptor == null) {
            return false;
        }
        sessionDescriptor.k(eventTime.windowIndex, eventTime.mediaPeriodId);
        return sessionDescriptor.i(eventTime.windowIndex, eventTime.mediaPeriodId);
    }

    @Override // androidx.media3.exoplayer.analytics.PlaybackSessionManager
    public synchronized void g(AnalyticsListener.EventTime eventTime) {
        try {
            Assertions.e(this.listener);
            Timeline timeline = this.currentTimeline;
            this.currentTimeline = eventTime.timeline;
            Iterator<SessionDescriptor> it = this.sessions.values().iterator();
            while (it.hasNext()) {
                SessionDescriptor next = it.next();
                if (!next.m(timeline, this.currentTimeline) || next.j(eventTime)) {
                    it.remove();
                    if (next.isCreated) {
                        if (next.sessionId.equals(this.currentSessionId)) {
                            m(next);
                        }
                        this.listener.D(eventTime, next.sessionId, false);
                    }
                }
            }
            q(eventTime);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // androidx.media3.exoplayer.analytics.PlaybackSessionManager
    public synchronized void h(AnalyticsListener.EventTime eventTime) {
        PlaybackSessionManager.Listener listener;
        try {
            String str = this.currentSessionId;
            if (str != null) {
                m((SessionDescriptor) Assertions.e(this.sessions.get(str)));
            }
            Iterator<SessionDescriptor> it = this.sessions.values().iterator();
            while (it.hasNext()) {
                SessionDescriptor next = it.next();
                it.remove();
                if (next.isCreated && (listener = this.listener) != null) {
                    listener.D(eventTime, next.sessionId, false);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public DefaultPlaybackSessionManager(com.google.common.base.u<String> uVar) {
        this.sessionIdGenerator = uVar;
        this.window = new Timeline.Window();
        this.period = new Timeline.Period();
        this.sessions = new HashMap<>();
        this.currentTimeline = Timeline.EMPTY;
        this.lastRemovedCurrentWindowSequenceNumber = -1L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String n() {
        byte[] bArr = new byte[12];
        RANDOM.nextBytes(bArr);
        return Base64.encodeToString(bArr, 10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long o() {
        SessionDescriptor sessionDescriptor = this.sessions.get(this.currentSessionId);
        return (sessionDescriptor == null || sessionDescriptor.windowSequenceNumber == -1) ? this.lastRemovedCurrentWindowSequenceNumber + 1 : sessionDescriptor.windowSequenceNumber;
    }

    private SessionDescriptor p(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
        SessionDescriptor sessionDescriptor = null;
        long j6 = Long.MAX_VALUE;
        for (SessionDescriptor sessionDescriptor2 : this.sessions.values()) {
            sessionDescriptor2.k(i10, mediaPeriodId);
            if (sessionDescriptor2.i(i10, mediaPeriodId)) {
                long j10 = sessionDescriptor2.windowSequenceNumber;
                if (j10 == -1 || j10 < j6) {
                    sessionDescriptor = sessionDescriptor2;
                    j6 = j10;
                } else if (j10 == j6 && ((SessionDescriptor) Util.j(sessionDescriptor)).adMediaPeriodId != null && sessionDescriptor2.adMediaPeriodId != null) {
                    sessionDescriptor = sessionDescriptor2;
                }
            }
        }
        if (sessionDescriptor != null) {
            return sessionDescriptor;
        }
        String str = this.sessionIdGenerator.get();
        SessionDescriptor sessionDescriptor3 = new SessionDescriptor(str, i10, mediaPeriodId);
        this.sessions.put(str, sessionDescriptor3);
        return sessionDescriptor3;
    }

    private void q(AnalyticsListener.EventTime eventTime) {
        if (eventTime.timeline.u()) {
            String str = this.currentSessionId;
            if (str != null) {
                m((SessionDescriptor) Assertions.e(this.sessions.get(str)));
                return;
            }
            return;
        }
        SessionDescriptor sessionDescriptor = this.sessions.get(this.currentSessionId);
        SessionDescriptor sessionDescriptorP = p(eventTime.windowIndex, eventTime.mediaPeriodId);
        this.currentSessionId = sessionDescriptorP.sessionId;
        b(eventTime);
        MediaSource.MediaPeriodId mediaPeriodId = eventTime.mediaPeriodId;
        if (mediaPeriodId == null || !mediaPeriodId.c()) {
            return;
        }
        if (sessionDescriptor != null && sessionDescriptor.windowSequenceNumber == eventTime.mediaPeriodId.windowSequenceNumber && sessionDescriptor.adMediaPeriodId != null && sessionDescriptor.adMediaPeriodId.adGroupIndex == eventTime.mediaPeriodId.adGroupIndex && sessionDescriptor.adMediaPeriodId.adIndexInAdGroup == eventTime.mediaPeriodId.adIndexInAdGroup) {
            return;
        }
        MediaSource.MediaPeriodId mediaPeriodId2 = eventTime.mediaPeriodId;
        this.listener.a(eventTime, p(eventTime.windowIndex, new MediaSource.MediaPeriodId(mediaPeriodId2.periodUid, mediaPeriodId2.windowSequenceNumber)).sessionId, sessionDescriptorP.sessionId);
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00d6  */
    @Override // androidx.media3.exoplayer.analytics.PlaybackSessionManager
    public synchronized void b(AnalyticsListener.EventTime eventTime) {
        AnalyticsListener.EventTime eventTime2;
        SessionDescriptor sessionDescriptor;
        Assertions.e(this.listener);
        if (eventTime.timeline.u()) {
            return;
        }
        MediaSource.MediaPeriodId mediaPeriodId = eventTime.mediaPeriodId;
        if (mediaPeriodId != null) {
            if (mediaPeriodId.windowSequenceNumber < o()) {
                return;
            }
            SessionDescriptor sessionDescriptor2 = this.sessions.get(this.currentSessionId);
            if (sessionDescriptor2 != null && sessionDescriptor2.windowSequenceNumber == -1 && sessionDescriptor2.windowIndex != eventTime.windowIndex) {
                return;
            }
        }
        SessionDescriptor sessionDescriptorP = p(eventTime.windowIndex, eventTime.mediaPeriodId);
        if (this.currentSessionId == null) {
            this.currentSessionId = sessionDescriptorP.sessionId;
        }
        MediaSource.MediaPeriodId mediaPeriodId2 = eventTime.mediaPeriodId;
        if (mediaPeriodId2 != null && mediaPeriodId2.c()) {
            MediaSource.MediaPeriodId mediaPeriodId3 = eventTime.mediaPeriodId;
            MediaSource.MediaPeriodId mediaPeriodId4 = new MediaSource.MediaPeriodId(mediaPeriodId3.periodUid, mediaPeriodId3.windowSequenceNumber, mediaPeriodId3.adGroupIndex);
            SessionDescriptor sessionDescriptorP2 = p(eventTime.windowIndex, mediaPeriodId4);
            if (!sessionDescriptorP2.isCreated) {
                sessionDescriptorP2.isCreated = true;
                eventTime.timeline.l(eventTime.mediaPeriodId.periodUid, this.period);
                this.listener.w0(new AnalyticsListener.EventTime(eventTime.realtimeMs, eventTime.timeline, eventTime.windowIndex, mediaPeriodId4, Math.max(0L, Util.q1(this.period.i(eventTime.mediaPeriodId.adGroupIndex)) + this.period.q()), eventTime.currentTimeline, eventTime.currentWindowIndex, eventTime.currentMediaPeriodId, eventTime.currentPlaybackPositionMs, eventTime.totalBufferedDurationMs), sessionDescriptorP2.sessionId);
            }
        }
        if (sessionDescriptorP.isCreated) {
            eventTime2 = eventTime;
            sessionDescriptor = sessionDescriptorP;
        } else {
            sessionDescriptor = sessionDescriptorP;
            sessionDescriptor.isCreated = true;
            eventTime2 = eventTime;
            this.listener.w0(eventTime2, sessionDescriptor.sessionId);
        }
        if (sessionDescriptor.sessionId.equals(this.currentSessionId) && !sessionDescriptor.isActive) {
            sessionDescriptor.isActive = true;
            this.listener.y0(eventTime2, sessionDescriptor.sessionId);
        }
    }

    private void m(SessionDescriptor sessionDescriptor) {
        if (sessionDescriptor.windowSequenceNumber != -1) {
            this.lastRemovedCurrentWindowSequenceNumber = sessionDescriptor.windowSequenceNumber;
        }
        this.currentSessionId = null;
    }
}
